import { Controller } from '@nestjs/common';
import { VariationService } from './variation.service';

@Controller('variation')
export class VariationController {
    constructor(private readonly variationService: VariationService) {}
}
