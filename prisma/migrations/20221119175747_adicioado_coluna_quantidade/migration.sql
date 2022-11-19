/*
  Warnings:

  - Added the required column `quantidade` to the `Payment` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Payment" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "quantidade" INTEGER NOT NULL
);
INSERT INTO "new_Payment" ("code", "id", "image", "title", "value") SELECT "code", "id", "image", "title", "value" FROM "Payment";
DROP TABLE "Payment";
ALTER TABLE "new_Payment" RENAME TO "Payment";
CREATE UNIQUE INDEX "Payment_code_key" ON "Payment"("code");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
