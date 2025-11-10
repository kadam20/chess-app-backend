import { Opening } from "src/opening/entities/opening.model";
import { Entity, Column, PrimaryGeneratedColumn, ManyToOne } from "typeorm";

@Entity({ schema: "public" })
export class Game {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	user: string;

	@Column()
	whitePlayer: string;

	@Column()
	whiteElo: number;

	@ManyToOne(() => Opening, { nullable: true })
  	whiteOpening: Opening;

	@Column()
	blackPlayer: string;

	@Column()
	blackeElo: number;

	@ManyToOne(() => Opening, { nullable: true })
  	blackOpening: Opening;

	@Column()
	result: string;

	@Column()
	termination: string;

	@Column()
	endPosition: string;

	@Column()
	timeControl: string;

	@Column({ type: "timestamptz" })
	start: Date;

	@Column({ type: "timestamptz" })
	end: Date;

	@Column()
	link: string;

	constructor(
		user: string,
		whitePlayer: string,
		whiteElo: number,
		whiteOpening: Opening,
		blackPlayer: string,
		blackeElo: number,
		blackOpening: Opening,
		result: string,
		termination: string,
		endPosition: string,
		timeControl: string,
		start: Date,
		end: Date,
		link: string,
	) {
		this.user = user;
		this.whitePlayer = whitePlayer;
		this.whiteElo = whiteElo;
		this.whiteOpening = whiteOpening;
		this.blackPlayer = blackPlayer;
		this.blackeElo = blackeElo;
		this.blackOpening = blackOpening;
		this.result = result;
		this.termination = termination;
		this.endPosition = endPosition;
		this.timeControl = timeControl;
		this.start = start;
		this.end = end;
		this.link = link;
	}
}
