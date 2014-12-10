-- Removed lingering creature addon after creature deletion
-- Blazing Invaders
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 24172 AND 24191;
-- Watery Invaders
DELETE FROM `creature_addon` WHERE `guid` IN (42185, 42186);
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 42188 AND 42200;
-- Whirling Invader
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 43100 AND 43118;
-- Jezelle's Summons
DELETE FROM `creature_addon` WHERE `guid` IN (45146, 45214, 45215);

-- Fixed quest flags for quests 7481, 7482 (Elven Legends)
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` IN (7481, 7482);

-- Fixed NPCFlags for NPC 9087 Bashana Runetotem
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags` | 128 WHERE `Entry` = 9087;

-- Removed lingering creature path after creature deletion
DELETE FROM `creature_movement` WHERE `id` IN (24186, 590000);

-- Fixed movementtype of three NPCs (now handled by linking)
UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (2764, 2765, 4063);

-- Added wrongly removed waypoints of creature 2619 (Hammerfall Grunt)
DELETE FROM `creature_movement` WHERE `id` = 11453;
INSERT INTO `creature_movement` VALUES 
(11453, 1, -1531.04, -3108.09, 14.0027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 2, -1544.48, -3108.2, 13.7442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 3, -1554.01, -3107.76, 13.4482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 4, -1552.91, -3092.68, 13.6331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 5, -1552.26, -3079.25, 13.7944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 6, -1550.01, -3064.34, 13.1415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 7, -1549.29, -3042.01, 12.993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 8, -1549.16, -3052.09, 13.1918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 9, -1548.74, -3067.14, 13.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 10, -1549.68, -3085.5, 13.7781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 11, -1549.89, -3106.75, 13.5441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 12, -1531.51, -3108.25, 13.9753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 13, -1517.54, -3108.93, 13.3021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 14, -1501.29, -3109.05, 13.3937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 15, -1518.63, -3108.63, 13.3043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Removed old unused DBScripts for creature 8256 (Curator Thorius)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (825601, 825602);

-- Fixed addon for creature 10558 (Hearthsinger Forresten) and moved it to template
DELETE FROM `creature_addon` WHERE `guid` = 52150;
DELETE FROM `creature_template_addon` WHERE `entry` = 10558;
INSERT INTO `creature_template_addon` VALUES
(10558, 0, 0, 1, 16, 0, 0, NULL);

-- Fixed movementtype of creature 6090 (Bartleby) since its WP were removed
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 6090;
