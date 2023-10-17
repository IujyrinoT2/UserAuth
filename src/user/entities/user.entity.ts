import { ObjectType, Field, Int } from '@nestjs/graphql';
import { Bill } from 'src/bill/entities/bill.entity';
import { Invoice } from 'src/invoice/entities/invoice.entity';

@ObjectType()
export class User {
    @Field(() => Int)
    id: number;

    @Field()
    name: string;

    @Field()
    email: string;

    @Field()
    hashed_refresh_token?: string;

    @Field(() => [Bill], { nullable: true })
    bills: Bill[];

    @Field(() => [Invoice], { nullable: true })
    invoices: Invoice[];
}
