import { Injectable } from "@nestjs/common";
import { Variation } from "./entities/variation.model";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";

@Injectable()
export class VariationService {
	constructor(
		@InjectRepository(Variation)
		private readonly variationRepository: Repository<Variation>,
	) {}
}
