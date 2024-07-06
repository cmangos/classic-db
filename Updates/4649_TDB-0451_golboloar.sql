-- Improve Gol'Bolar Quarry/Mine (Area 134)
-- https://wowpedia.fandom.com/wiki/Gol%27Bolar_Quarry?direction=next&oldid=1927635
-- https://web.archive.org/web/20080502202618/http://wow.allakhazam.com/db/item.html?witem=2067 ~4%
-- https://web.archive.org/web/20080531214707/http://wow.allakhazam.com/db/item.html?witem=2066 ~4%
-- https://web.archive.org/web/20080604031132/http://wow.allakhazam.com/db/item.html?witem=2065 ~4%
-- https://web.archive.org/web/20080515144815/http://wow.allakhazam.com/db/item.html?witem=2064 ~4%
DELETE FROM `creature_loot_template` WHERE `entry` IN (1115,1116,1117,1118) AND `item` IN (2064,2065,2066,2067);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1118, 2064, 4, 0, 1, 1, 0, 'Trogg Club'), -- 7,28 missing in wotlkmangos
(1117, 2067, 4, 0, 1, 1, 0, 'Frostbit Staff'), -- 7,98
(1116, 2065, 4, 0, 1, 1, 0, 'Rockjaw Blade'), -- 4,07
(1115, 2066, 4, 0, 1, 1, 0, 'Skull Hatchet'); -- 4

-- 2008 old ore pool
-- 13005 old herb pool
DELETE FROM `gameobject` WHERE `id` = 1731 AND `guid` BETWEEN 1000033 AND 1000038;
DELETE FROM `gameobject` WHERE `id` = 1619 AND `guid` BETWEEN 170001 AND 170003;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(170001, 1619, 0, -5810.19, -1490.53, 365.411, 5.95157, 0, 0, -0.165047, 0.986286, 3600, 7200),
(170002, 1619, 0, -5686.64, -1627.61, 383.204, 0.90757, 0, 0, 0.438371, 0.898794, 3600, 7200),
(170003, 1619, 0, -5656.49, -1614.88, 384.717, 4.08407, 0, 0, -0.891006, 0.453991, 3600, 7200),

(1000033, 1731, 0, -5838.87, -1475.59, 366.429, 0.0174525, 0, 0, 0.00872612, 0.999962, 3600, 7200),
(1000034, 1731, 0, -5807.19, -1498.15, 363.662, 3.31614, 0, 0, -0.996194, 0.087165, 3600, 7200),
(1000035, 1731, 0, -5697.27, -1723.45, 361.68, 5.5676, 0, 0, -0.350207, 0.936672, 3600, 7200),
(1000036, 1731, 0, -5654.57, -1675.68, 360.795, 3.14159, 0, 0, -1, 0, 3600, 7200),
(1000037, 1731, 0, -5641.67, -1815.62, 357.022, 4.76475, 0, 0, -0.688354, 0.725374, 3600, 7200),
(1000038, 1731, 0, -5600.61, -1761.3, 370.283, 3.07177, 0, 0, 0.999391, 0.0349061, 3600, 7200); -- no suitable pools available, use increased respawntime...

-- REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid`, 2008, 0, 'Dun Morogh - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1000033 AND 1000038;
-- REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid`, 13005, 0, 'Dun Morogh - Earthroot' FROM `gameobject` WHERE `guid` BETWEEN 170001 AND 170003;

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 1115;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 1117;

-- SELECT * FROM creature where id IN (1115,1117) order by guid; identical with tbc and wotlk
UPDATE `creature` SET `position_x` = -5799.46, `position_y` = -1666.03, `position_z` = 358.995, `orientation` = 1.70545 WHERE `guid` = 4527 AND `id` = 1115;
UPDATE `creature` SET `position_x` = -5790.45, `position_y` = -1643.81, `position_z` = 359.056, `orientation` = 3.35103 WHERE `guid` = 4511 AND `id` = 1115;
UPDATE `creature` SET `position_x` = -5784.23, `position_y` = -1682.21, `position_z` = 359.335, `orientation` = 2.37272 WHERE `guid` = 4528 AND `id` = 1115;
UPDATE `creature` SET `position_x` = -5772.32, `position_y` = -1634.92, `position_z` = 359.061, `orientation` = 2.37773 WHERE `guid` = 4510 AND `id` = 1115;
UPDATE `creature` SET `position_x` = -5753.28, `position_y` = -1657.42, `position_z` = 359.003, `orientation` = 1.00832 WHERE `guid` = 4509 AND `id` = 1115;
UPDATE `creature` SET `id` = 0, `position_x` = -5752.23, `position_y` = -1669.72, `position_z` = 358.906, `orientation` = 1.41744 WHERE `guid` = 4515 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4515, 1115),(4515, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5735.78, `position_y` = -1678.79, `position_z` = 361.964, `orientation` = 5.23901 WHERE `guid` = 4514 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4514, 1115),(4514, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5711.36, `position_y` = -1687.05, `position_z` = 361.244, `orientation` = 4.83614 WHERE `guid` = 4516 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4516, 1115),(4516, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5675.64, `position_y` = -1712.18, `position_z` = 361.749, `orientation` = 2.98347 WHERE `guid` = 4529 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4529, 1115),(4529, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5698.14, `position_y` = -1705.81, `position_z` = 361.749, `orientation` = 5.93412 WHERE `guid` = 4530 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4530, 1115),(4530, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5649.2, `position_y` = -1683.93, `position_z` = 360.879, `orientation` = 6.09295 WHERE `guid` = 4500 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4500, 1115),(4500, 1117);
UPDATE `creature` SET `position_x` = -5783.49, `position_y` = -1582.53, `position_z` = 358.825, `orientation` = 3.19065 WHERE `guid` = 4517 AND `id` = 1115;
UPDATE `creature` SET `id` = 0, `position_x` = -5691.3, `position_y` = -1674.72, `position_z` = 360.879, `orientation` = 5.48033 WHERE `guid` = 4498 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4498, 1115),(4498, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5686.96, `position_y` = -1692.28, `position_z` = 360.879, `orientation` = 1.50098 WHERE `guid` = 4532 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4532, 1115),(4532, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5672.76, `position_y` = -1676.13, `position_z` = 360.879, `orientation` = 0.820305 WHERE `guid` = 4499 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4499, 1115),(4499, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5668.96, `position_y` = -1691.99, `position_z` = 360.879, `orientation` = 0.733038 WHERE `guid` = 4506 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4506, 1115),(4506, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5646.83, `position_y` = -1701.79, `position_z` = 362.148, `orientation` = 0.0523599 WHERE `guid` = 4535 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4535, 1115),(4535, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5645.1, `position_y` = -1796.78, `position_z` = 355.98, `orientation` = 3.08923 WHERE `guid` = 4850 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4850, 1115),(4850, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5632.65, `position_y` = -1768.8, `position_z` = 355.902, `orientation` = 5.72468 WHERE `guid` = 4546 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4546, 1115),(4546, 1117);
UPDATE `creature` SET `id` = 0 WHERE `guid` = 4545 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4545, 1115),(4545, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5626.2, `position_y` = -1665.76, `position_z` = 362.842, `orientation` = 3.97935 WHERE `guid` = 4502 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4502, 1115),(4502, 1117);
DELETE FROM `creature` WHERE `guid` = 4503 AND `id` = 1115; -- duplicate 4502/patrol
UPDATE `creature` SET `id` = 0, `position_x` = -5615.01, `position_y` = -1788.69, `position_z` = 355.631, `orientation` = 2.54818 WHERE `guid` = 4835 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4835, 1115),(4835, 1117);
UPDATE `creature` SET `position_x` = -5614.29, `position_y` = -1763.16, `position_z` = 356.622, `orientation` = 2.91429 WHERE `guid` = 4547 AND `id` = 1117;
UPDATE `creature` SET `id` = 0, `position_x` = -5611.09, `position_y` = -1678.21, `position_z` = 351.285, `orientation` = 0.366519 WHERE `guid` = 4537 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4537, 1115),(4537, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5607.12, `position_y` = -1654.55, `position_z` = 351.982, `orientation` = 0.767945 WHERE `guid` = 4504 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4504, 1115),(4504, 1117);
UPDATE `creature` SET `id` = 0 WHERE `guid` = 4505 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4505, 1115),(4505, 1117);
UPDATE `creature` SET `id` = 0 WHERE `guid` = 4561 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4561, 1115),(4561, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5606.35, `position_y` = -1648.08, `position_z` = 353.392, `orientation` = 1.64061 WHERE `guid` = 4501 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4501, 1115),(4501, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5604.98, `position_y` = -1705.73, `position_z` = 359.05, `orientation` = 3.89208, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 4536 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4536, 1115),(4536, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5598.95, `position_y` = -1773.15, `position_z` = 356.677, `orientation` = 4.59022 WHERE `guid` = 4557 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4557, 1115),(4557, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5595.33, `position_y` = -1683.61, `position_z` = 347.134, `orientation` = 6.21337 WHERE `guid` = 4540 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4540, 1115),(4540, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5594.95, `position_y` = -1667.45, `position_z` = 345.475, `orientation` = 0.0349066 WHERE `guid` = 4543 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4543, 1115),(4543, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5593.92, `position_y` = -1734.87, `position_z` = 362.375, `orientation` = 0.907571 WHERE `guid` = 4551 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4551, 1115),(4551, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5592.68, `position_y` = -1752.31, `position_z` = 372.569, `orientation` = 0.860065 WHERE `guid` = 4549 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4549, 1115),(4549, 1117);
UPDATE `creature` SET `position_x` = -5590.37, `position_y` = -1661.61, `position_z` = 344.34, `orientation` = 0.750492 WHERE `guid` = 4544 AND `id` = 1117;
UPDATE `creature` SET `position_x` = -5719.25, `position_y` = -1553.8, `position_z` = 383.139, `orientation` = 2.9147 WHERE `guid` = 4468 AND `id` = 1679;
UPDATE `creature` SET `position_x` = -5588.74, `position_y` = -1790.8, `position_z` = 360.813, `orientation` = 1.64061 WHERE `guid` = 4840 AND `id` = 1117;
UPDATE `creature` SET `id` = 0, `position_x` = -5587.66, `position_y` = -1745.12, `position_z` = 372.5, `orientation` = 2.96706 WHERE `guid` = 4550 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4550, 1115),(4550, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5582.59, `position_y` = -1805.2, `position_z` = 355.32, `orientation` = 5.8294 WHERE `guid` = 4848 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4848, 1115),(4848, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5580.08, `position_y` = -1773.47, `position_z` = 351.287, `orientation` = 5.3058 WHERE `guid` = 4846 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4846, 1115),(4846, 1117);
UPDATE `creature` SET `id` = 0 WHERE `guid` = 4847 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4847, 1115),(4847, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5579.17, `position_y` = -1722.34, `position_z` = 353.345, `orientation` = 0.698132 WHERE `guid` = 4554 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4554, 1115),(4554, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5572.79, `position_y` = -1713.35, `position_z` = 370.288, `orientation` = 3.1765 WHERE `guid` = 4555 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4555, 1115),(4555, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5565.72, `position_y` = -1771.75, `position_z` = 347.378, `orientation` = 0.785398 WHERE `guid` = 4842 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4842, 1115),(4842, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5558.67, `position_y` = -1725.46, `position_z` = 342.533, `orientation` = 0.244346 WHERE `guid` = 4558 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4558, 1115),(4558, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5558.58, `position_y` = -1756.6, `position_z` = 342.063, `orientation` = 5.18363 WHERE `guid` = 4843 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4843, 1115),(4843, 1117);
UPDATE `creature` SET `position_x` = -5552.81, `position_y` = -1766.19, `position_z` = 343.504, `orientation` = 4.02897 WHERE `guid` = 4843 AND `id` = 1115;
UPDATE `creature` SET `id` = 0, `position_x` = -5546.46, `position_y` = -1750.63, `position_z` = 340.931, `orientation` = 3.6077 WHERE `guid` = 4841 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4841, 1115),(4841, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5537.49, `position_y` = -1700.36, `position_z` = 343.995, `orientation` = 4.03171 WHERE `guid` = 4559 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4559, 1115),(4559, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5530.6, `position_y` = -1718.15, `position_z` = 341.242, `orientation` = 4.90438 WHERE `guid` = 4837 AND `id` = 1115;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4837, 1115),(4837, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5529.59, `position_y` = -1724.91, `position_z` = 340.475, `orientation` = 3.97935 WHERE `guid` = 4838 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4838, 1115),(4838, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5517.15, `position_y` = -1744.61, `position_z` = 337.021, `orientation` = 5.09636 WHERE `guid` = 4844 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4844, 1115),(4844, 1117);
UPDATE `creature` SET `id` = 0, `position_x` = -5526.82, `position_y` = -1742.57, `position_z` = 337.797, `orientation` = 1.44862 WHERE `guid` = 4845 AND `id` = 1117;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (4845, 1115),(4845, 1117);

UPDATE `creature_movement` SET `PositionX` = -5867.569824, `PositionY` = -1526.739990, `PositionZ` = 379.045013, `Orientation` = 100 WHERE `id` = 4524 AND `point` = 9; -- wrong wait xyz

DELETE FROM `creature_movement` WHERE `id` = 4378; -- wrongly assigned
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5 WHERE `guid` = 4378 AND `id` = 1115;

-- https://github.com/vmangos/core/commit/1628433e97b935be8856701361c109444c52b5d0
-- pathing and scripts for kazan mogosh
UPDATE `creature` SET `MovementType`= 2 WHERE `id`= 1237;
DELETE FROM `creature_movement_template` WHERE `entry` = 1237;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(1237, 1, -5671.19, -1577.15, 383.329, 3.4383, 40000, 6),
(1237, 2, -5671.19, -1577.15, 383.329, 3.4383, 0, 0),
(1237, 3, -5668.92, -1574.36, 383.204, 100, 0, 0),
(1237, 4, -5668.75, -1572.12, 383.329, 100, 0, 0),
(1237, 5, -5665.08, -1567.92, 383.204, 0.753848, 50000, 5),
(1237, 6, -5665.08, -1567.92, 383.204, 0.753848, 0, 0);

-- pathing and scripts for miner grumnal
UPDATE `creature` SET `MovementType`= 2 WHERE `id`= 1360;
DELETE FROM `creature_movement_template` WHERE `entry` = 1360;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(1360, 1, -5685.68, -1596.67, 383.204, 4.08407, 420000, 0),
(1360, 2, -5683.20, -1593.97, 383.204, 100, 0, 0),
(1360, 3, -5676.94, -1580.58, 383.204, 100, 0, 0),
(1360, 4, -5674.35, -1576.85, 383.204, 0.64881, 6000, 136001),
(1360, 5, -5676.28, -1574.44, 383.204, 1.47946, 30000, 0),
(1360, 6, -5674.35, -1576.85, 383.204, 100, 0, 0),
(1360, 7, -5685.48, -1592.99, 383.204, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 136001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `dataint`, `comments`) VALUES
(136001, 0, 0, 124, 'miner grumnal - speak'); -- I'll take whatever ya got cookin'! And throw in a bottle to wash it down!

UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 4540 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 4541 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 4542 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 4544 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 4601 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `item` = 8950 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `item` = 2070 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 414 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 422 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 1707 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 3927 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 8932 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `item` = 159 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `item` = 1179 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `item` = 1205 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `item` = 1708 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `item` = 1645 AND `entry` = 1237;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `item` = 8766 AND `entry` = 1237;

