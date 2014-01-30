-- Added missing npc 5081 (Connor Rivers) in Stormwind's Blue Recluse Inn.
-- Thanks Neotmiren for pointing and fixing.
-- Source: http://old.wowhead.com/npc=5081
DELETE FROM `creature` WHERE `guid` = 54399;
INSERT INTO `creature` VALUES
(54399, 5081, 0, 0, 0, -9102, 834.873, 105.117, 5.18, 600, 0, 0, 1240, 0, 0, 0);
