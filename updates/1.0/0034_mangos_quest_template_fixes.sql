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

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Fixes punctuation in completion text for quest 842
UPDATE quest_template SET OfferRewardText='Alright, $n. You want to earn your keep with the Horde? Well there\'s plenty to do here, so listen close and do what you\'re told.$B$B$GI see that look in your eyes, do not think I will tolerate any insolence. Thrall himself has declared the Hordes females to be on equal footing with you men. Disrespect me in the slightest, and you will know true pain. I\'m happy to have met you. Thrall will be glad to know that more females like you and I are taking the initiative to push forward in the Barrens.' WHERE entry=842;
-- Fixes text for quest 1489 (Hamuul Runetotem) should not have any RequestItemsText. Removed.
UPDATE quest_template SET RequestItemsText='' WHERE entry=1489;
-- Fixes text for quest 1649 (The Tome of Valor). Text now says woman when it's a female character.
UPDATE quest_template SET OfferRewardText='Ah, you wish to petition me for a test of valor. Splendid.$B$BThere are many tasks throughout the city and surrounding lands that hold much challenge, and they could use a $G man:woman; with your skills.$B$BThis test should not be taken lightly, $N. This, like many things along our path, could take our lives. The Church always wishes to bolster its ranks, but it understands the sacrifices needed to ensure the paladins serving it are worthy.$B$BAre you prepared?' WHERE entry=1649;
-- Fixes text for quest 1946 (Nether-lace Garment)
-- Now says "mage" instead of "$C". Correct text might be "Mage" though.
UPDATE quest_template SET OfferRewardText='Here is your nether-lace, $N.  It is both comfortable and durable, and holds the magic of the laughing sisters\' hair.$B$BEnjoy, and if you find it amenable, please mention so to Deino.  She is a mage on whose good side I wish to stay...' WHERE entry=1946;
-- Fixes text for quest 1821 (Agamand Heirlooms) by an actual player name to $N.
UPDATE quest_template SET RequestItemsText='Do you have the heirlooms, $N?' WHERE entry=1821;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;