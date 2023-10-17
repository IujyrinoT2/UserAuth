import { InputType, Int, Field } from '@nestjs/graphql';

@InputType()
export class CreateUserInput {

    @Field()
    name: string;

    @Field()
    email: string;

    @Field()
    hashedPassword: string;

    @Field({ nullable: true })
    hashed_refresh_token?: string;

    // To create bills and invoices at user creation
    // @Field(() => [CreateBillInput], { nullable: true })
    // bills?: CreateBillInput[];
    // @Field(() => [CreateInvoiceInput], { nullable: true })
    // invoices?: CreateInvoiceInput[];}
}
