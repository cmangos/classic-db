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

-- TODO : tester le script pour la quest 985 si NOK, le faire
-- TODO : tester l'intÈrÍt de l'objet 5251 aprËs avoir fait la quÍte du glaive
--       garder la quÍte en mettant des requierement si cela est le cas

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Updates quest 986 (A Lost Master): the quest is not available until completion
-- of quest 985 (How Big A Threat (part 2)) when NPC 3695 (Grimclaw) appears in a cut scene
-- and "speaks" with quest giver
-- Currently cutscene is not properly added (placeholder?) as no Darnassus sentinel should
-- spawn at beginning of quest 986, instead, NPC 3695 (Grimclaw) should spawn at end of
-- quest 985 during a cutscene that triggers quest 986.
-- sources: http://www.wowwiki.com/Quest:How_Big_a_Threat%3F_(2)
-- http://old.wowhead.com/quest=986 (comments)
UPDATE quest_template SET PrevQuestId=985, StartScript='' WHERE entry=986;
UPDATE quest_template SET CompleteScript=986 WHERE entry=985;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Updates NPC 3695 (Grimclaw) MovementType to prevent it from moving during the script
UPDATE creature_template SET MovementType=0 WHERE entry=3695;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
DELETE FROM db_script_string WHERE entry IN (2000005200, 2000005201, 2000005202, 2000005203, 2000005204, 2000005205, 2000005206,
2000005207, 2000005208, 2000005209, 2000005210);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000005200, 'What was that noise? It sounded like a roar.!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005201, 'Grimclaw roars at Terenthis to get his attention.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005202, 'Grimclaw? Easy there, my friend... where is your master Volcor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005203, 'Grimclaw begins to moan and roar at Terenthis while stomping his paws on the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005204, 'Whoa, whoa there, my friend. One moment...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005205, 'Terenthis begins to cast a spell on Grimclaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005206, 'There... that should help. Now, tell me what\'s happened, Grimclaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005207, 'Grimclaw roars at Terenthis more, but this time the druid seems to understand the bear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005208, 'I understand, my friend. I shall find someone to help your master. Go back to him now, or at least stay close.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005209, 'Grimclaw roars in acknowledgement at Terenthis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000005210, 'If you have the time, Grimclaw and his master Volcor could use your help. If you\'re interested, speak with me further...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_end` DISABLE KEYS */;
DELETE FROM `dbscripts_on_quest_end` WHERE id=986;
INSERT INTO `dbscripts_on_quest_end` VALUES
(986, 0, 10, 3695, 56000, 0, 0, 0, 0, 0, 0, 0, 6408.39, 400.412, 12.0573, 6.09157, 'Grimclaw appears'),
(986, 2, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6427.02, 404.78, 11.030956, 5.1137, 'Grimclaw arrives'),
(986, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),									-- says emote
(986, 4, 0, 0, 0, 0, 0, 0, 2000005200, 0, 0, 0, 0, 0, 0, 0, ''), 						-- What was that noise...
(986, 5, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6437.9038, 370.2399, 13.9411, 5.1137, 'Grimclaw enters'),
(986, 10, 3, 0, 0, 3695, 50, 4, 0, 0, 0, 0, 0, 0, 0, 4.3688, ''),						-- Grimclaw faces Terenthis
(986, 11, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 11, 0, 2, 0, 0, 0, 0, 2000005201, 0, 0, 0, 0, 0, 0, 0, ''),			    		-- Grimclaw roars at Terenthis
(986, 14, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 14, 0, 0, 0, 0, 0, 0, 2000005202, 0, 0, 0, 0, 0, 0, 0, ''), 						-- Grimclaw? Easy there...
(986, 19, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),							-- says emote
(986, 19, 0, 2, 0, 0, 0, 0, 2000005203, 0, 0, 0, 0, 0, 0, 0, ''),			    		-- Grimclaw begins to moan
(986, 24, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 24, 0, 0, 0, 0, 0, 0, 2000005204, 0, 0, 0, 0, 0, 0, 0, ''), 						-- Whoa, whoa there...
(986, 29, 0, 2, 0, 0, 0, 0, 2000005205, 0, 0, 0, 0, 0, 0, 0, ''), 						-- Terenthis begins to cast...
(986, 30, 15, 6238, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),							-- 'emote' cast spell
(986, 34, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 34, 0, 0, 0, 0, 0, 0, 2000005206, 0, 0, 0, 0, 0, 0, 0, ''), 						-- There... that should help...
(986, 39, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),							-- says emote
(986, 39, 0, 2, 0, 0, 0, 0, 2000005207, 0, 0, 0, 0, 0, 0, 0, ''),			    		-- Grimclaw roars at Terenthis more
(986, 44, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 44, 0, 0, 0, 0, 0, 0, 2000005208, 0, 0, 0, 0, 0, 0, 0, ''), 						-- Whoa, whoa there...
(986, 49, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),							-- says emote
(986, 49, 0, 2, 0, 0, 0, 0, 2000005209, 0, 0, 0, 0, 0, 0, 0, ''),					    -- Grimclaw roars in acknoledgement
(986, 54, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6427.02, 404.78, 11.030956, 5.1137, 'Grimclaw leaves'),	-- Grimclaw leaves
(986, 54, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- says emote
(986, 54, 0, 0, 0, 0, 0, 0, 2000005210, 0, 0, 0, 0, 0, 0, 0, 'quest script end');		-- If you have the time..
/*!40000 ALTER TABLE `dbscripts_on_quest_end` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_involvedrelation` DISABLE KEYS */;
-- Removes quest 961 (Onu is meditating): the quest was never available in game but
-- was nonetheless added to online database by a bot (data digging?)
-- It seems to be related to the quest chain with NPC 3616 (Onu) starting with quest 944
-- (The Master's Glaive). However, the quest 961 only provides item 5251 which is already
-- provided by quest 944 and has no other use beside quest 944. Moreover, text for quest 961
-- suggests that quest 944 is already completed and thus removes all purpose for quest 961.
-- source: http://www.wowwiki.com/Quest:Onu_is_meditating_(Alliance)
DELETE FROM creature_involvedrelation WHERE quest=961;
/*!40000 ALTER TABLE `creature_involvedrelation` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;