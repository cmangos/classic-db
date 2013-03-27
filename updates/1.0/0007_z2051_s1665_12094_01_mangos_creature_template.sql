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

ALTER TABLE db_version CHANGE COLUMN required_z2047_s1660_12087_02_mangos_command required_z2051_s1665_12094_01_mangos_creature_template bit;

UPDATE creature_template SET flags_extra=flags_extra|0x800;
