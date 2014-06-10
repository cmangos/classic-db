-- Unable to loot Ensorcelled Parchment (starts quest) from Worn Wooden Chest (Alterac Mountains)
-- Thanks Neotmiren for pointing. This closes #462 

-- Removed wrong table and added specific table for gameobject 1765 (Worn Wooden Chest)
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (1570, 1765);
INSERT INTO `gameobject_loot_template` VALUES
(1765, 3706, 100, 0, 1, 1, 4); -- the chance for Ensorcelled Parchment was 0.02%

-- Update loot id of gameobject 1765 (Worn Wooden Chest)
UPDATE `gameobject_template` SET `data1` = 1765 WHERE `entry` = 1765; 
