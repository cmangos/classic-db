-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

ALTER TABLE db_version CHANGE COLUMN required_z2155_s1785_12235_01_mangos_mangos_string required_z2176_s1809_12258_01_mangos_mangos_string bit;

INSERT INTO mangos_string VALUES
(1509,'Pool %u not found (Maximal pool entry is %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
