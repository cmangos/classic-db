-- Add your query below.
-- https://github.com/vmangos/core/commit/175258ae4cb43e791761c031c9a4b70bb3cb1a6b

-- Remove Hillsbrad Human Skull from pickpocketing loot table.
-- https://www.wowhead.com/tbc/item=3692/hillsbrad-human-skull#comments:id=117060 - privat server corruption?
-- https://web.archive.org/web/20050118042841/http://wow.allakhazam.com:80/db/item.html?witem=3692
-- https://web.archive.org/web/20080507112136/http://wow.allakhazam.com/db/item.html?witem=3692
DELETE FROM `pickpocketing_loot_template` WHERE item = 3692; -- comments say something about this but might be faulty privat server data
DELETE FROM `creature_loot_template` WHERE `entry` IN (2436,7073,14281) AND `item` = 3692; -- for wotlkmangos, corrupted data
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -75 WHERE `item` = 3692; -- -80 & -100 might be even lower, humans have no heads

-- Prevent following creatures from casting lightning shield while another spell is being casted Fix #179
-- https://github.com/the-hyjal-project/bugtracker/issues/179 - ACID

-- Remove "Disease Cloud" from NPC "Delfrum Flintbeard".
-- https://github.com/the-hyjal-project/bugtracker/issues/230
UPDATE `creature_template_addon` SET `auras`= NULL, `emote` = 233, `b2_1_flags` = 16 WHERE  `entry` = 6299;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 6299); -- guid version was not corrupted, but entry one is so fix this

-- https://github.com/the-hyjal-project/bugtracker/issues/186
-- Jadefire Felsworn shouldn't flee - ACID
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `ResistanceArcane` = 0 WHERE `entry` IN (7105,7106,7107,7108,7109,7110,7111); -- Bestiary Page missing for "Jadefire"
-- Jadefire Hellcaller shouldn't flee - ACID
UPDATE `creature_template` SET `Faction` = 90 WHERE `entry` = 7111; -- some have faction 1434 sometimes, but def not default faction
UPDATE `creature_template` SET `Faction` = 90 WHERE `entry` = 7107; -- some have faction 1434 sometimes, but def not default faction
UPDATE `creature_template_addon` SET `bytes1` = 0, `auras`= '7939 22766 8601' WHERE `entry` = 7110; -- bytes1 was 33554432 due to stealth bytes1 flags / vis_flags = 2

-- NPC "Whip Lashers" are now immune to nature spells.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/187
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 13022;

-- Quest "Kurzen's Mystery" should requrie "Bad Medicine" and "The Second Rebellion".
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/181
-- https://www.wowhead.com/tbc/quest=207/kurzens-mystery#comments:id=2784273:reply=1368677
DELETE FROM `conditions` WHERE `condition_entry` IN (9032,9033,9034) AND `value1` IN (203,204,9032);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9032, 8, 203, 0, 0, 0, 0, 'Quest ID 203 Rewarded'),
(9033, 8, 204, 0, 0, 0, 0, 'Quest ID 204 Rewarded'),
(9034, -1, 9032, 9033, 0, 0, 0, '(Quest ID 203 Rewarded) AND (Quest ID 204 Rewarded)');
UPDATE `quest_template` SET `RequiredCondition`=9034 WHERE `entry` = 207;

-- Quest "Forsaken Diseases" is no longer available without completing the prerequisite quest "Kayneth Stillwind".
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/156 - https://www.wowhead.com/tbc/quest=1011/forsaken-diseases
-- Quest 1011 should not be unlocked by breadcrumb quest 4581
-- https://github.com/cmangos/tbc-db/blob/4d7927e752ffe2608cbedc3ae9050852bb1e5ef7/Updates/0487_breadcrumbquests.sql#L141
-- UPDATE `quest_template` SET `PrevQuestId`= 4581 WHERE `entry` = 1011; -- breadcrumbquest

-- Quest "Deeprun Rat Roundup" has fixed.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/124 - https://gist.githubusercontent.com/Kinzcool/e81137dab3bc828631ada717f7da5159/raw/796cd141ede5c02299a55ecd3037cdd460b5944c/creaturedifficulty.sql
UPDATE `creature_template` SET `Faction`= 35 WHERE `entry` = 13017;

-- Fix Mage quest Report to Jennea
-- https://www.wowhead.com/tbc/quest=1919/report-to-jennea
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(328, 1919);

-- Fixes for Gordunni Dirt Mound.
UPDATE `gameobject_template` SET `size`= 0.75 WHERE  `entry`=144064;

-- https://github.com/cmangos/issues/issues/3240
UPDATE `creature_template_addon` SET `bytes1` = 0 WHERE `entry` = 8284; -- UNIT_STAND_STATE_DEAD (7) needs to be handled by script due to evade case

