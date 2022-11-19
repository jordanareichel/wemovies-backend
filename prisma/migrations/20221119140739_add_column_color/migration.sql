/*
  Warnings:

  - Added the required column `color` to the `Carts` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Carts" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "subTotal" INTEGER NOT NULL,
    "total" INTEGER NOT NULL,
    "color" TEXT NOT NULL
);
INSERT INTO "new_Carts" ("code", "id", "image", "quantidade", "subTotal", "title", "total", "value") SELECT "code", "id", "image", "quantidade", "subTotal", "title", "total", "value" FROM "Carts";
DROP TABLE "Carts";
ALTER TABLE "new_Carts" RENAME TO "Carts";
CREATE UNIQUE INDEX "Carts_code_key" ON "Carts"("code");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
