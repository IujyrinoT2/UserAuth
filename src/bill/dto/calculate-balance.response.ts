import { Field, Float, ObjectType } from "@nestjs/graphql";
import { IsNotEmpty, IsOptional, IsString } from "class-validator";

@ObjectType()
export class calculateBalanceResponse {
    
    @Field(() => Float, {nullable: true})
    @IsOptional()
    balance?: number;

    @IsNotEmpty()
    @IsString()
    @Field()
    message: string;
}