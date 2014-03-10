-- File:	SQL
-- Name:	295_Argent_Officers_-_Messed_up_Quest-IDs
-- Desc:	Corrections to Argent Dawn Commission Quests and Restore-Options
-- Auth:	Shubu
-- Date:	2014/03/06

-- -------------------------------------------------------------------------

-- Argent Quartermaster Lightspark
DELETE FROM `creature_questrelation` WHERE `id` = 10857 AND `quest` = 5405;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10857 AND `quest` = 5405;

-- Duke Nicholas Zverenoff
DELETE FROM `creature_questrelation` WHERE `id` = 11039 AND `quest` = 5503;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11039, 5503);
DELETE FROM `creature_involvedrelation` WHERE `id` = 11039 AND `quest` = 5503;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11039, 5503);

-- Argent Officer Pureheart
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` IN (5402, 5403);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10840, 5402);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10840, 5403);
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` IN (5402, 5403);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10840, 5402);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10840, 5403);
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` = 5407;
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` = 5408;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` = 5407;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` = 5408;

-- Argent Officer Garush
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` IN (5405, 5407, 5408);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5405);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5407);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5408);
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` IN (5405, 5407, 5408);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5405);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5407);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5408);
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5402;
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5403;
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5503;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5402;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5403;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5503;

-- overhaul quests (faction-requirements, rep-gain, grouping)
UPDATE `quest_template` SET `RequiredRaces` = 178, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5405;
UPDATE `quest_template` SET `RequiredRaces` = 178, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5406;
UPDATE `quest_template` SET `RequiredRaces` = 178, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5407;
UPDATE `quest_template` SET `RequiredRaces` = 178, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5408;

UPDATE `quest_template` SET `RequiredRaces` = 77, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5401;
UPDATE `quest_template` SET `RequiredRaces` = 77, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5402;
UPDATE `quest_template` SET `RequiredRaces` = 77, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5403;
UPDATE `quest_template` SET `RequiredRaces` = 77, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5404;

UPDATE `quest_template` SET `RequiredRaces` = 255, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5503;
UPDATE `quest_template` SET `RequiredRaces` = 255, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5508;
UPDATE `quest_template` SET `RequiredRaces` = 255, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5509; 
UPDATE `quest_template` SET `RequiredRaces` = 255, `RewRepFaction1` = 529, `RewRepValue1` = 25 WHERE `entry` = 5510; 

-- Conditions
-- Quest Argent Dawn Commission - Alliance
DELETE FROM `conditions` WHERE `condition_entry` = 106;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (106, 8, 5401, 0);
-- Delete old entries
-- Quest Argent Dawn Commission - Horde
-- condition_entry 109
-- Quest Argent Dawn Commission - Both
-- condition_entry 110
-- Item Argent Dawn Commission
-- condition_entry 90
-- Quest Horde or quest Alliance 
DELETE FROM `conditions` WHERE `condition_entry` = 141;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (141, -2, 106, 109);
-- Quest Horde or quest alliance or quest both side
UPDATE `conditions` SET `type` = -2, `value1` = 110, `value2` = 141 WHERE `condition_entry` = 142;
-- either quest and missing ADC
UPDATE `conditions` SET `value2` = 142 WHERE `condition_entry` = 143;

UPDATE `gossip_menu_option` SET `condition_id` = 143 WHERE `menu_id` IN (3421, 3441, 3461) AND `id` = 0;