import { ObjectType, Field, Int } from '@nestjs/graphql';

@ObjectType()
export class Auth {
    @Field(() => Int, { description: 'ExampleField (placeholder)' })
    exampleField: number;
}

