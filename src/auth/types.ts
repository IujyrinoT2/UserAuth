import { type } from "os";

export type JwtPayload = {
    email: string;
    id: number;
}

export type JwtPayloadWithRefreshToken = JwtPayload & { refresh_token: string };
