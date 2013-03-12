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
ALTER TABLE db_version CHANGE COLUMN pool_update_03 pool_update_04 bit;

/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;

TRUNCATE `pool_creature`;

-- ----------------------------------------------
-- Data merged between UDB and classic DB
-- ----------------------------------------------

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
 (99291, 1601, 70, 'Tormented Officer'),
 (134517, 1601, 30, 'Deathsworn Captain'),
 (12596, 1175, 0, 'Q002518_lady_sathrah'),
 (73001, 1175, 0, 'Q002518_lady_sathrah');
 
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;