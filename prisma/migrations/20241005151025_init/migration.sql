-- CreateTable
CREATE TABLE "order" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "amount" DECIMAL NOT NULL,
    "pay_amount" DECIMAL NOT NULL,
    "status" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "deposit_wallet" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "wallet_id" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "withdraw_wallet" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "wallet_id" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "wallet" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "public_key" TEXT NOT NULL,
    "private_key" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL
);
