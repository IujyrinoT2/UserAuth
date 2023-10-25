import { ForbiddenException, Injectable } from '@nestjs/common';
import { CreateBillInput } from './dto/create-bill.input';
import { UpdateBillInput } from './dto/update-bill.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { equals } from 'class-validator';

@Injectable()
export class BillService {

    constructor(private prisma: PrismaService) { }

    findAll(userId: number) {
        return this.prisma.bill.findMany({ where: { user_id: userId } });
    }

    findOne(userId: number, billId: number) {
        return this.prisma.bill.findUnique({ where: { user_id: userId, id: billId } });
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

    // Function to return the sum of the bills with specific dates and account types
    async calcDateAccountSum(date: string, account: string) {
        const parsedDate: Date = new Date(date);                     // type casted the parsed date string to Date type
        const aggregation = await this.prisma.bill.aggregate({       // aggregation that matches parsed date and string
            where: {
                due_date: parsedDate,
                account
            },
            _sum: {
                amount: true
            }
        });

        return aggregation._sum.amount || 0;                         // returns aggregation sum or 0 if no entries were found
    }

}
