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

ALTER TABLE db_version CHANGE COLUMN required_z2067_sxxxx_xxxxx_01_mangos_mangos_string required_z2069_sxxxx_xxxxx_01_mangos_skill_discovery bit;

DROP TABLE IF EXISTS skill_discovery_template;
DROP TABLE IF EXISTS skill_extra_item_template;
