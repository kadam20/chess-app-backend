import { Injectable, NotFoundException } from "@nestjs/common";
import { Opening } from "./entities/opening.model";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";

@Injectable()
export class OpeningService {
	constructor(
		@InjectRepository(Opening)
		private readonly openingRepository: Repository<Opening>,
	) {}

	async create(data: Partial<Opening>): Promise<Opening> {
		console.log(data);
		const opening = this.openingRepository.create(data);
		return this.openingRepository.save(opening);
	}

	async findAll(): Promise<Opening[]> {
		return this.openingRepository.find();
	}

	async findOne(id: number): Promise<Opening> {
		const opening = await this.openingRepository.findOne({
			where: { id },
		});
		if (!opening) {
			throw new NotFoundException(`Opening with id ${id} not found`);
		}
		return opening;
	}

	async update(id: number, data: Partial<Opening>): Promise<Opening> {
		const opening = await this.findOne(id);
		Object.assign(opening, data);
		return this.openingRepository.save(opening);
	}

	async remove(id: number): Promise<void> {
		const opening = await this.findOne(id);
		await this.openingRepository.remove(opening);
	}
}
