-- CreateTable
CREATE TABLE "Carts" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "subTotal" INTEGER NOT NULL,
    "total" INTEGER NOT NULL
);
