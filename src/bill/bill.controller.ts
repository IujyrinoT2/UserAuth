import { BadRequestException, Controller, Get, Param, ParseIntPipe, UseGuards } from '@nestjs/common';
import { BillService } from './bill.service';
import { Public } from 'src/auth/decorators/public.decorators';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';
import { calculateBalanceResponse } from './dto/calculate-balance.response';
import { AccessTokenGuard } from 'src/auth/guards/access_token.guard';

@Controller('bills')
export class BillController {

    constructor(private readonly billService: BillService) { }

    @Public()
    @UseGuards(RefreshTokenGuard)
    //@Get('any-string')
    @Get(':id')
    getUserbill(
        @CurrentUserId() userId,
        @Param('id', new ParseIntPipe()) billId: number
    ) {
        return this.billService.findOne(userId, billId);
    }

    // Send account balance to excel
    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get(':date/:account')
    async getDateAccountSum(@Param('date', new ParseIntPipe()) date: number,
                            @Param('account') account: string): Promise<calculateBalanceResponse> {
        console.log(`Request made with ${date} and ${account} and ${RefreshTokenGuard}`);
        let value;
        try{
            value = await this.billService.calcDateAccountSum(date, account);
            console.log(value);
        }catch(error){
            console.log(error);
        }
        return value;
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get()
    getUserbills(@CurrentUserId() userId) {
        return this.billService.findAll(userId);
    }
}
