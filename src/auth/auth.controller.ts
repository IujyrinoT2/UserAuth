import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { SignInInput } from './dto/signin-input';
import { Public } from './decorators/public.decorators';
import { FailedSigninResponse } from './dto/signin-failed-response';

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) { }

    @Public()
    @Post('login')
    async signin(@Body() signInInput: SignInInput) {
        console.log(`login request made with ${signInInput.email} and ${signInInput.password}`);
        let response = null;
        try {
        response = await this.authService.signin(signInInput);
        return response;
        } catch(error) {
            const failedSigninResponse: FailedSigninResponse = {
                message: "Failed to login",
                errorstack: error
            }
            console.log(failedSigninResponse.message + "\n" + failedSigninResponse.errorstack);
            
            response = failedSigninResponse;
            return response;
        }
    }
}
