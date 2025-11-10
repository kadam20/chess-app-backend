import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { GameModule } from "./game/game.module";
import { OpeningModule } from "./opening/opening.module";
import { AttemptModule } from "./attempt/attempt.module";
import { VariationModule } from "./variation/variation.module";

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => ({
        type: "postgres",
        host: configService.get<string>("DB_HOST"),
        port: configService.get<number>("DB_PORT"),
        username: configService.get<string>("DB_USER"),
        password: configService.get<string>("DB_PASSWORD"),
        database: configService.get<string>("DB_NAME"),
        autoLoadEntities: true,
        synchronize: configService.get<boolean>("DB_SYNCHRONIZE", false),
      }),
    }),
    GameModule,
    OpeningModule,
    AttemptModule,
    VariationModule,
  ],
})
export class AppModule {}
