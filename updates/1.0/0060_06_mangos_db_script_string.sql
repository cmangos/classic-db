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
ALTER TABLE db_version CHANGE COLUMN condition_update_05 condition_update_06 bit;

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
-- Insert missing DB scripts string from TBC-DB to prevent errors with backported gossip menu scripts from TBC-DB
-- Some of them are TBC only but won't break anything by being there. They are removed in the last query file.
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000163, 'Frenzyheart kill you if you come back. You no welcome here no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000195, 'As you wish...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000196, 'Raliq teach you lesson now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000197, 'F\'woooroonn! Coosh\'coosh pay nothing! Die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000198, 'I choose the third option: KILLING YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000199, 'I\'m free!  The spirit of water returns to my people.  It will bring us the wisdom we need to survive in this harsh land.  I am in your debt, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000200, 'You\'ve freed me!  The winds speak to my people once again and grant us their strength.  I thank you, stranger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000201, 'I am free!  I will ask the spirit of fire to return to us so that my people may have the courage to fight their masters!  I thank you, $r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005428, '...to create a fund for the purchase of hair gel? I like my hair the way it is, thanks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005429, '...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005430, 'I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005431, '...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005432, 'That\'s the funniest thing I\'ve read in a long time. You\'ve just made my day!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005433, 'This... this is a joke, right?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005434, 'Hey, thanks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005435, '%s reads the leaflet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005436, '...receive 50 percent of the clothes deserters? What is this rubbish?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005437, 'What a crazy crowd! You really believe in this nonsense?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `dbscripts_on_gossip` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;