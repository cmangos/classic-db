-- Fixed respawn time of NPCs 8901 (Anvilrage Reservist) in front of General Angerforge in Blackrock Depths
-- Made them respawn on General Angerforge fight reset. This contributes to #179 
UPDATE `creature` SET `spawntimesecs` = 3 * 60 * 60 WHERE `guid` IN (45955, 45956, 45958, 45959);

DELETE FROM `creature_linking` WHERE `guid` IN (45955, 45956, 45958, 45959);
INSERT INTO `creature_linking` VALUES
(45955, 45954, 1031),
(45956, 45954, 1031),
(45958, 45954, 1031),
(45959, 45954, 1031);
