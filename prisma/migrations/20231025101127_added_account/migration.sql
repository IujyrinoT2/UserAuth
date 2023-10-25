/*
  Warnings:

  - Added the required column `account` to the `Bill` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bill" ADD COLUMN     "account" TEXT NOT NULL;
