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

ALTER TABLE db_version CHANGE COLUMN required_z2187_s1820_12269_08_mangos_mail_loot_template required_z2187_s1820_12269_09_mangos_pickpocketing_loot_template bit;

ALTER TABLE mail_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;
