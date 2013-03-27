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

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- We still keep track of the update progress with a temporary column in db_version table
ALTER TABLE db_version CHANGE COLUMN pool_update_01 pool_update_02 bit;

/*!40000 ALTER TABLE `pool_gameobject_template` DISABLE KEYS */;

TRUNCATE `pool_gameobject_template`;

-- ----------------------------------------------
-- Hardpacked Snowdrift: spawning in Alterac
-- Valley during Xmas event
-- ----------------------------------------------

INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
 (180654, 1801, 0, 'Hardpacked Snowdrift (180654)');
 
/*!40000 ALTER TABLE `pool_gameobject_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
