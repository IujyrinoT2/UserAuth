import { Field, ObjectType } from "@nestjs/graphql";
import { User } from "src/user/entities/user.entity";

@ObjectType()
export class SignResponse {

    @Field()
    access_token: string;

    @Field()
    refresh_token: string;

    @Field(() => User)
    user: User;
}
