-- Adds gossip menu to creature 8479 (Kalaran Windblade)
-- Source: TBC-DB v1.3
UPDATE `creature_template` SET `gossip_menu_id` = 1323 WHERE `entry` = 8479;

-- Makes creatures 3939 (Razormane Wolf), 5766 (Savannah Cub) and 14865 (Felinni) untamable, unlootable and unskinable as they are other creature minions
-- or already 'tamed' like Felinni and removes related skin/loot entries
-- Thanks Sinoxan for pointing
-- Sources: old.wowhead.com/npc=3939 old.wowhead.com/npc=5766 old.wowhead.com/npc=14865 
UPDATE `creature_template` SET `lootid` = 0, `skinloot` = 0, `type_flags` = 0 WHERE `entry` IN (3939, 5766, 14865);
DELETE FROM `creature_loot_template` WHERE `entry` = 3939;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10105;

-- Adds gossip menu to creature 17804 (Squire Rowe)
UPDATE `creature_template` SET `gossip_menu_id` = 7480 WHERE `entry` = 17804;