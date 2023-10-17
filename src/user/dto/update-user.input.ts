import { CreateUserInput } from './create-user.input';
import { InputType, Field, Int, PartialType } from '@nestjs/graphql';

@InputType()
export class UpdateUserInput extends PartialType(CreateUserInput) {

    @Field(() => Int)
    id: number;

    @Field()
    name: string;

    @Field()
    email: string;

    @Field()
    hashedPassword: string;

    @Field({ nullable: true })
    hashed_refresh_token?: string;

    // To update bills and invoices at user update
    // @Field(() => [CreateBillInput], { nullable: true })
    // bills?: CreateBillInput[];
    // @Field(() => [CreateInvoiceInput], { nullable: true })
    // invoices?: CreateInvoiceInput[];}
}
