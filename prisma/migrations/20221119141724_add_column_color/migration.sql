/*
  Warnings:

  - You are about to drop the column `color` on the `Carts` table. All the data in the column will be lost.
  - Added the required column `color` to the `Products` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Products" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "color" TEXT NOT NULL
);
INSERT INTO "new_Products" ("code", "id", "image", "title", "value") SELECT "code", "id", "image", "title", "value" FROM "Products";
DROP TABLE "Products";
ALTER TABLE "new_Products" RENAME TO "Products";
CREATE TABLE "new_Carts" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "subTotal" INTEGER NOT NULL,
    "total" INTEGER NOT NULL
);
INSERT INTO "new_Carts" ("code", "id", "image", "quantidade", "subTotal", "title", "total", "value") SELECT "code", "id", "image", "quantidade", "subTotal", "title", "total", "value" FROM "Carts";
DROP TABLE "Carts";
ALTER TABLE "new_Carts" RENAME TO "Carts";
CREATE UNIQUE INDEX "Carts_code_key" ON "Carts"("code");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
