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

-- Quest 970 is already handled by a mix of ACID and DB scripts but is missing a few elements.
-- The ACID script is dropped and the DB script is completed. NOTE: the choice of dropping the ACID script over the DB one has no real
-- reason, one just had to be dropped. This may be reverted in a future update after speaking with ACID devs on what is the proper
-- way to script this quest.

/*!40000 ALTER TABLE `creature_ai_scripts` DISABLE KEYS */;
-- Dropping the ACID script
DELETE FROM creature_ai_scripts WHERE creature_id=4509;
/*!40000 ALTER TABLE `creature_ai_scripts` ENABLE KEYS */;
-- Dropping the texts associated to the scripts
/*!40000 ALTER TABLE `creature_ai_texts` DISABLE KEYS */;
DELETE FROM creature_ai_texts WHERE entry IN (-142, -143, -144, -145, -146, -147);
/*!40000 ALTER TABLE `creature_ai_texts` ENABLE KEYS */;

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
-- Adds texts for quest end script quest 970 (The Tower of Althalaxx part. 4)
-- Source: http://www.wowwiki.com/Quest:The_Tower_of_Althalaxx_(4)
DELETE FROM db_script_string WHERE entry IN (2000005240, 2000005241, 2000005242, 2000005243, 2000005244, 2000005245, 2000005246,
2000005247, 2000005248, 2000005249);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000005240, 'A simple enough task to break this soulstone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005241, 'Soulgem bursts open!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005242, 'In the throes of the Sundering, Ameth\'Aran was at the whim of the terror that gripped the land. There was little hope for survival.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005243, 'Athrikus came to us. He told us that he could save us from harm. He cast a spell upon us to protect us from harm.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005244, 'When the shaking stopped, his true motives were revealed. We were trapped, and he was slowly draining our powers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005245, 'There were hundreds imprisoned by his spell. Now only a few remain in their prisons. He would speak to us sometimes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005246, 'He worried that his power weakened, that soon even we last of his precious soulgems would fade and die.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005247, 'Then we must put an end to Athrikus Narassin. Tell me, spirit, where might we find the other soulgems, to undo his magic?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005248, 'His lieutenant, Ilkrud Magthrull possesses a tome which might indicate the location of the remaining soulgems.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005249, 'Sargath fades into the mist...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_end` DISABLE KEYS */;
-- Adds quest end script quest 970 (The Tower of Althalaxx part. 4)
-- Quest giver (Delgren the Purifier #3663) breaks open required item
-- a NPC (Sargath) is summonned and says a speech before vanishing
-- This improves upon quest end script already present in DB (but without texts)
DELETE FROM `dbscripts_on_quest_end` WHERE id=970;
INSERT INTO `dbscripts_on_quest_end` VALUES
(970, 1, 0, 0, 0, 0, 0, 0, 2000005240, 0, 0, 0, 0, 0, 0, 0, ''),		-- "A simple task enough..."
(970, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),					-- emote speach	
(970, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80526, ''),			-- Turns to the gem
(970, 3, 9, 21191, 5, 0, 0, 0, 0, 0, 0, 0, 3184.06, 190.81, 4.61263, 5.55407, ''), -- Summons the gem
(970, 4, 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),				-- emote breaks the gem (can be 36)
(970, 6, 0, 2, 0, 0, 0, 0, 2000005241, 0, 0, 0, 0, 0, 0, 0, ''),		-- "Soulgemn bursts..."
(970, 8, 10, 4509, 38000, 0, 0, 0, 0, 0, 0, 0, 3184.06, 190.81, 4.61263, 5.55407, 'Sargath ghosth appears'),
(970, 10, 0, 0, 0, 4509, 10, 0, 2000005242, 0, 0, 0, 0, 0, 0, 0, ''),	-- Beginning of Sargath speech
(970, 10, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),			-- and emotes
(970, 15, 0, 0, 0, 4509, 10, 0, 2000005243, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 15, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 20, 0, 0, 0, 4509, 10, 0, 2000005244, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 20, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 25, 0, 0, 0, 4509, 10, 0, 2000005245, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 25, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 30, 0, 0, 0, 4509, 10, 0, 2000005246, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 30, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 35, 0, 0, 0, 0, 0, 0, 2000005247, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 35, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 40, 0, 0, 0, 4509, 10, 0, 2000005248, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 40, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),			-- End of Sargath speech
(970, 46, 0, 2, 0, 0, 0, 0, 2000005249, 0, 0, 0, 0, 0, 0, 0, 'Sargath ghost disappears'),
(970, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.471239, '');			-- Turns back
/*!40000 ALTER TABLE `dbscripts_on_quest_end` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;