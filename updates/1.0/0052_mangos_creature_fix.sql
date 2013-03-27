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

/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
-- Creature 1225 (Ol' Sooty) was removed its elite flag and moved from its den in TBC
-- The elite flag is already fixed in DB put creature is still in TBC/WotLK coordinates
-- This moves creature id 1225 (guid 8877 in classic DB) back to its original location
-- and gives it random movement near its den.
UPDATE creature SET position_x=-5653.35, position_y=-3039.6, position_z=385.959, orientation=0.84825, spawndist=10, MovementType=1 WHERE id=1225;
-- Removes the placeholder put in its place in TBC (guid but we also add the creature
-- id 1189 in the query to avoid any mistake).
DELETE FROM creature WHERE guid=9049 AND id=1189;
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_addon` DISABLE KEYS */;
DELETE FROM creature_addon WHERE guid=9049;
/*!40000 ALTER TABLE `creature_addon` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;