/*
  Warnings:

  - You are about to drop the column `ammount` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `ammount` on the `Invoice` table. All the data in the column will be lost.
  - Added the required column `amount` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `amount` to the `Invoice` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bill" DROP COLUMN "ammount",
ADD COLUMN     "amount" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "Invoice" DROP COLUMN "ammount",
ADD COLUMN     "amount" DOUBLE PRECISION NOT NULL;
