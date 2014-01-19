-- Removed item 21745 (Elder's Moonstone) from creature loot table as this item is only obtainable during
-- Lunar Festival by visiting the Elders NPCs
-- Source: http://www.wowhead.com/item=21745
DELETE FROM `creature_loot_template` WHERE `item` = 21745;
