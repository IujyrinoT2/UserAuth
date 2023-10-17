import { Controller, Get, Param, ParseIntPipe, UseGuards } from '@nestjs/common';
import { InvoiceService } from './invoice.service';
import { Public } from 'src/auth/decorators/public.decorators';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';

@Controller('invoices')
export class InvoiceController {
    constructor(private readonly invoiceService: InvoiceService) { }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get()
    getUserinvoices(@CurrentUserId() userId: number) {
        return this.invoiceService.findAll(userId);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Get(':id')
    getUserinvoice(
        @CurrentUserId() userId: number,
        @Param('id', new ParseIntPipe()) billId: number
    ) {
        return this.invoiceService.findOne(userId, billId);
    }
}

