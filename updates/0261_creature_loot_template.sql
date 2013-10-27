-- Added missing world drops from loot table of creature 12397 (Lord Kazzak)
-- Based on loot table of creature 6109 (Azuregos) and similar raid bosses
-- Source: http://wowd.org/creatures/12397.html
DELETE FROM `creature_loot_template` WHERE `entry` = 12397 AND `item` IN (34002, 34003, 190003);
INSERT INTO `creature_loot_template` VALUES
(12397, 34002, 100, 1, -34002, 3, 0),
(12397, 34003, 100, 0, -34003, 1, 0),
(12397, 190003, 100, 1, -34003, 2, 0);
