import { Body, Controller, Get, Param, ParseIntPipe, Post, Put, Delete } from '@nestjs/common';
import { OpeningService } from './opening.service';
import { Opening } from './entities/opening.model';

@Controller('opening')
export class OpeningController {
    constructor(private readonly openingService: OpeningService) {}

    @Get()
    async findAll(): Promise<Opening[]> {
        return this.openingService.findAll();
    }

    @Get(':id')
    async findOne(@Param('id', ParseIntPipe) id: number): Promise<Opening> {
        return this.openingService.findOne(id);
    }

    @Post()
    async create(@Body() data: Partial<Opening>): Promise<Opening> {
        return this.openingService.create(data);
    }

    @Put(':id')
    async update(
        @Param('id', ParseIntPipe) id: number,
        @Body() data: Partial<Opening>
    ): Promise<Opening> {
        return this.openingService.update(id, data);
    }

    @Delete(':id')
    async remove(@Param('id', ParseIntPipe) id: number): Promise<void> {
        return this.openingService.remove(id);
    }
}
