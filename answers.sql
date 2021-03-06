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
CREATE TABLE `languages` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `language` VARCHAR(100) );
CREATE TABLE `tools` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `tool` VARCHAR(100) );
CREATE TABLE `frameworks` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `name` VARCHAR(100) );
CREATE TABLE `libraries` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `librarie` VARCHAR(100) );
CREATE TABLE `ide` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `ideName` VARCHAR(100) );
CREATE TABLE IF NOT EXISTS `frameworks` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `name` VARCHAR(100) );
DROP TABLE IF EXISTS `tools`;
DROP TABLE `libraries`;
DROP TABLE `ide`;
--tp part2
CREATE DATABASE IF NOT EXISTS `codex` CHARACTER SET utf8;
USE `codex`;
CREATE TABLE `clients` 
( 
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
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

ALTER TABLE `languages`
ADD `versions` VARCHAR(100);

ALTER TABLE `frameworks`
ADD `version` INT;

ALTER TABLE `languages`
CHANGE `versions` `version` VARCHAR(100);

ALTER TABLE `frameworks`
CHANGE `name` `framework` VARCHAR(100);

ALTER TABLE `frameworks`
-- MODIFY `version` VARCHAR(10);
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

USE `webDevelopment`;

INSERT INTO `languages` (`language`, `version`)
 VALUES
 ('JavaScript', 'version 5'),
 ('PHP', 'version 5.2'),
 ('PHP', 'version 5.4'),
 ('HTML', 'version 5.1'),
 ('JavaScript', 'version 6'),
 ('JavaScript', 'version 7'),
 ('JavaScript', 'version 8'),
 ('PHP', 'version 7');

 INSERT INTO `frameworks` (`framework`, `version`)
 VALUES
 ('Symfony', '2.8'),
 ('Symfony', '3'),
 ('Jquery', '1.6'),
 ('Jquery', '2.10');

 -- partie 5

-- Dans la table languages, afficher toutes les données de la table.
SELECT * FROM `languages`;

-- Dans la table languages, afficher toutes les versions de PHP.
SELECT `version` FROM `languages` WHERE `language` = 'PHP';

-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT `version` FROM `languages` WHERE `language` = 'PHP' OR `language` = 'JavaScript'; 

-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT * FROM `languages` WHERE `id` = 3 OR `id` = 5 OR `id` = 7; 

-- Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT * FROM `languages` WHERE `language` = 'javaScript' LIMIT 2;

-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
SELECT * FROM `languages` WHERE `language` <> 'PHP';

-- Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT * FROM `languages` ORDER BY `language`;


-- partie 6

-- Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

-- Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
SELECT * FROM `frameworks` WHERE `id` IN (1, 3);

-- Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
SELECT * FROM `ide` WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31' ;

--partie 7

-- Dans la table languages, supprimer toutes les lignes parlant de HTML.
DELETE FROM `languages` 
WHERE `language` LIKE '%HTML%';

-- Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
UPDATE `frameworks`
SET `framework` = 'Symfony2'
WHERE `framework` = 'Symfony';

-- Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.
UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `language` = 'JavaScript' AND `version` = 'version 5';

-- partie 8

USE `development`;

-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT *
FROM `languages`
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`;

-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT *
FROM `languages`
INNER JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`;

-- Afficher le nombre de framework qu'a un langage.
SELECT `languages`.`name`, COUNT(`frameworks`.`name`)
FROM `languages`
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`;


-- Afficher les langages ayant plus de 3 frameworks.
SELECT `languages`.`name`, COUNT(`frameworks`.`name`)
FROM `languages`
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`
HAVING COUNT(`frameworks`.`name`) > '3';