/*
  Warnings:

  - You are about to alter the column `value` on the `Carts` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.

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
    "total" INTEGER NOT NULL
);
INSERT INTO "new_Carts" ("code", "id", "image", "quantidade", "subTotal", "title", "total", "value") SELECT "code", "id", "image", "quantidade", "subTotal", "title", "total", "value" FROM "Carts";
DROP TABLE "Carts";
ALTER TABLE "new_Carts" RENAME TO "Carts";
CREATE UNIQUE INDEX "Carts_code_key" ON "Carts"("code");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
