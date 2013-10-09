-- Spawned missing creature 4842 (Earthcaller Halmgar) in Razorfen Kraul
-- fixed faction, mana and armor
-- source: http://www.wowhead.com/npc=4842#comments
-- source: http://www.wowwiki.com/Earthcaller_Halmgar?oldid=348852
-- Source: TBC-DB
UPDATE `creature_template` SET `minmana` = 1067, `maxmana` = 1067, `faction_A` = 152, `faction_H` = 152, `armor` = 916, `MovementType`= 1 WHERE `entry` = 4842;

DELETE FROM `creature` WHERE `id` = 4842 OR `guid` = 590008;
INSERT INTO `creature` VALUES
(590008, 4842, 47, 0, 0, 2118.58, 1695.32, 80.3316, 1.46786, 7200, 5, 0, 3289, 1067, 0, 1);
