/*
  Warnings:

  - A unique constraint covering the columns `[title]` on the table `website_press_releases` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "website_press_releases_title_key" ON "website_press_releases"("title");
