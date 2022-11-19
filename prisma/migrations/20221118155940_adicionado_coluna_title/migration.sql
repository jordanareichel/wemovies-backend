/*
  Warnings:

  - Added the required column `title` to the `Products` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Products" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" TEXT NOT NULL
);
INSERT INTO "new_Products" ("code", "id", "image", "value") SELECT "code", "id", "image", "value" FROM "Products";
DROP TABLE "Products";
ALTER TABLE "new_Products" RENAME TO "Products";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
