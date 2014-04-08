-- Removing items unique to rares from reference loot table.

DELETE FROM `reference_loot_template` WHERE `item` IN (1314, 1387, 2235, 3018, 3188, 3227, 3231, 4058, 4434, 4447, 4448, 4449, 4462, 4474, 5744, 5971, 6179, 6180, 6204, 6205);
