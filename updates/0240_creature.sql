-- Spawned missing NPC 6729 (Morridune) in Blackfathom Deep
-- Source: YTDB
DELETE FROM `creature` WHERE `guid` = 99967;
INSERT INTO `creature` VALUES (99967, 6729, 48, 0, 0, -875.08, -458.104, -34.4375, 6.16667, 7200, 5, 0, 840, 0, 0, 1);
