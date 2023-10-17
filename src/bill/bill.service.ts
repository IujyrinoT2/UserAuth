import { Injectable } from '@nestjs/common';
import { CreateBillInput } from './dto/create-bill.input';
import { UpdateBillInput } from './dto/update-bill.input';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class BillService {

    constructor(private prisma: PrismaService) { }

    findAll() {
        return this.prisma.bill.findMany();
    }

    findOne(id: number) {
        return this.prisma.bill.findUnique({ where: { id } })
    }

    create(createBillInput: CreateBillInput) {
        return 'This action adds a new bill';
    }

    update(id: number, updateBillInput: UpdateBillInput) {
        return `This action updates a #${id} bill`;
    }

    remove(id: number) {
        return `This action removes a #${id} bill`;
    }
}
