-- Fixed drop chance of item 7809 (Easter Dress):
-- previously removed from creature loot table and now moved to proper gameobject loot table
-- Thanks Patman64 for pointing. This closes #552 
-- Source: http://www.wowwiki.com/Easter_Dress
DELETE FROM `gameobject_loot_template` WHERE `item` IN (7809, 6834);
INSERT INTO `gameobject_loot_template` VALUES
(4984, 6834, 0.6, 0, 1, 1, 0),
(4984, 7809, 0.6, 0, 1, 1, 0);
