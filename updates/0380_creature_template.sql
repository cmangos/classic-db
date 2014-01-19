-- Removed loots from creature 6141 (Pridewing Soarer) as this is just a flavor creature
-- Also made it fly
-- Source: http://www.wowhead.com/npc=6141
DELETE FROM `creature_loot_template` WHERE `entry` = 6141;
UPDATE `creature_template` SET `lootid` = 0, `InhabitType` = 5 WHERE `entry` = 6141;
