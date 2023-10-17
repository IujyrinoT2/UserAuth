import { Module } from '@nestjs/common';
import { InvoiceService } from './invoice.service';
import { InvoiceResolver } from './invoice.resolver';
import { InvoiceController } from './invoice.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
    providers: [InvoiceResolver, InvoiceService, PrismaService],
    controllers: [InvoiceController],
})
export class InvoiceModule { }
