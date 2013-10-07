-- Added missing entries for items 4476 (Beastwalker Robe) & 4477 (Nefarious Buckler)
-- in loot table of creature 534 (Nefaru)
-- Source: http://www.wowwiki.com/Nefaru?oldid=458129
DELETE FROM `creature_loot_template` WHERE `entry` = 534 AND `item` IN (4476, 4477);
INSERT INTO `creature_loot_template` VALUES
(534, 4476, 0, 2, 1, 1, 0),
(534, 4477, 80, 2, 1, 1, 0);
-- Removed wrong entries for items 4476 & 4477 in reference_loot_template
DELETE FROM `reference_loot_template` WHERE `item` IN (4476, 4477);
