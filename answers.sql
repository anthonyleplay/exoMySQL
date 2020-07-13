-- partie 1

CREATE DATABASE languages;
CREATE DATABASE webDevelopment CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET utf8;
DROP DATABASE languages;
DROP DATABASE IF EXISTS frameworks;
DROP DATABASE IF EXISTS languages;

-- partie 2

CREATE DATABASE IF NOT EXISTS webDevelopment CHARACTER SET utf8;
USE webDevelopment;
CREATE TABLE languages
(
    id INT PRIMARY KEY DEFAULT,
    language VARCHAR(50)
);
CREATE TABLE tools
(
    id INT PRIMARY KEY DEFAULT,
    tool VARCHAR(50)
);
CREATE TABLE frameworks
(
    id INT PRIMARY KEY DEFAULT,
    framework VARCHAR(50)
);
CREATE TABLE libraries
(
    id INT PRIMARY KEY DEFAULT,
    librarie VARCHAR(50)
);
CREATE TABLE ide
(
    id INT PRIMARY KEY DEFAULT,
    ideName VARCHAR(50)
);
CREATE TABLE frameworks 
(
    id INT PRIMARY KEY DEFAULT,
    name VARCHAR(50)
);

-- partie 3

-- partie 4