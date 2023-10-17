import { Controller, Get, Param, ParseIntPipe, UseGuards } from '@nestjs/common';
import { BillService } from './bill.service';
import { Public } from 'src/auth/decorators/public.decorators';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';

@Controller('bills')
export class BillController {
    constructor(private readonly billService: BillService) { }

    // @Public()
    // @
    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get()
    getUserbills(@CurrentUserId() userId) {
        return this.billService.findAll(userId);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get(':id')
    getUserbill(
        @CurrentUserId() userId,
        @Param('id', new ParseIntPipe()) billId: number
    ) {
        return this.billService.findOne(userId, billId);
    }
}
