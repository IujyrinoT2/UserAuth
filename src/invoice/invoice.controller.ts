import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { InvoiceService } from './invoice.service';

@Controller('invoices')
export class InvoiceController {
    constructor(private readonly invoiceService: InvoiceService) { }

    @Get()
    getUserinvoices() {
        return this.invoiceService.findAll();
    }

    @Get(':id')
    getUserinvoice(@Param('id', new ParseIntPipe()) id: number) {
        return this.invoiceService.findOne(id);
    }
}

