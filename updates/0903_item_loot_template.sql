-- Added missing recipes/plans loots in item 20469 (Decoded True Believer Clippings)
-- Thanks to TheTrueAnimal for pointing. This closes #693
-- Source: http://www.wowhead.com/item=20469#contains
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` IN (20546, 20547, 20548, 20553, 20554, 20555);
INSERT INTO `item_loot_template` VALUES
(20469, 20546, 5, 0, 1, 1, 0),
(20469, 20547, 5, 0, 1, 1, 0),
(20469, 20548, 5, 0, 1, 1, 0),
(20469, 20553, 5, 0, 1, 1, 0),
(20469, 20554, 5, 0, 1, 1, 0),
(20469, 20555, 5, 0, 1, 1, 0);
