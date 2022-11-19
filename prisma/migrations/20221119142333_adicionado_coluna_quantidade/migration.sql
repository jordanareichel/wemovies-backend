/*
  Warnings:

  - Added the required column `amount` to the `Products` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Products" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "color" TEXT NOT NULL,
    "amount" INTEGER NOT NULL
);
INSERT INTO "new_Products" ("code", "color", "id", "image", "title", "value") SELECT "code", "color", "id", "image", "title", "value" FROM "Products";
DROP TABLE "Products";
ALTER TABLE "new_Products" RENAME TO "Products";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
