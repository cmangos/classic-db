-- Removes drop chance for quest item 1309 (Oslow Toolbox) from item "Small Barned Clam" (5523) 
-- as it should only be dropped by quest object Sunken Chest (GO 32)
-- Source: http://www.wowhead.com/item=1309#contained-in-object
DELETE FROM `item_loot_template` WHERE `item` = 1309;
