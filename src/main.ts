import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { AppDataSource } from './database/data-source';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(process.env.PORT ?? 3000);
  AppDataSource.initialize()
    .then(() => {
      console.log('🚀 Base de données connectée !');
    })
    .catch((error) => console.log(error));
}
bootstrap();
