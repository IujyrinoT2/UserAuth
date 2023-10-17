import { Test, TestingModule } from '@nestjs/testing';
import { BillResolver } from './bill.resolver';
import { BillService } from './bill.service';

describe('BillResolver', () => {
  let resolver: BillResolver;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BillResolver, BillService],
    }).compile();

    resolver = module.get<BillResolver>(BillResolver);
  });

  it('should be defined', () => {
    expect(resolver).toBeDefined();
  });
});
