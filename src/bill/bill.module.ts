import { Module } from '@nestjs/common';
import { BillService } from './bill.service';
import { BillResolver } from './bill.resolver';
import { BillController } from './bill.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
    providers: [BillResolver, BillService, PrismaService],
    controllers: [BillController],
})
export class BillModule { }
