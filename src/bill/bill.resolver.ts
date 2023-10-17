import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { BillService } from './bill.service';
import { Bill } from './entities/bill.entity';
import { CreateBillInput } from './dto/create-bill.input';
import { UpdateBillInput } from './dto/update-bill.input';
import { Public } from 'src/auth/decorators/public.decorators';
import { UseGuards } from '@nestjs/common';
import { RefreshTokenGuard } from 'src/auth/guards/refresh_token.guard';
import { CurrentUserId } from 'src/auth/decorators/currentUserId.decorator';

@Resolver(() => Bill)
export class BillResolver {

    constructor(private readonly billService: BillService) { }

    @Mutation(() => Bill)
    createBill(@Args('createBillInput') createBillInput: CreateBillInput) {
        return this.billService.create(createBillInput);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Query(() => [Bill], { name: 'bills' })
    findAll(@CurrentUserId() userId: number) {
        return this.billService.findAll(userId);
    }

    @Public()
    @UseGuards(RefreshTokenGuard)
    @Query(() => Bill, { name: 'bill' })
    findOne(
        @CurrentUserId() userId: number,
        @Args('id', { type: () => Int }) billId: number
    ) {
        return this.billService.findOne(userId, billId);
    }

    @Mutation(() => Bill)
    updateBill(@Args('updateBillInput') updateBillInput: UpdateBillInput) {
        return this.billService.update(updateBillInput.id, updateBillInput);
    }

    @Mutation(() => Bill)
    removeBill(@Args('id', { type: () => Int }) id: number) {
        return this.billService.remove(id);
    }
}
