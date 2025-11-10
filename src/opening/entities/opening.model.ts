import { Variation } from "src/variation/entities/variation.model";
import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";

@Entity({ schema: "public" })
export class Opening {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	name: string;

	@Column()
	ecoCode: string;

	@Column()
	description: string;

	@Column()
	isForWhite: boolean;

	@OneToMany(() => Variation, (variation) => variation.opening)
	variations: Variation[];

	constructor(name: string, ecoCode: string, description: string, isForWhite: boolean, variations: Variation[]) {
		this.name = name;
		this.ecoCode = ecoCode;
		this.description = description;
		this.isForWhite = isForWhite;
		this.variations = variations;
	}
}
