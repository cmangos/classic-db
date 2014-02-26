-- Removed drop from creature 8257 (Oozeling) in Sunken Temple because they are summoned and should not drop anything
-- Removed no longer used entry 8257 in creature_loot_template table
-- Thanks Nekoi for pointing. This closes #240 
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 8257;
DELETE FROM `creature_loot_template` WHERE `entry` = 8257;
