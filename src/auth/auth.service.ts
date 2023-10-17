import { ForbiddenException, Injectable } from '@nestjs/common';
import { UpdateAuthInput } from './dto/update-auth.input';
import { SignUpInput } from './dto/signup-input';
import { PrismaService } from 'src/prisma/prisma.service';
import { JwtService } from '@nestjs/jwt';
import { ConfigService } from '@nestjs/config';
import * as argon from 'argon2';
import { SignInInput } from './dto/signin-input';
import { log } from 'console';

@Injectable()
export class AuthService {

    constructor(private prisma: PrismaService,
        private jwtService: JwtService,
        private configService: ConfigService) { }

    async signup(signUpInput: SignUpInput) {
        const hashed_password = await argon.hash(signUpInput.password);
        const user = await this.prisma.user.create({
            data: {
                name: signUpInput.name,
                hashed_password, // same as hashed_password=hashed_password
                email: signUpInput.email
            }
        });
        const { access_token, refresh_token } = await this.createTokens(
            user.id,
            user.email,
        );
        await this.updateRefreshToken(user.id, refresh_token);
        return { access_token, refresh_token, user }
    }

    async signin(signInInput: SignInInput) {

        const user = await this.prisma.user.findUnique({
            where: { email: signInInput.email }
        });

        if (!user) {
            throw new ForbiddenException('Access Denied');
        }
        else {
            const matchPassword = await argon.verify(user.hashed_password,
                signInInput.password);
            if (!matchPassword)
                throw new ForbiddenException('Access Denied');
        }

        const { access_token, refresh_token } = await this.createTokens(user.id, user.email);
        await this.updateRefreshToken(user.id, refresh_token);

        return { access_token, refresh_token, user }
    }

    findAll() {
        return `This action returns all auth`;
    }

    findOne(id: number) {
        return `This action returns a #${id} auth`;
    }

    update(id: number, updateAuthInput: UpdateAuthInput) {
        return `This action updates a #${id} auth`;
    }

    remove(id: number) {
        return `This action removes a #${id} auth`;
    }

    async createTokens(id: number, email: string) {

        const access_token = this.jwtService.sign({
            id,
            email,
        }, { expiresIn: '1h', secret: this.configService.get('ACCESS_TOKEN_SECRET') });

        const refresh_token = this.jwtService.sign({
            id,
            email,
            access_token
        }, { expiresIn: '7d', secret: this.configService.get('REFRESH_TOKEN_SECRET') });

        return { access_token, refresh_token }
    }

    async updateRefreshToken(id: number, refresh_token: string) {
        const hashed_refresh_token = await argon.hash(refresh_token);
        await this.prisma.user.update({
            where: { id },
            data: { hashed_refresh_token }
        });
    }

    async logout(id: number) {

        await this.prisma.user.updateMany({
            where: {
                id,
                hashed_refresh_token: { not: null },
            },
            data: { hashed_refresh_token: null },
        });
        return { loggedOut: true }
    }

    // r_token == refresh_token
    async getNewTokens(id: number, r_token: string) {


        const user = await this.prisma.user.findUnique({
            where: { id }
        });


        if (!user) {
            throw new ForbiddenException('Access Denied');
        }

        const matchRefreshToken = await argon.verify(
            user.hashed_refresh_token,
            r_token
        );
        if (!matchRefreshToken) {
            throw new ForbiddenException('Access Denied');
        }
        const { access_token, refresh_token } = await this.createTokens(user.id, user.email);
        await this.updateRefreshToken(user.id, refresh_token);
        return { access_token, refresh_token, user };
    }
}
