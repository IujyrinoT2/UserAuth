import { Field, ObjectType } from "@nestjs/graphql";
import { IsString } from "class-validator";

@ObjectType()
export class FailedSigninResponse {

    @IsString()
    @Field()
    message: string;

    @IsString()
    @Field()
    errorstack: string;
}