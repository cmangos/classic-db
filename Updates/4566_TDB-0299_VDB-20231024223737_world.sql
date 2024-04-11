-- Add your query below.
-- https://github.com/vmangos/core/commit/e8cb6cdda6d58916e6d1e0f39a87a2e830c0007a

-- Punctured Voodoo Doll should only drop from Jinxed Hoodoo Pile.
DELETE FROM `creature_loot_template` WHERE `item` IN (19813, 19814, 19815, 19816, 19817, 19818, 19819, 19820, 19821);
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (7484,14122,14826,14884,14965,14986,15068,15101);

-- End of migration.

