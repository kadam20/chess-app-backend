import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Opening } from './entities/opening.model';
import { OpeningController } from './opening.controller';
import { OpeningService } from './opening.service';

@Module({
    imports: [TypeOrmModule.forFeature([Opening])],
    controllers: [OpeningController],
    providers: [OpeningService],
    exports: [TypeOrmModule],
})
export class OpeningModule {}
