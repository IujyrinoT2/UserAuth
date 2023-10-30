import { ForbiddenException, Injectable } from '@nestjs/common';
import { CreateBillInput } from './dto/create-bill.input';
import { UpdateBillInput } from './dto/update-bill.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { equals } from 'class-validator';
import { error } from 'console';

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
    async calcDateAccountSum(date: number, account: string) {
        let parsedDate: Date = null;

        // Date conversion
        try {
        parsedDate = this.ExcelDateToJSDate(date);       
        } catch(error) {
            console.error("Error converting date from Excel", error);
        }
        console.log(`from excel date: ${date}\nmodified date: ${parsedDate}`);

        // aggregation that matches parsed date and account string
        try {
        const aggregation = await this.prisma.bill.aggregate({       
            where: {
                due_date: parsedDate,
                account
            },
            _sum: {
                amount: true
            }
        });
        return aggregation._sum.amount || 0;                         // returns aggregation sum or 0 if no entries were found
        } catch(error) {
            console.error("Error calculating balance", error);
        }
    }

    // Converts date received from excel to typescript date
    ExcelDateToJSDate(date: number) {
        return new Date(Math.round((date - 25569)*86400*1000));
      }
    }