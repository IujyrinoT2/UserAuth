import { Controller, Get, Param, ParseIntPipe, UseGuards } from '@nestjs/common';
import { BillService } from './bill.service';
import { Public } from 'src/auth/decorators/public.decorators';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';

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

    @Public()
    // @UseGuards(RefreshTokenGuard)
    @Get(':date/:account')
    async getDateAccountSum(@Param('date', new ParseIntPipe()) date: number,
                            @Param('account') account: string) {
        console.log(`Request made with ${date} and ${account} `);
        let value;
        try{
            value = await this.billService.calcDateAccountSum(date, account);
            console.log(value);
        }catch(error){
            console.log(error);
        }
        return value;
    }

    // @Public()
    // @
    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get()
    getUserbills(@CurrentUserId() userId) {
        return this.billService.findAll(userId);
    }
}
