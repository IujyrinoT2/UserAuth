import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthResolver } from './auth.resolver';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from 'src/prisma/prisma.service';
import { PassportStrategy } from '@nestjs/passport';
import { AccessTokenStrategy } from './stategies/access_token.strategy';
import { RefreshTokenStrategy } from './stategies/refresh_token.strategy';
import { AuthController } from './auth.controller';

@Module({
    providers: [
        AuthResolver,
        AuthService,
        JwtService,
        PrismaService,
        AccessTokenStrategy,
        RefreshTokenStrategy
    ],
    controllers: [AuthController],
})
export class AuthModule { }
