-- Add your query below.
-- https://github.com/vmangos/core/commit/757609d67f8bb61d74ca41ba117f1c4962ead36f
-- https://github.com/vmangos/core/commit/aca022e94b0fbc95a4e4937910077b61ad55abdb
-- https://github.com/vmangos/core/commit/114ddd3c9e6e72ad882c8461982c22f344193f79
-- https://github.com/vmangos/core/commit/da57123d91afb30c71ca866e26305ff73552ac6e

-- mana surge should not drop loot
-- https://github.com/vmangos/core/commit/757609d67f8bb61d74ca41ba117f1c4962ead36f
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` = 6549;
UPDATE `creature_template` SET `Faction` = 14, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` = 6550;

-- 12 1 525600 20160 324 0 0 Hallow's End - wrongly assigned npcs
-- https://github.com/cmangos/tbc-db/commit/0c6a52e8201f0de30790213babf760a2dd349f05
DELETE FROM `game_event_creature` WHERE `guid` IN (20298,20299,20424,20425,99966); -- check all events sometime. . .

-- Kodo Hide Bag is a Leatherworking Quest
-- https://www.wowhead.com/tbc/quest=769/kodo-hide-bag#comments:id=18718
UPDATE `quest_template` SET `RequiredSkill` = 165, `RequiredSkillValue` = 10, `PrevQuestId` = 0 WHERE `entry` = 769;

-- Gordok Courtyard Key should not drop from trash mobs                                            
DELETE FROM `creature_loot_template` WHERE `item` = 18266; -- 13022,13036,13160,11441,11444

-- Farmer Ray Should Not Drop Lvl 30+ Items
DELETE FROM `creature_loot_template` WHERE  `item`= 4421 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 4424 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 6149 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 1645 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 3928 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 4419 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 4422 AND `entry`= 232;
DELETE FROM `creature_loot_template` WHERE  `item`= 4599 AND `entry`= 232;

-- Deatheye Skinning Template
UPDATE `creature_template` SET `SkinningLootId` = 8302 WHERE `entry` = 8302;
DELETE FROM `skinning_loot_template` WHERE `entry` = 8302 AND `item` IN (4304,8170);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8302, 4304, 85, 1, 1, 1, 0, 'Thick Leather'),
(8302, 8170, 15, 1, 1, 1, 0, 'Rugged Leather');

-- Respawn Mistletoes for Feast of Winter Veil - Main Event (-21 / + 44)
SET @OGUID := 190944;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (180844,178556) AND `map` != 571);
DELETE FROM `gameobject` WHERE `id` IN (180844,178556) AND `map` != 571;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`) VALUES
(@OGUID := @OGUID + 1, 180844, 0, -14461.3, 492.389, 22.4625, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -12428.3, 212.661, 10.7339, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -10646.7, 1176.09, 45.6901, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -10523.4, -1163.76, 33.7104, 6.16101, 0, 0, -0.0610485, 0.998135),
(@OGUID := @OGUID + 1, 180844, 0, -10489.9, -3249.67, 26.9997, 5.21854, 0, 0, -0.507538, 0.861629),
(@OGUID := @OGUID + 1, 180844, 0, -9467.18, 25.031, 62.5621, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -9224.47, -2154.24, 69.8677, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -8865.12, 675.992, 101.723, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -6664.25, -2168.42, 251.881, 5.14872, 0, 0, -0.537299, 0.843392),
(@OGUID := @OGUID + 1, 180844, 0, -5581.25, -524.323, 408.617, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -5381.93, -2966.99, 327.787, 5.39307, 0, 0, -0.430511, 0.902586),
(@OGUID := @OGUID + 1, 180844, 0, -4852.96, -871.331, 509.252, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -3805.32, -826.125, 15.1539, 6.19592, 0, 0, -0.0436192, 0.999048),
(@OGUID := @OGUID + 1, 180844, 0, -922.002, -3529.65, 81.2248, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 0, -858.729, -559.158, 16.9185, 5.42797, 0, 0, -0.414693, 0.909961),
(@OGUID := @OGUID + 1, 180844, 0, -630.094, -4576, 17.1913, 0.261798, 0, 0, 0.130526, 0.991445),
(@OGUID := @OGUID + 1, 180844, 0, -10.4797, -932.317, 61.3011, 5.28835, 0, 0, -0.477159, 0.878817),
(@OGUID := @OGUID + 1, 180844, 0, 397.858, -2094.07, 139.418, 4.7822, 0, 0, -0.681998, 0.731354),
(@OGUID := @OGUID + 1, 180844, 0, 507.755, 1639.01, 132.205, 0.0698117, 0, 0, 0.0348988, 0.999391),
(@OGUID := @OGUID + 1, 180844, 0, 1636.48, 234.943, -35.5772, 0.575957, 0, 0, 0.284015, 0.95882),
(@OGUID := @OGUID + 1, 180844, 0, 2250.38, 239.955, 39.5571, 3.63029, 0, 0, -0.970295, 0.241925),
(@OGUID := @OGUID + 1, 180844, 1, -7161.29, -3846.01, 16.2651, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, -6854.17, 736.686, 53.7043, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, -5462.75, -2454.02, 96.5328, 5.60251, 0, 0, -0.333807, 0.942641),
(@OGUID := @OGUID + 1, 180844, 1, -4442.31, 251.874, 46.6908, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, -4350.53, 3288.4, 28.2028, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, -3620.3, -4461.65, 19.7844, 0.575957, 0, 0, 0.284015, 0.95882),
(@OGUID := @OGUID + 1, 180844, 1, -2375.93, -343.055, -1.67232, 0.645772, 0, 0, 0.317305, 0.948324),
(@OGUID := @OGUID + 1, 180844, 1, -2364.96, -1978.73, 104.281, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, -1587.05, 3158.42, 51.9753, 5.74214, 0, 0, -0.267238, 0.963631),
(@OGUID := @OGUID + 1, 180844, 1, -1293.09, 46.4601, 136.813, 0.314158, 0, 0, 0.156434, 0.987688),
(@OGUID := @OGUID + 1, 180844, 1, -1045.8, -3666.32, 28.8748, 4.95674, 0, 0, -0.615661, 0.788011),
(@OGUID := @OGUID + 1, 180844, 1, -413.368, -2652.68, 104.007, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, 247.595, 1260.14, 206.021, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, 331.054, -4688.31, 24.2156, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, 909.268, 915.652, 113.815, 0.855211, 0, 0, 0.414693, 0.909961),
(@OGUID := @OGUID + 1, 180844, 1, 1629.96, -4438.87, 20.1023, 3.7001, 0, 0, -0.961261, 0.27564),
(@OGUID := @OGUID + 1, 180844, 1, 2337.47, -2578.87, 110.433, 2.47837, 0, 0, 0.945518, 0.325568),
(@OGUID := @OGUID + 1, 180844, 1, 2755.18, -419.486, 125.07, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, 6407.84, 518.982, 21.3728, 0.698131, 0, 0, 0.34202, 0.939693),
(@OGUID := @OGUID + 1, 180844, 1, 6690.82, -4679.31, 727.253, 2.23402, 0, 0, 0.898793, 0.438373),
(@OGUID := @OGUID + 1, 180844, 1, 9817.01, 957.182, 1322.59, 5.68977, 0, 0, -0.292372, 0.956305),
(@OGUID := @OGUID + 1, 180844, 1, 10129.5, 2218.1, 1336.3, 2.23402, 0, 0, 0.898793, 0.438373),

-- (5300075, 180844, 530, -2630.48, 4451.79, 41.8866, 5.63741, 0, 0, -0.317305, 0.948324),
-- (5300076,  180844, 530, 187.202, 2597.67, 94.978, 2.77507, 0, 0, 0.983254, 0.182238),

(@OGUID := @OGUID + 1, 178556, 0, -5021.14, -834.256, 524.032, 2.25147, 0, 0, 0.902585, 0.430512),
(@OGUID := @OGUID + 1, 178556, 0, -4869.01, -1018.85, 518.948, 5.39307, 0, 0, -0.430511, 0.902586),
(@OGUID := @OGUID + 1, 178556, 0, -4832.99, -1062.69, 528.278, 5.39307, 0, 0, -0.430511, 0.902586),
(@OGUID := @OGUID + 1, 178556, 1, -1420.32, -111.116, 181.054, 5.67232, 0, 0, -0.300705, 0.953717);

INSERT INTO `game_event_gameobject` (`guid`, `event`) SELECT `guid`, 2 FROM `gameobject` WHERE `id` IN (180844,178556) AND `map` != 571;

-- Respawn Winter Reveler 15760 (-48 / +100)
SET @CGUID := 190900;
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (15760) AND `map` != 571);
DELETE FROM `game_event_creature_data` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (15760) AND `map` != 571);
DELETE FROM `creature` WHERE `id` IN (15760) AND `map` != 571;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID := @CGUID + 1, 15760, 0, -14461.9, 491.803, 15.2063, 0.837758, 300, 300, 0, 0), -- 26243
(@CGUID := @CGUID + 1, 15760, 0, -14460.8, 492.998, 15.208, 3.92699, 300, 300, 0, 0), -- 26244
(@CGUID := @CGUID + 1, 15760, 0, -12429.4, 212.914, 2.44848, 5.96903, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 0, -12427.3, 212.397, 2.44848, 3.03687, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 0, -10647.7, 1174.96, 34.4276, 1.09956, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 0, -10645.7, 1177.46, 34.5556, 4.13643, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -10523.5, -1162.52, 27.5597, 4.66003, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -10523.2, -1164.94, 27.5597, 1.5708, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 0, -10491.1, -3248.64, 21.1148, 5.53269, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 0, -10488.6, -3251.01, 21.1138, 2.35619, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 0, -9468.33, 24.9295, 56.5369, 6.0912, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 0, -9465.93, 24.9355, 56.6126, 3.12414, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -9225.23, -2153.85, 64.0168, 6.23083, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -9223.84, -2153.94, 64.0168, 3.01942, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 0, -8866.35, 676.362, 97.9864, 0.0349066, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 0, -8864.07, 675.996, 97.9864, 2.87979, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -6665.69, -2167.53, 245.456, 5.67232, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 0, -6663, -2169.4, 245.456, 2.49582, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 0, -5581.24, -525.341, 400.846, 1.51844, 300, 300, 0, 0), -- 26241
(@CGUID := @CGUID + 1, 15760, 0, -5581.07, -523.102, 400.846, 4.62512, 300, 300, 0, 0), -- 26242
(@CGUID := @CGUID + 1, 15760, 0, -5383.04, -2966.28, 322.141, 5.75959, 300, 300, 0, 0), -- 26242
(@CGUID := @CGUID + 1, 15760, 0, -5380.92, -2967.54, 322.141, 2.49582, 300, 300, 0, 0), -- 26241
(@CGUID := @CGUID + 1, 15760, 0, -4853.14, -870.297, 501.997, 4.81711, 300, 300, 0, 0), -- 26242
(@CGUID := @CGUID + 1, 15760, 0, -4852.92, -872.19, 501.997, 1.69297, 300, 300, 0, 0), -- 26241
(@CGUID := @CGUID + 1, 15760, 0, -3805.92, -825.177, 10.1774, 5.37561, 300, 300, 0, 0), -- 26242
(@CGUID := @CGUID + 1, 15760, 0, -3804.59, -826.894, 10.1774, 2.30383, 300, 300, 0, 0), -- 26241
(@CGUID := @CGUID + 1, 15760, 0, -921.946, -3530.93, 72.6571, 1.5708, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 0, -921.896, -3528.57, 72.6708, 4.72984, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 0, -858.831, -559.944, 11.7749, 1.50098, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 0, -858.777, -558.361, 11.7749, 4.7294, 300, 300, 0, 0), -- 26239
-- spell will be ported.
-- Table `game_event_creature_data` have creature (Guid: 190932) with nonexistent spell_start 26252, set to no start spell.
-- Table `game_event_creature_data` have creature (Guid: 190931) with nonexistent spell_start 26251, set to no start spell.
(@CGUID := @CGUID + 1, 15760, 0, -631.04, -4576.93, 12.4413, 0.750492, 300, 300, 0, 0), -- 26251
(@CGUID := @CGUID + 1, 15760, 0, -629.124, -4574.99, 12.4413, 3.99775, 300, 300, 0, 0), -- 26252
(@CGUID := @CGUID + 1, 15760, 0, -11.5524, -932.199, 57.2556, 5.84685, 300, 300, 0, 0), -- 26254
(@CGUID := @CGUID + 1, 15760, 0, -9.5064, -933.083, 57.2556, 2.74017, 300, 300, 0, 0), -- 26253
(@CGUID := @CGUID + 1, 15760, 0, 397.591, -2093.51, 131.645, 4.90438, 300, 300, 0, 0), -- 26241
(@CGUID := @CGUID + 1, 15760, 0, 397.877, -2094.89, 131.645, 1.78024, 300, 300, 0, 0), -- 26242
(@CGUID := @CGUID + 1, 15760, 0, 505.747, 1638.96, 126.025, 0.0523599, 300, 300, 0, 0), -- 26253
(@CGUID := @CGUID + 1, 15760, 0, 509.923, 1638.96, 126.025, 3.12414, 300, 300, 0, 0), -- 26254
(@CGUID := @CGUID + 1, 15760, 0, 1635.82, 233.67, -43.0193, 1.11701, 300, 300, 0, 0), -- 26254
(@CGUID := @CGUID + 1, 15760, 0, 1637.09, 236.273, -43.0193, 4.35037, 300, 300, 0, 0), -- 26253
(@CGUID := @CGUID + 1, 15760, 0, 2249.08, 240.226, 34.3437, 6.14356, 300, 300, 0, 0), -- 26254
(@CGUID := @CGUID + 1, 15760, 0, 2251.53, 240.007, 34.3437, 3.05433, 300, 300, 0, 0), -- 26253
(@CGUID := @CGUID + 1, 15760, 1, -7161.96, -3844.55, 8.79961, 6.00393, 300, 300, 0, 0), -- 26244
(@CGUID := @CGUID + 1, 15760, 1, -7160.19, -3845.04, 8.8656, 2.89725, 300, 300, 0, 0), -- 26243
(@CGUID := @CGUID + 1, 15760, 1, -6854.6, 737.74, 45.7454, 5.20108, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -6853.64, 735.57, 45.7454, 2.02458, 300, 300, 0, 0), -- 26246
(@CGUID := @CGUID + 1, 15760, 1, -5462.85, -2452.56, 89.9102, 5.18363, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -5461.82, -2454.99, 89.9102, 1.91986, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, -4443.27, 253.074, 39.1908, 5.20108, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, -4442.12, 250.631, 39.1908, 1.97222, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -4350.74, 3287.37, 18.7536, 1.53589, 300, 300, 0, 0), -- 26246
(@CGUID := @CGUID + 1, 15760, 1, -4350.58, 3289.66, 18.7535, 4.69494, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, -3620.29, -4462.4, 13.7054, 1.51844, 300, 300, 0, 0), -- 26240
(@CGUID := @CGUID + 1, 15760, 1, -3620.29, -4461.03, 13.7054, 4.72984, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 1, -2376.24, -344.29, -8.87366, 1.20428, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -2375.13, -341.74, -8.87366, 4.2586, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, -2365.94, -1977.81, 96.7881, 5.77704, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -2363.68, -1979.2, 96.7881, 2.63545, 300, 300, 0, 0), -- 26248
-- Table `game_event_creature_data` have creature (Guid: 190959) with nonexistent spell_start 26252, set to no start spell.
-- Table `game_event_creature_data` have creature (Guid: 190960) with nonexistent spell_start 26251, set to no start spell.
(@CGUID := @CGUID + 1, 15760, 1, -1587.85, 3158.84, 47.2486, 5.63741, 300, 300, 0, 0), -- 26252
(@CGUID := @CGUID + 1, 15760, 1, -1586.03, 3157.59, 47.2486, 2.46091, 300, 300, 0, 0), -- 26251
(@CGUID := @CGUID + 1, 15760, 1, -1294.27, 45.5886, 129.292, 0.575959, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, -1291.8, 46.9446, 129.292, 3.63028, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, -1046.26, -3668.24, 23.9706, 1.36136, 300, 300, 0, 0), -- 26244
(@CGUID := @CGUID + 1, 15760, 1, -1045.48, -3664.33, 23.9732, 4.50295, 300, 300, 0, 0), -- 26243
(@CGUID := @CGUID + 1, 15760, 1, -414.373, -2651.99, 96.3063, 5.79449, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 1, -412.213, -2653.14, 96.3063, 2.63545, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, 246.907, 1259.03, 192.246, 1.15192, 300, 300, 0, 0), -- 26239
(@CGUID := @CGUID + 1, 15760, 1, 248.185, 1261.54, 192.242, 4.29351, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, 330.857, -4689.74, 16.5411, 1.50098, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 1, 331.185, -4687.07, 16.5411, 4.53786, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 1, 908.872, 915.002, 106.341, 1.02974, 300, 300, 0, 0), -- 26249
(@CGUID := @CGUID + 1, 15760, 1, 910.106, 916.889, 106.341, 4.11898, 300, 300, 0, 0), -- 26250
(@CGUID := @CGUID + 1, 15760, 1, 1629.61, -4439.9, 15.5944, 0.977384, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 1, 1630.71, -4438.38, 15.6045, 4.11898, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 1, 2336.35, -2578.54, 102.857, 5.84685, 300, 300, 0, 0), -- 26248
(@CGUID := @CGUID + 1, 15760, 1, 2338.45, -2579.42, 102.857, 2.77507, 300, 300, 0, 0), -- 26247
(@CGUID := @CGUID + 1, 15760, 1, 2754.01, -420.221, 111.553, 0.488692, 300, 300, 0, 0), -- 26246
(@CGUID := @CGUID + 1, 15760, 1, 2756.34, -419.003, 111.559, 3.57792, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, 6406.53, 519.009, 8.73281, 6.07375, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, 6408.2, 518.467, 8.73286, 2.84489, 300, 300, 0, 0), -- 26246
(@CGUID := @CGUID + 1, 15760, 1, 6690.04, -4678.26, 721.798, 6.05629, 300, 300, 0, 0), -- 26244 
(@CGUID := @CGUID + 1, 15760, 1, 6691.92, -4678.69, 721.799, 2.86234, 300, 300, 0, 0), -- 26243
(@CGUID := @CGUID + 1, 15760, 1, 9816.57, 957.975, 1308.88, 4.88692, 300, 300, 0, 0), -- 26246
(@CGUID := @CGUID + 1, 15760, 1, 9817.05, 956.271, 1308.87, 1.88496, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, 10128.2, 2218.38, 1330.07, 6.0912, 300, 300, 0, 0), -- 26245
(@CGUID := @CGUID + 1, 15760, 1, 10130.1, 2217.97, 1330.07, 2.87979, 300, 300, 0, 0); -- 26246
-- (5301981, 15760, 530, -2630.92, 4452.44, 36.2604, 5.41052, 300, 300, 0, 0), -- 26248
-- (5301982, 15760, 530, -2629.9, 4451.08, 36.1773, 2.05949, 300, 300, 0, 0), -- 26247
-- (5301983, 15760, 530, -1907.47, 5771.96, 131.296, 0.645772, 300, 300, 0, 0), -- 39859
-- (5301984, 15760, 530, -1906.05, 5773.35, 131.296, 3.9619, 300, 300, 0, 0), -- 39858
-- (5301985, 15760, 530, 186.373, 2598.1, 87.3669, 5.68977, 300, 300, 0, 0), -- 26247
-- (5301986, 15760, 530, 187.892, 2597.16, 87.3669, 2.6529, 300, 300, 0, 0), -- 26248
-- (5301987, 15760, 530, -4123.25000000000000000000, -12473.50000000000000000000, 44.65179824829101600000, 4.45059013366699200000, 300, 300, 0, 0), -- 39859
-- (5301988, 15760, 530, -4123.87011718750000000000, -12475.40039062500000000000, 44.65129852294922000000, 1.25663995742797850000, 300, 300, 0, 0), -- 39858
-- (5301989, 15760, 530, 9695.95996093750000000000, -7375.54980468750000000000, 12.00520038604736300000, 0.31415900588035583000, 300, 300, 0, 0), -- 39860
-- (5301990, 15760, 530, 9697.58007812500000000000, -7375.00976562500000000000, 12.00389957427978500000, 3.64773988723754900000, 300, 300, 0, 0), -- 39861
-- (5301991, 15760, 530, 9575.17968750000000000000, -7220.54980468750000000000, 16.22120094299316400000, 4.60766983032226600000, 300, 300, 0, 0), -- 39860
-- (5301992, 15760, 530, 9575.21972656250000000000, -7222.04003906250000000000, 16.22039985656738300000, 1.74532997608184810000, 300, 300, 0, 0), -- 39861
-- (5301993, 15760, 530, 9475.20996093750000000000, -6864.08007812500000000000, 17.44820022583007800000, 2.30382990837097170000, 300, 300, 0, 0), -- 39861
-- (5301994, 15760, 530, 9473.96972656250000000000, -6862.70019531250000000000, 17.46769905090332000000, 5.48032999038696300000, 300, 300, 0, 0); -- 39860

SET @CGUID := 190900;
INSERT INTO `game_event_creature_data` (`guid`, `spell_start`, `event`) VALUES
(@CGUID := @CGUID + 1, 26243, 2),
(@CGUID := @CGUID + 1, 26244, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26241, 2),
(@CGUID := @CGUID + 1, 26242, 2),
(@CGUID := @CGUID + 1, 26242, 2),
(@CGUID := @CGUID + 1, 26241, 2),
(@CGUID := @CGUID + 1, 26242, 2),
(@CGUID := @CGUID + 1, 26241, 2),
(@CGUID := @CGUID + 1, 26242, 2),
(@CGUID := @CGUID + 1, 26241, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26251, 2),
(@CGUID := @CGUID + 1, 26252, 2),
(@CGUID := @CGUID + 1, 26254, 2),
(@CGUID := @CGUID + 1, 26253, 2),
(@CGUID := @CGUID + 1, 26241, 2),
(@CGUID := @CGUID + 1, 26242, 2),
(@CGUID := @CGUID + 1, 26253, 2),
(@CGUID := @CGUID + 1, 26254, 2),
(@CGUID := @CGUID + 1, 26254, 2),
(@CGUID := @CGUID + 1, 26253, 2),
(@CGUID := @CGUID + 1, 26254, 2),
(@CGUID := @CGUID + 1, 26253, 2),
(@CGUID := @CGUID + 1, 26244, 2),
(@CGUID := @CGUID + 1, 26243, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26246, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26246, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26240, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26252, 2),
(@CGUID := @CGUID + 1, 26251, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26244, 2),
(@CGUID := @CGUID + 1, 26243, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26239, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26249, 2),
(@CGUID := @CGUID + 1, 26250, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26248, 2),
(@CGUID := @CGUID + 1, 26247, 2),
(@CGUID := @CGUID + 1, 26246, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26246, 2),
(@CGUID := @CGUID + 1, 26244, 2),
(@CGUID := @CGUID + 1, 26243, 2),
(@CGUID := @CGUID + 1, 26246, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26245, 2),
(@CGUID := @CGUID + 1, 26246, 2);
-- (5301981, 26248, 2),
-- (5301982, 26247, 2),
-- (5301983, 39859, 2),
-- (5301984, 39858, 2),
-- (5301985, 26247, 2),
-- (5301986, 26248, 2),
-- (5301987, 39859, 2),
-- (5301988, 39858, 2),
-- (5301989, 39860, 2),
-- (5301990, 39861, 2),
-- (5301991, 39860, 2),
-- (5301992, 39861, 2),
-- (5301993, 39861, 2),
-- (5301994, 39860, 2);

INSERT INTO `game_event_creature` (`guid`, `event`) SELECT `guid`, 2 FROM `creature` WHERE `id` IN (15760) AND `map` != 571;

-- Grand Foreman Puzik should not drop Cache of Zanzils Altered Mixture
-- https://www.wowhead.com/classic/npc=7288/grand-foreman-puzik-gallywix
DELETE FROM `creature_loot_template` WHERE `entry` = 7288 AND `item` != 8074; -- Gallywix's Head

-- Touch of Zanzil Should Not Be Applied When Accepting 2479 - same with alliance version
-- Touch of Zanzil Should Not Be Applied When Accepting 2607
UPDATE `quest_template` SET `SrcSpell`= 0 WHERE  `SrcSpell` = 9991; -- is applied when chest is opened

-- Add Quest Start Script for 2359
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 2359;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `comments`) VALUES
(2359, 0, 0, 0, 0, 3264, 'Klaven\'s Tower: Agent Kearnen (7024) - Talk'),
(2359, 5000, 31, 7024, 5, 0, 'Agent Kearnen - Spam Prevention');
UPDATE `quest_template` SET `StartScript` = 2359 WHERE `entry` = 2359;

-- Greatfather Winters Helpers Should only spawn on the 25th - missing in cmangos
-- UPDATE `creature` SET `guid` = 62030 WHERE `guid` = 62029 AND `id` = 17272; -- cheap solution, not needed in classic
DELETE FROM `creature` WHERE `guid` IN (62028,62029); -- old guids used in vmangos/trinitycore
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(62028, 15745, 0, -4912.68, -976.28, 501.533, 2.49582, 300, 300, 0, 0),
(62029, 15746, 1, 1629.04, -4414.38, 16.0047, 0.436332, 300, 300, 0, 0);

-- 9 1 525600 11520 0 0 0 Feast of Winter Veil - Presents Event -> 21 in classic
DELETE FROM `game_event_creature` WHERE `guid` IN (62028, 62029);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(62029, 21),
(62028, 21);

-- Greatfather Winter's Helper Should Yell
-- Presents for everyone! Father Winter's put gifts under the tree for all.
UPDATE `broadcast_text` SET `ChatTypeId`=1 WHERE `Id`=11430;

-- Add Gossip Menus to Malyfous Darkhammer (credit trinity core)
-- Malyfous's Catalogue (credit trinity core)
-- Add Condition Quest 5047 Must Be Completed
DELETE FROM `conditions` WHERE `condition_entry` = 2984;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (2984, 8, 5047, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `entry` IN (2986,2987,2988,2989,2990,2991,2992,2993);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(2986,3695,0),
(2987,3696,0),
(2988,3697,0),
(2989,3699,0),
(2990,3698,0),
(2991, 3674, 0),
(2992, 3675, 0),
(2993, 3676, 0);

-- Add Missing Gossip Menu Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (2984,2991,2992,2993,2985);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(2984, 0, 0, 'Tell me about the hide.', 6129, 1, 1, 2991, 0, 0, 0, 0, '', 0, 2984),
(2991, 0, 0, 'What are the chances of obtaining such a hide?', 6131, 1, 1, 2992, 0, 0, 0, 0, '', 0, 0),
(2992, 0, 0, 'So let us pretend I get this hide, what else would you need and what could you actually make?', 6133, 1, 1, 2993, 0, 0, 0, 0, '', 0, 0),
(2993, 0, 0, 'Ok!', 6135, 1, 1, -1, 0, 2993, 0, 0, '', 0, 0),
(2985, 0, 0, 'Chapter on Frayed Abomination Stitchings.', 6145, 1, 1, 2986, 0, 0, 0, 0, '', 0, 2984),
(2985, 1, 0, 'Chapter on Enchanted Scarlet Thread.', 6146, 1, 1, 2987, 0, 0, 0, 0, '', 0, 2984),
(2985, 2, 0, 'Chapter on Frostwhisper\'s Embalming Fluid.', 6147, 1, 1, 2988, 0, 0, 0, 0, '', 0, 2984),
(2985, 3, 0, 'Chapter on Arcane Crystals and Arcanite.', 6151, 1, 1, 2989, 0, 0, 0, 0, '', 0, 2984),
(2985, 4, 0, 'Chapter on Skin of Shadow.', 6161, 1, 1, 2990, 0, 0, 0, 0, '', 0, 2984);

-- Add Gossip Script
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 2993;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `o`, `comments`) VALUES
(2993, 2, 1, 25, 0, 0, 0, 0, 0, 'Malyfous Darkhammer - Emote'),
(2993, 4, 0, 0, 0, 0, 0, 6139, 0, 'Malyfous Darkhammer - Talk');

-- Add Missing NPC Text
DELETE FROM `npc_text_broadcast_text` WHERE `Id` BETWEEN 3695 AND 3699;
INSERT INTO `npc_text_broadcast_text` (`ID`, `BroadcastTextID0`, `Prob0`) VALUES
(3695, 6163, 1),
(3696, 6164, 1),
(3697, 6165, 1),
(3698, 6166, 1),
(3699, 6167, 1);

-- Update Lunar Festival Elder Spawns
UPDATE `creature` SET position_x = -9413.27, position_y = 154.286, position_z = 57.1548, orientation = 2.14675 WHERE `id` = 15565;
UPDATE `creature` SET position_x = -5571.58, position_y = -503.608, position_z = 403.093, orientation = 1.91986 WHERE `id` = 15569;
UPDATE `creature` SET position_x = 6746.22, position_y = -4679.31, position_z = 725.611, orientation = 1.5708 WHERE `id` = 15574;
UPDATE `creature` SET position_x = -2103.06, position_y = -438.984, position_z = -7.22764, orientation = 1.44862 WHERE `id` = 15575;
UPDATE `creature` SET position_x = -14327.7, position_y = 458.502, position_z = 8.04239, orientation = 2.6529 WHERE `id` = 15576;
UPDATE `creature` SET position_x = -869.85, position_y = -3725.6, position_z = 24.4655, orientation = 4.62512 WHERE `id` = 15582;
UPDATE `creature` SET position_x = -5435.71, position_y = -2431.92, position_z = 89.3615, orientation = 5.42797 WHERE `id` = 15584;
UPDATE `creature` SET position_x = -460.237, position_y = -2586.04, position_z = 99.476, orientation = 5.13127 WHERE `id` = 15597;
UPDATE `creature` SET position_x = 6466.88, position_y = -4265.45, position_z = 663.761, orientation = 0.767945 WHERE `id` = 15606;

-- Add missing loot to Xandivious' Demon Bag.
-- ('1562303','15623','6','0','100','0','0','0','0','0','0','0','11','25791','0','7','0','0','0','0','0','0','0','0','Xandivious - Cast Xandivious Demon Bag on Death');
DELETE FROM `creature_loot_template` WHERE `entry` = 15623;
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 15623;
DELETE FROM `gameobject_template` WHERE `entry` = 180671; -- missing added from classicmangos
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
(180671, 3, 644, 'Xandivious\' Demon Bag', 0, 0, 0, 1, 43, 17516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_loot_template` WHERE `entry` = 17516;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (17516, 21145, -100, 0, 1, 1, 0, 'Essence of Xandivious');

DELETE FROM `gameobject_template` WHERE `entry` = 180672; -- missing
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`) VALUES
(180672, 5, 4095, 'Demon Summoning Torch', 0, 0, 1, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Xandivious
-- https://youtu.be/jy67jSDEjgw?si=cwSFlzPW_zack-iF&t=135
-- https://youtu.be/LrTr4Uj7kls?si=FNhiGerRpJ9x2O7k&t=170
UPDATE `broadcast_text` SET `ChatTypeId`=1 WHERE `Id`=11268;

-- Fix Creatures
UPDATE `creature` SET `position_z` = 79.5248, `MovementType` = 1, `spawndist` = 10 WHERE `guid` = 15226; -- not random moving, was falling below ground befor.
UPDATE `creature` SET `position_x` = -4268.95, `position_y` = 36.598, `position_z` = 55.1443, `MovementType` = 1, `spawndist` = 10 WHERE `guid` = 50875; -- in texture
UPDATE `creature` SET `position_x` = -6695.45, `position_y` = -3014.05, `position_z` = 261.037, `MovementType` = 1, `spawndist` = 4 WHERE `guid` = 6910;
UPDATE `creature` SET `position_x` = -1813.75, `position_y` = 2889.85, `position_z` = 50.971, `MovementType` = 1, `spawndist` = 5 WHERE `guid` = 28907; -- pulled from spawn loc
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 10 WHERE `guid` = 10105; -- radius too big
UPDATE `creature` SET `position_x` = -9298.06, `position_y` = -1886.38, `position_z` = 78.3101 WHERE `guid` = 6707; -- in tree
UPDATE `creature` SET `position_x` = 52.892, `position_y` = 1563.021, `position_z` = 124.512, `orientation` = 3.459 WHERE `guid`= 27980; -- wrong spot
UPDATE `creature` SET `position_z` = 16.25, `MovementType` = 1, `spawndist` = 25 where `id` = 5420 AND `guid` = 21996; -- falling
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 15 WHERE `guid` = 42304; -- static
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 15 WHERE `guid` = 2634; -- static
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 2 WHERE `guid` IN (373 ,612, 756, 981, 1062); -- static
UPDATE `creature` SET `position_x` = -5231.283, `position_y` = 1287.122, `position_z` = 55.708 WHERE `guid` = 51210; -- in texture
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 3 WHERE `id` = 3695; -- static
UPDATE `creature` SET `position_x` = 1591.68, `position_y` = -2539.28, `position_z` = 101.81  WHERE `guid` = 34832; -- in texture

-- Shellfish Trap Summons Drysnap Crawler
-- https://www.wowhead.com/wotlk/object=176582/shellfish-trap#comments:id=3193505
DELETE FROM `gameobject` WHERE `id` IN (176582,176635,0) AND `guid` IN (32543,32544,32545,32546,32547,32549,32550,32551,32553,32554,32555,32670,32674,32679,32681,32784,32559,32560,32561,32562);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(32543, 176582, 1, -2136.81, 3421.63, -49.4686, 5.28835, 0, 0, -0.477159, 0.878817, 60, 120), -- NEW
(32544, 176582, 1, -2111.39, 3341.36, -48.6987, 4.57276, 0, 0, -0.754709, 0.656059, 60, 120), -- NEW
(32545, 176582, 1, -2080.09, 3425.93, -50.8592, 5.044, 0, 0, -0.580703, 0.814116, 60, 120), -- NEW
(32546, 176582, 1, -2024.38, 3293.43, -43.9713, 5.02655, 0, 0, -0.587785, 0.809017, 60, 120),
(32547, 176582, 1, -2005.05, 3358.99, -80.155, 4.4855, 0, 0, -0.782608, 0.622515, 60, 120),
(32549, 176582, 1, -1994.45, 3401.67, -80.061, 3.3685, 0, 0, -0.993571, 0.113208, 60, 120),
(32550, 176582, 1, -1980.03, 3252.06, -32.7441, 0.610863, 0, 0, 0.300705, 0.953717, 60, 120),
(32551, 176582, 1, -1975.23, 3193.08, -66.2544, 5.14872, 0, 0, -0.537299, 0.843392, 60, 120),
(32553, 176582, 1, -1962.74, 3303.61, -42.876, 2.53072, 0, 0, 0.953716, 0.300708, 60, 120),
(32554, 176582, 1, -1920.99, 3326.93, -74.3969, 3.59538, 0, 0, -0.97437, 0.224951, 60, 120),
(32555, 176582, 1, -1869.41, 3139.91, -29.0381, 5.88176, 0, 0, -0.199368, 0.979925, 60, 120),
(32670, 176582, 1, -1861.97, 3384.48, -69.699, 5.28835, 0, 0, -0.477159, 0.878817, 60, 120),
(32674, 176582, 1, -1860.29, 3183.45, -34.1432, 3.00195, 0, 0, 0.997563, 0.0697661, 60, 120),
(32679, 176582, 1, -1834.32, 3425.38, -48.2402, 4.85202, 0, 0, -0.656058, 0.75471, 60, 120),
(32681, 176582, 1, -1831.1, 3343.21, -44.4896, 0.244346, 0, 0, 0.121869, 0.992546, 60, 120),
(32784, 176582, 1, -1799.84, 3226.16, -45.5012, 4.4855, 0, 0, -0.782608, 0.622515, 60, 120),
(32559, 176582, 1, -1796.36, 3300.82, -69.3038, 3.08918, 0, 0, 0.999657, 0.0262016, 60, 120),
(32560, 176582, 1, -1754.22, 3332.64, -43.293, 0.401425, 0, 0, 0.199368, 0.979925, 60, 120),
(32561, 176582, 1, -1683.83, 3321.01, -44.2335, 2.14675, 0, 0, 0.878817, 0.47716, 60, 120),
(32562, 176582, 1, -1674.09, 3439.92, -48.884, 1.46608, 0, 0, 0.66913, 0.743145, 60, 120); -- NEW

DELETE FROM `gameobject_spawn_entry` WHERE `guid` IN (32543,32544,32545,32546,32547,32549,32550,32551,32553,32554,32555,32670,32674,32679,32681,32784,32559,32560,32561,32562);
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 176582 FROM `gameobject` WHERE `guid` IN (32543,32544,32545,32546,32547,32549,32550,32551,32553,32554,32555,32670,32674,32679,32681,32784,32559,32560,32561,32562);
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 176635 FROM `gameobject` WHERE `guid` IN (32543,32544,32545,32546,32547,32549,32550,32551,32553,32554,32555,32670,32674,32679,32681,32784,32559,32560,32561,32562);
UPDATE `gameobject` SET `id` = 0 WHERE `guid` IN (32543,32544,32545,32546,32547,32549,32550,32551,32553,32554,32555,32670,32674,32679,32681,32784,32559,32560,32561,32562);

-- https://web.archive.org/web/20080406033040/http://wow.allakhazam.com:80/db/object.html?wobject=197
UPDATE `gameobject_loot_template` SET `maxcount` = 2, `ChanceOrQuestChance` = 70 WHERE `entry` = 13944 AND `item` = 13545; -- Shellfish
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `entry` = 13944 AND `item` = 6612;
UPDATE `gameobject_loot_template` SET `groupid` = 1 WHERE `entry` = 13944 AND `item` IN (1755,6612,6601,2991,2983,2143,1780);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 13944 AND `item` IN (4788,6562);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(13944, 4788, 0.1, 1, 1, 1, 0, 'Agile Boots'),
(13944, 6562, 0.1, 1, 1, 1, 0, 'Shimmering Boots');

-- Sahrhee Gossip Menu
UPDATE `creature_template` SET `GossipMenuId` = 1483 WHERE `entry` = 8767;
DELETE FROM `gossip_menu` WHERE `entry` = 1483 AND `text_id` = 2155;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1483, 2155);

-- https://www.wowhead.com/classic/npc=7736/innkeeper-shyria
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 7736;
DELETE FROM `npc_vendor` WHERE `entry` = 7736;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `condition_id`) VALUES
(7736, 1, 4536, 0),
(7736, 2, 4537, 0),
(7736, 3, 4538, 0),
(7736, 4, 4539, 0),
(7736, 5, 4602, 0),
(7736, 6, 8953, 0),
(7736, 7, 159, 0),
(7736, 8, 1179, 0),
(7736, 9, 1205, 0),
(7736, 10, 1708, 0),
(7736, 11, 1645, 0),
(7736, 12, 8766, 0),
(7736, 13, 21833, 500), -- 474 12 8 0 0 0 0 Event ID 8 Active -> 500 classic
(7736, 14, 21829, 500),
(7736, 15, 21815, 500);

-- Add Missing Quest and Add Correct Requirements
-- https://www.wowhead.com/classic/quest=8485/the-brokering-of-peace#comments:id=22120
UPDATE `quest_template` SET `PrevQuestId` = 8481 WHERE `entry` = 8484;
UPDATE `quest_template` SET `PrevQuestId` = 8481 WHERE `entry` = 8485;

-- Remove Some Low Level Loot From Tanaris Mobs - https://www.wowhead.com/classic/npc=5426/blisterpaw-hyena
DELETE FROM `creature_loot_template` WHERE `entry` = 5426 AND `item` IN (774,117,4775,118,159,818,1645,2589,3013,4602);

-- https://www.wowhead.com/classic/npc=5429/fire-roc
DELETE FROM `creature_loot_template` WHERE `entry` = 5429 AND `item` IN (117,159,556,774,818,2589,4775,4776);

-- Reduce Wander Distance of Honored Hero
UPDATE `creature` SET `spawndist` = 2 WHERE `id` IN (15115, 15113); -- 8

-- Delete Arathi PVP supplies from Warpwood Stomper, Desert Rumbler, Vekniss Soldier
DELETE FROM `creature_loot_template` WHERE `entry` IN (11465, 11746, 15229) AND `item` IN (20062, 20066); -- Arathi Basin Runecloth Bandage

-- Delete loot table for Field Marshal Oslight 
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 14983;
DELETE FROM `creature_loot_template` WHERE `entry` = 14983;

-- Correct Some Quest Texts
UPDATE `quest_template` SET `OfferRewardText` = 'Incredible! Improbable! Simply amazing! You\'ve got talent, $N. Either that or you\'re the luckiest $gman:woman; alive!$b$bHere\'s your cut of the action. I\'m sure you would make better use of this stuff than I could.$b$b' WHERE `entry`=2381; -- gender
UPDATE `quest_template` SET `RequestItemsText` = 'This is going to be a tough battle...' WHERE `entry` = 3382; -- https://www.wowhead.com/tbc/quest=3382/a-crew-under-fire

-- Correct Items Shadi Mistrunner
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 2605; -- https://www.wowhead.com/classic/item=2605/green-dye
-- INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `condition_id`) VALUES (8363, 0, 2605, 0); -- classic only

-- Reduce Schematic: Ice Deflector Restock Time
UPDATE `npc_vendor` SET `incrtime` = 7200 WHERE `entry` = 2684 AND `item` = 13308; -- 9000

-- Quest 109 Should be Started by Multiple NPCs
-- https://www.wowhead.com/classic/npc=294/marshal-haggard
DELETE FROM `creature_questrelation` WHERE `id` = 294 AND `quest` = 109;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(294, 109);

-- Update Creatures and Gameobjects Associated With Quest Clam Bait 
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 177784; -- only quest
DELETE FROM `creature` WHERE `id` = 12347 AND `guid` BETWEEN 27763 AND 27768;
INSERT INTO `creature` (`guid`, `id`,`map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(27763, 12347, 1, -709.65, 3079.03, -30.12, 3.16598, 300, 300, 20, 1),
(27764, 12347, 1, -732.872, 3116.84, -25.9876, 3.16598, 300, 300, 20, 1),
(27765, 12347, 1, -819.322, 3151.19, -29.0014, 3.16598, 300, 300, 20, 1),
(27766, 12347, 1, -927.963, 3116.89, -25.2395, 3.16598, 300, 300, 20, 1),
(27767, 12347, 1, -779.266, 3044.03, -22.1945, 3.16598, 300, 300, 20, 1),
(27768, 12347, 1, -672.3, 2973.36, -21.8494, 3.16598, 300, 300, 20, 1);

-- Correct Loot Template For Riverpaw Gnoll
DELETE FROM `creature_loot_template` WHERE `entry` = 117 AND `item` IN (4605, 1710,118,414);

-- https://www.wowhead.com/classic/npc=16284/argent-medic#comments:id=18198
DELETE FROM `gossip_menu` WHERE `entry` = 7175;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(7175, 8454, 0, 0),
(7175, 8455, 0, 7175);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7175;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(7175, 0, 0, 'I am diseased. Please cure me, medic.', 12154, 1, 1, -1, 0, 7175, 0, 0, NULL, 0, 7179);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 7175;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `comments`) VALUES
(7175, 0, 0, 15, 28133, 'Argent Medic (16284) - Cast Cure Disease');

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 7175 AND 7179;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(7175, 5, 529, 5),
(7176, 1, 12541, 0),
(7177, 1, 16449, 0),
(7178, -2, 7176, 7177),
(7179, -1, 7178, 7175);

-- ---------------------------

-- NOTE: There seems to be a missing escort quest associated with this NPC
-- Add Missing Creature Guard Didier
UPDATE `creature_template` SET `GossipMenuId` = 7168, `faction` = 1624, `NpcFlags` = 1 WHERE `entry` = 16226; -- npcflags are changed during script
DELETE FROM `creature` WHERE `id` = 16226 AND `guid` = 53899;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(53899, 16226, 0, 2305.29, -5286.12, 82.0618, 4.83456, 300, 300, 0, 0);
DELETE FROM `gossip_menu` WHERE `entry` = 7168;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (7168, 8438);

-- ---------------------------

-- Remove Some Skinning Loot IDs
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE entry IN (10116, 2230, 6728, 12202, 14646, 14869);
DELETE FROM `skinning_loot_template` WHERE `entry` = 10116;
UPDATE `creature_template` SET `SkinningLootId` = 3475 WHERE entry = 3475;
DELETE FROM `skinning_loot_template` WHERE `entry` = 3475;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3475, 783, 5.6075, 1, 1, 1, 0, 'Light Hide'),
(3475, 2318, 73.8318, 1, 1, 2, 0, 'Light Leather'),
(3475, 2319, 18.6916, 1, 1, 1, 0, 'Medium Leather'),
(3475, 4232, 1.8692, 1, 1, 1, 0, 'Medium Hide');

-- ---------------------------

-- Add Some Missing Gossips
-- Arygos Gossip
-- 9040 31 717 0 0 0 0 Dungeon Encounter ID 717 Completed - 717 531 0 8000 8 4828 C'thun 16712190 0
UPDATE `creature_template` SET `GossipMenuId` = 6767 WHERE `entry` = 15380; -- 6793
DELETE FROM `gossip_menu` WHERE `entry` = 6767;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (6767, 8080);

-- Merithra of the Dream Gossip
UPDATE `creature_template` SET `GossipMenuId` = 6766 WHERE `entry`=15378; -- 6795
DELETE FROM `gossip_menu` WHERE `entry` = 6766;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (6766, 8079);

-- Elder Torntusk
DELETE FROM `npc_gossip` WHERE `npc_guid` = 93209; -- 7257
UPDATE `creature_template` SET `GossipMenuId` = 6102 WHERE `entry` = 14757;
DELETE FROM `gossip_menu` WHERE `entry` = 6102;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (6102, 7257);

-- Primal Torntusk
DELETE FROM `npc_gossip` WHERE `npc_guid` = 92910; -- 7238
UPDATE `creature_template` SET `GossipMenuId` = 6084 WHERE `entry` = 14736;
DELETE FROM `gossip_menu` WHERE `entry` = 6084;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (6084, 7238);

-- Seersa Copperpinch, Guchie Jinglepocket and Jaycrue Copperpinch
UPDATE `creature_template` SET `GossipMenuId` = 5181, `NpcFlags` = `NpcFlags`|1 WHERE `entry` IN (13432, 13436, 13430);

-- Cyrus Therepentous
DELETE FROM `npc_gossip` WHERE `npc_guid` = 9; -- 2493
UPDATE `creature_template` SET `GossipMenuId` = 1841 WHERE `entry` = 9459;
DELETE FROM `gossip_menu` WHERE `entry` = 1841;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (1841, 2493);

-- Dreka'Sur
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39088; -- 4960
UPDATE `creature_template` SET `GossipMenuId` = 4067 WHERE `entry` = 9620;
DELETE FROM `gossip_menu` WHERE `entry` = 4067;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (4067, 4960);

-- https://github.com/cmangos/classic-db/commit/f4d65e9fa0ae71739e0498c787e0ea853bb6a6d6
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` IN (14395, 14396); -- -10

-- https://github.com/cmangos/classic-db/commit/abb4c8dfbd3ede35b86cbceb75a786386121e360
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3236;

-- https://github.com/cmangos/classic-db/commit/236aef1311c2cd9b76daaab6fbf06ce25b6e13d3 - https://www.wowhead.com/tbc/item=3257/lake-creeper-moss#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 3257;

-- ---------------------------

-- Increase Dropchance for Crystallized Note
DELETE FROM `creature_loot_template` WHERE `item` IN (10839,10840) AND `entry` IN (6379,6380,6148,6146);
-- 152620 Azsharite Formation 9819
-- 152621 Azsharite Formation 9820
-- 152622 Azsharite Formation 9676
-- 152631 Azsharite Formation 9676
-- https://www.wowhead.com/tbc/object=152620/azsharite-formation
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 9819 AND `item` = 10840;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 9819 AND `item` = 10839;
-- https://www.wowhead.com/tbc/object=152621/azsharite-formation
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 9820 AND `item` = 10839;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 9820 AND `item` = 10840;
-- https://www.wowhead.com/tbc/object=152622/azsharite-formation
-- https://www.wowhead.com/tbc/object=152631/azsharite-formation
DELETE FROM `gameobject_loot_template` WHERE `entry` = 9676 AND `item` IN (10839,10840);

-- ---------------------------

-- https://www.wowhead.com/tbc/npc=832/dust-devil#drops
-- https://www.youtube.com/watch?v=9xktmL3ykFM&ab_channel=DibuckTV
-- https://web.archive.org/web/20080610163527/http://wow.allakhazam.com/db/item.html?witem=2091
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `entry` = 832 AND `item` = 2091; -- Magic Dust further down from 20.

-- ---------------------------

-- Reduce droprate of Mistvale Giblets
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -20 WHERE `entry` = 1557 AND `item` = 3919; -- -30

-- ---------------------------

-- Recipe: Undermine Clam Chowder should have 30 min restock timer
UPDATE `npc_vendor` SET `incrtime` = 1800 WHERE `entry` = 8139 AND `item` = 16767; -- 10800

-- ---------------------------

-- Add Battle Under Blackwood Lake Script
-- https://wowpedia.fandom.com/wiki/Spectral_Betrayer?oldid=4969429
-- https://www.wowhead.com/tbc/npc=11288/spectral-betrayer
-- https://wowpedia.fandom.com/wiki/Spectral_Defender?oldid=4969449
-- https://www.wowhead.com/tbc/npc=11289/spectral-defender

-- Remove Duplicate Spawns
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `id` = 11289;
UPDATE `creature_template` SET `CorpseDecay` = 10 WHERE `entry` = 11288;
UPDATE `creature_template` SET `CorpseDecay` = 30 WHERE `entry` = 11289;
DELETE FROM `creature` WHERE `guid` IN (92828,92827,92824,92831,92823,92826,92248,92244,92249,92247,92246,92245,92829); -- 3 vs 3
DELETE FROM `dbscript_random_templates` WHERE `id` IN (907,908);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(907, 0, 6827, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6828, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6829, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6830, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6831, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6832, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6833, 0, 'Spectral Betrayer 11288 - Text'),
(907, 0, 6834, 0, 'Spectral Betrayer 11288 - Text'),

(908, 0, 6835, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6836, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6837, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6838, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6839, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6840, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6841, 0, 'Spectral Defender 11289 - Texts'),
(908, 0, 6842, 0, 'Spectral Defender 11289 - Texts');

-- ---------------------------

-- https://www.wowhead.com/tbc/object=1761/hillsbrad-proclamation
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 1761;

-- ---------------------------

-- Add Zixil Missing Scripts
-- -- 3537 0 1 -36.31 -916.366 55.075 1.062 180000 0 
-- -- 3537 0 14 -340.615 -711.776 57.733 0 120000 0 
-- -- 3537 0 28 -817.55 -533.02 15.1606 0 180000 0 
-- 3537 0 42 -340.615 -711.776 57.733 0 120000 0
UPDATE `creature` SET `position_x` = -342.026, `position_y` = -714.092, `position_z` = 57.7331 WHERE `guid` IN (15424,15423);
UPDATE `creature_template` SET `InteractionPauseTimer` = 60000 WHERE `entry` = 3537;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 353701 AND 353703;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `dataint`, `comments`) VALUES
(353701, 0, 1119, 'Zixil - Talk on Arriving to Southshore / Tarren Mill'),
(353702, 0, 1122, 'Zixil - Talk on Leaving Southshore'),
(353703, 0, 1123, 'Zixil - Talk on Leaving Tarren Mill');
DELETE FROM `creature_movement_template` WHERE `entry` = 3537;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(3537, 1, -342.026, -714.092, 57.7331, 1.08443, 120000, 353701),
(3537, 2, -336.671, -702.508, 57.7294, 1.2042, 0, 0),
(3537, 3, -326.701, -682.173, 54.5218, 4.2751, 0, 0),
(3537, 4, -305.659, -678.024, 55.4281, 3.33656, 0, 0),
(3537, 5, -266.074, -737.545, 57.0246, 2.14865, 0, 0),
(3537, 6, -229.128, -725.284, 60.5835, 0.316694, 0, 0),
(3537, 7, -174.654, -716.426, 63.6176, 0.031986, 0, 0),
(3537, 8, -94.8141, -714.302, 66.8001, 0.012352, 0, 0),
(3537, 9, -57.2886, -717.962, 68.3569, 6.21896, 0, 0),
(3537, 10, -25.8647, -714.42, 69.598, 0.138012, 0, 0),
(3537, 11, -18.8824, -720.272, 69.2508, 5.39036, 0, 0),
(3537, 12, -18.6463, -740.293, 65.7397, 4.46556, 0, 0),
(3537, 13, -24.2948, -767.126, 61.2219, 1.46926, 0, 0),
(3537, 14, -15.7009, -794.541, 59.3187, 4.23976, 0, 0),
(3537, 15, -20.6007, -806.224, 58.3449, 2.48048, 0, 0),
(3537, 16, -48.0455, -828.875, 56.8089, 0.599455, 0, 0),
(3537, 17, -53.8056, -846.362, 56.344, 1.22778, 0, 0),
(3537, 18, -49.8417, -867.505, 55.547, 4.83669, 0, 0),
(3537, 19, -35.2433, -882.086, 56.119, 5.48857, 0, 0),
(3537, 20, -18.0644, -877.428, 58.5963, 3.01652, 180000, 0),
(3537, 21, -18.0644, -877.428, 58.5963, 3.01652, 0, 353703),
(3537, 22, -49.6889, -867.71, 55.5455, 1.7756, 0, 0),
(3537, 23, -53.6747, -846.325, 56.3471, 1.65975, 0, 0),
(3537, 24, -47.9708, -829.328, 56.8256, 0.858645, 0, 0),
(3537, 25, -20.5868, -806.76, 58.2997, 0.736909, 0, 0),
(3537, 26, -15.8765, -794.635, 59.3084, 1.23171, 0, 0),
(3537, 27, -24.2948, -767.126, 61.2219, 1.4045, 0, 0),
(3537, 28, -17.9489, -738.981, 65.9948, 1.46733, 0, 0),
(3537, 29, -18.963, -720.735, 69.1976, 4.73655, 0, 0),
(3537, 30, -24.283, -714.043, 69.6603, 0.251921, 0, 0),
(3537, 31, -57.4854, -717.839, 68.3591, 3.15397, 0, 0),
(3537, 32, -94.9915, -714.591, 66.7784, 3.05972, 0, 0),
(3537, 33, -174.764, -716.487, 63.6126, 3.1736, 0, 0),
(3537, 34, -228.693, -725.39, 60.6095, 3.37584, 0, 0),
(3537, 35, -266.124, -737.507, 57.0224, 3.30123, 0, 0),
(3537, 36, -322.237, -754.022, 54.145, 0.359908, 0, 0),
(3537, 37, -374.206, -777.388, 54.4583, 3.62912, 0, 0),
(3537, 38, -381.336, -773.427, 54.6048, 2.24487, 0, 0),
(3537, 39, -380.183, -760.353, 54.588, 1.69902, 0, 0),
(3537, 40, -385.652, -734.109, 54.4995, 1.80504, 0, 0),
(3537, 41, -422.063, -636.185, 54.5017, 1.92678, 0, 0),
(3537, 42, -434.054, -585.65, 53.6544, 2.9046, 0, 0),
(3537, 43, -519.576, -560.494, 40.2415, 2.85552, 0, 0),
(3537, 44, -537.587, -559.688, 37.4918, 6.2818, 0, 0),
(3537, 45, -578.429, -573.394, 32.6912, 0.202822, 0, 0),
(3537, 46, -607.932, -574.855, 30.8931, 3.18733, 0, 0),
(3537, 47, -640.541, -560.609, 26.5369, 5.90483, 0, 0),
(3537, 48, -661.569, -559.69, 25.5658, 0.047728, 0, 0),
(3537, 49, -685.979, -552.031, 28.3419, 5.9657, 180000, 353701),
(3537, 50, -685.979, -552.031, 28.3419, 5.9657, 0, 353702),
(3537, 51, -661.484, -559.318, 25.5647, 5.99318, 0, 0),
(3537, 52, -640.657, -560.183, 26.4999, 6.06583, 0, 0),
(3537, 53, -607.728, -574.767, 30.9059, 6.17382, 0, 0),
(3537, 54, -578.209, -573.697, 32.711, 0.049682, 0, 0),
(3537, 55, -537.534, -559.464, 37.4948, 0.340279, 0, 0),
(3537, 56, -519.329, -560.319, 40.2651, 6.15812, 0, 0),
(3537, 57, -435.538, -585.659, 53.6071, 2.7868, 0, 0),
(3537, 58, -422.243, -636.294, 54.5015, 4.97021, 0, 0),
(3537, 59, -411.159, -667.752, 54.4995, 5.88716, 0, 0),
(3537, 60, -333.495, -667.834, 55.0344, 6.27397, 0, 0),
(3537, 61, -326.524, -682.113, 54.5241, 4.32029, 0, 0),
(3537, 62, -336.3, -701.885, 57.7294, 4.24764, 0, 0);

-- ---------------------------

-- Update Hagg Taurenbane Spawn Points
DELETE FROM `creature` WHERE `guid` = 1557 AND `id` = 5859;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUE
(1557, 5859, 1, -3893.59008789062500000000, -1627.26000976562500000000, 91.75000000000000000000, 4.88691997528076200000, 18000, 28800, 0, 0); -- missing in classicmangos

-- ---------------------------

-- Giant Plains Creeper Should not be Skinnable
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry`=2565;
DELETE FROM `skinning_loot_template` WHERE `entry`=2565 AND `item`=4234;

-- ---------------------------

-- Remove Low Level Loot from Silvermane Wolf
DELETE FROM `creature_loot_template` WHERE `entry`=2924 AND `item` IN (1710,4599,4602,6149);

-- ---------------------------

-- Remove Incorrect Skinning Templates
UPDATE `creature_template` SET `SkinningLootId`= 0 WHERE `entry` IN (11788, 11787, 12218);

-- Correct Position for https://www.wowhead.com/tbc/npc=11286/magistrate-marduke
-- By Anonymous on 06/24/2006 (Patch 1.11.0)
-- Moved in 1.11.2. He's now outside near Eva and Lucien Sarkhoff.
UPDATE `creature` SET `position_x` = 1245.52,  `position_y` = -2616.74,  `position_z` = 90.4419,  `orientation` = 2.23402 WHERE `id` = 11286;

-- Add missing https://www.wowhead.com/tbc/object=176630/keepsake-of-remembrance
DELETE FROM `gameobject` WHERE `guid` IN (88334,88333) AND `id` = 176630;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(88333, 176630, 0, -1710.98, -1614.04, 60.307, 0.680677, 0, 0, 0.333806, 0.942642, 30, 60),
(88334, 176630, 0, -1687.98, -1921.14, 86.7267, 0.383971, 0, 0, 0.190808, 0.981627, 30, 60);

-- ---------------------------

-- Add Missing Thunder Bluff Reveler and Waypoints
DELETE FROM `creature` WHERE `guid` = 190987 AND `id` = 15719;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(190987, 15719, 1, -1244.63, 67.5991, 127.914, 4.08576, 120, 120, 0, 2);

-- 2	11	525600	27360	141	0	Feast of Winter Veil
-- 21	1	525600	11700	0	0	Winter Veil: Gifts
DELETE FROM `game_event_creature` WHERE `guid` = 190987;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(190987, 2), -- sometimes has aura 29235
(190987, 21);
DELETE FROM `creature_movement` WHERE `id` = 190987;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(190987, 1, -1172.45, 119.396, 135.106, 100, 0, 0),
(190987, 2, -1184.28, 120.872, 135.207, 100, 0, 0),
(190987, 3, -1192.27, 120.281, 135.206, 100, 0, 0),
(190987, 4, -1202.92, 119.533, 134.884, 100, 0, 0),
(190987, 5, -1205.57, 111.916, 134.43, 100, 0, 0),
(190987, 6, -1213.63, 100.682, 133.778, 100, 0, 0),
(190987, 7, -1221.77, 91.7981, 132.092, 100, 0, 0),
(190987, 8, -1225.93, 87.7314, 131.294, 100, 0, 0),
(190987, 9, -1230.37, 82.3712, 130.489, 100, 0, 0),
(190987, 10, -1239.16, 74.9042, 129.171, 100, 0, 0),
(190987, 11, -1242.99, 69.609, 128.003, 100, 0, 0),
(190987, 12, -1248.53, 62.6843, 127.12, 100, 0, 0),
(190987, 13, -1255.16, 57.1051, 126.957, 100, 0, 0),
(190987, 14, -1264.68, 57.7782, 126.971, 100, 0, 0),
(190987, 15, -1269.16, 60.87, 127.151, 100, 0, 0),
(190987, 16, -1276.64, 63.7197, 128.29, 100, 0, 0),
(190987, 17, -1286.8, 62.4132, 128.557, 100, 0, 0),
(190987, 18, -1303.73, 60.0783, 128.573, 100, 0, 0),
(190987, 19, -1319.74, 56.2617, 129.036, 100, 0, 0),
(190987, 20, -1328.44, 50.3823, 129.036, 100, 0, 0),
(190987, 21, -1332.66, 40.1368, 129.076, 100, 0, 0),
(190987, 22, -1327.5, 25.6062, 129.253, 100, 0, 0),
(190987, 23, -1332.66, 40.1368, 129.076, 100, 0, 0),
(190987, 24, -1328.44, 50.3823, 129.036, 100, 0, 0),
(190987, 25, -1319.74, 56.2617, 129.036, 100, 0, 0),
(190987, 26, -1303.73, 60.0783, 128.573, 100, 0, 0),
(190987, 27, -1286.8, 62.4132, 128.557, 100, 0, 0),
(190987, 28, -1276.64, 63.7197, 128.29, 100, 0, 0),
(190987, 29, -1269.17, 60.8769, 127.152, 100, 0, 0),
(190987, 30, -1264.68, 57.7782, 126.971, 100, 0, 0),
(190987, 31, -1255.16, 57.1051, 126.957, 100, 0, 0),
(190987, 32, -1248.53, 62.6843, 127.12, 100, 0, 0),
(190987, 33, -1242.99, 69.609, 128.003, 100, 0, 0),
(190987, 34, -1239.16, 74.9042, 129.171, 100, 0, 0),
(190987, 35, -1230.37, 82.3712, 130.49, 100, 0, 0),
(190987, 36, -1225.93, 87.7314, 131.294, 100, 0, 0),
(190987, 37, -1221.77, 91.7981, 132.092, 100, 0, 0),
(190987, 38, -1213.63, 100.682, 133.778, 100, 0, 0),
(190987, 39, -1205.57, 111.916, 134.431, 100, 0, 0),
(190987, 40, -1202.92, 119.533, 134.884, 100, 0, 0),
(190987, 41, -1192.27, 120.281, 135.206, 100, 0, 0),
(190987, 42, -1184.28, 120.872, 135.206, 100, 0, 0);

-- ---------------------------

-- Some corrections to Karlee Chaddis Waypoints
UPDATE `creature_movement` SET `waittime` = 0 WHERE `id` = 90439 AND `ScriptId` = 0;
UPDATE `creature_movement_template` SET `waittime` = 0 WHERE `entry` = 2330 AND `ScriptId` = 0;
UPDATE `creature_movement` SET `orientation` = 100 WHERE `id` = 90439 AND `ScriptId` = 0;
UPDATE `creature_movement_template` SET `orientation` = 100 WHERE `entry` = 2330 AND `ScriptId` = 0;

-- ---------------------------

-- Add Snarler Waypoints
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 5356;
UPDATE `creature` SET `position_x` = -4142.19, `position_y` = -423.252, `position_z` = 24.9747, `MovementType` = 2 WHERE `id` = 5356;
DELETE FROM `creature_movement_template` WHERE `entry` = 5356;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5356, 1, -4142.19, -423.252, 24.9747, 100, 0, 0),
(5356, 2, -4145.7, -393.472, 35.8493, 100, 0, 0),
(5356, 3, -4153.35, -369.855, 47.826, 100, 0, 0),
(5356, 4, -4158.44, -355.944, 54.0496, 100, 0, 0),
(5356, 5, -4168.28, -319.475, 58.0327, 100, 0, 0),
(5356, 6, -4175, -292.348, 55.67, 100, 0, 0),
(5356, 7, -4193.54, -274.789, 52.0208, 100, 0, 0),
(5356, 8, -4214.44, -279.072, 43.9941, 100, 0, 0),
(5356, 9, -4212.99, -263.449, 48.2295, 100, 0, 0),
(5356, 10, -4197.5, -232.024, 54.9398, 100, 0, 0),
(5356, 11, -4175.88, -203.194, 58.7209, 100, 0, 0),
(5356, 12, -4182.99, -182.133, 57.8489, 100, 0, 0),
(5356, 13, -4203.5, -147.809, 58.4159, 100, 0, 0),
(5356, 14, -4185.34, -111.887, 59.8366, 100, 0, 0),
(5356, 15, -4163.75, -83.3017, 56.5057, 100, 0, 0),
(5356, 16, -4142.89, -54.1321, 58.8099, 100, 0, 0),
(5356, 17, -4139.57, -22.6688, 57.1284, 100, 0, 0),
(5356, 18, -4146.48, 24.9606, 58.4542, 100, 0, 0),
(5356, 19, -4166.3, 72.8927, 57.1682, 100, 0, 0),
(5356, 20, -4170.52, 112.552, 56.1258, 100, 0, 0),
(5356, 21, -4158.12, 162.799, 58.5915, 100, 0, 0),
(5356, 22, -4114.6, 181.278, 60.4693, 100, 0, 0),
(5356, 23, -4069.28, 195.043, 58.6779, 100, 0, 0),
(5356, 24, -4026.31, 228.288, 58.0024, 100, 0, 0),
(5356, 25, -4060.11, 199.915, 57.3903, 100, 0, 0),
(5356, 26, -4108.47, 183.286, 61.3805, 100, 0, 0),
(5356, 27, -4153.34, 167.014, 58.6702, 100, 0, 0),
(5356, 28, -4170.25, 119.481, 55.5661, 100, 0, 0),
(5356, 29, -4167.58, 79.606, 57.6089, 100, 0, 0),
(5356, 30, -4148.05, 31.6435, 58.4097, 100, 0, 0),
(5356, 31, -4140.12, -15.9016, 56.5497, 100, 0, 0),
(5356, 32, -4141.41, -47.7954, 59.2948, 100, 0, 0),
(5356, 33, -4159.77, -78.0076, 56.2936, 100, 0, 0),
(5356, 34, -4181.53, -106.443, 59.9593, 100, 0, 0),
(5356, 35, -4203.33, -138.827, 57.9872, 100, 0, 0),
(5356, 36, -4186.04, -176.073, 57.5805, 100, 0, 0),
(5356, 37, -4176.17, -197.377, 57.0343, 100, 0, 0),
(5356, 38, -4193.49, -226.107, 56.4164, 100, 0, 0),
(5356, 39, -4209.16, -253.483, 51.3743, 100, 0, 0),
(5356, 40, -4215.93, -275.508, 44.8289, 100, 0, 0),
(5356, 41, -4199.4, -274.222, 49.4723, 100, 0, 0),
(5356, 42, -4178.59, -287.217, 54.1218, 100, 0, 0),
(5356, 43, -4168.96, -316.811, 58.0481, 100, 0, 0),
(5356, 44, -4160.9, -347.617, 54.9743, 100, 0, 0),
(5356, 45, -4147.27, -386.461, 40.1627, 100, 0, 0),
(5356, 46, -4142.74, -418.413, 25.628, 100, 0, 0),
(5356, 47, -4118.48, -447.891, 19.8953, 100, 0, 0),
(5356, 48, -4106.68, -482.678, 12.4655, 100, 0, 0),
(5356, 49, -4113.46, -456.848, 19.0156, 100, 0, 0);

UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 659; -- El Pollo Grande
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 4030; -- Vengeful Ancient
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 5354; -- Gnarl Leafbrother
UPDATE `creature_template` SET `SpeedWalk` = 0.666668, `SpeedRun` = 1.14286 WHERE `entry` = 5402; -- Khan Hratha
UPDATE `creature_template` SET `SpeedWalk` = 0.777776, `SpeedRun` = 1.14286 WHERE `entry` = 5470; -- Raging Dune Smasher
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286 WHERE `entry` = 7371; -- Deadwind Mauler
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 8480; -- Kalaran the Deceiver
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 8836; -- Battle Chicken
UPDATE `creature_template` SET `SpeedWalk` = 1.11111, `SpeedRun` = 1.14286 WHERE `entry` = 12238; -- Zaetar's Spirit
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.28571 WHERE `entry` = 12756; -- Lady Onyxia
UPDATE `creature_template` SET `SpeedWalk` = 0.666668, `SpeedRun` = 1.14286 WHERE `entry` = 13741; -- Gelk
UPDATE `creature_template` SET `SpeedWalk` = 0.666668, `SpeedRun` = 1.14286 WHERE `entry` = 13742; -- Kolk
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 14476; -- Krellack
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 14483; -- Dread Guard
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 19189;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.38571 WHERE `entry` = 19280;
-- UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.71429 WHERE `entry` = 20039; -- might require us to use always run for them
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.38571 WHERE `entry` = 20217;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286 WHERE `entry` = 21514;

-- ---------------------------

-- Gnarl Leafbrother Correct Waypoints
UPDATE `creature_template` SET `Faction` = 7 WHERE `entry` = 5354;
UPDATE `creature` SET `position_x` = -5074.64, `position_y` = 382.334, `position_z` = 12.3643 WHERE `id` = 5354;
DELETE FROM `creature_movement_template` WHERE `entry` = 5354;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5354, 1, -5074.64, 382.334, 12.3643, 100, 0, 0),
(5354, 2, -5061.62, 346.072, 22.8781, 100, 0, 0),
(5354, 3, -5062.88, 318.318, 24.3753, 100, 0, 0),
(5354, 4, -5077.48, 296.145, 30.6872, 100, 0, 0),
(5354, 5, -5094.98, 266.267, 40.7641, 100, 0, 0),
(5354, 6, -5098.34, 219.73, 48.4327, 100, 0, 0),
(5354, 7, -5097.78, 184, 51.7513, 100, 0, 0),
(5354, 8, -5091.18, 138.173, 58.225, 100, 0, 0),
(5354, 9, -5097.18, 177.114, 51.4141, 100, 0, 0),
(5354, 10, -5098.39, 212.937, 49.8549, 100, 0, 0),
(5354, 11, -5096.98, 259.85, 40.6962, 100, 0, 0),
(5354, 12, -5081.39, 290.682, 32.5694, 100, 0, 0),
(5354, 13, -5067.04, 308.754, 25.6239, 100, 0, 0),
(5354, 14, -5061.11, 339.321, 24.4601, 100, 0, 0),
(5354, 15, -5073.69, 379.633, 13.3633, 100, 0, 0),
(5354, 16, -5090.09, 415.905, 11.0174, 100, 0, 0),
(5354, 17, -5080.93, 445.346, 14.8141, 100, 0, 0),
(5354, 18, -5056.84, 476.242, 12.4701, 100, 0, 0),
(5354, 19, -5046.78, 517.301, 19.4991, 100, 0, 0),
(5354, 20, -5046.83, 549.162, 19.666, 100, 0, 0),
(5354, 21, -5042.96, 583.385, 30.3958, 100, 0, 0),
(5354, 22, -5021.04, 615.831, 32.5593, 100, 0, 0),
(5354, 23, -5017.21, 643.357, 34.6607, 100, 0, 0),
(5354, 24, -5017.12, 678.899, 43.1892, 100, 0, 0),
(5354, 25, -5038.04, 699.452, 47.7738, 100, 0, 0),
(5354, 26, -5040.6, 719.204, 58.7576, 100, 0, 0),
(5354, 27, -5028.71, 723.404, 64.3248, 100, 0, 0),
(5354, 28, -5016.2, 729.962, 69.8525, 100, 0, 0),
(5354, 29, -5016.05, 745.381, 77.1881, 100, 0, 0),
(5354, 30, -5014.52, 734.915, 71.4298, 100, 0, 0),
(5354, 31, -5019.59, 727.361, 66.8449, 100, 0, 0),
(5354, 32, -5036.98, 722.399, 60.4771, 100, 0, 0),
(5354, 33, -5040.21, 704.384, 49.7679, 100, 0, 0),
(5354, 34, -5021.46, 687.16, 42.1963, 100, 0, 0),
(5354, 35, -5016.81, 650.473, 35.7873, 100, 0, 0),
(5354, 36, -5019.27, 622.637, 33.5584, 100, 0, 0),
(5354, 37, -5040.02, 589.303, 32.575, 100, 0, 0),
(5354, 38, -5046.35, 556.431, 20.6275, 100, 0, 0),
(5354, 39, -5046.35, 524.739, 20.081, 100, 0, 0),
(5354, 40, -5053.76, 482.315, 11.3621, 100, 0, 0),
(5354, 41, -5077.47, 451.358, 15.9716, 100, 0, 0),
(5354, 42, -5090.56, 422.281, 12.1893, 100, 0, 0),
(5354, 43, -5076.26, 385.89, 11.3363, 100, 0, 0);

-- ---------------------------

-- Add WPL Patrol - created from splines prob using wrong mob as master for waypoints.
UPDATE `creature` SET `position_x` = 1854.4, `position_y` = -1337.17, `position_z` = 61.8205, `MovementType` = 0, `Spawndist` = 0 WHERE `guid` IN (46760, 46761, 46762);
DELETE FROM `spawn_group` WHERE id = 19044;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19044,'Western Plaguelands (Ruins of Andorhal) - Scarlet Andorhal Patrol', 0, 0, 0, 0);
DELETE FROM `spawn_group_formation` WHERE id = 19044;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19044, 3, 3, 0, 19044, 2, 'Western Plaguelands (Ruins of Andorhal) - Scarlet Andorhal Patrol');
DELETE FROM `spawn_group_spawn` WHERE id = 19044;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19044, 46760, 0),
(19044, 46761, 1),
(19044, 46762, 2);
DELETE FROM `waypoint_path_name` WHERE `PathId` = 19044;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (19044, 'Western Plaguelands (Ruins of Andorhal) - Scarlet Andorhal Patrol');
DELETE FROM `waypoint_path` WHERE `PathId` = 19044;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19044, 1, 1854.4, -1337.17, 61.8205, 100, 0, 0),
(19044, 2, 1850.52, -1337.09, 62.3191, 100, 0, 0),
(19044, 3, 1844.46, -1337.53, 62.8409, 100, 0, 0),
(19044, 4, 1841.14, -1337.71, 63.0709, 100, 0, 0),
(19044, 5, 1837.51, -1338.01, 62.9027, 100, 0, 0),
(19044, 6, 1834.11, -1338.41, 62.7457, 100, 0, 0),
(19044, 7, 1830.49, -1339.11, 62.4428, 100, 0, 0),
(19044, 8, 1824.66, -1340.56, 61.982, 100, 0, 0),
(19044, 9, 1821.52, -1341.4, 61.7829, 100, 0, 0),
(19044, 10, 1818.31, -1342.29, 61.5869, 100, 0, 0),
(19044, 11, 1814.8, -1343.27, 61.6701, 100, 0, 0),
(19044, 12, 1810.89, -1344.36, 61.5573, 100, 0, 0),
(19044, 13, 1807.16, -1345.38, 61.5537, 100, 0, 0),
(19044, 14, 1801.25, -1346.84, 60.7837, 100, 0, 0),
(19044, 15, 1798.05, -1347.44, 60.2343, 100, 0, 0),
(19044, 16, 1794.72, -1347.95, 60.0605, 100, 0, 0),
(19044, 17, 1791.02, -1348.49, 60.2168, 100, 0, 0),
(19044, 18, 1784.95, -1349.43, 60.1554, 100, 0, 0),
(19044, 19, 1781.66, -1349.89, 60.1839, 100, 0, 0),
(19044, 20, 1778.62, -1350.33, 60.4584, 100, 0, 0),
(19044, 21, 1775.19, -1350.83, 61.0089, 100, 0, 0),
(19044, 22, 1769.2, -1351.76, 61.9005, 100, 0, 0),
(19044, 23, 1766.06, -1352.19, 62.3379, 100, 0, 0),
(19044, 24, 1762.75, -1352.63, 62.6149, 100, 0, 0),
(19044, 25, 1759.22, -1353.16, 62.7902, 100, 0, 0),
(19044, 26, 1753.25, -1354.23, 63.3207, 100, 0, 0),
(19044, 27, 1750.12, -1354.75, 63.5153, 100, 0, 0),
(19044, 28, 1746.83, -1355.32, 63.9704, 100, 0, 0),
(19044, 29, 1743.26, -1355.96, 64.2442, 100, 0, 0),
(19044, 30, 1737.39, -1357.21, 65.0046, 100, 0, 0),
(19044, 31, 1734.62, -1357.61, 65.4665, 100, 0, 0),
(19044, 32, 1731.22, -1358.18, 66.1764, 100, 0, 0),
(19044, 33, 1727.57, -1358.82, 67.2252, 100, 0, 0),
(19044, 34, 1723.83, -1359.47, 67.879, 100, 0, 0),
(19044, 35, 1720.01, -1360.2, 68.1483, 100, 0, 0),
(19044, 36, 1714.35, -1362.14, 68.8736, 100, 0, 0),
(19044, 37, 1711.74, -1363.43, 68.8009, 100, 0, 0),
(19044, 38, 1708.8, -1365.23, 68.6897, 100, 0, 0),
(19044, 39, 1705.67, -1367.29, 68.5823, 100, 0, 0),
(19044, 40, 1700.63, -1370.67, 68.8987, 100, 0, 0),
(19044, 41, 1698.25, -1372.34, 69.1988, 100, 0, 0),
(19044, 42, 1695.51, -1373.01, 69.3566, 100, 0, 0),
(19044, 43, 1689.52, -1372.96, 69.4696, 100, 0, 0),
(19044, 44, 1686.37, -1371.94, 69.5402, 100, 0, 0),
(19044, 45, 1683.14, -1370.55, 69.8425, 100, 0, 0),
(19044, 46, 1680.76, -1369.3, 69.8741, 100, 0, 0),
(19044, 47, 1677.27, -1368.93, 69.8686, 100, 0, 0),
(19044, 48, 1673.86, -1369.88, 69.737, 100, 0, 0),
(19044, 49, 1668.42, -1372.64, 69.2586, 100, 0, 0),
(19044, 50, 1665.95, -1374.42, 68.9316, 100, 0, 0),
(19044, 51, 1663.11, -1376.55, 68.6751, 100, 0, 0),
(19044, 52, 1660.08, -1378.8, 68.6362, 100, 0, 0),
(19044, 53, 1655.09, -1382.4, 68.4398, 100, 0, 0),
(19044, 54, 1652.65, -1384.1, 68.3425, 100, 0, 0),
(19044, 55, 1649.74, -1386.02, 68.2609, 100, 0, 0),
(19044, 56, 1646.57, -1388.07, 68.0459, 100, 0, 0),
(19044, 57, 1641.41, -1391.39, 67.8412, 100, 0, 0),
(19044, 58, 1638.93, -1392.99, 67.6897, 100, 0, 0),
(19044, 59, 1636, -1394.87, 67.5612, 100, 0, 0),
(19044, 60, 1632.79, -1396.73, 67.4276, 100, 0, 0),
(19044, 61, 1627.41, -1399.54, 67.202, 100, 0, 0),
(19044, 62, 1624.44, -1400.88, 66.9925, 100, 0, 0),
(19044, 63, 1621.4, -1402.21, 66.8832, 100, 0, 0),
(19044, 64, 1618.06, -1403.66, 66.7116, 100, 0, 0),
(19044, 65, 1612.53, -1406.14, 66.1853, 100, 0, 0),
(19044, 66, 1609.6, -1407.41, 65.9854, 100, 0, 0),
(19044, 67, 1606.59, -1408.72, 65.7557, 100, 0, 0),
(19044, 68, 1603.19, -1410, 65.7914, 100, 0, 0),
(19044, 69, 1599.54, -1411.2, 65.7936, 100, 0, 0),
(19044, 70, 1593.78, -1413.08, 65.7933, 100, 0, 0),
(19044, 71, 1590.87, -1413.88, 65.8173, 100, 0, 0),
(19044, 72, 1587.33, -1414.91, 65.7541, 100, 0, 0),
(19044, 73, 1584.02, -1416.25, 65.7315, 100, 0, 0),
(19044, 74, 1584.02, -1416.25, 65.7315, 100, 0, 0),
(19044, 75, 1578.43, -1419.19, 65.588, 100, 0, 0),
(19044, 76, 1574.47, -1421.64, 65.4985, 100, 0, 0),
(19044, 77, 1569.32, -1424.88, 65.4292, 100, 0, 0),
(19044, 78, 1566.37, -1426.83, 65.402, 100, 0, 0),
(19044, 79, 1563.27, -1428.72, 65.3957, 100, 0, 0),
(19044, 80, 1558.71, -1432.98, 65.4111, 100, 0, 0),
(19044, 81, 1535.3, -1441.72, 64.2805, 100, 0, 0),
(19044, 82, 1531.69, -1444.22, 64.0883, 100, 0, 0),
(19044, 83, 1508.44, -1455.88, 62.1292, 100, 0, 0),
(19044, 84, 1503.99, -1457.67, 61.6657, 100, 0, 0),
(19044, 85, 1499.95, -1458.82, 61.3714, 100, 0, 0),
(19044, 86, 1495.92, -1459.72, 60.9847, 100, 0, 0),
(19044, 87, 1492, -1460.61, 60.4977, 100, 0, 0),
(19044, 88, 1488.03, -1461.16, 59.9993, 100, 0, 0),
(19044, 89, 1483.97, -1461.38, 59.6609, 100, 0, 0),
(19044, 90, 1479.87, -1461.35, 59.2836, 100, 0, 0),
(19044, 91, 1475.9, -1461.44, 58.8786, 100, 0, 0),
(19044, 92, 1471.83, -1461.46, 58.5774, 100, 0, 0),
(19044, 93, 1467.77, -1461.43, 58.1185, 100, 0, 0),
(19044, 94, 1463.77, -1461.38, 57.5565, 100, 0, 0),
(19044, 95, 1459.75, -1461.45, 57.0551, 100, 0, 0),
(19044, 96, 1455.74, -1461.47, 56.5553, 100, 0, 0),
(19044, 97, 1451.75, -1461.48, 55.9336, 100, 0, 0),
(19044, 98, 1447.7, -1461.45, 55.4264, 100, 0, 0),
(19044, 99, 1443.68, -1461.5, 54.931, 100, 0, 0),
(19044, 100, 1439.61, -1461.52, 54.676, 100, 0, 0),
(19044, 101, 1435.54, -1461.54, 54.3741, 100, 0, 0),
(19044, 102, 1431.48, -1461.49, 54.1483, 100, 0, 0),
(19044, 103, 1429.47, -1461.47, 54.0895, 100, 0, 0),
(19044, 104, 1429.47, -1461.47, 54.0895, 100, 0, 0),
(19044, 105, 1426.09, -1459.96, 53.9645, 100, 0, 0),
(19044, 106, 1426.51, -1460.04, 53.9645, 100, 0, 0),
(19044, 107, 1427.36, -1461.15, 53.9645, 100, 1, 3);

-- ---------------------------

-- Add Sentinel Amarassan Waypoints
UPDATE `creature` SET `position_x` = 2413.89, `position_y` = 1675.03, `position_z` = 316.675, `MovementType` = 2, `spawndist` = 0 WHERE `id` = 5916;
DELETE FROM `creature_movement_template` WHERE `entry` = 5916;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5916, 1, 2413.89, 1675.03, 316.675, 100, 0, 0),
(5916, 2, 2421.39, 1677.82, 315.579, 100, 0, 0),
(5916, 3, 2432.04, 1689.19, 316.338, 100, 0, 0),
(5916, 4, 2442.65, 1705.27, 321.744, 100, 0, 0),
(5916, 5, 2443.22, 1724.82, 335.125, 100, 0, 0),
(5916, 6, 2440.24, 1736.66, 344.848, 100, 0, 0),
(5916, 7, 2438.24, 1751.78, 357.654, 100, 0, 0),
(5916, 8, 2438.29, 1763.59, 368.378, 100, 0, 0),
(5916, 9, 2426.11, 1778.25, 383.437, 100, 0, 0),
(5916, 10, 2437.21, 1767.02, 371.244, 100, 0, 0),
(5916, 11, 2438.15, 1755.77, 360.951, 100, 0, 0),
(5916, 12, 2438.74, 1743.72, 350.708, 100, 0, 0),
(5916, 13, 2441.64, 1732.33, 340.48, 100, 0, 0),
(5916, 14, 2443.99, 1709.96, 323.978, 100, 0, 0),
(5916, 15, 2442.65, 1705.27, 321.744, 100, 0, 0),
(5916, 16, 2432.04, 1689.19, 316.338, 100, 0, 0),
(5916, 17, 2421.39, 1677.82, 315.579, 100, 0, 0),
(5916, 18, 2413.89, 1675.03, 316.675, 100, 0, 0),
(5916, 19, 2409.46, 1672.53, 316.767, 100, 0, 0),
(5916, 20, 2388.61, 1660.39, 316.765, 100, 0, 0),
(5916, 21, 2378.54, 1654.27, 314.059, 100, 0, 0),
(5916, 22, 2368.4, 1648.76, 310.542, 100, 0, 0),
(5916, 23, 2358.37, 1643.31, 307.307, 100, 0, 0),
(5916, 24, 2345.91, 1635.96, 301.219, 100, 0, 0),
(5916, 25, 2339.18, 1628.05, 295.862, 100, 0, 0),
(5916, 26, 2334.99, 1613.84, 290.247, 100, 0, 0),
(5916, 27, 2333.4, 1606.09, 288.732, 100, 0, 0),
(5916, 28, 2328.57, 1593.41, 286.436, 100, 0, 0),
(5916, 29, 2324.94, 1586.21, 285.475, 100, 0, 0),
(5916, 30, 2324.99, 1570.78, 282.693, 100, 0, 0),
(5916, 31, 2331.96, 1551.97, 283.218, 100, 0, 0),
(5916, 32, 2338.28, 1537.03, 283.134, 100, 0, 0),
(5916, 33, 2342.41, 1525.88, 281.24, 100, 0, 0),
(5916, 34, 2358.65, 1516.22, 279.813, 100, 0, 0),
(5916, 35, 2365.36, 1512.02, 278.8, 100, 0, 0),
(5916, 36, 2371.55, 1502.26, 278.186, 100, 0, 0),
(5916, 37, 2378.09, 1487.72, 275.72, 100, 0, 0),
(5916, 38, 2384.01, 1477.21, 274.993, 100, 0, 0),
(5916, 39, 2388.68, 1470.63, 274.126, 100, 0, 0),
(5916, 40, 2393.78, 1464.66, 272.488, 100, 0, 0),
(5916, 41, 2398.67, 1458.31, 271.582, 100, 0, 0),
(5916, 42, 2407.53, 1450.92, 269.655, 100, 0, 0),
(5916, 43, 2415.25, 1449.29, 268.023, 100, 0, 0),
(5916, 44, 2419.21, 1449.14, 267.466, 100, 0, 0),
(5916, 45, 2431.17, 1451.44, 266.68, 100, 0, 0),
(5916, 46, 2439.02, 1453.41, 266.085, 100, 0, 0),
(5916, 47, 2449.45, 1452.83, 265.977, 100, 0, 0),
(5916, 48, 2445.52, 1453.77, 265.982, 100, 0, 0),
(5916, 49, 2437.63, 1453.05, 266.203, 100, 0, 0),
(5916, 50, 2429.81, 1451.12, 266.797, 100, 0, 0),
(5916, 51, 2421.91, 1449.49, 267.17, 100, 0, 0),
(5916, 52, 2413.92, 1449.47, 268.248, 100, 0, 0),
(5916, 53, 2406.32, 1451.48, 269.845, 100, 0, 0),
(5916, 54, 2397.97, 1459.4, 271.756, 100, 0, 0),
(5916, 55, 2392.92, 1465.63, 272.857, 100, 0, 0),
(5916, 56, 2387.88, 1471.65, 274.382, 100, 0, 0),
(5916, 57, 2381.37, 1481.86, 275.451, 100, 0, 0),
(5916, 58, 2375.49, 1492.51, 276.274, 100, 0, 0),
(5916, 59, 2371.15, 1503.58, 278.426, 100, 0, 0),
(5916, 60, 2364.25, 1512.91, 278.906, 100, 0, 0),
(5916, 61, 2345.98, 1521, 281.162, 100, 0, 0),
(5916, 62, 2340.55, 1531.06, 281.768, 100, 0, 0),
(5916, 63, 2336.11, 1542.18, 283.631, 100, 0, 0),
(5916, 64, 2326.62, 1564.51, 282.14, 100, 0, 0),
(5916, 65, 2323.76, 1580.12, 284.677, 100, 0, 0),
(5916, 66, 2327.46, 1591.21, 286.184, 100, 0, 0),
(5916, 67, 2333.4, 1606.09, 288.732, 100, 0, 0),
(5916, 68, 2334.99, 1613.84, 290.247, 100, 0, 0),
(5916, 69, 2339.18, 1628.05, 295.862, 100, 0, 0),
(5916, 70, 2345.91, 1635.96, 301.219, 100, 0, 0),
(5916, 71, 2358.37, 1643.31, 307.307, 100, 0, 0),
(5916, 72, 2368.4, 1648.76, 310.542, 100, 0, 0),
(5916, 73, 2378.54, 1654.27, 314.059, 100, 0, 0),
(5916, 74, 2388.61, 1660.39, 316.765, 100, 0, 0),
(5916, 75, 2409.46, 1672.53, 316.767, 100, 0, 0);

-- ---------------------------

-- Update Bingles Blastenheimer Template
UPDATE `creature_template` SET `Faction` = 55, `UnitFlags` = 512 WHERE `entry`=6577;

-- ---------------------------

-- Update Lord Azrethoc - linked to spell 7974
DELETE FROM `creature_movement` WHERE `id` = 29062;
DELETE FROM `creature_movement_template` WHERE `entry` = 5760;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5760, 1, -1868.5, 1700.33, 61.2578, 100, 0, 0),
(5760, 2, -1861.79, 1690.23, 61.5172, 100, 0, 0),
(5760, 3, -1860.74, 1678.82, 62.0185, 100, 0, 0),
(5760, 4, -1874.85, 1667.6, 61.5244, 100, 0, 0),
(5760, 5, -1898.69, 1664.82, 61.2599, 100, 0, 0),
(5760, 6, -1917.5, 1658.15, 61.2361, 100, 0, 0),
(5760, 7, -1924.02, 1644.39, 61.7361, 100, 0, 0),
(5760, 8, -1920.78, 1628.89, 61.4167, 100, 0, 0),
(5760, 9, -1899.25, 1590.18, 61.0304, 100, 0, 0),
(5760, 10, -1893.36, 1585.24, 61.5333, 100, 0, 0),
(5760, 11, -1890.08, 1583.42, 62.7493, 100, 0, 0),
(5760, 12, -1888.48, 1574.03, 67.3806, 100, 15000, 5), -- Run
(5760, 13, -1877.01, 1573.24, 62.3037, 100, 0, 0),
(5760, 14, -1852.13, 1576.27, 61.4124, 100, 0, 0),
(5760, 15, -1819.14, 1593.31, 61.3124, 100, 1, 6), -- Walk
(5760, 16, -1816.92, 1601.07, 61.5146, 100, 0, 0),
(5760, 17, -1809.79, 1619.94, 61.2259, 100, 0, 0),
(5760, 18, -1812.4, 1635.26, 61.2405, 100, 0, 0),
(5760, 19, -1806.51, 1653.54, 61.2571, 100, 0, 0),
(5760, 20, -1801.35, 1664.44, 61.2544, 100, 0, 0),
(5760, 21, -1780.53, 1673.01, 61.7519, 100, 0, 0),
(5760, 22, -1754.19, 1654.37, 70.7089, 100, 0, 0),
(5760, 23, -1746.88, 1652.28, 74.7238, 100, 10000, 5), -- Run
(5760, 24, -1735.37, 1651.65, 69.4952, 100, 0, 0),
(5760, 25, -1716.69, 1660.84, 62.3143, 100, 0, 0),
(5760, 26, -1713.36, 1693.96, 61.0796, 100, 1, 6), -- Walk
(5760, 27, -1716.03, 1701.7, 61.5953, 100, 0, 0),
(5760, 28, -1722.26, 1711.2, 64.5297, 100, 0, 0),
(5760, 29, -1728.62, 1714.9, 66.2689, 100, 0, 0),
(5760, 30, -1736.61, 1723.08, 71.2305, 0.750492, 20000, 5), -- Run
(5760, 31, -1736.61, 1723.08, 71.2305, 100, 0, 0),
(5760, 32, -1745.79, 1717.01, 67.6897, 100, 0, 0),
(5760, 33, -1760.39, 1699.42, 62.5874, 100, 0, 0),
(5760, 34, -1763.74, 1687.73, 61.6909, 100, 0, 0),
(5760, 35, -1786.28, 1675.35, 62.0045, 100, 0, 0),
(5760, 36, -1798.33, 1672, 61.3117, 100, 0, 0),
(5760, 37, -1823.5, 1674.61, 61.8829, 100, 1, 6), -- Walk
(5760, 38, -1827.48, 1674.13, 61.5692, 100, 0, 0),
(5760, 39, -1839.08, 1675.99, 61.3097, 100, 0, 0),
(5760, 40, -1852.29, 1684.86, 61.6812, 100, 0, 0);

-- ---------------------------

UPDATE `creature_template` SET `faction` = 35, `UnitFlags` = 832 WHERE `entry` = 11256;

-- ---------------------------

-- Convert Another Patrol to Use Groups
UPDATE `creature_template` SET `GossipMenuId` = 0, `NpcFlags` = 0 WHERE `entry` = 11916; -- only gossip during love is in the air, otherwise useless

-- ---------------------------

-- Decoded Twilight Text Should Not Drop From Creatures
DELETE FROM `creature_loot_template` WHERE `item` IN (20541,20552,20545,20677,20678,20679);

DELETE FROM `creature_loot_template` WHERE `entry` = 7449 AND `item` IN (8766,10309,13444,20697);

DELETE FROM `creature_loot_template` WHERE `entry` = 11738 AND `item` IN (1645,3864,3927,4426,6149,7067,8766,8932,10306,10307);

DELETE FROM `creature_loot_template` WHERE `entry` = 11880 AND `item` IN (1710,3864,8932);

DELETE FROM `creature_loot_template` WHERE `entry` = 11881 AND `item` IN (3864,7079,8932);

DELETE FROM `creature_loot_template` WHERE `entry` IN (11803,11804,15200) AND `item` NOT IN (20394,20395,20396);

DELETE FROM `creature_loot_template` WHERE `entry` = 14479 AND `item` IN (3928);

-- Scroll: Create Signet of  does not drop from npcs
DELETE FROM `creature_loot_template` WHERE `item` IN (20531,20532,20533,20535);

-- Scroll: Create Crest of  does not drop from npcs
DELETE FROM `creature_loot_template` WHERE `item` IN (20528,20526,20527,20518);

-- ---------------------------

-- Update Loot For Item Cuergo's Hidden Treasure
DELETE FROM `item_loot_template` WHERE `entry` = 9265 AND `item` IN (9359,9361);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(9265, 9361, 10, 1, 1, 1),
(9265, 9359, 2, 1, 1, 1);

UPDATE `item_loot_template` SET `ChanceOrQuestChance` = 0, `groupid` = 1 WHERE `entry` = 9265 AND `item` = 9360;

-- ---------------------------

-- Add Missing Ground Pounder (Uses Waypoints set to wander for now)
DELETE FROM `creature` WHERE `id` = 9396 AND `guid` BETWEEN 190988 AND 190990; -- nonexistant
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES 
(190988, 9396, 1, -7359.93, -3739.76, 11.2501, 0, 300, 300, 20, 1),
(190989, 9396, 1, -7333.07, -3590.84, 11.3300, 0, 300, 300, 20, 1),
(190990, 9396, 1, -7280.86, -3359.77, 9.7712, 0, 300, 300, 20, 1);

-- ---------------------------

-- Apple Bobs Should Not Despawn After Use
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` = 180523;
-- ---------------------------

-- Remove SkinningLoot for Rookery Whelp 10161
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry`=10161;

-- ---------------------------

-- Update Start Script For Quest Gnomer-gooooone!
UPDATE `dbscripts_on_quest_start` SET `delay` = 6000 WHERE `id` = 2843 AND `delay` = 10000;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 2843 AND `delay` IN (1000,7000);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `dataint`, `comments`) VALUES
(2843, 1000, 0, 3904, 'Scooty - Talk'),
(2843, 7000, 0, 3905, 'Scooty - Talk');

-- ---------------------------

-- Add Missing Script For Quest Passing the Burden
UPDATE `quest_template` SET `CompleteScript` = 3448 WHERE `entry` = 3448;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 3448;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `dataint`, `comments`) VALUES
(3448, 3000, 0, 4451, 'Tymor - Talk');

-- End of migration.

