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
-- Removes creature 10261 from spawning
-- Burning Felhounds in Blackrock Spire should only spawn when summoned
DELETE FROM creature WHERE id=10261;
-- Changes position for creature 14528 (Precious) which fell through ground
-- Changes position_z to prevent the NPC from falling through the ground.
-- The NPC is probably supposed to patrol though.
UPDATE creature SET position_z=-265.614 WHERE id=14528;
-- Improves position of creatures
-- Anduin Wrynn (1747)
-- Highlord Bolvar Fordragon (1748)
-- Lady Katrana Prestor (1749)
-- Based on screenshots.
UPDATE creature SET position_x=-8439.71, position_y=331.023, orientation=2.34047 WHERE id=1747;
UPDATE creature SET position_x=-8439.98, position_y=329.392, orientation=2.293 WHERE id=1748;
UPDATE creature SET position_x=-8437.94, position_y=331.014, orientation=2.34047 WHERE id=1749;
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;