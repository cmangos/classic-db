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

ALTER TABLE db_version CHANGE COLUMN required_z2069_sxxxx_xxxxx_01_mangos_skill_discovery required_z2102_s1723_12148_01_mangos_areatrigger_teleport bit;

ALTER TABLE areatrigger_teleport DROP COLUMN required_failed_text;
