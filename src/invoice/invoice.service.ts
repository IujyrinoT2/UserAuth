import { Injectable } from '@nestjs/common';
import { CreateInvoiceInput } from './dto/create-invoice.input';
import { UpdateInvoiceInput } from './dto/update-invoice.input';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class InvoiceService {

    constructor(private prisma: PrismaService) { }

    findAll(userId: number) {
        return this.prisma.invoice.findMany({ where: { user_id: userId } });
    }

    findOne(userId: number, invoiceId: number) {
        return this.prisma.invoice.findUnique({ where: { user_id: userId, id: invoiceId } });
    }

    create(createInvoiceInput: CreateInvoiceInput) {
        return 'This action adds a new invoice';
    }

    update(id: number, updateInvoiceInput: UpdateInvoiceInput) {
        return `This action updates a #${id} invoice`;
    }

    remove(id: number) {
        return `This action removes a #${id} invoice`;
    }
}
