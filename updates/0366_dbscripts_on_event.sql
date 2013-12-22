-- Fixed scripts for quest 1022 (The Howling Vale) and quest 1043 (The Scythe of Elune)

-- Removed AI script for creature 3946 (Velinde Starsong)
-- because this NPC is spawned in two different quests and
-- and thus should not have the same script in both
-- The scripts are now handled by DB
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3946;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-658, -659, -660);

UPDATE `creature_template` SET `AIName`= '', `equipment_id` = 25004 WHERE `entry` = 3946;

-- Defined DB string entries for easier backport
SET @STRING1 := 2000000238;
SET @STRING2 := 2000000239;
SET @STRING3 := 2000000240;
SET @STRING4 := 2000000241;
SET @STRING5 := 2000000242;

-- Added script for quest 1022 (The Howling Vale)
-- Source: http://www.wowwiki.com/Quest:The_Howling_Vale
-- http://www.wowhead.com/quest=1022
DELETE FROM `dbscripts_on_event` WHERE `id` = 663;
INSERT INTO `dbscripts_on_event` VALUES
(663, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, 3161.682, -1211.122, 214.949, 4.669, 'spawn Velinde Starsong'),
(663, 2, 28, 8, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kneel'),
(663, 5, 0, 0, 0, 3946, 10, 0, @STRING1, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 0, 0, 0, 3946, 10, 0, @STRING2, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 1, 20, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 0, 0, 0, 3946, 10, 0, @STRING3, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added script for quest 1043 (The Scythe of Elune)
-- Source: http://www.wowwiki.com/Quest:The_Scythe_of_Elune
-- http://www.wowhead.com/quest=1043
DELETE FROM `dbscripts_on_event` WHERE `id` = 664;
INSERT INTO `dbscripts_on_event` VALUES
(664, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, -11142.509, -1151.725, 43.598, 4.849, 'spawn Velinde Starsong'),
(664, 5, 0, 0, 0, 3946, 10, 0, @STRING4, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 0, 0, 0, 3946, 10, 0, @STRING5, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 15, 1, 18, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cries');

-- Added DB strings for the scripts above
DELETE FROM `db_script_string` WHERE `entry` IN (@STRING1, @STRING2, @STRING3, @STRING4, @STRING5);
INSERT INTO `db_script_string` VALUES
(@STRING1, 'The numbers of my companions dwindles, goddess, and my own power shall soon be insufficient to hold back the demons of Felwood.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING2, 'Goddess, grant me the power to overcome my enemies! Hear me, please, my need is desperate and my cause is just!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING3, 'What... what is this? Could this by the answer to my prayers? Elune has granted me a weapon -- this scythe -- to defeat the demons.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING4, 'I have failed... I have failed in my duty... failed my people... The worgen run rampant, and the Scythe of my goddess is lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING5, 'This evil I have unleashed... In whose hand does the power my goddess granted to me now lie... By whose hand is it directed?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
