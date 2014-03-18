-- Makes creature 14566 (Ancient Equine Spirit) spawns after creature 11489 (Tendris Warpwood) is defeated in Dire Maul
-- Source: http://www.wowwiki.com/Ancient_Equine_Spirit
DELETE FROM `dbscripts_on_creature_death` WHERE `id` = 11489;
INSERT INTO `dbscripts_on_creature_death` VALUES
(11489, 1, 10, 14566, 1200000, 0, 0, 0, 0, 0, 0, 0, 33.76, 491.548, -23.281, 3.16, 'spawns - Ancient Equine Spirit');
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 14566;
