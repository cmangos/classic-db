-- https://github.com/vmangos/core/commit/357ca1b1f96b4afb2e312f279a4421527a0d55a2
-- Add your query below.

-- Assign money loot to gameobjects based on sniffs. (Adding other objects based on data1 aka loot_template)
UPDATE `gameobject_template` SET `mingold`=5, `maxgold`=11 WHERE `entry`=19021; -- Rusty Chest 0 0
UPDATE `gameobject_template` SET `mingold`=10, `maxgold`=20 WHERE `entry`=2843; -- Battered Chest 0 0
UPDATE `gameobject_template` SET `mingold`=14, `maxgold`=20 WHERE `entry` IN (179486,179487,179488,179489); -- Waterlogged Footlocker 0 0
UPDATE `gameobject_template` SET `mingold`=18, `maxgold`=131 WHERE `entry` IN (128308,128403); -- Shallow Grave 0 0
UPDATE `gameobject_template` SET `mingold`=30, `maxgold`=75 WHERE `entry` IN (2847,106319); -- Battered Chest 0 0
UPDATE `gameobject_template` SET `mingold`=60, `maxgold`=119 WHERE `entry` IN (2849,111095); -- Battered Chest 0 0
UPDATE `gameobject_template` SET `mingold`=121, `maxgold`=208 WHERE `entry` IN (2850,3714,3715); -- Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=145, `maxgold`=269 WHERE `entry` IN (2852,4095,4096); -- Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=162, `maxgold`=315 WHERE `entry` IN (2855,105570,105578,105579); -- Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=171, `maxgold`=240 WHERE `entry`=75293; -- Large Battered Chest 0 0
UPDATE `gameobject_template` SET `mingold`=205, `maxgold`=385 WHERE `entry` IN (2857,105581); -- Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=245, `maxgold`=360 WHERE `entry` IN (75295,75298); -- Large Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=381, `maxgold`=395 WHERE `entry` IN (75296,75299); -- Large Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=388, `maxgold`=388 WHERE `entry` IN (74447,74448); -- Large Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=401, `maxgold`=791 WHERE `entry`=4149; -- Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=541, `maxgold`=777 WHERE `entry` IN (75297,75300); -- Large Solid Chest 0 0
UPDATE `gameobject_template` SET `mingold`=816, `maxgold`=1594 WHERE `entry`=153454; -- Solid Chest 940 1335
UPDATE `gameobject_template` SET `mingold`=800, `maxgold`=1600 WHERE `entry`=153453; -- Solid Chest 800 1600
UPDATE `gameobject_template` SET `mingold`=1600, `maxgold`=2400 WHERE `entry` IN (153469,153464); -- Large Solid Chest 2100 2300
UPDATE `gameobject_template` SET `mingold`=7500, `maxgold`=10000 WHERE `entry`=179697; -- Arena Treasure Chest 0 0 (Coins: 7566 / 8751)

-- End of migration.

