# Short script to create the (empty) database and setup MySQL
CREATE DATABASE IF NOT EXISTS translate5 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

SET GLOBAL time_zone = 'Europe/Berlin';
SET SESSION time_zone = 'Europe/Berlin';

SET GLOBAL sql_mode = 'ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode = 'ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';