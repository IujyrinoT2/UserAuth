import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { AuthService } from './auth.service';
import { UpdateAuthInput } from './dto/update-auth.input';
import { SignUpInput } from './dto/signup-input';
import { SignResponse } from './dto/sign-response';
import { SignInInput } from './dto/signin-input';
import { LogoutResponse } from './dto/logout-response';
import { Public } from './decorators/public.decorators';
import { NewTokensResponse } from './dto/newTokens-response';
import { CurrentUserId } from './decorators/currentUserId.decorator';
import { CurrentUser } from './decorators/currentUser.decorator';
import { RefreshTokenGuard } from './guards/refresh_token.guard';
import { UseGuards } from '@nestjs/common';
import { Auth } from './entities/auth.entity';

@Resolver(() => Auth)
export class AuthResolver {
    constructor(private readonly authService: AuthService) { }

    @Public()
    @Mutation(() => SignResponse)
    signup(@Args('signUpInput') signUpInput: SignUpInput) {
        return this.authService.signup(signUpInput);
    }

    @Public()
    @Mutation(() => SignResponse)
    signin(@Args('signInInput') signInInput: SignInInput) {
        return this.authService.signin(signInInput);
    }

    @Query(() => [Auth], { name: 'auth' })
    findAll() {
        return this.authService.findAll();
    }

    @Query(() => Auth, { name: 'auth' })
    findOne(@Args('id', { type: () => Int }) id: number) {
        return this.authService.findOne(id);
    }

    @Mutation(() => Auth)
    updateAuth(@Args('updateAuthInput') updateAuthInput: UpdateAuthInput) {
        return this.authService.update(updateAuthInput.id, updateAuthInput);
    }

    @Public()
    @Mutation(() => LogoutResponse)
    logout(@Args('id', { type: () => Int }) id: number) {
        return this.authService.logout(id);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Query(() => String)
    test(@CurrentUserId() id: number) {
        return `${id}`;
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Mutation(() => NewTokensResponse)
    getNewTokens(
        @CurrentUserId() id: number,
        @CurrentUser('refresh_token') refresh_token: string
    ) {
        return this.authService.getNewTokens(id, refresh_token);
    }
}
