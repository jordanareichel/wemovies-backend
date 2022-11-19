/*
  Warnings:

  - A unique constraint covering the columns `[code]` on the table `Carts` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Carts_code_key" ON "Carts"("code");
