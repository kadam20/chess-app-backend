import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { VariationService } from './variation.service';
import { Variation } from './entities/variation.model';
import { VariationController } from './variation.controller';

@Module({
    imports: [TypeOrmModule.forFeature([Variation])],
    controllers: [VariationController],
    providers: [VariationService],
    exports: [TypeOrmModule],
})
export class VariationModule {}
