 -- partie 1

CREATE DATABASE `languages`;
CREATE DATABASE `webDevelopment` CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET utf8;
DROP DATABASE `languages`;
DROP DATABASE IF EXISTS `frameworks`;
DROP DATABASE IF EXISTS `languages`;

-- partie 2

CREATE DATABASE IF NOT EXISTS `webDevelopment` CHARACTER SET utf8;
USE `webDevelopment`;
CREATE TABLE `languages` ( `id` INT PRIMARY KEY DEFAULT, `language` VARCHAR(100) );
CREATE TABLE `tools` ( `id` INT PRIMARY KEY DEFAULT, `tool` VARCHAR(100) );
CREATE TABLE `frameworks` ( `id` INT PRIMARY KEY DEFAULT, `framework` VARCHAR(100) );
CREATE TABLE `libraries` ( `id` INT PRIMARY KEY DEFAULT, `librarie` VARCHAR(100) );
CREATE TABLE `ide` ( `id` INT PRIMARY KEY DEFAULT, `ideName` VARCHAR(100) );
CREATE TABLE `frameworks` ( `id` INT PRIMARY KEY DEFAULT, `name` VARCHAR(100) );
DROP TABLE IF EXISTS `tools`;
DROP TABLE `libraries`;
DROP TABLE `ide`;
--tp part2
CREATE DATABASE IF NOT EXISTS `codex` CHARACTER SET utf8;
USE `codex`;
CREATE TABLE `clients` 
( 
    `id` INT PRIMARY KEY NOT NULL, 
    `lastname` VARCHAR(100),
    `firstname` VARCHAR(100),
    `birthDate` DATE,
    `address` VARCHAR(100),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(100)
);

 -- partie 3 
 
CREATE DATABASE IF NOT EXISTS `webDevelopment` CHARACTER SET utf8;
USE `webDevelopment`;

ALTER TABLE `languages`;
ADD `versions` VARCHAR(100);

ALTER TABLE `frameworks`;
ADD `version` INT;

ALTER TABLE `languages`;
CHANGE `versions` `version` VARCHAR(100);

ALTER TABLE `frameworks`;
CHANGE `name` `framework` VARCHAR(100);

ALTER TABLE `frameworks`;
   ALTER COLUMN `version` VARCHAR(10);

--tp part3
USE `codex`;
ALTER TABLE `clients`;
DROP `secondPhoneNumber`;

ALTER TABLE `clients`;
CHANGE `firstPhoneNumber` `phoneNumber` INT;

ALTER TABLE `clients`;
   ALTER COLUMN `phoneNumber` VARCHAR(10);

ALTER TABLE `clients`;
ADD `zipCode` VARCHAR(100);

ALTER TABLE `clients`;
ADD `city` VARCHAR(100);


 -- partie 4