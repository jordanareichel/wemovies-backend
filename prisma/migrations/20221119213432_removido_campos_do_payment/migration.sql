/*
  Warnings:

  - You are about to drop the column `code` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `quantidade` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Payment` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Payment" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "value" TEXT NOT NULL
);
INSERT INTO "new_Payment" ("id", "value") SELECT "id", "value" FROM "Payment";
DROP TABLE "Payment";
ALTER TABLE "new_Payment" RENAME TO "Payment";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
