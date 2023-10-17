import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { BillService } from './bill.service';
import { Public } from 'src/auth/decorators/public.decorators';

@Controller('bills')
export class BillController {
    constructor(private readonly billService: BillService) { }

    // @Public()
    // @
    @Get()
    getUserbills() {
        return this.billService.findAll();
    }

    @Get(':id')
    getUserbill(@Param('id', new ParseIntPipe()) id: number) {
        return this.billService.findOne(id);
    }
}
