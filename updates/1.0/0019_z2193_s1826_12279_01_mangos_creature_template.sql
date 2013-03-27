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

ALTER TABLE db_version CHANGE COLUMN required_z2192_s1825_12278_01_mangos_creature_template required_z2193_s1826_12279_01_mangos_creature_template bit;

UPDATE creature_template SET flags_extra=flags_extra & ~0x800;
