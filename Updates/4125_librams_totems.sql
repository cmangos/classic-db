-- Add more Libram & Totem Race Loot Conditions
-- Librams
UPDATE `creature_loot_template` SET `condition_id` = 4 WHERE `entry` IN (9938,15954,16097) AND `item` IN (22400,23006,22401); -- 4 6 469 0 0 0 0 Alliance Player
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `entry` IN (24021,34085,35031,35015) AND `item` IN (23203,22402,23201);
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (24021, 'NPC LOOT (Blue World Drop) - Idol / Libram / Totem (Class Item)');

-- Totems
UPDATE `creature_loot_template` SET `condition_id` = 3 WHERE `entry` IN (9938,15954,16097) AND `item` IN (22395,23005,22345); -- 3 6 67 0 0 0 0 Horde Player
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `entry` IN (24021,34085,35031,35015) AND `item` IN (23199,22396,23200);

