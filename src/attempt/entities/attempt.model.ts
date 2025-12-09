import { Variation } from 'src/variation/entities/variation.model';
import { Entity, Column, PrimaryGeneratedColumn, ManyToOne } from 'typeorm';

@Entity({ schema: 'public' })
export class Attempt {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    date: Date;

    @Column()
    input: string;

    @Column()
    success: boolean;

    constructor(date: Date, input: string, success: boolean) {
        this.date = date;
        this.input = input;
        this.success = success;
    }
}
