import { Injectable } from '@nestjs/common';
import { CreateUserInput } from './dto/create-user.input';
import { UpdateUserInput } from './dto/update-user.input';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class UserService {
    constructor(private prisma: PrismaService) { }

    create(createUserInput: CreateUserInput) {
        return 'This action adds a new user';
    }

    findAll() {
        return this.prisma.user.findMany({
            include: { bills: true, invoices: true },
        });
    }

    findOne(id: number) {
        return this.prisma.user.findUnique({
            include: { bills: true, invoices: true },
            where: { id }
        })
    }

    update(id: number, updateUserInput: UpdateUserInput) {
        return `This action updates a #${id} user`;
    }

    remove(id: number) {
        return this.prisma.user.delete({ where: { id } });
    }
}
