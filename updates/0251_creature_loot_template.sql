-- Removed items 4100 (Crumpled Note), 4101 (Ripped Note), 4102 (Torn Note) and 4098 (Carefully Folded Note)
-- from creatures loot table (especially creature 2560) as they should only drop from gameobject 2560 (Half-Buried Bottle) 
DELETE FROM `creature_loot_template` WHERE `item` IN (4102, 4100, 4101, 4098);

-- Removed items 5504 (Tangy Clam Meat) and 8364 (Mithril Head Trout) from loot table
-- of creature 2560 (Highland Thrasher)
-- Source: http://www.wowhead.com/npc=2560#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 2560 AND `item` IN (5504, 8364);
