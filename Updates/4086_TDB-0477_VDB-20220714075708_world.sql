-- https://github.com/vmangos/core/commit/0aa048d8dc07c57029345cf042936a7ff4b69caa
-- Add your query below.

-- Battered Junkbox should not drop from mobs. It's only pickpocketed. 
DELETE FROM `creature_loot_template` WHERE `item`=16882; -- Battered Junkbox
UPDATE `creature_template` SET `LootId`=0 WHERE `LootId`=12352; -- https://tbc.wowhead.com/npc=12352/scarlet-trooper
DELETE FROM `creature_loot_template` WHERE `entry`=12352;

-- End of migration.

