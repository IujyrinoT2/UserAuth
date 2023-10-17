import { ExecutionContext, createParamDecorator } from "@nestjs/common";
import { JwtPayloadWithRefreshToken } from "../types";
import { GqlExecutionContext } from "@nestjs/graphql";

export const CurrentUserId = createParamDecorator(
    (_: undefined, context: ExecutionContext) => {
        const ctx = GqlExecutionContext.create(context);
        const req = ctx.getContext().req;
        console.log(req.user.id, 'ID!');

        return req.user.id;
    }
) 
