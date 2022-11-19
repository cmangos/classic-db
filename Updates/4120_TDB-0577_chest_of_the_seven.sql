-- Summoners Tomb loot - BRD chest loot on other npcs (Chest of the Seven)
-- https://www.wowhead.com/object=169243/chest-of-the-seven
-- https://wowwiki-archive.fandom.com/wiki/Chest_of_The_Seven
DELETE FROM `creature_loot_template` WHERE `item` IN (11920,11921,11922,11923,11925,11926,11927,11929) AND `entry` IN (8905,9476,9545,8911,9445);

