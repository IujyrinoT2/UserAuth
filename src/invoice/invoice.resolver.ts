import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { InvoiceService } from './invoice.service';
import { Invoice } from './entities/invoice.entity';
import { CreateInvoiceInput } from './dto/create-invoice.input';
import { UpdateInvoiceInput } from './dto/update-invoice.input';
import { Public } from 'src/auth/decorators/public.decorators';
import { UseGuards } from '@nestjs/common';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';

@Resolver(() => Invoice)
export class InvoiceResolver {
    constructor(private readonly invoiceService: InvoiceService) { }

    @Mutation(() => Invoice)
    createInvoice(@Args('createInvoiceInput') createInvoiceInput: CreateInvoiceInput) {
        return this.invoiceService.create(createInvoiceInput);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Query(() => [Invoice], { name: 'invoices' })
    findAll(@CurrentUserId() userId: number) {
        return this.invoiceService.findAll(userId);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Query(() => Invoice, { name: 'invoice' })
    findOne(
        @CurrentUserId() userId: number,
        @Args('id', { type: () => Int }) invoiceId: number) {
        return this.invoiceService.findOne(userId, invoiceId);
    }

    @Mutation(() => Invoice)
    updateInvoice(@Args('updateInvoiceInput') updateInvoiceInput: UpdateInvoiceInput) {
        return this.invoiceService.update(updateInvoiceInput.id, updateInvoiceInput);
    }

    @Mutation(() => Invoice)
    removeInvoice(@Args('id', { type: () => Int }) id: number) {
        return this.invoiceService.remove(id);
    }
}
