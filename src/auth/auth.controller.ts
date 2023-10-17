import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { SignInInput } from './dto/signin-input';
import { Public } from './decorators/public.decorators';

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) { }

    @Public()
    @Post('login')
    async signin(@Body() signInInput: SignInInput) {
        const response = await this.authService.signin(signInInput);
        return response;
    }
}
