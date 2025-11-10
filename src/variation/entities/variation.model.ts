import { Opening } from "src/opening/entities/opening.model";
import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne } from "typeorm";

@Entity({ schema: "public" })
export class Variation {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	name: string;

	@Column()
	moves: number;

	@ManyToOne(() => Opening, (opening) => opening.variations)
	opening: Opening;

	constructor(moves: number, name: string, opening: Opening) {
		this.moves = moves;
		this.name = name;
		this.opening = opening;
	}
}
