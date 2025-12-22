-- Based on https://github.com/vmangos/core/commit/f81e78c8c58831459ef338c918c87fe9a1acf3e0
-- Darkshore - creature_spawn_entry

-- https://classic.wowhead.com/npc=2207/greymist-oracle
-- https://classic.wowhead.com/npc=2208/greymist-tidehunter
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2207 FROM `creature` WHERE `id` IN (2207,2208) AND `guid` IN (37995,38088,38110,38131,38149,38150,38151,38152,38153,38154,38155,38156,38157,38158,38159,38160,38161,38162,38163,38164,38165,38166,38167,38169,38170,38171,38172,38173,38174,38175);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2208 FROM `creature` WHERE `id` IN (2207,2208) AND `guid` IN (37995,38088,38110,38131,38149,38150,38151,38152,38153,38154,38155,38156,38157,38158,38159,38160,38161,38162,38163,38164,38165,38166,38167,38169,38170,38171,38172,38173,38174,38175);
UPDATE creature SET `id` = 0 WHERE `id` IN (2207,2208) AND `guid` IN (37995,38088,38110,38131,38149,38150,38151,38152,38153,38154,38155,38156,38157,38158,38159,38160,38161,38162,38163,38164,38165,38166,38167,38169,38170,38171,38172,38173,38174,38175);

-- https://www.wowhead.com/classic/npc=2205/greymist-warrior
-- https://classic.wowhead.com/npc=2206/greymist-hunter
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2205 FROM `creature` WHERE `id` IN (2205,2206) AND `guid` IN (37981,37982,37984,37985,37986,37987,37988,37989,37990,37991,37992,37993,37994,37975);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2206 FROM `creature` WHERE `id` IN (2205,2206) AND `guid` IN (37981,37982,37984,37985,37986,37987,37988,37989,37990,37991,37992,37993,37994,37975);
UPDATE creature SET `id` = 0 WHERE `id` IN (2205,2206) AND `guid` IN (37981,37982,37984,37985,37986,37987,37988,37989,37990,37991,37992,37993,37994,37975);

-- https://www.wowhead.com/classic/npc=2204/greymist-netter
-- https://www.wowhead.com/classic/npc=2205/greymist-warrior
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2204 FROM `creature` WHERE `id` IN (2204,2205) AND `guid` IN (37977,37978,37969,37976,37983,37970,37979);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2205 FROM `creature` WHERE `id` IN (2204,2205) AND `guid` IN (37977,37978,37969,37976,37983,37970,37979);
UPDATE creature SET `id` = 0 WHERE `id` IN (2204,2205) AND `guid` IN (37977,37978,37969,37976,37983,37970,37979);

-- https://www.wowhead.com/classic/npc=2203/greymist-seer
-- https://classic.wowhead.com/npc=2204/greymist-netter
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2203 FROM `creature` WHERE `id` IN (2203,2204) AND `guid` IN (37966,37951,37967,37968,37972,37973,37974);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2204 FROM `creature` WHERE `id` IN (2203,2204) AND `guid` IN (37966,37951,37967,37968,37972,37973,37974);
UPDATE creature SET `id` = 0 WHERE `id` IN (2203,2204) AND `guid` IN (37966,37951,37967,37968,37972,37973,37974);

-- https://classic.wowhead.com/npc=2202/greymist-coastrunner
-- https://www.wowhead.com/classic/npc=2203/greymist-seer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2202 FROM `creature` WHERE `id` IN (2202,2203) AND `guid` IN (37964,37965,37959,37957,37958,37955,37963,37953,37948,37945,37949,37960,37947,37946,37950,37952,37961,37962,37855,37856,37857,37858,37859,37860,37861,37863,37864,37866,37867,37956,37930,37931,37932,37933,37934,37935,37936,37941,37942,37943,37944);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2203 FROM `creature` WHERE `id` IN (2202,2203) AND `guid` IN (37964,37965,37959,37957,37958,37955,37963,37953,37948,37945,37949,37960,37947,37946,37950,37952,37961,37962,37855,37856,37857,37858,37859,37860,37861,37863,37864,37866,37867,37956,37930,37931,37932,37933,37934,37935,37936,37941,37942,37943,37944);
UPDATE creature SET `id` = 0 WHERE `id` IN (2202,2203) AND `guid` IN (37964,37965,37959,37957,37958,37955,37963,37953,37948,37945,37949,37960,37947,37946,37950,37952,37961,37962,37855,37856,37857,37858,37859,37860,37861,37863,37864,37866,37867,37956,37930,37931,37932,37933,37934,37935,37936,37941,37942,37943,37944);

-- https://classic.wowhead.com/npc=2201/greymist-raider
-- https://classic.wowhead.com/npc=2202/greymist-coastrunner
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2201 FROM `creature` WHERE `id` IN (2201,2202) AND `guid` IN (37862,37937,37938,37939,37940);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2202 FROM `creature` WHERE `id` IN (2201,2202) AND `guid` IN (37862,37937,37938,37939,37940);
UPDATE creature SET `id` = 0 WHERE `id` IN (2201,2202) AND `guid` IN (37862,37937,37938,37939,37940);

-- patrols except the one outside seem to have multispawn, else static
-- https://www.wowhead.com/classic/npc=2179/stormscale-wave-rider
-- https://www.wowhead.com/classic/npc=2180/stormscale-siren
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2179 FROM `creature` WHERE `id` IN (2179,2180) AND `guid` IN (37497,37490,37513,37515);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2180 FROM `creature` WHERE `id` IN (2179,2180) AND `guid` IN (37497,37490,37513,37515);
UPDATE creature SET `id` = 0 WHERE `id` IN (2179,2180) AND `guid` IN (37497,37490,37513,37515);

-- https://classic.wowhead.com/npc=2338/twilight-disciple
-- https://classic.wowhead.com/npc=2339/twilight-thug - 37018,37019,37050,37051 static
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2338 FROM `creature` WHERE `id` IN (2338,2339) AND `guid` IN (37010,37011,37012,37013,37014,37015,37016,37017,37020,37021,37024,37025,37026,37027,37028,37040,37044,37045);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2339 FROM `creature` WHERE `id` IN (2338,2339) AND `guid` IN (37010,37011,37012,37013,37014,37015,37016,37017,37020,37021,37024,37025,37026,37027,37028,37040,37044,37045);
UPDATE creature SET `id` = 0 WHERE `id` IN (2338,2339) AND `guid` IN (37010,37011,37012,37013,37014,37015,37016,37017,37020,37021,37024,37025,37026,37027,37028,37040,37044,37045);

-- https://www.wowhead.com/classic/npc=2156/cracked-golem - 37093,37094 static, one node missing
-- https://www.wowhead.com/classic/npc=2157/stone-behemoth
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2156 FROM `creature` WHERE `id` IN (2156,2157) AND `guid` IN (37090,37091,37092,37095,37098,37099,37100);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 2157 FROM `creature` WHERE `id` IN (2156,2157) AND `guid` IN (37090,37091,37092,37095,37098,37099,37100);
UPDATE creature SET `id` = 0 WHERE `id` IN (2156,2157) AND `guid` IN (37090,37091,37092,37095,37098,37099,37100);
UPDATE `creature` SET `position_x` = 4575.73, `position_y` = 588.565, `position_z` = 1.35393, `orientation` = 0 WHERE `guid` = 37090;
UPDATE `creature` SET `position_x` = 4596.3, `position_y` = 579.576, `position_z` = 1.35393, `orientation` = 0 WHERE `guid` = 37091;
UPDATE `creature` SET `position_x` = 4626.55, `position_y` = 639.395, `position_z` = 6.46765, `orientation` = 0 WHERE `guid` = 37092;
UPDATE `creature` SET `position_x` = 4596.01, `position_y` = 603.205, `position_z` = 1.75919, `orientation` = 0 WHERE `guid` = 37095;
UPDATE `creature` SET `position_x` = 4562.97, `position_y` = 569.193, `position_z` = 1.51975, `orientation` = 0 WHERE `guid` = 37098;
UPDATE `creature` SET `position_x` = 4586.64, `position_y` = 562.676, `position_z` = 1.35393, `orientation`= 0 WHERE `guid`= 37099; -- Stone Behemoth (WAYPOINTS - might be wrong)
UPDATE `creature` SET `position_x` = 4617.98, `position_y` = 614.043, `position_z` = 6.01179, `orientation` = 0 WHERE `guid` = 37100;
UPDATE `creature` SET `position_x` = 4646.27, `position_y` = 620.25, `position_z` = 8.6639, `orientation` = 0 WHERE `guid` = 37094;
UPDATE `creature` SET `position_x` = 4659.15, `position_y` = 611.144, `position_z` = 9.04676, `orientation` = 0 WHERE `guid` = 37093;

