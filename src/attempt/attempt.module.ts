import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Attempt } from './entities/attempt.model';
import { AttemptController } from './attempt.controller';
import { AttemptService } from './attempt.service';

@Module({
    imports: [TypeOrmModule.forFeature([Attempt])],
    controllers: [AttemptController],
    providers: [AttemptService],
    exports: [TypeOrmModule],
})
export class AttemptModule {}
