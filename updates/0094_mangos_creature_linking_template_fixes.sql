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

-- From TBC-DB creature_linking_template data (restricted to creatures existing in classic database).
-- Entries to backport were spotted by the following query:
-- SELECT tbcdb.creature_linking_template.* 
-- FROM tbcdb.creature_linking_template, mangos.creature_template, mangos.creature_linking_template
-- WHERE tbcdb.creature_linking_template.entry=mangos.creature_template.entry;

/*!40000 ALTER TABLE `creature_linking_template` DISABLE KEYS */;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
-- (2532, 0, 2533, 656, 0),
-- (5277, 109, 5709, 1, 0),
-- (5280, 109, 5709, 1, 0),
-- (5283, 109, 5709, 1, 0),
-- (5719, 109, 5709, 1, 0),
-- (5722, 109, 5709, 1, 0),
-- (7268, 209, 7267, 1, 0),
-- (8120, 209, 7267, 1, 0),
-- (8319, 109, 5709, 1, 0),
 (10316, 229, 10316, 3, 0),
-- (10814, 229, 10363, 7, 0),
-- (11373, 309, 14507, 7, 0),
-- (11661, 409, 12259, 7, 0),
-- (11662, 409, 12098, 7, 0),
-- (11663, 409, 12018, 7, 0),
-- (11664, 409, 12018, 7, 0),
-- (11672, 409, 11988, 39, 0),
-- (11673, 409, 11982, 1024, 0),
-- (12099, 409, 12057, 7, 0),
-- (12119, 409, 12118, 519, 0),
 (12557, 469, 12435, 6, 0),
 (14456, 469, 12557, 143, 0),
-- (14892, 1, 14857, 512, 0),
 (14988, 309, 11382, 4096, 0),
 (15117, 309, 11382, 4096, 0),
 (15276, 531, 15275, 143, 0),
 (15316, 531, 15276, 132, 0),
 (15317, 531, 15276, 132, 0),
 (15334, 531, 15727, 4128, 0),
 (15543, 531, 15511, 143, 0),
 (15544, 531, 15511, 143, 0),
 (15546, 509, 15369, 4112, 0),
 (15589, 531, 15727, 4, 0),
 (15725, 531, 15589, 4096, 0),
 (15726, 531, 15727, 4128, 0),
 (15728, 531, 15727, 4128, 0),
 (15802, 531, 15727, 4128, 0),
 (15904, 531, 15727, 4128, 0),
 (15910, 531, 15727, 4128, 0),
 (15934, 509, 15369, 4096, 0),
-- (15984, 531, 15516, 519, 0),
 (16063, 533, 16062, 143, 0),
 (16064, 533, 16062, 143, 0),
 (16065, 533, 16062, 143, 0),
 (16775, 533, 16062, 256, 0),
 (16776, 533, 16065, 256, 0),
 (16777, 533, 16063, 256, 0),
 (16778, 533, 16064, 256, 0),
 (17647, 0, 17635, 515, 0),
 (17996, 0, 17995, 515, 0);
/*!40000 ALTER TABLE `creature_linking_template` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;