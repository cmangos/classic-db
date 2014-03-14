-- Fixed quest level of Lunar Festival quest because they should be available to any player
-- while they are currently flagged as lvl 70 or with minlevel = 68, making them 100% unavailable in Classic
-- Source: http://www.wowwiki.com/Lunar_Festival
-- This closes #276 and closes #279 
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` BETWEEN 8870 AND 8875; -- "Lunar Festival" for each race
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8874; -- Fix "Lunar Festival" for Undercity version
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` IN (8867, 8883) ; -- "Lunar Fireworks" and "Valadar Starsong" quests
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 15893, `ReqCreatureOrGOId2` = 15894, `ReqCreatureOrGOCount1` = 8, `ReqCreatureOrGOCount2` = 2 WHERE `entry` = 8867; -- Added missing objectives of quest "Lunar Fireworks"
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `Title` LIKE '%The Elder'; -- Elders quests
UPDATE `quest_template` SET `ZoneOrSort` = -366, `MinLevel` = 40, `QuestLevel` = 60 WHERE `entry` = 8868; -- Killing Omen raid quest
UPDATE `quest_template` SET `QuestLevel` = -1 WHERE `entry` IN (8864, 8865, 8878); -- Quests rewarding robes, suits or patterns (removed in WotLK)

-- Fixed gossip of creature 15895 (Lunar Festival Harbinger) to make it offer Lunar Festival Invitation
-- Source: YTDB
UPDATE `gossip_menu_option` SET `action_menu_id` = -1, `action_script_id` = 6918, `condition_id` = 47 WHERE `menu_id` = 6918 AND `id` = 0;
-- Added conditions for above gossip
DELETE FROM `conditions` WHERE `condition_entry` IN (45, 46, 47) ;
INSERT INTO `conditions` VALUES
(45, 8, 8867, 0),
(46, 24, 21711, 1),
(47, -1, 45, 46);
-- Added script to create Lunar Festival Invitation
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 6918;
INSERT INTO `dbscripts_on_gossip` VALUES
(6918, 0, 15, 26375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Lunar Festival Invitation');

-- Fixed spells, NPCs and gameobjects for quest "Lunar Fireworks"

-- Fixed some of the spell focus objects not working
UPDATE `gameobject_template` SET `type` = 8, `data0` = 1351 WHERE `entry` = 180850;
UPDATE `gameobject_template` SET `data0` = 1352, `data1` = 35 WHERE `entry` = 180874;