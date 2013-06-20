-- Removes wrong loot chance for item 16746 (Warsong Report)
-- Wrongly looted from item 16882 (Battered Junkbox)
DELETE FROM `item_loot_template` WHERE `entry` = 16882 AND `item` = 16746;
-- Wrongly dropped by a lot of creatures as it is a quest item, found when opening another quest item
-- source: http://www.wowhead.com/item=16746
DELETE FROM `creature_loot_template` WHERE `item` = 16746;

