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

/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
-- Removes TBC only condition entries from conditions table (based on DB error log of
-- previous revision of the DB, mentionning conditions related to quest/item/faction/spell
-- not available in classic)
DELETE FROM conditions WHERE condition_entry IN
(1, 6, 16, 25, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
41, 42, 43, 44, 45, 50, 63, 74, 89, 90, 91, 92, 93, 94, 95,
96, 97, 98, 99, 100, 101, 102, 103, 110, 111, 112, 128, 129,
130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141,
142, 143, 144, 149, 156, 157, 158, 159, 160, 161, 162, 163,
164, 165, 166, 167, 170, 171, 175, 176, 177, 178, 179, 180,
181, 182, 183, 184, 186, 189);
-- Removes condition entries from conditions table that are dependant of conditions 
-- entries deleted by the above query and thus become irrelevant
DELETE FROM conditions WHERE condition_entry IN
(197, 198, 199, 200, 201, 202, 203, 212, 218, 222, 223, 224,
225, 231, 232, 233, 234);
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;