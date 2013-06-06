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

ALTER TABLE db_version CHANGE COLUMN required_z2124_s1750_12189_01_mangos_creature_template_spells required_z2153_s1783_12233_01_mangos_mangos_string bit;

DELETE FROM `mangos_string` WHERE `entry`=175;
INSERT INTO `mangos_string` (`entry`,`content_default`) VALUES
(175, 'Liquid level: %f, ground: %f, type flags %u, status: %d.');
