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

/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
-- Added text to creature 2215 (High Executor Darthalia)
INSERT INTO npc_gossip VALUES (15542, 50013);
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Added text to creature 2215 (High Executor Darthalia)
INSERT INTO npc_text VALUES (50013,'In order to serve the Dark Lady and Varimathras we need to advance the front on the Human Infestation.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);
-- Corrected mistake in previous update [0035]
DELETE FROM npc_text WHERE id=50010;
INSERT INTO npc_text VALUES (50010,'You must be hard up to be wandering these Badlands, $c. Hard up like me.$B$BOr maybe you\'re here because you\'re crazy. Crazy, like me.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;