-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_task" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "describe" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "isDone" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_task" ("createdAt", "describe", "id", "isDone", "updatedAt") SELECT "createdAt", "describe", "id", "isDone", "updatedAt" FROM "task";
DROP TABLE "task";
ALTER TABLE "new_task" RENAME TO "task";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
