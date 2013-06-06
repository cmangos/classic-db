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

ALTER TABLE db_version CHANGE COLUMN required_z2258_s1896_12363_02_mangos_npc_vendor_template required_z2319_s1960_12440_01_mangos_spell_area bit;

ALTER TABLE spell_area ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER quest_end;