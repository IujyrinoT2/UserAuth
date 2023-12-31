import { ObjectType, Field, Int, Float } from '@nestjs/graphql';
import { User } from 'src/user/entities/user.entity';

@ObjectType()
export class Bill {

    @Field(() => Int)
    id: number;

    @Field(() => Float)
    amount: number;

    @Field()
    due_date: Date;

    @Field()
    details: string;

    @Field(() => User)
    user: User;

    @Field(() => Int)
    user_id: number;

    @Field()
    account: string;
}
