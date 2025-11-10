import { Injectable } from '@nestjs/common';

@Injectable()
export class AttemptService {
  getHello(): string {
    return 'Hello World!';
  }
}
