/* DBScriptData
DBName: Alterac Valley
DBScriptName:
DB%Complete: 50
DBComment:
More Frostwolf Bloodhound 14282 x2 Patrols missing (Iceblood Garrison)
11603 sometimes have s.13589 - Whitewhisker Overseer 11605 ACID seems wrong
Frostwolf 10981 & Alterac Ram 10990 are maybe pooled
13116/13117 ss.24237 summon 26350/26351 which use ss.46893
gameobject 178442,178646 depended on supply state?
EndDBScriptData */

SET @CGUID := 3000000; -- creatures
SET @OGUID := 3000000; -- gameobjects
SET @PGUID := 44900; -- pools
SET @SGGUID := 3000000;

-- ============
-- BATTLEGROUND
-- ============

DELETE FROM `battleground_events` WHERE `map` = 30;
INSERT INTO `battleground_events` (`map`, `event1`, `event2`, `description`) VALUES
(30, 0, 0, 'Firstaid Station - Alliance Assaulted'),
(30, 0, 1, 'Firstaid Station - Alliance Control'),
(30, 0, 2, 'Firstaid Station - Horde Assaulted'),
(30, 0, 3, 'Firstaid Station - Horde Control'),
(30, 1, 0, 'Stormpike Grave - Alliance Assaulted'),
(30, 1, 1, 'Stormpike Grave - Alliance Control'),
(30, 1, 2, 'Stormpike Grave - Horde Assaulted'),
(30, 1, 3, 'Stormpike Grave - Horde Control'),
(30, 2, 0, 'Stoneheart Grave - Alliance Assaulted'),
(30, 2, 1, 'Stoneheart Grave - Alliance Control'),
(30, 2, 2, 'Stoneheart Grave - Horde Assaulted'),
(30, 2, 3, 'Stoneheart Grave - Horde Control'),
(30, 3, 0, 'Snowfall Grave - Alliance Assaulted'),
(30, 3, 1, 'Snowfall Grave - Alliance Control'),
(30, 3, 2, 'Snowfall Grave - Horde Assaulted'),
(30, 3, 3, 'Snowfall Grave - Horde Control'),
(30, 3, 5, 'Snowfall Grave - Neutral Control'),
(30, 4, 0, 'Iceblood Grave - Alliance Assaulted'),
(30, 4, 1, 'Iceblood Grave - Alliance Control'),
(30, 4, 2, 'Iceblood Grave - Horde Assaulted'),
(30, 4, 3, 'Iceblood Grave - Horde Control'),
(30, 5, 0, 'Frostwolf Grave - Alliance Assaulted'),
(30, 5, 1, 'Frostwolf Grave - Alliance Control'),
(30, 5, 2, 'Frostwolf Grave - Horde Assaulted'),
(30, 5, 3, 'Frostwolf Grave - Horde Control'),
(30, 6, 0, 'Frostwolf Hut - Alliance Assaulted'),
(30, 6, 1, 'Frostwolf Hut - ALliance Control'),
(30, 6, 2, 'Frostwolf Hut - Horde Assaulted'),
(30, 6, 3, 'Frostwolf Hut - Horde Control'),
(30, 7, 1, 'Dunbaldar South - Alliance Control'),
(30, 7, 2, 'Dunbaldar South - Horde Assaulted'),
(30, 7, 3, 'Dunbaldar South - Horde Control'),
(30, 8, 1, 'Dunbaldar North - Alliance Control'),
(30, 8, 2, 'Dunbaldar North - Horde Assaulted'),
(30, 8, 3, 'Dunbaldar North - Horde Control'),
(30, 9, 1, 'Icewing Bunker - Alliance Control'),
(30, 9, 2, 'Icewing Bunker - Horde Assaulted'),
(30, 9, 3, 'Icewing Bunker - Horde Control'),
(30, 10, 1, 'Stoneheart Bunker - Alliance Control'),
(30, 10, 2, 'Stoneheart Bunker - Horde Assaulted'),
(30, 10, 3, 'Stoneheart Bunker - Horde Control'),
(30, 11, 0, 'Iceblood Tower - Alliance Assaulted'),
(30, 11, 1, 'Iceblood Tower - Alliance Control'),
(30, 11, 3, 'Iceblood Tower - Horde Control'),
(30, 12, 0, 'Tower Point - Alliance Assaulted'),
(30, 12, 1, 'Tower Point - Alliance Control'),
(30, 12, 3, 'Tower Point - Horde Control'),
(30, 13, 0, 'Frostwolf east Tower - Alliance Assaulted'),
(30, 13, 1, 'Frostwolf east Tower - Alliance Control'),
(30, 13, 3, 'Frostwolf east Tower - Horde Control'),
(30, 14, 0, 'Frostwolf west Tower - Alliance Assaulted'),
(30, 14, 1, 'Frostwolf west Tower - Alliance Control'),
(30, 14, 3, 'Frostwolf west Tower - Horde Control'),
(30, 15, 0, 'Firstaid Station - Alliance Defender Quest0'),
(30, 15, 1, 'Firstaid Station - Alliance Defender Quest1'),
(30, 15, 2, 'Firstaid Station - Alliance Defender Quest2'),
(30, 15, 3, 'Firstaid Station - Alliance Defender Quest3'),
(30, 15, 4, 'Firstaid Station - Horde Defender Quest0'),
(30, 15, 5, 'Firstaid Station - Horde Defender Quest1'),
(30, 15, 6, 'Firstaid Station - Horde Defender Quest2'),
(30, 15, 7, 'Firstaid Station - Horde Defender Quest3'),
(30, 16, 0, 'Stormpike Grave - Alliance Defender Quest0'),
(30, 16, 1, 'Stormpike Grave - Alliance Defender Quest1'),
(30, 16, 2, 'Stormpike Grave - Alliance Defender Quest2'),
(30, 16, 3, 'Stormpike Grave - Alliance Defender Quest3'),
(30, 16, 4, 'Stormpike Grave - Horde Defender Quest0'),
(30, 16, 5, 'Stormpike Grave - Horde Defender Quest1'),
(30, 16, 6, 'Stormpike Grave - Horde Defender Quest2'),
(30, 16, 7, 'Stormpike Grave - Horde Defender Quest3'),
(30, 17, 0, 'Stoneheart Grave - Alliance Defender Quest0'),
(30, 17, 1, 'Stoneheart Grave - Alliance Defender Quest1'),
(30, 17, 2, 'Stoneheart Grave - Alliance Defender Quest2'),
(30, 17, 3, 'Stoneheart Grave - Alliance Defender Quest3'),
(30, 17, 4, 'Stoneheart Grave - Horde Defender Quest0'),
(30, 17, 5, 'Stoneheart Grave - Horde Defender Quest1'),
(30, 17, 6, 'Stoneheart Grave - Horde Defender Quest2'),
(30, 17, 7, 'Stoneheart Grave - Horde Defender Quest3'),
(30, 18, 0, 'Snowfall Grave - Alliance Defender Quest0'),
(30, 18, 1, 'Snowfall Grave - Alliance Defender Quest1'),
(30, 18, 2, 'Snowfall Grave - Alliance Defender Quest2'),
(30, 18, 3, 'Snowfall Grave - Alliance Defender Quest3'),
(30, 18, 4, 'Snowfall Grave - Horde Defender Quest0'),
(30, 18, 5, 'Snowfall Grave - Horde Defender Quest1'),
(30, 18, 6, 'Snowfall Grave - Horde Defender Quest2'),
(30, 18, 7, 'Snowfall Grave - Horde Defender Quest3'),
(30, 19, 0, 'Iceblood Grave - Alliance Defender Quest0'),
(30, 19, 1, 'Iceblood Grave - Alliance Defender Quest1'),
(30, 19, 2, 'Iceblood Grave - Alliance Defender Quest2'),
(30, 19, 3, 'Iceblood Grave - Alliance Defender Quest3'),
(30, 19, 4, 'Iceblood Grave - Horde Defender Quest0'),
(30, 19, 5, 'Iceblood Grave - Horde Defender Quest1'),
(30, 19, 6, 'Iceblood Grave - Horde Defender Quest2'),
(30, 19, 7, 'Iceblood Grave - Horde Defender Quest3'),
(30, 20, 0, 'Frostwolf Grave - Alliance Defender Quest0'),
(30, 20, 1, 'Frostwolf Grave - Alliance Defender Quest1'),
(30, 20, 2, 'Frostwolf Grave - Alliance Defender Quest2'),
(30, 20, 3, 'Frostwolf Grave - Alliance Defender Quest3'),
(30, 20, 4, 'Frostwolf Grave - Horde Defender Quest0'),
(30, 20, 5, 'Frostwolf Grave - Horde Defender Quest1'),
(30, 20, 6, 'Frostwolf Grave - Horde Defender Quest2'),
(30, 20, 7, 'Frostwolf Grave - Horde Defender Quest3'),
(30, 21, 0, 'Frostwolf Hut - Alliance Defender Quest0'),
(30, 21, 1, 'Frostwolf Hut - Alliance Defender Quest1'),
(30, 21, 2, 'Frostwolf Hut - Alliance Defender Quest2'),
(30, 21, 3, 'Frostwolf Hut - Alliance Defender Quest3'),
(30, 21, 4, 'Frostwolf Hut - Horde Defender Quest0'),
(30, 21, 5, 'Frostwolf Hut - Horde Defender Quest1'),
(30, 21, 6, 'Frostwolf Hut - Horde Defender Quest2'),
(30, 21, 7, 'Frostwolf Hut - Horde Defender Quest3'),
(30, 46, 0, 'North Mine - Alliance Boss'),
(30, 46, 1, 'North Mine - Horde Boss'),
(30, 46, 2, 'North Mine - Neutral Boss'),
(30, 47, 0, 'South Mine - Alliance Boss'),
(30, 47, 1, 'South Mine - Horde Boss'),
(30, 47, 2, 'South Mine - Neutral Boss'),
(30, 48, 0, 'Alliance Captain'),
(30, 49, 0, 'Horde Captain'),
(30, 50, 0, 'North Mine - Alliance Control'),
(30, 50, 1, 'North Mine - Horde Control'),
(30, 50, 2, 'North Mine - Neutral Control'),
(30, 51, 0, 'South Mine - Alliance Control'),
(30, 51, 1, 'South Mine - Horde Control'),
(30, 51, 2, 'South Mine - Neutral Control'),
(30, 52, 0, 'Alliance Marshal - Dunbaldar South'),
(30, 53, 0, 'Alliance Marshal - Dunbaldar North'),
(30, 54, 0, 'Alliance Marshal - Icewing Bunker'),
(30, 55, 0, 'Alliance Marshal - Stoneheart Bunker'),
(30, 56, 0, 'Horde Marshal - Iceblood Tower'),
(30, 57, 0, 'Horde Marshal - Towerpoint'),
(30, 58, 0, 'Horde Marshal - East Frostwolf Tower'),
(30, 59, 0, 'Horde Marshal - West Frostwolf Tower'),
(30, 60, 0, 'Herald - That Guy Who Yells All The Time'),
(30, 61, 0, 'Alliance - Boss'),
(30, 62, 0, 'Horde - Boss'),
(30, 63, 0, 'Alliance - Captain Dead'),
(30, 64, 0, 'Horde - Captain Dead'),
(30, 254, 0, 'Doors');

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+387, 1, 289.6146, -383.6547, 4.620863, 100, 0, 0),
(@CGUID+387, 2, 266.3748, -400.5663, 20.63937, 100, 0, 0),
(@CGUID+387, 3, 236.8505, -420.9095, 37.19023, 100, 0, 0),
(@CGUID+387, 4, 195.3, -408.6, 42.9, 100, 0, 0),
(@CGUID+387, 5, 236.8505, -420.9095, 37.19023, 100, 0, 0),
(@CGUID+387, 6, 266.3748, -400.5663, 20.63937, 100, 0, 0),
(@CGUID+387, 7, 289.6146, -383.6547, 4.620863, 100, 0, 0),
(@CGUID+387, 8, 308.608, -379.6056, -0.1389214, 100, 0, 0),
(@CGUID+387, 9, 336.9562, -382.6639, -0.5014818, 100, 0, 0),
(@CGUID+387, 10, 386.1, -394.1, -1.0, 100, 0, 0),
(@CGUID+387, 11, 336.9562, -382.6639, -0.5014818, 100, 0, 0),
(@CGUID+387, 12, 308.608, -379.6056, -0.1389214, 100, 0, 0),
(@CGUID+389, 1, 504.8129, -333.6856, -1.07503, 100, 0, 0),
(@CGUID+389, 2, 529.7457, -323.3787, 1.453802, 100, 0, 0),
(@CGUID+389, 3, 569.9723, -330.872, 23.32988, 100, 0, 0),
(@CGUID+389, 4, 589.1626, -336.1972, 30.21035, 100, 0, 0),
(@CGUID+389, 5, 597.5015, -337.8206, 30.21035, 100, 0, 0),
(@CGUID+389, 6, 605.5213, -337.1194, 30.41666, 100, 0, 0),
(@CGUID+389, 7, 616.1661, -331.9636, 30.23941, 100, 0, 0),
(@CGUID+389, 8, 631.8382, -315.1201, 30.17706, 100, 0, 0),
(@CGUID+389, 9, 637.2, -288.6, 30.1, 100, 0, 0),
(@CGUID+389, 10, 631.8382, -315.1201, 30.17706, 100, 0, 0),
(@CGUID+389, 11, 616.1661, -331.9636, 30.23941, 100, 0, 0),
(@CGUID+389, 12, 605.5213, -337.1194, 30.41666, 100, 0, 0),
(@CGUID+389, 13, 597.5015, -337.8206, 30.21035, 100, 0, 0),
(@CGUID+389, 14, 589.1626, -336.1972, 30.21035, 100, 0, 0),
(@CGUID+389, 15, 569.9723, -330.872, 23.32988, 100, 0, 0),
(@CGUID+389, 16, 529.7457, -323.3787, 1.453802, 100, 0, 0),
(@CGUID+389, 17, 504.8129, -333.6856, -1.07503, 100, 0, 0),
(@CGUID+389, 18, 490.1862, -345.8856, -1.170044, 100, 0, 0),
(@CGUID+389, 19, 465.7911, -365.4338, -1.129818, 100, 0, 0),
(@CGUID+389, 20, 416.4, -382.7, -1.2, 100, 0, 0),
(@CGUID+389, 21, 465.7911, -365.4338, -1.129818, 100, 0, 0),
(@CGUID+389, 22, 490.1862, -345.8856, -1.170044, 100, 0, 0),
(@CGUID+391, 1, 705.7, -465.1, 67.4, 100, 0, 0),
(@CGUID+391, 2, 726.0901, -475.4705, 79.14072, 100, 0, 0),
(@CGUID+391, 3, 744.2236, -479.2292, 86.93983, 100, 0, 0),
(@CGUID+391, 4, 726.0901, -475.4705, 79.14072, 100, 0, 0),
(@CGUID+391, 5, 705.7, -465.1, 67.4, 100, 0, 0),
(@CGUID+391, 6, 697.8643, -433.238, 62.79142, 100, 0, 0),
(@CGUID+1140, 1, 927.5777, -515.9267, 93.3563, 100, 0, 0),
(@CGUID+1140, 2, 918.3017, -515.0845, 93.68497, 100, 0, 0),
(@CGUID+1140, 3, 907.7813, -514.1292, 94.7373, 100, 0, 0),
(@CGUID+1140, 4, 894.2585, -511.6711, 96.00562, 100, 0, 0),
(@CGUID+1140, 5, 885.7021, -508.7171, 96.83955, 100, 0, 0),
(@CGUID+1140, 6, 882.9472, -507.766, 96.68661, 100, 0, 0),
(@CGUID+1140, 7, 879.2994, -490.8898, 96.54842, 100, 0, 0),
(@CGUID+1140, 8, 872.6658, -491.6815, 96.55302, 100, 0, 0),
(@CGUID+1140, 9, 865.7615, -494.7393, 96.58194, 100, 0, 0),
(@CGUID+1140, 10, 852.6349, -500.169, 96.39604, 100, 0, 0),
(@CGUID+1140, 11, 847.1078, -499.4121, 97.57212, 100, 0, 0),
(@CGUID+1140, 12, 833.5049, -497.5145, 99.49442, 100, 0, 0),
(@CGUID+1140, 13, 824.1744, -496.2, 100.7622, 100, 0, 0),
(@CGUID+1140, 14, 815.2069, -495.48, 100.0972, 100, 0, 0),
(@CGUID+1140, 15, 807.1964, -494.8593, 100.078, 100, 0, 0),
(@CGUID+1140, 16, 815.2069, -495.48, 100.0972, 100, 0, 0),
(@CGUID+1140, 17, 824.1744, -496.2, 100.7622, 100, 0, 0),
(@CGUID+1140, 18, 833.5049, -497.5145, 99.49442, 100, 0, 0),
(@CGUID+1140, 19, 847.1078, -499.4121, 97.57212, 100, 0, 0),
(@CGUID+1140, 20, 852.6349, -500.169, 96.39604, 100, 0, 0),
(@CGUID+1140, 21, 865.7615, -494.7393, 96.58194, 100, 0, 0),
(@CGUID+1140, 22, 872.6658, -491.6815, 96.55302, 100, 0, 0),
(@CGUID+1140, 23, 879.2994, -490.8898, 96.54842, 100, 0, 0),
(@CGUID+1140, 24, 882.9472, -507.766, 96.68661, 100, 0, 0),
(@CGUID+1140, 25, 885.7021, -508.7171, 96.83955, 100, 0, 0),
(@CGUID+1140, 26, 894.2585, -511.6711, 96.00562, 100, 0, 0),
(@CGUID+1140, 27, 907.7813, -514.1292, 94.7373, 100, 0, 0),
(@CGUID+1140, 28, 918.3017, -515.0845, 93.68497, 100, 0, 0),

(@CGUID+1818, 1, -16.486200, 42.244499, 17.073900, 100, 0, 0),
(@CGUID+1818, 2, -11.954200, 61.236401, 16.528601, 100, 0, 0),
(@CGUID+1818, 3, -1.486370, 78.821297, 19.062300, 100, 0, 0),
(@CGUID+1818, 4, 40.384102, 101.612999, 21.899900, 100, 0, 0),
(@CGUID+1818, 5, 8.135720, 85.845100, 19.281900, 100, 0, 0),
(@CGUID+1818, 6, -1.998050, 90.925201, 18.197800, 100, 0, 0),
(@CGUID+1818, 7, -10.601100, 99.960197, 15.477500, 100, 0, 0),
(@CGUID+1818, 8, -0.418945, 81.639397, 19.262300, 100, 0, 0),

(@CGUID+1819, 1, -5.21115, 153.663, 10.1208, 100, 0, 0),
(@CGUID+1819, 2, 16.188400, 164.022003, 11.164400, 100, 0, 0),
(@CGUID+1819, 3, 46.423400, 166.451995, 11.519300, 100, 0, 0),
(@CGUID+1819, 4, 71.615097, 160.369003, 7.996000, 100, 0, 0),
(@CGUID+1819, 5, 96.3074, 135.207, 3.289783, 100, 0, 0),

(@CGUID+1820, 1, -4.335072, 128.2781, 10.5636, 100, 0, 0),
(@CGUID+1820, 2, -1.205510, 112.362999, 7.248910, 100, 0, 0),
(@CGUID+1820, 3, 19.624483, 85.935593, -1.069576, 100, 0, 0),
(@CGUID+1820, 4, 30.842600, 49.255100, 0.691982, 100, 0, 0),
(@CGUID+1820, 5, 11.030300, 18.493200, -2.263500, 100, 0, 0),
(@CGUID+1820, 6, 21.757500, 0.363690, -4.096210, 100, 0, 0),
(@CGUID+1820, 7, 33.979500, -9.275210, -4.096210, 100, 0, 0),
(@CGUID+1820, 8, 40.151299, -17.908300, -4.096220, 100, 0, 0),
(@CGUID+1820, 9, 49.929600, -19.755800, -4.096210, 100, 0, 0),
(@CGUID+1820, 10, 72.766403, -6.988830, -4.096220, 100, 0, 0),
(@CGUID+1820, 11, 77.006302, 17.238199, -4.096220, 100, 0, 0),
(@CGUID+1820, 12, 61.529800, 37.301399, -4.096210, 100, 0, 0),
(@CGUID+1820, 13, 46.673500, 64.784203, -1.182160, 100, 0, 0),
(@CGUID+1820, 14, 20.2508, 85.5639, -1.28949, 100, 0, 0),
(@CGUID+1820, 15, -1.205510, 112.362999, 7.248910, 100, 0, 0),

(@CGUID+1822, 1, 115.992, 107.252, 3.14755, 100, 0, 0),
(@CGUID+1822, 2, 116.225998, 83.841400, 3.016930, 100, 0, 0),
(@CGUID+1822, 3, 153.498001, 66.570900, 7.278210, 100, 0, 0),
(@CGUID+1822, 4, 205.1207, 101.6429, 15.60503, 100, 0, 0),
(@CGUID+1822, 5, 226.582001, 96.196999, 19.045500, 100, 0, 0),
(@CGUID+1822, 6, 240.598999, 76.778000, 16.291800, 100, 0, 0),

(@CGUID+1825, 1, 487.7982, -146.7828, 18.20642, 100, 0, 0),
(@CGUID+1825, 2, 481.592987, -160.511002, 16.622400, 100, 0, 0),
(@CGUID+1825, 3, 462.355988, -179.906998, 1.660170, 100, 0, 0),
(@CGUID+1825, 4, 421.226990, -219.279007, -22.422701, 100, 0, 0),
(@CGUID+1825, 5, 402.627014, -231.419006, -30.178301, 100, 0, 0),
(@CGUID+1825, 6, 394.393005, -278.575012, -42.885601, 100, 0, 0),
(@CGUID+1825, 7, 380.373993, -306.428009, -40.425301, 100, 0, 0),
(@CGUID+1825, 8, 380.373993, -306.428009, -40.425301, 100, 0, 0),
(@CGUID+1825, 9, 339.227997, -307.877014, -38.829300, 100, 0, 0),
(@CGUID+1825, 10, 305.042999, -285.904999, -42.969700, 100, 0, 0),
(@CGUID+1825, 11, 271.066010, -270.806000, -42.862499, 100, 0, 0),
(@CGUID+1825, 12, 259.256989, -249.151001, -42.868500, 100, 0, 0),
(@CGUID+1825, 13, 261.726013, -211.022995, -42.865398, 100, 0, 0),
(@CGUID+1825, 14, 268.2318, -185.6966, -42.89143, 100, 0, 0),
(@CGUID+1825, 15, 306.204987, -122.865997, -42.862301, 100, 0, 0),
(@CGUID+1825, 16, 377.7203, -126.1482, -14.38102, 100, 0, 0),
(@CGUID+1825, 17, 437.4614, -120.2882, 4.125473, 100, 0, 0),
(@CGUID+1825, 18, 480.3402, -112.5019, 8.697767, 100, 0, 0),

(@CGUID+1899, 1, 39.89626, 102.9547, 21.90303, 100, 0, 0),
(@CGUID+1899, 2, 31.50856, 94.22149, 21.40742, 100, 0, 0),
(@CGUID+1899, 3, 24.31769, 88.03424, 20.8376, 100, 0, 0),
(@CGUID+1899, 4, 8.748568, 84.28809, 19.26014, 3.377733, 40000, 0),
(@CGUID+1899, 5, 13.1456, 86.09248, 19.95485, 100, 0, 0),
(@CGUID+1899, 6, 24.94954, 89.21867, 20.89757, 100, 0, 0),
(@CGUID+1899, 7, 33.83179, 95.94749, 21.7635, 100, 0, 0),
(@CGUID+1899, 8, 40.82042, 103.9332, 21.93791, 4.171337, 51000, 0), -- 40-51secs something
(@CGUID+1900, 1, -1635.4, -464.938, 52.5766, 2.26893, 40000, 0),
(@CGUID+1900, 2, -1643.48, -450.105, 50.2463, 2.09382, 51000, 0);

DELETE FROM `creature_movement_template` WHERE `entry` IN (13145,13146,13297,13299,13300,13318);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(13145, 0, 01, -579.183593750000000, -308.314453125000000, 46.80273437500000000, 100, 0, 0),
(13145, 0, 02, -575.573486328125000, -318.712249755859375, 45.19677734375000000, 100, 0, 0),
(13145, 0, 03, -557.492736816406250, -325.646759033203125, 39.07144927978515625, 100, 0, 0),
(13145, 0, 04, -548.763549804687500, -335.645629882812500, 38.09895324707031250, 100, 0, 0),
(13145, 0, 05, -530.505859375000000, -340.953125000000000, 35.28276443481445312, 100, 0, 0),
(13145, 0, 06, -515.410034179687500, -329.216583251953125, 33.45420074462890625, 100, 0, 0),
(13145, 0, 07, -502.343200683593750, -304.956604003906250, 31.66782569885253906, 100, 0, 0),
(13145, 0, 08, -483.651702880859375, -280.319183349609375, 27.17984199523925781, 100, 0, 0),
(13145, 0, 09, -456.703887939453125, -279.867828369140625, 22.32075119018554687, 100, 0, 0),
(13145, 0, 10, -438.562286376953125, -271.377075195312500, 20.43232345581054687, 100, 0, 0),
(13145, 0, 11, -428.222564697265625, -237.143508911132812, 22.77172851562500000, 100, 0, 0),
(13145, 0, 12, -420.198577880859375, -221.762649536132812, 24.13956260681152343, 100, 0, 0),
(13145, 0, 13, -427.359375000000000, -196.777343750000000, 26.58252716064453125, 100, 0, 0),
(13146, 0, 01, -731.03643798828125, -344.068267822265625, 66.6853179931640625, 100, 0, 0),
(13146, 0, 02, -721.40216064453125, -352.620513916015625, 66.9411773681640625, 100, 0, 0),
(13146, 0, 03, -716.29925537109375, -366.640686035156250, 67.5129547119140625, 100, 0, 0),
(13146, 0, 04, -716.48675537109375, -379.600250244140625, 67.4076232910156250, 100, 0, 0),
(13146, 0, 05, -720.57061767578125, -400.273223876953125, 67.7239532470703125, 100, 0, 0),
(13146, 0, 06, -732.76043701171875, -414.373474121093750, 67.7239532470703125, 100, 0, 0),
(13146, 0, 07, -747.48992919921875, -423.193145751953125, 67.0154266357421875, 100, 0, 0),
(13146, 0, 08, -745.20184326171875, -430.132812500000000, 66.9995574951171875, 100, 0, 0),
(13146, 0, 09, -731.10461425781250, -421.442047119140625, 67.7239532470703125, 100, 0, 0),
(13146, 0, 10, -718.99121093750000, -411.338867187500000, 67.7239532470703125, 100, 0, 0),
(13146, 0, 11, -711.19464111328125, -395.661346435546875, 67.7826232910156250, 100, 0, 0),
(13146, 0, 12, -712.24414062500000, -378.400939941406250, 67.1576232910156250, 100, 0, 0),
(13146, 0, 13, -709.25225830078125, -364.879547119140625, 66.7832183837890625, 100, 0, 0),
(13146, 0, 14, -698.59649658203125, -365.034240722656250, 66.1142425537109375, 100, 0, 0),
(13146, 0, 15, -686.22741699218750, -375.002990722656250, 65.7016906738281250, 100, 0, 0),
(13146, 0, 16, -674.42199707031250, -377.608398437500000, 65.6948547363281250, 100, 0, 0),
(13146, 0, 17, -666.21887207031250, -385.825531005859375, 64.2243652343750000, 100, 0, 0),
(13146, 0, 18, -649.68359375000000, -389.777343750000000, 61.2021484375000000, 100, 0, 0),

(13297, 0, 1, 75.567902, -392.531006, 45.155300, 100, 0, 0),
(13297, 0, 2, 47.274399, -391.967010, 45.802799, 100, 0, 0),
(13297, 0, 3, 26.452400, -396.709991, 45.809299, 100, 0, 0),
(13297, 0, 4, -9.387668, -416.974518, 44.965530, 100, 0, 0),
(13297, 0, 5, -37.186226, -409.098450, 30.037632, 100, 0, 0),
(13297, 0, 6, -45.054501, -393.131989, 19.649900, 100, 0, 0),
(13297, 0, 7, -53.011200, -374.348999, 13.279000, 100, 0, 0),
(13297, 0, 8, -60.367001, -371.354004, 13.154000, 100, 0, 0),
(13297, 0, 9, -89.094704, -389.429993, 14.673800, 100, 0, 0),
(13297, 0, 10, -98.688301, -406.377014, 15.652200, 100, 0, 0),
(13297, 0, 11, -95.735703, -424.862000, 17.698099, 100, 0, 0),
(13297, 0, 12, -99.799301, -439.500000, 18.894501, 100, 0, 0),
(13297, 0, 13, -109.634003, -459.649994, 23.072399, 100, 0, 0),
(13297, 0, 14, -116.587997, -477.158997, 25.956400, 100, 0, 0),

(13299, 0, 1, 173.699997, -403.769012, 42.668301, 100, 0, 0),
(13299, 0, 2, 138.718994, -390.467987, 42.408401, 100, 0, 0),
(13299, 0, 3, 121.439003, -377.893005, 42.979500, 100, 0, 0),
(13299, 0, 4, 121.709000, -356.713013, 43.132198, 100, 0, 0),
(13299, 0, 5, 104.863998, -325.325012, 37.810600, 100, 0, 0),
(13299, 0, 6, 90.787804, -302.324005, 31.033899, 100, 0, 0),
(13299, 0, 7, 83.426201, -276.540985, 24.553200, 100, 0, 0),
(13299, 0, 8, 67.265999, -253.298996, 17.447800, 100, 0, 0),

(13300, 0, 1, -110.296997, -541.583008, 45.447300, 100, 0, 0),
(13300, 0, 2, -55.066601, -503.332001, 43.581001, 100, 0, 0),
(13300, 0, 3, -38.221600, -478.501007, 45.015400, 100, 0, 0),

(13318, 0, 1, 595.380981, -87.928398, 39.291000, 100, 0, 0),
(13318, 0, 2, 603.289001, -86.925697, 38.491001, 100, 0, 0),
(13318, 0, 3, 616.997986, -72.478302, 38.735699, 100, 0, 0),
(13318, 0, 4, 629.872009, -65.346100, 41.279900, 100, 0, 0),
(13318, 0, 5, 635.239990, -76.171898, 41.768299, 100, 0, 0),
(13318, 0, 6, 631.510986, -98.691498, 41.060699, 100, 0, 0),
(13318, 0, 7, 641.028015, -92.494598, 45.947800, 100, 0, 0),
(13318, 0, 8, 657.989990, -104.359001, 51.300800, 100, 0, 0),
(13318, 0, 9, 653.703979, -116.375999, 49.698898, 100, 0, 0),
(13318, 0, 10, 656.112000, -119.342003, 49.717201, 100, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+36, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+37, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+38, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+39, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+40, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+41, 0, 0, 1, 0, 0, NULL), -- Irondeep Trogg
(@CGUID+162, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+163, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+164, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+165, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+166, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+167, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+168, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+169, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+170, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+171, 0, 0, 1, 0, 0, NULL), -- Whitewhisker Digger
(@CGUID+644, 0, 0, 1, 0, 0, NULL), -- Coldmine Peon
(@CGUID+645, 0, 0, 1, 0, 0, NULL), -- Coldmine Peon
(@CGUID+696, 0, 0, 1, 0, 0, NULL), -- Coldmine Miner
(@CGUID+697, 0, 0, 1, 0, 0, NULL), -- Coldmine Miner
(@CGUID+698, 0, 0, 1, 0, 0, NULL), -- Coldmine Miner
(@CGUID+699, 0, 0, 1, 0, 0, NULL), -- Coldmine Miner
(@CGUID+700, 0, 0, 1, 0, 0, NULL), -- Coldmine Miner
(@CGUID+955, 0, 0, 1, 0, 0, NULL), -- Irondeep Peon
(@CGUID+956, 0, 0, 1, 0, 0, NULL); -- Irondeep Peon

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(10987, 0, 0, 1, 233, 0, NULL), -- Irondeep Trogg
(10991, 0, 0, 1, 0, 0, NULL), -- Wildpaw Gnoll
(11603, 0, 0, 1, 233, 0, NULL), -- Whitewhisker Digger
(11677, 0, 0, 1, 0, 0, NULL), -- Taskmaster Snivvle
(12050, 0, 0, 1, 0, 0, '5301'), -- Stormpike Defender
(12053, 0, 0, 1, 0, 0, '5301'), -- Frostwolf Guardian
(13088, 0, 0, 1, 0, 0, NULL), -- Masha Swiftcut
(13116, 0, 0, 0, 0, 0, ''), -- Alliance Spirit Guide - npc_spirit_guide
(13117, 0, 0, 0, 0, 0, ''), -- Horde Spirit Guide - npc_spirit_guide
(13137, 14334, 0, 1, 0, 0, NULL), -- Lieutenant Rugba
(13138, 14337, 0, 1, 0, 0, NULL), -- Lieutenant Spencer
(13143, 14348, 0, 1, 0, 0, NULL), -- Lieutenant Stronghoof
(13144, 14388, 0, 1, 0, 0, NULL), -- Lieutenant Vol'talar
(13147, 10671, 0, 1, 0, 0, NULL), -- Lieutenant Lewis
(13152, 14334, 0, 1, 0, 0, NULL), -- Commander Malgor
(13256, 0, 0, 1, 0, 0, '15876'), -- Lokholar the Ice Lord
(13296, 14337, 0, 1, 0, 0, NULL), -- Lieutenant Largent
(13297, 14577, 0, 1, 0, 0, NULL), -- Lieutenant Stouthandle
(13298, 14372, 0, 1, 0, 0, NULL), -- Lieutenant Greywand
(13299, 14330, 0, 1, 0, 0, NULL), -- Lieutenant Lonadin
(13300, 14337, 0, 1, 0, 0, NULL), -- Lieutenant Mancuso
(13316, 0, 0, 1, 233, 0, NULL), -- Coldmine Peon
(13317, 0, 0, 1, 233, 0, NULL), -- Coldmine Miner
(13318, 14577, 0, 1, 0, 0, NULL), -- Commander Mortimer
(13326, 0, 0, 1, 0, 0, '5301'), -- Seasoned Defender
(13328, 0, 0, 1, 0, 0, '5301'), -- Seasoned Guardian
(13331, 0, 0, 1, 0, 0, '5301'), -- Veteran Defender
(13332, 0, 0, 1, 0, 0, '5301'), -- Veteran Guardian
(13358, 0, 0, 2, 0, 0, NULL), -- Stormpike Bowman
(13359, 0, 0, 2, 0, 0, NULL), -- Frostwolf Bowman
(13396, 0, 0, 1, 233, 0, NULL), -- Irondeep Miner
(13397, 0, 0, 1, 233, 0, NULL), -- Irondeep Peon
(13421, 0, 0, 1, 0, 0, '5301'), -- Champion Guardian - aura guessed
(13422, 0, 0, 1, 0, 0, '5301'), -- Champion Defender - aura guessed
(13437, 0, 0, 1, 0, 0, NULL), -- Wing Commander Ichman
(13441, 10278, 0, 1, 0, 0, NULL), -- Frostwolf Wolf Rider Commander
(13577, 2786, 0, 0, 0, 0, NULL), -- Stormpike Ram Rider Commander
(14282, 0, 0, 1, 0, 0, '18950'), -- Frostwolf Bloodhound
(14283, 0, 0, 1, 0, 0, '18950'), -- Stormpike Owl
(14284, 0, 0, 1, 0, 0, '12782'), -- Stormpike Battleguard
(14285, 0, 0, 1, 0, 0, '12782'), -- Frostwolf Battleguard
(14762, 0, 0, 1, 0, 0, ''), -- Dun Baldar North Marshal (Adjusted for classic)
(14763, 0, 0, 1, 0, 0, ''), -- Dun Baldar South Marshal (Adjusted for classic)
(14764, 0, 0, 1, 0, 0, ''), -- Icewing Marshal (Adjusted for classic)
(14765, 0, 0, 1, 0, 0, ''), -- Stonehearth Marshal (Adjusted for classic)
(14772, 0, 0, 1, 0, 0, ''), -- East Frostwolf Warmaster (Adjusted for classic)
(14773, 0, 0, 1, 0, 0, ''), -- Iceblood Warmaster (Adjusted for classic)
(14776, 0, 0, 1, 0, 0, ''), -- Tower Point Warmaster (Adjusted for classic)
(14777, 0, 0, 1, 0, 0, ''); -- West Frostwolf Warmaster (Adjusted for classic)

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+642, @CGUID+387, 515), -- Stormpike Owl -> Stormpike Guardsman
(@CGUID+643, @CGUID+387, 515), -- Stormpike Owl -> Stormpike Guardsman
(@CGUID+390, @CGUID+389, 515), -- Stormpike Guardsman -> Stormpike Guardsman
(@CGUID+392, @CGUID+391, 515), -- Stormpike Guardsman -> Stormpike Guardsman
(@CGUID+640, @CGUID+1140, 515), -- Stormpike Owl -> Stormpike Battleguard
(@CGUID+641, @CGUID+1140, 515); -- Stormpike Owl -> Stormpike Battleguard

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(14772, 30, 11946, 1+16384, 0), -- East Frostwolf Warmaster -> Drek'Thar
(14773, 30, 11946, 1+16384, 0), -- Iceblood Warmaster -> Drek'Thar
(14776, 30, 11946, 1+16384, 0), -- Tower Point Warmaster -> Drek'Thar
(14777, 30, 11946, 1+16384, 0), -- West Frostwolf Warmaster -> Drek'Thar
(12121, 30, 11946, 5+16384, 0), -- Drakan -> Drek'Thar
(12122, 30, 11946, 5+16384, 0), -- Duros -> Drek'Thar
(14762, 30, 11948, 1+16384, 0), -- Dun Baldar North Marshal -> Vanndar Stormpike
(14763, 30, 11948, 1+16384, 0), -- Dun Baldar South Marshal -> Vanndar Stormpike
(14764, 30, 11948, 1+16384, 0), -- Icewing Marshal -> Vanndar Stormpike
(14765, 30, 11948, 1+16384, 0), -- Stonehearth Marshal -> Vanndar Stormpike
(13443, 30, 13442, 515, 50), -- Druid of the Grove -> Arch Druid Renferal
(13284, 30, 13236, 515, 50); -- Frostwolf Shaman -> Primalist Thurloga

INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES
(@CGUID+602, 0, 1), -- Firstaid Station - Alliance Control
(@CGUID+603, 0, 3), -- Firstaid Station - Horde Control
(@CGUID+604, 1, 1), -- Stormpike Grave - Alliance Control
(@CGUID+605, 1, 3), -- Stormpike Grave - Horde Control
(@CGUID+606, 2, 1), -- Stoneheart Grave - Alliance Control
(@CGUID+607, 2, 3), -- Stoneheart Grave - Horde Control
(@CGUID+608, 3, 1), -- Snowfall Grave - Alliance Control
(@CGUID+609, 3, 3), -- Snowfall Grave - Horde Control
(@CGUID+610, 4, 1), -- Iceblood Grave - Alliance Control
(@CGUID+611, 4, 3), -- Iceblood Grave - Horde Control
(@CGUID+612, 5, 1), -- Frostwolf Grave - Alliance Control
(@CGUID+613, 5, 3), -- Frostwolf Grave - Horde Control
(@CGUID+614, 6, 1), -- Frostwolf Hut - Alliance Control
(@CGUID+615, 6, 3), -- Frostwolf Hut - Horde Control
(@CGUID+873, 7, 1), -- Dunbaldar South - Alliance Control
(@CGUID+874, 7, 1), -- Dunbaldar South - Alliance Control
(@CGUID+875, 7, 1), -- Dunbaldar South - Alliance Control
(@CGUID+876, 7, 1), -- Dunbaldar South - Alliance Control
(@CGUID+877, 8, 1), -- Dunbaldar North - Alliance Control
(@CGUID+878, 8, 1), -- Dunbaldar North - Alliance Control
(@CGUID+879, 8, 1), -- Dunbaldar North - Alliance Control
(@CGUID+880, 8, 1), -- Dunbaldar North - Alliance Control
(@CGUID+881, 9, 1), -- Icewing Bunker - Alliance Control
(@CGUID+882, 9, 1), -- Icewing Bunker - Alliance Control
(@CGUID+883, 9, 1), -- Icewing Bunker - Alliance Control
(@CGUID+884, 9, 1), -- Icewing Bunker - Alliance Control
(@CGUID+885, 10, 1), -- Stoneheart Bunker - Alliance Control
(@CGUID+886, 10, 1), -- Stoneheart Bunker - Alliance Control
(@CGUID+887, 10, 1), -- Stoneheart Bunker - Alliance Control
(@CGUID+888, 10, 1), -- Stoneheart Bunker - Alliance Control
(@CGUID+889, 11, 3), -- Iceblood Tower - Horde Control
(@CGUID+890, 11, 3), -- Iceblood Tower - Horde Control
(@CGUID+891, 11, 3), -- Iceblood Tower - Horde Control
(@CGUID+892, 11, 3), -- Iceblood Tower - Horde Control
(@CGUID+893, 12, 3), -- Tower Point - Horde Control
(@CGUID+894, 12, 3), -- Tower Point - Horde Control
(@CGUID+895, 12, 3), -- Tower Point - Horde Control
(@CGUID+896, 12, 3), -- Tower Point - Horde Control
(@CGUID+897, 13, 3), -- Frostwolf east Tower - Horde Control
(@CGUID+898, 13, 3), -- Frostwolf east Tower - Horde Control
(@CGUID+899, 13, 3), -- Frostwolf east Tower - Horde Control
(@CGUID+900, 13, 3), -- Frostwolf east Tower - Horde Control
(@CGUID+901, 14, 3), -- Frostwolf west Tower - Horde Control
(@CGUID+902, 14, 3), -- Frostwolf west Tower - Horde Control
(@CGUID+903, 14, 3), -- Frostwolf west Tower - Horde Control
(@CGUID+904, 14, 3), -- Frostwolf west Tower - Horde Control
(@CGUID+299, 15, 0), -- Firstaid Station - Alliance Defender Quest 0
(@CGUID+300, 15, 0), -- Firstaid Station - Alliance Defender Quest 0
(@CGUID+301, 15, 0), -- Firstaid Station - Alliance Defender Quest 0
(@CGUID+302, 15, 0), -- Firstaid Station - Alliance Defender Quest 0
(@CGUID+756, 15, 1), -- Firstaid Station - Alliance Defender Quest 1
(@CGUID+757, 15, 1), -- Firstaid Station - Alliance Defender Quest 1
(@CGUID+758, 15, 1), -- Firstaid Station - Alliance Defender Quest 1
(@CGUID+759, 15, 1), -- Firstaid Station - Alliance Defender Quest 1
(@CGUID+816, 15, 2), -- Firstaid Station - Alliance Defender Quest 2
(@CGUID+817, 15, 2), -- Firstaid Station - Alliance Defender Quest 2
(@CGUID+818, 15, 2), -- Firstaid Station - Alliance Defender Quest 2
(@CGUID+819, 15, 2), -- Firstaid Station - Alliance Defender Quest 2
(@CGUID+1038, 15, 3), -- Firstaid Station - Alliance Defender Quest 3
(@CGUID+1039, 15, 3), -- Firstaid Station - Alliance Defender Quest 3
(@CGUID+1040, 15, 3), -- Firstaid Station - Alliance Defender Quest 3
(@CGUID+1041, 15, 3), -- Firstaid Station - Alliance Defender Quest 3
(@CGUID+355, 15, 4), -- Firstaid Station - Horde Defender Quest 0
(@CGUID+356, 15, 4), -- Firstaid Station - Horde Defender Quest 0
(@CGUID+357, 15, 4), -- Firstaid Station - Horde Defender Quest 0
(@CGUID+358, 15, 4), -- Firstaid Station - Horde Defender Quest 0
(@CGUID+784, 15, 5), -- Firstaid Station - Horde Defender Quest 1
(@CGUID+785, 15, 5), -- Firstaid Station - Horde Defender Quest 1
(@CGUID+786, 15, 5), -- Firstaid Station - Horde Defender Quest 1
(@CGUID+787, 15, 5), -- Firstaid Station - Horde Defender Quest 1
(@CGUID+844, 15, 6), -- Firstaid Station - Horde Defender Quest 2
(@CGUID+845, 15, 6), -- Firstaid Station - Horde Defender Quest 2
(@CGUID+846, 15, 6), -- Firstaid Station - Horde Defender Quest 2
(@CGUID+847, 15, 6), -- Firstaid Station - Horde Defender Quest 2
(@CGUID+1008, 15, 7), -- Firstaid Station - Horde Defender Quest 3
(@CGUID+1009, 15, 7), -- Firstaid Station - Horde Defender Quest 3
(@CGUID+1010, 15, 7), -- Firstaid Station - Horde Defender Quest 3
(@CGUID+1011, 15, 7), -- Firstaid Station - Horde Defender Quest 3
(@CGUID+303, 16, 0), -- Stormpike Grave - Alliance Defender Quest 0
(@CGUID+304, 16, 0), -- Stormpike Grave - Alliance Defender Quest 0
(@CGUID+305, 16, 0), -- Stormpike Grave - Alliance Defender Quest 0
(@CGUID+306, 16, 0), -- Stormpike Grave - Alliance Defender Quest 0
(@CGUID+760, 16, 1), -- Stormpike Grave - Alliance Defender Quest 1
(@CGUID+761, 16, 1), -- Stormpike Grave - Alliance Defender Quest 1
(@CGUID+762, 16, 1), -- Stormpike Grave - Alliance Defender Quest 1
(@CGUID+763, 16, 1), -- Stormpike Grave - Alliance Defender Quest 1
(@CGUID+820, 16, 2), -- Stormpike Grave - Alliance Defender Quest 2
(@CGUID+821, 16, 2), -- Stormpike Grave - Alliance Defender Quest 2
(@CGUID+822, 16, 2), -- Stormpike Grave - Alliance Defender Quest 2
(@CGUID+823, 16, 2), -- Stormpike Grave - Alliance Defender Quest 2
(@CGUID+1042, 16, 3), -- Stormpike Grave - Alliance Defender Quest 3
(@CGUID+1043, 16, 3), -- Stormpike Grave - Alliance Defender Quest 3
(@CGUID+1044, 16, 3), -- Stormpike Grave - Alliance Defender Quest 3
(@CGUID+1045, 16, 3), -- Stormpike Grave - Alliance Defender Quest 3
(@CGUID+359, 16, 4), -- Stormpike Grave - Horde Defender Quest 0
(@CGUID+360, 16, 4), -- Stormpike Grave - Horde Defender Quest 0
(@CGUID+361, 16, 4), -- Stormpike Grave - Horde Defender Quest 0
(@CGUID+362, 16, 4), -- Stormpike Grave - Horde Defender Quest 0
(@CGUID+788, 16, 5), -- Stormpike Grave - Horde Defender Quest 1
(@CGUID+789, 16, 5), -- Stormpike Grave - Horde Defender Quest 1
(@CGUID+790, 16, 5), -- Stormpike Grave - Horde Defender Quest 1
(@CGUID+791, 16, 5), -- Stormpike Grave - Horde Defender Quest 1
(@CGUID+848, 16, 6), -- Stormpike Grave - Horde Defender Quest 2
(@CGUID+849, 16, 6), -- Stormpike Grave - Horde Defender Quest 2
(@CGUID+850, 16, 6), -- Stormpike Grave - Horde Defender Quest 2
(@CGUID+851, 16, 6), -- Stormpike Grave - Horde Defender Quest 2
(@CGUID+1012, 16, 7), -- Stormpike Grave - Horde Defender Quest 3
(@CGUID+1013, 16, 7), -- Stormpike Grave - Horde Defender Quest 3
(@CGUID+1014, 16, 7), -- Stormpike Grave - Horde Defender Quest 3
(@CGUID+1015, 16, 7), -- Stormpike Grave - Horde Defender Quest 3
(@CGUID+307, 17, 0), -- Stoneheart Grave - Alliance Defender Quest 0
(@CGUID+308, 17, 0), -- Stoneheart Grave - Alliance Defender Quest 0
(@CGUID+309, 17, 0), -- Stoneheart Grave - Alliance Defender Quest 0
(@CGUID+310, 17, 0), -- Stoneheart Grave - Alliance Defender Quest 0
(@CGUID+764, 17, 1), -- Stoneheart Grave - Alliance Defender Quest 1
(@CGUID+765, 17, 1), -- Stoneheart Grave - Alliance Defender Quest 1
(@CGUID+766, 17, 1), -- Stoneheart Grave - Alliance Defender Quest 1
(@CGUID+767, 17, 1), -- Stoneheart Grave - Alliance Defender Quest 1
(@CGUID+824, 17, 2), -- Stoneheart Grave - Alliance Defender Quest 2
(@CGUID+825, 17, 2), -- Stoneheart Grave - Alliance Defender Quest 2
(@CGUID+826, 17, 2), -- Stoneheart Grave - Alliance Defender Quest 2
(@CGUID+827, 17, 2), -- Stoneheart Grave - Alliance Defender Quest 2
(@CGUID+1046, 17, 3), -- Stoneheart Grave - Alliance Defender Quest 3
(@CGUID+1047, 17, 3), -- Stoneheart Grave - Alliance Defender Quest 3
(@CGUID+1048, 17, 3), -- Stoneheart Grave - Alliance Defender Quest 3
(@CGUID+1049, 17, 3), -- Stoneheart Grave - Alliance Defender Quest 3
(@CGUID+363, 17, 4), -- Stoneheart Grave - Horde Defender Quest 0
(@CGUID+364, 17, 4), -- Stoneheart Grave - Horde Defender Quest 0
(@CGUID+365, 17, 4), -- Stoneheart Grave - Horde Defender Quest 0
(@CGUID+366, 17, 4), -- Stoneheart Grave - Horde Defender Quest 0
(@CGUID+792, 17, 5), -- Stoneheart Grave - Horde Defender Quest 1
(@CGUID+793, 17, 5), -- Stoneheart Grave - Horde Defender Quest 1
(@CGUID+794, 17, 5), -- Stoneheart Grave - Horde Defender Quest 1
(@CGUID+795, 17, 5), -- Stoneheart Grave - Horde Defender Quest 1
(@CGUID+852, 17, 6), -- Stoneheart Grave - Horde Defender Quest 2
(@CGUID+853, 17, 6), -- Stoneheart Grave - Horde Defender Quest 2
(@CGUID+854, 17, 6), -- Stoneheart Grave - Horde Defender Quest 2
(@CGUID+855, 17, 6), -- Stoneheart Grave - Horde Defender Quest 2
(@CGUID+1016, 17, 7), -- Stoneheart Grave - Horde Defender Quest 3
(@CGUID+1017, 17, 7), -- Stoneheart Grave - Horde Defender Quest 3
(@CGUID+1018, 17, 7), -- Stoneheart Grave - Horde Defender Quest 3
(@CGUID+1019, 17, 7), -- Stoneheart Grave - Horde Defender Quest 3
(@CGUID+311, 18, 0), -- Snowfall Grave - Alliance Defender Quest 0
(@CGUID+312, 18, 0), -- Snowfall Grave - Alliance Defender Quest 0
(@CGUID+313, 18, 0), -- Snowfall Grave - Alliance Defender Quest 0
(@CGUID+314, 18, 0), -- Snowfall Grave - Alliance Defender Quest 0
(@CGUID+768, 18, 1), -- Snowfall Grave - Alliance Defender Quest 1
(@CGUID+769, 18, 1), -- Snowfall Grave - Alliance Defender Quest 1
(@CGUID+770, 18, 1), -- Snowfall Grave - Alliance Defender Quest 1
(@CGUID+771, 18, 1), -- Snowfall Grave - Alliance Defender Quest 1
(@CGUID+828, 18, 2), -- Snowfall Grave - Alliance Defender Quest 2
(@CGUID+829, 18, 2), -- Snowfall Grave - Alliance Defender Quest 2
(@CGUID+830, 18, 2), -- Snowfall Grave - Alliance Defender Quest 2
(@CGUID+831, 18, 2), -- Snowfall Grave - Alliance Defender Quest 2
(@CGUID+1050, 18, 3), -- Snowfall Grave - Alliance Defender Quest 3
(@CGUID+1051, 18, 3), -- Snowfall Grave - Alliance Defender Quest 3
(@CGUID+1052, 18, 3), -- Snowfall Grave - Alliance Defender Quest 3
(@CGUID+1053, 18, 3), -- Snowfall Grave - Alliance Defender Quest 3
(@CGUID+367, 18, 4), -- Snowfall Grave - Horde Defender Quest 0
(@CGUID+368, 18, 4), -- Snowfall Grave - Horde Defender Quest 0
(@CGUID+369, 18, 4), -- Snowfall Grave - Horde Defender Quest 0
(@CGUID+370, 18, 4), -- Snowfall Grave - Horde Defender Quest 0
(@CGUID+796, 18, 5), -- Snowfall Grave - Horde Defender Quest 1
(@CGUID+797, 18, 5), -- Snowfall Grave - Horde Defender Quest 1
(@CGUID+798, 18, 5), -- Snowfall Grave - Horde Defender Quest 1
(@CGUID+799, 18, 5), -- Snowfall Grave - Horde Defender Quest 1
(@CGUID+856, 18, 6), -- Snowfall Grave - Horde Defender Quest 2
(@CGUID+857, 18, 6), -- Snowfall Grave - Horde Defender Quest 2
(@CGUID+858, 18, 6), -- Snowfall Grave - Horde Defender Quest 2
(@CGUID+859, 18, 6), -- Snowfall Grave - Horde Defender Quest 2
(@CGUID+1020, 18, 7), -- Snowfall Grave - Horde Defender Quest 3
(@CGUID+1021, 18, 7), -- Snowfall Grave - Horde Defender Quest 3
(@CGUID+1022, 18, 7), -- Snowfall Grave - Horde Defender Quest 3
(@CGUID+1023, 18, 7), -- Snowfall Grave - Horde Defender Quest 3
(@CGUID+315, 19, 0), -- Iceblood Grave - Alliance Defender Quest 0
(@CGUID+316, 19, 0), -- Iceblood Grave - Alliance Defender Quest 0
(@CGUID+317, 19, 0), -- Iceblood Grave - Alliance Defender Quest 0
(@CGUID+318, 19, 0), -- Iceblood Grave - Alliance Defender Quest 0
(@CGUID+772, 19, 1), -- Iceblood Grave - Alliance Defender Quest 1
(@CGUID+773, 19, 1), -- Iceblood Grave - Alliance Defender Quest 1
(@CGUID+774, 19, 1), -- Iceblood Grave - Alliance Defender Quest 1
(@CGUID+775, 19, 1), -- Iceblood Grave - Alliance Defender Quest 1
(@CGUID+832, 19, 2), -- Iceblood Grave - Alliance Defender Quest 2
(@CGUID+833, 19, 2), -- Iceblood Grave - Alliance Defender Quest 2
(@CGUID+834, 19, 2), -- Iceblood Grave - Alliance Defender Quest 2
(@CGUID+835, 19, 2), -- Iceblood Grave - Alliance Defender Quest 2
(@CGUID+1054, 19, 3), -- Iceblood Grave - Alliance Defender Quest 3
(@CGUID+1055, 19, 3), -- Iceblood Grave - Alliance Defender Quest 3
(@CGUID+1056, 19, 3), -- Iceblood Grave - Alliance Defender Quest 3
(@CGUID+1057, 19, 3), -- Iceblood Grave - Alliance Defender Quest 3
(@CGUID+371, 19, 4), -- Iceblood Grave - Horde Defender Quest 0
(@CGUID+372, 19, 4), -- Iceblood Grave - Horde Defender Quest 0
(@CGUID+373, 19, 4), -- Iceblood Grave - Horde Defender Quest 0
(@CGUID+374, 19, 4), -- Iceblood Grave - Horde Defender Quest 0
(@CGUID+800, 19, 5), -- Iceblood Grave - Horde Defender Quest 1
(@CGUID+801, 19, 5), -- Iceblood Grave - Horde Defender Quest 1
(@CGUID+802, 19, 5), -- Iceblood Grave - Horde Defender Quest 1
(@CGUID+803, 19, 5), -- Iceblood Grave - Horde Defender Quest 1
(@CGUID+860, 19, 6), -- Iceblood Grave - Horde Defender Quest 2
(@CGUID+861, 19, 6), -- Iceblood Grave - Horde Defender Quest 2
(@CGUID+862, 19, 6), -- Iceblood Grave - Horde Defender Quest 2
(@CGUID+863, 19, 6), -- Iceblood Grave - Horde Defender Quest 2
(@CGUID+1024, 19, 7), -- Iceblood Grave - Horde Defender Quest 3
(@CGUID+1025, 19, 7), -- Iceblood Grave - Horde Defender Quest 3
(@CGUID+1026, 19, 7), -- Iceblood Grave - Horde Defender Quest 3
(@CGUID+1027, 19, 7), -- Iceblood Grave - Horde Defender Quest 3
(@CGUID+319, 20, 0), -- Frostwolf Grave - Alliance Defender Quest 0
(@CGUID+320, 20, 0), -- Frostwolf Grave - Alliance Defender Quest 0
(@CGUID+321, 20, 0), -- Frostwolf Grave - Alliance Defender Quest 0
(@CGUID+322, 20, 0), -- Frostwolf Grave - Alliance Defender Quest 0
(@CGUID+776, 20, 1), -- Frostwolf Grave - Alliance Defender Quest 1
(@CGUID+777, 20, 1), -- Frostwolf Grave - Alliance Defender Quest 1
(@CGUID+778, 20, 1), -- Frostwolf Grave - Alliance Defender Quest 1
(@CGUID+779, 20, 1), -- Frostwolf Grave - Alliance Defender Quest 1
(@CGUID+836, 20, 2), -- Frostwolf Grave - Alliance Defender Quest 2
(@CGUID+837, 20, 2), -- Frostwolf Grave - Alliance Defender Quest 2
(@CGUID+838, 20, 2), -- Frostwolf Grave - Alliance Defender Quest 2
(@CGUID+839, 20, 2), -- Frostwolf Grave - Alliance Defender Quest 2
(@CGUID+1058, 20, 3), -- Frostwolf Grave - Alliance Defender Quest 3
(@CGUID+1059, 20, 3), -- Frostwolf Grave - Alliance Defender Quest 3
(@CGUID+1060, 20, 3), -- Frostwolf Grave - Alliance Defender Quest 3
(@CGUID+1061, 20, 3), -- Frostwolf Grave - Alliance Defender Quest 3
(@CGUID+375, 20, 4), -- Frostwolf Grave - Horde Defender Quest 0
(@CGUID+376, 20, 4), -- Frostwolf Grave - Horde Defender Quest 0
(@CGUID+377, 20, 4), -- Frostwolf Grave - Horde Defender Quest 0
(@CGUID+378, 20, 4), -- Frostwolf Grave - Horde Defender Quest 0
(@CGUID+804, 20, 5), -- Frostwolf Grave - Horde Defender Quest 1
(@CGUID+805, 20, 5), -- Frostwolf Grave - Horde Defender Quest 1
(@CGUID+806, 20, 5), -- Frostwolf Grave - Horde Defender Quest 1
(@CGUID+807, 20, 5), -- Frostwolf Grave - Horde Defender Quest 1
(@CGUID+864, 20, 6), -- Frostwolf Grave - Horde Defender Quest 2
(@CGUID+865, 20, 6), -- Frostwolf Grave - Horde Defender Quest 2
(@CGUID+866, 20, 6), -- Frostwolf Grave - Horde Defender Quest 2
(@CGUID+867, 20, 6), -- Frostwolf Grave - Horde Defender Quest 2
(@CGUID+1028, 20, 7), -- Frostwolf Grave - Horde Defender Quest 3
(@CGUID+1029, 20, 7), -- Frostwolf Grave - Horde Defender Quest 3
(@CGUID+1030, 20, 7), -- Frostwolf Grave - Horde Defender Quest 3
(@CGUID+1031, 20, 7), -- Frostwolf Grave - Horde Defender Quest 3
(@CGUID+323, 21, 0), -- Frostwolf Hut - Alliance Defender Quest 0
(@CGUID+324, 21, 0), -- Frostwolf Hut - Alliance Defender Quest 0
(@CGUID+325, 21, 0), -- Frostwolf Hut - Alliance Defender Quest 0
(@CGUID+326, 21, 0), -- Frostwolf Hut - Alliance Defender Quest 0
(@CGUID+780, 21, 1), -- Frostwolf Hut - Alliance Defender Quest 1
(@CGUID+781, 21, 1), -- Frostwolf Hut - Alliance Defender Quest 1
(@CGUID+782, 21, 1), -- Frostwolf Hut - Alliance Defender Quest 1
(@CGUID+783, 21, 1), -- Frostwolf Hut - Alliance Defender Quest 1
(@CGUID+840, 21, 2), -- Frostwolf Hut - Alliance Defender Quest 2
(@CGUID+841, 21, 2), -- Frostwolf Hut - Alliance Defender Quest 2
(@CGUID+842, 21, 2), -- Frostwolf Hut - Alliance Defender Quest 2
(@CGUID+843, 21, 2), -- Frostwolf Hut - Alliance Defender Quest 2
(@CGUID+1062, 21, 3), -- Frostwolf Hut - Alliance Defender Quest 3
(@CGUID+1063, 21, 3), -- Frostwolf Hut - Alliance Defender Quest 3
(@CGUID+1064, 21, 3), -- Frostwolf Hut - Alliance Defender Quest 3
(@CGUID+1065, 21, 3), -- Frostwolf Hut - Alliance Defender Quest 3
(@CGUID+379, 21, 4), -- Frostwolf Hut - Horde Defender Quest 0
(@CGUID+380, 21, 4), -- Frostwolf Hut - Horde Defender Quest 0
(@CGUID+381, 21, 4), -- Frostwolf Hut - Horde Defender Quest 0
(@CGUID+382, 21, 4), -- Frostwolf Hut - Horde Defender Quest 0
(@CGUID+808, 21, 5), -- Frostwolf Hut - Horde Defender Quest 1
(@CGUID+809, 21, 5), -- Frostwolf Hut - Horde Defender Quest 1
(@CGUID+810, 21, 5), -- Frostwolf Hut - Horde Defender Quest 1
(@CGUID+811, 21, 5), -- Frostwolf Hut - Horde Defender Quest 1
(@CGUID+868, 21, 6), -- Frostwolf Hut - Horde Defender Quest 2
(@CGUID+869, 21, 6), -- Frostwolf Hut - Horde Defender Quest 2
(@CGUID+870, 21, 6), -- Frostwolf Hut - Horde Defender Quest 2
(@CGUID+871, 21, 6), -- Frostwolf Hut - Horde Defender Quest 2
(@CGUID+1032, 21, 7), -- Frostwolf Hut - Horde Defender Quest 3
(@CGUID+1033, 21, 7), -- Frostwolf Hut - Horde Defender Quest 3
(@CGUID+1034, 21, 7), -- Frostwolf Hut - Horde Defender Quest 3
(@CGUID+1035, 21, 7), -- Frostwolf Hut - Horde Defender Quest 3
(@CGUID+286, 48, 0), -- Alliance Captain
(@CGUID+282, 49, 0), -- Horde Captain
(@CGUID+1144, 52, 0), -- Alliance Marshal - Dunbaldar South
(@CGUID+1142, 53, 0), -- Alliance Marshal - Dunbaldar North
(@CGUID+1146, 54, 0), -- Alliance Marshal - Icewing Bunker
(@CGUID+1149, 55, 0), -- Alliance Marshal - Stoneheart Bunker
(@CGUID+288, 60, 0), -- Stormpike Herald - That Guy Who Yells All The Time
(@CGUID+290, 60, 0), -- Frostwolf Herald - That Guy Who Yells All The Time
(@CGUID+1156, 56, 0), -- Horde Marshal - Iceblood Tower
(@CGUID+1161, 57, 0), -- Horde Marshal - Towerpoint
(@CGUID+1154, 58, 0), -- Horde Marshal - East Frostwolf Tower
(@CGUID+1163, 59, 0), -- Horde Marshal - West Frostwolf Tower
(@CGUID+284, 61, 0), -- Alliance - Boss
(@CGUID+280, 62, 0); -- Horde - Boss

INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 603, 30, -1594.43, -410.107, 81.4242, 0.945338, 300, 300, 0, 0), -- Grimtooth
(@CGUID+2, 2225, 30, -1235.314, -340.7767, 60.50882, 3.316126, 430, 430, 0, 0), -- Zora Guthrek
(@CGUID+3, 3343, 30, -1244.016, -323.795, 60.99969, 5.218534, 430, 430, 0, 0), -- Grelkor
(@CGUID+4, 3625, 30, -1235.164, -332.3018, 60.2761, 2.96706, 430, 430, 0, 0), -- Rarck
(@CGUID+5, 4255, 30, 587.3031, -42.82568, 37.56148, 5.235988, 430, 430, 0, 0), -- Brogus Thunderbrew
(@CGUID+6, 4257, 30, 643.6354, -58.39871, 41.74047, 4.729842, 430, 430, 0, 0), -- Lana Thunderbrew
(@CGUID+7, 5134, 30, 591.4639, -44.45204, 37.61656, 5.654867, 430, 430, 0, 0), -- Jonivera Farmountain
(@CGUID+8, 5135, 30, 608.515, -33.3935, 42.00032, 5.410521, 430, 430, 0, 0), -- Svalbrad Farmountain
(@CGUID+9, 5139, 30, 617.6557, -32.0701, 42.71676, 4.066617, 430, 430, 0, 0), -- Kurdrum Barleybeard
-- (@CGUID+10 - 11
(@CGUID+12, 10364, 30, -1183.761, -268.2953, 72.8233, 3.281219, 430, 430, 0, 0), -- Yaelika Farclaw
(@CGUID+13, 10367, 30, -1187.895, -275.0548, 73.00099, 3.630285, 430, 430, 0, 0), -- Shrye Ragefist
-- (@CGUID+14 - 20
(@CGUID+21, 10982, 30, -940.892, -241.793, 66.3806, 5.90868, 430, 430, 0, 0), -- Whitewhisker Vermin
(@CGUID+22, 10982, 30, -951.955, -197.5, 77.212, 5.63741, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+23, 10982, 30, -944.837, -199.608, 77.0737, 4.97419, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+24, 10982, 30, -933.494, -209.063, 73.7803, 5.88176, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+25, 10982, 30, -929.666, -201.308, 73.7032, 5.02655, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+26, 10982, 30, -978.997, -249.356, 65.4345, 5.05464, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+27, 10982, 30, -974.565, -224.828, 69.5858, 4.88846, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+28, 10982, 30, -946.514, -259.239, 66.0874, 3.78132, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+29, 10982, 30, -918.402, -250.439, 69.5271, 2.21352, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+30, 10982, 30, -910.14, -229.959, 72.9279, 0.27677, 120, 120, 0, 0), -- Whitewhisker Vermin
(@CGUID+31, 10982, 30, -851.563, -88.6527, 68.5983, 3.61896, 120, 120, 0, 0), -- Whitewhisker Vermin
-- (@CGUID+32 - 35
(@CGUID+36, 10987, 30, 783.105, -343.73, 61.4101, 5.48663, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+37, 10987, 30, 821.69, -452.461, 48.7652, 1.26777, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+38, 10987, 30, 837.619, -367.155, 48.1319, 3.11575, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+39, 10987, 30, 889.7, -337.33, 67.4076, 0.519866, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+40, 10987, 30, 863.518, -396.507, 61.8274, 5.80034, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+41, 10987, 30, 826.406, -329.67, 64.293, 5.88491, 430, 430, 5, 1), -- Irondeep Trogg
(@CGUID+42, 10987, 30, 971.671, -442.657, 57.6951, 3.1765, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+43, 10987, 30, 969.979, -457.148, 58.1119, 4.5204, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+44, 10987, 30, 958.692, -333.477, 63.2276, 5.77704, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+45, 10987, 30, 957.113, -325.92, 61.7589, 1.13446, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+46, 10987, 30, 948.25, -448.268, 56.9009, 5.60251, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+47, 10987, 30, 934.727, -385.802, 63.0344, 3.75246, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+48, 10987, 30, 931.751, -403.458, 59.6737, 5.63741, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+49, 10987, 30, 931.146, -359.666, 66.0294, 3.9619, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+50, 10987, 30, 929.702, -412.401, 56.8776, 5.89921, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+51, 10987, 30, 926.849, -379.074, 63.5286, 2.0944, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+52, 10987, 30, 921.972, -358.597, 66.4313, 2.93215, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+53, 10987, 30, 921.449, -341.981, 67.1264, 3.4383, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+54, 10987, 30, 921.1, -395.812, 60.4615, 2.71695, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+55, 10987, 30, 919.274, -394.986, 60.3478, 2.71696, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+56, 10987, 30, 916.852, -393.891, 60.1726, 2.71695, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+57, 10987, 30, 914.568, -326.21, 66.1733, 2.25147, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+58, 10987, 30, 913.064, -395.773, 60.1364, 4.41568, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+59, 10987, 30, 909.246, -474.576, 58.2067, 0.226893, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+60, 10987, 30, 909.246, -474.576, 58.2901, 0.226893, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+61, 10987, 30, 907.209, -428.267, 59.8065, 1.8675, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+62, 10987, 30, 905.973, -459.528, 58.7594, 1.37189, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+63, 10987, 30, 905.067, -396.074, 60.2085, 5.07891, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+64, 10987, 30, 901.809, -457.709, 59.0116, 3.52557, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+65, 10987, 30, 900.962, -427.44, 59.0842, 1.50098, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+66, 10987, 30, 897.929, -471.742, 59.7729, 2.54818, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+67, 10987, 30, 893.376, -343.171, 68.1499, 5.35816, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+68, 10987, 30, 890.584, -406.049, 61.1925, 5.67232, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+69, 10987, 30, 888.208, -332.564, 68.148, 1.93732, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+70, 10987, 30, 887.647, -391.537, 61.8734, 1.37881, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+71, 10987, 30, 885.109, -343.338, 67.0867, 3.78979, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+72, 10987, 30, 881.618, -419.948, 53.5228, 0.593412, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+73, 10987, 30, 878.675, -345.36, 66.1052, 3.45651, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+74, 10987, 30, 877.127, -351.8, 66.5296, 5.74213, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+75, 10987, 30, 876.778, -345.97, 65.7724, 3.45262, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+76, 10987, 30, 874.577, -414.786, 52.7817, 1.67552, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+77, 10987, 30, 868.247, -343.136, 64.9894, 1.6057, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+78, 10987, 30, 859.03, -367.231, 47.4655, 0.0174533, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+79, 10987, 30, 857.513, -351.817, 65.1867, 4.39823, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+80, 10987, 30, 852.632, -372.416, 48.1657, 3.66519, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+81, 10987, 30, 849.86, -340.944, 66.2447, 0.401426, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+82, 10987, 30, 847.99, -386.287, 60.9277, 2.32374, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+83, 10987, 30, 847.601, -423.072, 50.0852, 4.57276, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+84, 10987, 30, 847.135, -411.307, 50.2106, 1.5708, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+85, 10987, 30, 835.077, -379.418, 48.2755, 5.93412, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+86, 10987, 30, 834.87, -453.304, 47.9075, 0.226893, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+87, 10987, 30, 834.634, -365.981, 62.8801, 1.32645, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+88, 10987, 30, 834.354, -355.526, 48.1491, 6.07375, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+89, 10987, 30, 833.702, -327.506, 65.0439, 0.331613, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+90, 10987, 30, 833.151, -374.228, 63.0938, 3.66519, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+91, 10987, 30, 831.711, -346.785, 47.2975, 0.226893, 120, 120, 0, 0), -- Irondeep Trogg
(@CGUID+98, 10991, 30, -1543.57, -485.147, 71.3851, 5.09775, 430, 430, 5, 1), -- Wildpaw Gnoll
(@CGUID+99, 10991, 30, -1666.59, -419.099, 45.5899, 5.27671, 430, 430, 5, 1), -- Wildpaw Gnoll
(@CGUID+100, 10991, 30, -1484.03, -437.682, 69.8575, 4.13699, 430, 430, 5, 1), -- Wildpaw Gnoll
(@CGUID+101, 10991, 30, -1498.23, -434.779, 70.2211, 4.26458, 430, 430, 5, 1), -- Wildpaw Gnoll
(@CGUID+102, 11600, 30, 928.414, -340.23, 65.3032, 2.15247, 430, 430, 5, 1), -- Irondeep Shaman
(@CGUID+103, 11600, 30, 824.696, -402.976, 48.2669, 2.43507, 430, 430, 5, 1), -- Irondeep Shaman
(@CGUID+104, 11600, 30, 955.812, -440.302, 55.3411, 3.19395, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+105, 11600, 30, 937.378, -377.816, 65.3919, 3.56047, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+106, 11600, 30, 925.059, -331.347, 65.7564, 3.66519, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+107, 11600, 30, 922.918, -396.634, 60.3942, 2.71695, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+108, 11600, 30, 909.99, -462.154, 59.0811, 3.7001, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+109, 11600, 30, 907.893, -388.787, 61.7923, 5.74213, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+110, 11600, 30, 898.801, -437.105, 58.5266, 0.959931, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+111, 11600, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+112, 11600, 30, 880.744, -344.683, 66.4086, 3.4644, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+113, 11600, 30, 876.047, -341.857, 65.8743, 4.45059, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+114, 11600, 30, 874.674, -402.077, 61.7573, 0.26341, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+115, 11600, 30, 871.914, -404.209, 62.1269, 6.06163, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+116, 11600, 30, 871.606, -403.665, 62.0795, 0.765774, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+117, 11600, 30, 871.561, -404.114, 62.1297, 0.00981727, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+118, 11600, 30, 871.528, -404.248, 62.1455, 0.498032, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+119, 11600, 30, 871.493, -404.122, 62.1331, 5.65727, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+120, 11600, 30, 871.282, -403.843, 62.1108, 0.788382, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+121, 11600, 30, 868.294, -392.395, 61.4772, 4.38685, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+122, 11600, 30, 868.256, -392.363, 61.4803, 0.732738, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+123, 11600, 30, 867.804, -392.51, 61.5089, 2.30167, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+124, 11600, 30, 867.612, -392.371, 61.524, 2.86149, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+125, 11600, 30, 858.593, -439.614, 50.2184, 0.872665, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+126, 11600, 30, 851.471, -362.52, 47.314, 4.06662, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+127, 11600, 30, 846.939, -347.279, 66.2876, 0.942478, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+128, 11600, 30, 842.08, -421.775, 48.2659, 1.0821, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+129, 11600, 30, 838.358, -371.212, 63.3299, 4.04916, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+130, 11600, 30, 827.57, -417.483, 48.4538, 1.49237, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+131, 11600, 30, 827.012, -457.397, 48.9331, 2.35619, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+132, 11600, 30, 825.535, -322.373, 63.9357, 4.76475, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+133, 11600, 30, 867.635, -443.605, 51.3347, 1.38626, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+134, 11600, 30, 957.293, -455.039, 56.7395, 5.79449, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+135, 11600, 30, 950.077, -326.672, 61.6552, 5.48033, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+136, 11600, 30, 936.692, -356.78, 65.9835, 2.75762, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+137, 11600, 30, 926.475, -419.345, 56.1833, 2.0944, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+138, 11600, 30, 924.729, -397.453, 60.213, 2.71695, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+139, 11600, 30, 902.195, -475.891, 58.312, 1.39626, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+140, 11600, 30, 897.464, -338.758, 68.1715, 2.94961, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+141, 11600, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+142, 11600, 30, 882.517, -344.111, 66.7887, 3.46962, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+143, 11600, 30, 881.437, -400.254, 61.2028, 0.263427, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+144, 11600, 30, 880.156, -400.678, 61.3113, 3.41373, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+145, 11600, 30, 877.989, -418.051, 52.9753, 4.46804, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+146, 11600, 30, 871.212, -404.12, 62.1433, 3.6554, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+147, 11600, 30, 871.036, -404.119, 62.2237, 4.50295, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+148, 11600, 30, 857.396, -395.766, 61.263, 4.78684, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+149, 11600, 30, 857.276, -395.395, 61.2418, 0.0845553, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+150, 11600, 30, 857.231, -394.577, 61.2174, 1.96817, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+151, 11600, 30, 857.108, -395.682, 61.2317, 4.87022, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+152, 11600, 30, 856.709, -395.28, 61.1814, 2.54913, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+153, 11600, 30, 850.922, -390.399, 60.8771, 2.85405, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+154, 11600, 30, 847.556, -388.228, 60.9438, 2.56872, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+155, 11600, 30, 842.031, -384.663, 61.6028, 2.56871, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+156, 11600, 30, 832.035, -389.301, 47.5567, 2.11185, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+157, 11600, 30, 827.415, -419.468, 48.3322, 1.49232, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+158, 11600, 30, 826.402, -349.454, 47.2722, 1.51844, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+159, 11600, 30, 817.83, -455.715, 48.4207, 0.925025, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+160, 11600, 30, 808.953, -325.964, 52.4043, 3.01942, 120, 120, 0, 0), -- Irondeep Shaman
(@CGUID+161, 11602, 30, 922.715, -405.011, 58.128, 4.89692, 430, 430, 0, 0), -- Irondeep Skullthumper
(@CGUID+162, 11603, 30, -865.648, -63.2401, 71.4081, 3.1746, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+163, 11603, 30, -916.427, -148.357, 62.1725, 2.57609, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+164, 11603, 30, -899.952, -55.7846, 72.681, 3.33092, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+165, 11603, 30, -856.01, -144.563, 61.7379, 0.224681, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+166, 11603, 30, -904.397, -143.921, 75.9872, 1.22522, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+167, 11603, 30, -854.975, -110.849, 64.2129, 3.09682, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+168, 11603, 30, -943.309, -125.085, 78.3111, 1.75608, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+169, 11603, 30, -954.231, -169.515, 78.0482, 1.96266, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+170, 11603, 30, -901.977, -82.8394, 74.4376, 5.23297, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+171, 11603, 30, -869.969, -95.7836, 66.7666, 1.39643, 430, 430, 5, 1), -- Whitewhisker Digger
(@CGUID+172, 11603, 30, -917.648, -46.8922, 77.0872, 5.27089, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+173, 11603, 30, -912.689, -45.4494, 76.2277, 4.60767, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+174, 11603, 30, -905.455, -84.5179, 75.3642, 3.29867, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+175, 11603, 30, -904.332, -111.509, 75.5925, 2.47837, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+176, 11603, 30, -904.27, -160.419, 61.9876, 3.61192, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+177, 11603, 30, -904.023, -90.4558, 75.3706, 3.40339, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+178, 11603, 30, -978.678, -37.3136, 75.8364, 2.84489, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+179, 11603, 30, -973.076, -36.5013, 77.5047, 1.0821, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+180, 11603, 30, -963.951, -87.734, 81.5555, 0.575959, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+181, 11603, 30, -961.941, -90.7252, 81.6629, 0.820305, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+182, 11603, 30, -957.623, -186.582, 66.6021, 1.95477, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+183, 11603, 30, -952.476, -179.778, 78.6771, 4.5204, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+184, 11603, 30, -950.427, -115.007, 79.6127, 3.68264, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+185, 11603, 30, -950.25, -151.95, 79.4598, -1.81423, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+186, 11603, 30, -950.169, -188.099, 66.6184, 5.55015, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+187, 11603, 30, -949.944, -142.977, 80.5382, 2.70526, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+188, 11603, 30, -947.854, -170.5, 79.7618, 0.942478, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+189, 11603, 30, -946.738, -139.567, 80.0904, 2.3911, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+190, 11603, 30, -945.503, -65.0654, 79.7907, 5.02655, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+191, 11603, 30, -943.678, -110.986, 80.2557, 0.959931, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+192, 11603, 30, -942.993, -56.9881, 79.8915, 5.65487, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+193, 11603, 30, -938.197, -155.838, 61.3111, 1.65806, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+194, 11603, 30, -930.488, -214.524, 72.1431, 2.1236, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+195, 11603, 30, -929.947, -154.449, 61.5084, 1.67552, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+196, 11603, 30, -927.412, -135.313, 61.1987, 3.29867, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+197, 11603, 30, -920.677, -156.859, 62.8033, 3.15306, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+198, 11603, 30, -916.75, -136.094, 62.2357, 0.0698132, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+199, 11603, 30, -915.319, -132.718, 62.562, 1.16984, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+200, 11603, 30, -913.589, -146.794, 76.9366, 1.8675, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+201, 11603, 30, -907.572, -148.937, 76.6898, 4.76475, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+202, 11603, 30, -902.02, -64.6174, 73.9707, 1.19169, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+203, 11603, 30, -899.489, -61.7252, 73.2498, 5.09636, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+204, 11603, 30, -894.792, -127.141, 75.3834, 6.14356, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+205, 11603, 30, -892.408, -162.525, 64.1212, 2.69884, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+206, 11603, 30, -892.326, -123.158, 76.0318, 5.5676, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+207, 11603, 30, -888.468, -148.462, 61.8012, 1.65806, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+208, 11603, 30, -883.268, -159.738, 63.5311, 5.20108, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+209, 11603, 30, -877.76, -118.07, 65.215, 2.94961, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+210, 11603, 30, -876.792, -128.646, 64.1045, 3.40339, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+211, 11603, 30, -874.901, -36.6579, 69.4246, 2.00713, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+212, 11603, 30, -874.856, -151.351, 62.7537, 3.57875, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+213, 11603, 30, -872.135, -150.08, 62.7513, 3.57201, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+214, 11603, 30, -870.288, -149.217, 62.5413, 3.56624, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+215, 11603, 30, -870.03, -6.27443, 70.3867, 2.3911, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+216, 11603, 30, -869.023, -82.2118, 69.5848, 3.22886, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+217, 11603, 30, -866.354, -40.2455, 70.842, 0.0698132, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+218, 11603, 30, -865.305, -152.302, 63.5044, 4.86947, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+219, 11603, 30, -861.926, -79.0519, 71.4178, 0.20944, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+220, 11603, 30, -857.292, -152.277, 63.2114, 4.18879, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+221, 11603, 30, -853.357, -0.696194, 72.0655, 0.994838, 120, 120, 0, 0), -- Whitewhisker Digger
(@CGUID+222, 11604, 30, -844.764, -92.6998, 68.6054, 3.46716, 430, 430, 0, 0), -- Whitewhisker Geomancer
(@CGUID+223, 11604, 30, -954.622, -110.958, 80.7911, 6.24828, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+224, 11604, 30, -951.477, -53.9647, 80.0235, 5.32325, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+225, 11604, 30, -946.812, -126.04, 78.8601, 5.15265, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+226, 11604, 30, -940.689, -140.707, 79.9225, 2.79253, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+227, 11604, 30, -933.954, -159.632, 60.778, 2.56563, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+228, 11604, 30, -922.537, -130.291, 61.3756, 4.95674, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+229, 11604, 30, -915.862, -151.74, 76.9427, 0.942478, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+230, 11604, 30, -888.321, -159.831, 62.5303, 1.20428, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+231, 11604, 30, -874.361, -42.4751, 69.4316, 0.785398, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+232, 11604, 30, -873.19, -50.4899, 70.0568, -2.41288, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+233, 11604, 30, -868.511, -148.386, 62.3547, 3.57875, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+234, 11604, 30, -868.44, -121.649, 64.5056, 3.33358, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+235, 11604, 30, -868.324, -77.7196, 71.4768, 5.41052, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+236, 11604, 30, -859.846, -19.6549, 70.7304, 1.97222, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+237, 11604, 30, -828.05, -150.508, 62.2019, 2.14675, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+238, 11604, 30, -826.254, -58.6911, 72.0041, 3.68264, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+239, 11604, 30, -976.086, -44.1775, 76.029, 1.46608, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+240, 11604, 30, -971.864, -87.4223, 81.4954, 5.8294, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+241, 11604, 30, -966.551, -74.1111, 80.0243, 4.2129, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+242, 11604, 30, -958.509, -173.652, 77.9013, 6.24828, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+243, 11604, 30, -951.511, -181.242, 65.529, 4.39823, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+244, 11604, 30, -940.967, -186.243, 77.698, 1.28164, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+245, 11604, 30, -930.004, -65.0898, 79.077, 0.0581657, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+246, 11604, 30, -920.864, -40.2009, 78.256, 5.16617, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+247, 11604, 30, -919.089, -148.021, 62.0317, 2.59327, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+248, 11604, 30, -901.516, -116.329, 75.6876, 0.471239, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+249, 11604, 30, -897.864, -84.4348, 74.083, 3.00197, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+250, 11604, 30, -897.617, -52.0457, 71.9503, 4.36332, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+251, 11604, 30, -894.891, -153.951, 61.6827, 3.23569, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+252, 11604, 30, -893.933, -111.625, 75.6591, 4.22536, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+253, 11604, 30, -883.265, -152.854, 61.8384, 0.0941087, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+254, 11604, 30, -868.293, -147.243, 62.1097, 3.2056, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+255, 11604, 30, -867.501, -11.8709, 70.018, 6.14356, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+256, 11604, 30, -866.699, -147.54, 62.1646, 3.57878, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+257, 11604, 30, -866.566, -91.1916, 67.4414, 4.56707, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+258, 11604, 30, -857.272, -141.142, 61.7356, 4.17134, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+259, 11604, 30, -847.446, -98.0061, 68.5131, 3.24631, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+260, 11604, 30, -837.026, -140.729, 62.5141, 5.51524, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+261, 11604, 30, -824.204, -65.053, 72.3381, 3.01942, 120, 120, 0, 0), -- Whitewhisker Geomancer
(@CGUID+262, 11605, 30, -857.71, -91.4395, 68.5389, 6.08983, 430, 430, 0, 0), -- Whitewhisker Overseer
-- (@CGUID+263
(@CGUID+264, 11657, 30, 865.5541, -438.7354, 50.73334, 0.3233085, 430, 430, 0, 0), -- Morloch
-- (@CGUID+265 - 267
(@CGUID+268, 11677, 30, -848.9024, -92.93099, 68.63249, 3.333579, 430, 430, 0, 0), -- Taskmaster Snivvle
-- (@CGUID+269 - 279
(@CGUID+280, 11946, 30, -1370.883, -220.2078, 98.50992, 5.131268, 120, 120, 0, 0), -- Drek'Thar
-- (@CGUID+281
(@CGUID+282, 11947, 30, -545.2297, -165.3499, 57.01448, 6.003932, 86400, 86400, 0, 0), -- Captain Galvangar
-- (@CGUID+283
(@CGUID+284, 11948, 30, 722.4296, -10.99816, 50.70463, 3.420845, 120, 120, 0, 0), -- Vanndar Stormpike
-- (@CGUID+285
(@CGUID+286, 11949, 30, -57.78906, -286.5968, 15.64791, 6.021386, 86400, 86400, 0, 0), -- Captain Balinda Stonehearth
-- (@CGUID+287
(@CGUID+288, 11997, 30, 930.498, -520.7551, 93.7334, 1.832596, 120, 120, 0, 0), -- Stormpike Herald
-- (@CGUID+289
(@CGUID+290, 11998, 30, -735.1, -679.371, 50.7939, 4.13643, 490, 490, 0, 0), -- Frostwolf Herald (Adjusted for classic)
-- (@CGUID+291 - 298
(@CGUID+299, 12050, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+300, 12050, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+301, 12050, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+302, 12050, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+303, 12050, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+304, 12050, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+305, 12050, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+306, 12050, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+307, 12050, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+308, 12050, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+309, 12050, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+310, 12050, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+311, 12050, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+312, 12050, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+313, 12050, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+314, 12050, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+315, 12050, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+316, 12050, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+317, 12050, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+318, 12050, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+319, 12050, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+320, 12050, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+321, 12050, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+322, 12050, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+323, 12050, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+324, 12050, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+325, 12050, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+326, 12050, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 0, 0), -- Stormpike Defender
(@CGUID+327, 12051, 30, -1204.6187744140625, -255.149307250976562, 72.60112762451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Legionnaire
(@CGUID+328, 12051, 30, -749.00964355468750, -427.686187744140625, 66.5425262451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Legionnaire
(@CGUID+329, 14285, 30, -724.37902832031250000000, -700.21099853515620000000, 52.19300079345703000000, 3.05433011054992680000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+330, 14285, 30, -730.85900878906250000000, -704.43402099609380000000, 52.08919906616211000000, 1.81514000892639160000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+331, 14285, 30, -726.13702392578120000000, -697.26098632812500000000, 51.48529815673828000000, 3.68264007568359380000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+332, 14285, 30, -733.18200683593750000000, -701.71697998046880000000, 51.56639862060547000000, 0.45378598570823670000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+333, 14285, 30, -750.27001953125000000000, -682.46801757812500000000, 51.06620025634765600000, 1.74532997608184810000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+334, 14285, 30, -753.45599365234380000000, -682.26098632812500000000, 51.38629913330078000000, 1.65805995464324950000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+335, 14285, 30, -753.82397460937500000000, -673.71398925781250000000, 51.85850143432617000000, 5.11381006240844700000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+336, 14285, 30, -757.16497802734380000000, -675.38702392578120000000, 52.06700134277344000000, 5.14871978759765600000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+337, 14285, 30, -780.08502197265620000000, -676.08898925781250000000, 52.46459960937500000000, 4.27606010437011700000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+338, 14285, 30, -784.32202148437500000000, -677.31799316406250000000, 52.22660064697265600000, 4.86947011947631800000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+339, 14285, 30, -798.60900878906250000000, -682.10400390625000000000, 51.33700180053711000000, 1.32644999027252200000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+340, 14285, 30, -802.93200683593750000000, -679.85302734375000000000, 51.14189910888672000000, 0.97738397121429440000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+341, 14285, 30, -828.78399658203120000000, -633.76300048828120000000, 54.29010009765625000000, 0.20943999290466309000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+342, 14285, 30, -826.89501953125000000000, -629.26300048828120000000, 54.19229888916015600000, 5.70723009109497100000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+343, 14285, 30, -820.43902587890620000000, -631.77801513671880000000, 54.31760025024414000000, 2.26892995834350600000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+344, 14285, 30, -817.18402099609380000000, -630.11798095703120000000, 54.35860061645508000000, 1.88496005535125730000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+345, 14285, 30, -835.60400390625000000000, -621.29901123046880000000, 53.95569992065430000000, 1.22172999382019040000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+346, 14285, 30, -839.33801269531250000000, -620.15100097656250000000, 54.03829956054687500000, 1.36135995388031000000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+347, 14285, 30, -830.36401367187500000000, -607.46801757812500000000, 54.36059951782226600000, 4.36331987380981450000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+348, 14285, 30, -883.42797851562500000000, -547.64001464843750000000, 57.52370071411133000000, 1.57079994678497310000, 430, 430, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+349, 14285, 30, -877.55700683593750000000, -541.96099853515620000000, 57.12829971313476600000, 2.68780994415283200000, 300, 300, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+350, 14285, 30, -835.49700927734380000000, -604.79602050781250000000, 54.49390029907226600000, 4.78219985961914100000, 300, 300, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+351, 14285, 30, -886.27001953125000000000, -544.83502197265620000000, 56.44620132446289000000, 1.13445997238159180000, 300, 300, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
(@CGUID+352, 14285, 30, -878.15002441406250000000, -538.22698974609380000000, 56.12889862060547000000, 3.29867005348205570000, 300, 300, 0, 0), -- Frostwolf Battleguard (Adjusted for classic)
-- (@CGUID+353 - 354
(@CGUID+355, 12053, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+356, 12053, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+357, 12053, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+358, 12053, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+359, 12053, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+360, 12053, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+361, 12053, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+362, 12053, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+363, 12053, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+364, 12053, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+365, 12053, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+366, 12053, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+367, 12053, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+368, 12053, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+369, 12053, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+370, 12053, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+371, 12053, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+372, 12053, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+373, 12053, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+374, 12053, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+375, 12053, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+376, 12053, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+377, 12053, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+378, 12053, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+379, 12053, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+380, 12053, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+381, 12053, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+382, 12053, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 0, 0), -- Frostwolf Guardian
(@CGUID+383, 12096, 30, 587.6331, -45.98156, 37.5438, 5.811946, 430, 430, 0, 0), -- Stormpike Quartermaster
(@CGUID+384, 12097, 30, -1293.787, -194.4072, 72.43979, 5.846853, 430, 430, 0, 0), -- Frostwolf Quartermaster
(@CGUID+385, 12121, 30, -1376.312, -219.3085, 99.45462, 4.607669, 1785, 1785, 0, 0), -- Drakan
(@CGUID+386, 12122, 30, -1366.196, -216.0742, 99.45422, 5.462881, 1785, 1785, 0, 0), -- Duros
(@CGUID+387, 12127, 30, 303.1592, -380.0963, 0.7728219, 3.231725, 300, 300, 0, 2), -- Stormpike Guardsman
-- (@CGUID+388, 12127, 30, 303.0243, -378.1007, 1.021304, 3.231545, 300, 300, 0, 0), -- Stormpike Guardsman maybe substitues @CGUID+642,@CGUID+643 at some point or was duplicate of @CGUID+387
(@CGUID+389, 12127, 30, 494.7951, -342.0404, -1.140102, 0.6951302, 300, 300, 0, 2), -- Stormpike Guardsman
(@CGUID+390, 12127, 30, 493.494, -340.5215, -1.045044, 0.6952695, 300, 300, 0, 0), -- Stormpike Guardsman
(@CGUID+391, 12127, 30, 697.8643, -433.238, 62.79142, 1.657762, 300, 300, 0, 2), -- Stormpike Guardsman
(@CGUID+392, 12127, 30, 695.8718, -433.4117, 62.85433, 1.736655, 300, 300, 0, 0), -- Stormpike Guardsman
-- (@CGUID+393 - 399
(@CGUID+400, 13078, 30, 880.2361, -444.5867, 54.60632, 2.460914, 120, 120, 0, 0), -- Umi Thorson
(@CGUID+401, 13079, 30, 879.2206, -443.2573, 54.64777, 1.832596, 120, 120, 0, 0), -- Keetar
(@CGUID+402, 13080, 30, 955.812, -440.302, 55.3411, 3.19395, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+403, 13080, 30, 937.378, -377.816, 65.3919, 3.56047, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+404, 13080, 30, 925.059, -331.347, 65.7564, 3.66519, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+405, 13080, 30, 922.918, -396.634, 60.3942, 2.71695, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+406, 13080, 30, 909.99, -462.154, 59.0811, 3.7001, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+407, 13080, 30, 907.893, -388.787, 61.7923, 5.74213, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+408, 13080, 30, 898.801, -437.105, 58.5266, 0.959931, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+409, 13080, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+410, 13080, 30, 880.744, -344.683, 66.4086, 3.4644, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+411, 13080, 30, 876.047, -341.857, 65.8743, 4.45059, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+412, 13080, 30, 874.674, -402.077, 61.7573, 0.26341, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+413, 13080, 30, 871.914, -404.209, 62.1269, 6.06163, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+414, 13080, 30, 871.606, -403.665, 62.0795, 0.765774, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+415, 13080, 30, 871.561, -404.114, 62.1297, 0.00981727, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+416, 13080, 30, 871.528, -404.248, 62.1455, 0.498032, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+417, 13080, 30, 871.493, -404.122, 62.1331, 5.65727, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+418, 13080, 30, 871.282, -403.843, 62.1108, 0.788382, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+419, 13080, 30, 868.294, -392.395, 61.4772, 4.38685, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+420, 13080, 30, 868.256, -392.363, 61.4803, 0.732738, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+421, 13080, 30, 867.804, -392.51, 61.5089, 2.30167, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+422, 13080, 30, 867.612, -392.371, 61.524, 2.86149, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+423, 13080, 30, 858.593, -439.614, 50.2184, 0.872665, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+424, 13080, 30, 851.471, -362.52, 47.314, 4.06662, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+425, 13080, 30, 846.939, -347.279, 66.2876, 0.942478, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+426, 13080, 30, 842.08, -421.775, 48.2659, 1.0821, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+427, 13080, 30, 838.358, -371.212, 63.3299, 4.04916, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+428, 13080, 30, 827.57, -417.483, 48.4538, 1.49237, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+429, 13080, 30, 827.012, -457.397, 48.9331, 2.35619, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+430, 13080, 30, 825.535, -322.373, 63.9357, 4.76475, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+431, 13080, 30, 867.635, -443.605, 51.3347, 1.38626, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+432, 13080, 30, 957.293, -455.039, 56.7395, 5.79449, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+433, 13080, 30, 950.077, -326.672, 61.6552, 5.48033, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+434, 13080, 30, 936.692, -356.78, 65.9835, 2.75762, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+435, 13080, 30, 926.475, -419.345, 56.1833, 2.0944, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+436, 13080, 30, 924.729, -397.453, 60.213, 2.71695, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+437, 13080, 30, 902.195, -475.891, 58.312, 1.39626, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+438, 13080, 30, 897.464, -338.758, 68.1715, 2.94961, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+439, 13080, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+440, 13080, 30, 882.517, -344.111, 66.7887, 3.46962, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+441, 13080, 30, 881.437, -400.254, 61.2028, 0.263427, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+442, 13080, 30, 880.156, -400.678, 61.3113, 3.41373, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+443, 13080, 30, 877.989, -418.051, 52.9753, 4.46804, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+444, 13080, 30, 871.212, -404.12, 62.1433, 3.6554, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+445, 13080, 30, 871.036, -404.119, 62.2237, 4.50295, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+446, 13080, 30, 857.396, -395.766, 61.263, 4.78684, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+447, 13080, 30, 857.276, -395.395, 61.2418, 0.0845553, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+448, 13080, 30, 857.231, -394.577, 61.2174, 1.96817, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+449, 13080, 30, 857.108, -395.682, 61.2317, 4.87022, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+450, 13080, 30, 856.709, -395.28, 61.1814, 2.54913, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+451, 13080, 30, 850.922, -390.399, 60.8771, 2.85405, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+452, 13080, 30, 847.556, -388.228, 60.9438, 2.56872, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+453, 13080, 30, 842.031, -384.663, 61.6028, 2.56871, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+454, 13080, 30, 832.035, -389.301, 47.5567, 2.11185, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+455, 13080, 30, 827.415, -419.468, 48.3322, 1.49232, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+456, 13080, 30, 826.402, -349.454, 47.2722, 1.51844, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+457, 13080, 30, 817.83, -455.715, 48.4207, 0.925025, 120, 120, 0, 0), -- Irondeep Guard
(@CGUID+458, 13080, 30, 808.953, -325.964, 52.4043, 3.01942, 120, 120, 0, 0), -- Irondeep Guard
-- (@CGUID+459
(@CGUID+460, 13086, 30, -849.4902, -93.53114, 68.59335, 3.700098, 120, 120, 0, 0), -- Aggi Rumblestomp
-- (@CGUID+461
(@CGUID+462, 13088, 30, -849.4163, -93.42789, 68.51978, 3.228859, 430, 430, 0, 0), -- Masha Swiftcut
(@CGUID+463, 13089, 30, -963.547, -210.22, 69.1687, 4.40689, 430, 430, 5, 1), -- Coldmine Guard
(@CGUID+464, 13089, 30, -970.628, -204.141, 68.7334, 4.6625, 430, 430, 5, 1), -- Coldmine Guard
(@CGUID+465, 13096, 30, -956.217, -190.857, 66.2534, 1.21015, 430, 430, 0, 0), -- Coldmine Explorer
(@CGUID+466, 13096, 30, -954.622, -110.958, 80.7911, 6.24828, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+467, 13096, 30, -951.477, -53.9647, 80.0235, 5.32325, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+468, 13096, 30, -946.812, -126.04, 78.8601, 5.15265, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+469, 13096, 30, -940.689, -140.707, 79.9225, 2.79253, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+470, 13096, 30, -933.954, -159.632, 60.778, 2.56563, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+471, 13096, 30, -922.537, -130.291, 61.3756, 4.95674, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+472, 13096, 30, -915.862, -151.74, 76.9427, 0.942478, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+473, 13096, 30, -888.321, -159.831, 62.5303, 1.20428, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+474, 13096, 30, -874.361, -42.4751, 69.4316, 0.785398, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+475, 13096, 30, -873.19, -50.4899, 70.0568, -2.41288, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+476, 13096, 30, -868.511, -148.386, 62.3547, 3.57875, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+477, 13096, 30, -868.44, -121.649, 64.5056, 3.33358, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+478, 13096, 30, -868.324, -77.7196, 71.4768, 5.41052, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+479, 13096, 30, -859.846, -19.6549, 70.7304, 1.97222, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+480, 13096, 30, -828.05, -150.508, 62.2019, 2.14675, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+481, 13096, 30, -826.254, -58.6911, 72.0041, 3.68264, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+482, 13096, 30, -976.086, -44.1775, 76.029, 1.46608, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+483, 13096, 30, -971.864, -87.4223, 81.4954, 5.8294, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+484, 13096, 30, -966.551, -74.1111, 80.0243, 4.2129, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+485, 13096, 30, -958.509, -173.652, 77.9013, 6.24828, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+486, 13096, 30, -951.511, -181.242, 65.529, 4.39823, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+487, 13096, 30, -940.967, -186.243, 77.698, 1.28164, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+488, 13096, 30, -930.004, -65.0898, 79.077, 0.0581657, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+489, 13096, 30, -920.864, -40.2009, 78.256, 5.16617, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+490, 13096, 30, -919.089, -148.021, 62.0317, 2.59327, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+491, 13096, 30, -901.516, -116.329, 75.6876, 0.471239, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+492, 13096, 30, -897.864, -84.4348, 74.083, 3.00197, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+493, 13096, 30, -897.617, -52.0457, 71.9503, 4.36332, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+494, 13096, 30, -894.891, -153.951, 61.6827, 3.23569, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+495, 13096, 30, -893.933, -111.625, 75.6591, 4.22536, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+496, 13096, 30, -883.265, -152.854, 61.8384, 0.0941087, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+497, 13096, 30, -868.293, -147.243, 62.1097, 3.2056, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+498, 13096, 30, -867.501, -11.8709, 70.018, 6.14356, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+499, 13096, 30, -866.699, -147.54, 62.1646, 3.57878, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+500, 13096, 30, -866.566, -91.1916, 67.4414, 4.56707, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+501, 13096, 30, -857.272, -141.142, 61.7356, 4.17134, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+502, 13096, 30, -847.446, -98.0061, 68.5131, 3.24631, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+503, 13096, 30, -837.026, -140.729, 62.5141, 5.51524, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+504, 13096, 30, -824.204, -65.053, 72.3381, 3.01942, 120, 120, 0, 0), -- Coldmine Explorer
(@CGUID+505, 13097, 30, -987.358, -262.496, 65.3914, 0.510012, 430, 430, 0, 0), -- Coldmine Surveyor
(@CGUID+506, 13097, 30, -954.622, -110.958, 80.7911, 6.24828, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+507, 13097, 30, -951.477, -53.9647, 80.0235, 5.32325, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+508, 13097, 30, -946.812, -126.04, 78.8601, 5.15265, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+509, 13097, 30, -940.689, -140.707, 79.9225, 2.79253, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+510, 13097, 30, -933.954, -159.632, 60.778, 2.56563, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+511, 13097, 30, -922.537, -130.291, 61.3756, 4.95674, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+512, 13097, 30, -915.862, -151.74, 76.9427, 0.942478, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+513, 13097, 30, -888.321, -159.831, 62.5303, 1.20428, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+514, 13097, 30, -874.361, -42.4751, 69.4316, 0.785398, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+515, 13097, 30, -873.19, -50.4899, 70.0568, -2.41288, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+516, 13097, 30, -868.511, -148.386, 62.3547, 3.57875, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+517, 13097, 30, -868.44, -121.649, 64.5056, 3.33358, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+518, 13097, 30, -868.324, -77.7196, 71.4768, 5.41052, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+519, 13097, 30, -859.846, -19.6549, 70.7304, 1.97222, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+520, 13097, 30, -828.05, -150.508, 62.2019, 2.14675, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+521, 13097, 30, -826.254, -58.6911, 72.0041, 3.68264, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+522, 13097, 30, -976.086, -44.1775, 76.029, 1.46608, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+523, 13097, 30, -971.864, -87.4223, 81.4954, 5.8294, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+524, 13097, 30, -966.551, -74.1111, 80.0243, 4.2129, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+525, 13097, 30, -958.509, -173.652, 77.9013, 6.24828, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+526, 13097, 30, -951.511, -181.242, 65.529, 4.39823, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+527, 13097, 30, -940.967, -186.243, 77.698, 1.28164, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+528, 13097, 30, -930.004, -65.0898, 79.077, 0.0581657, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+529, 13097, 30, -920.864, -40.2009, 78.256, 5.16617, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+530, 13097, 30, -919.089, -148.021, 62.0317, 2.59327, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+531, 13097, 30, -901.516, -116.329, 75.6876, 0.471239, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+532, 13097, 30, -897.864, -84.4348, 74.083, 3.00197, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+533, 13097, 30, -897.617, -52.0457, 71.9503, 4.36332, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+534, 13097, 30, -894.891, -153.951, 61.6827, 3.23569, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+535, 13097, 30, -893.933, -111.625, 75.6591, 4.22536, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+536, 13097, 30, -883.265, -152.854, 61.8384, 0.0941087, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+537, 13097, 30, -868.293, -147.243, 62.1097, 3.2056, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+538, 13097, 30, -867.501, -11.8709, 70.018, 6.14356, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+539, 13097, 30, -866.699, -147.54, 62.1646, 3.57878, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+540, 13097, 30, -866.566, -91.1916, 67.4414, 4.56707, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+541, 13097, 30, -857.272, -141.142, 61.7356, 4.17134, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+542, 13097, 30, -847.446, -98.0061, 68.5131, 3.24631, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+543, 13097, 30, -837.026, -140.729, 62.5141, 5.51524, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+544, 13097, 30, -824.204, -65.053, 72.3381, 3.01942, 120, 120, 0, 0), -- Coldmine Surveyor
(@CGUID+545, 13099, 30, 955.812, -440.302, 55.3411, 3.19395, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+546, 13099, 30, 937.378, -377.816, 65.3919, 3.56047, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+547, 13099, 30, 925.059, -331.347, 65.7564, 3.66519, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+548, 13099, 30, 922.918, -396.634, 60.3942, 2.71695, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+549, 13099, 30, 909.99, -462.154, 59.0811, 3.7001, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+550, 13099, 30, 907.893, -388.787, 61.7923, 5.74213, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+551, 13099, 30, 898.801, -437.105, 58.5266, 0.959931, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+552, 13099, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+553, 13099, 30, 880.744, -344.683, 66.4086, 3.4644, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+554, 13099, 30, 876.047, -341.857, 65.8743, 4.45059, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+555, 13099, 30, 874.674, -402.077, 61.7573, 0.26341, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+556, 13099, 30, 871.914, -404.209, 62.1269, 6.06163, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+557, 13099, 30, 871.606, -403.665, 62.0795, 0.765774, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+558, 13099, 30, 871.561, -404.114, 62.1297, 0.00981727, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+559, 13099, 30, 871.528, -404.248, 62.1455, 0.498032, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+560, 13099, 30, 871.493, -404.122, 62.1331, 5.65727, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+561, 13099, 30, 871.282, -403.843, 62.1108, 0.788382, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+562, 13099, 30, 868.294, -392.395, 61.4772, 4.38685, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+563, 13099, 30, 868.256, -392.363, 61.4803, 0.732738, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+564, 13099, 30, 867.804, -392.51, 61.5089, 2.30167, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+565, 13099, 30, 867.612, -392.371, 61.524, 2.86149, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+566, 13099, 30, 858.593, -439.614, 50.2184, 0.872665, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+567, 13099, 30, 851.471, -362.52, 47.314, 4.06662, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+568, 13099, 30, 846.939, -347.279, 66.2876, 0.942478, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+569, 13099, 30, 842.08, -421.775, 48.2659, 1.0821, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+570, 13099, 30, 838.358, -371.212, 63.3299, 4.04916, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+571, 13099, 30, 827.57, -417.483, 48.4538, 1.49237, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+572, 13099, 30, 827.012, -457.397, 48.9331, 2.35619, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+573, 13099, 30, 825.535, -322.373, 63.9357, 4.76475, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+574, 13099, 30, 867.635, -443.605, 51.3347, 1.38626, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+575, 13099, 30, 957.293, -455.039, 56.7395, 5.79449, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+576, 13099, 30, 950.077, -326.672, 61.6552, 5.48033, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+577, 13099, 30, 936.692, -356.78, 65.9835, 2.75762, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+578, 13099, 30, 926.475, -419.345, 56.1833, 2.0944, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+579, 13099, 30, 924.729, -397.453, 60.213, 2.71695, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+580, 13099, 30, 902.195, -475.891, 58.312, 1.39626, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+581, 13099, 30, 897.464, -338.758, 68.1715, 2.94961, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+582, 13099, 30, 884.237, -407.597, 61.566, 0.820305, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+583, 13099, 30, 882.517, -344.111, 66.7887, 3.46962, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+584, 13099, 30, 881.437, -400.254, 61.2028, 0.263427, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+585, 13099, 30, 880.156, -400.678, 61.3113, 3.41373, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+586, 13099, 30, 877.989, -418.051, 52.9753, 4.46804, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+587, 13099, 30, 871.212, -404.12, 62.1433, 3.6554, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+588, 13099, 30, 871.036, -404.119, 62.2237, 4.50295, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+589, 13099, 30, 857.396, -395.766, 61.263, 4.78684, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+590, 13099, 30, 857.276, -395.395, 61.2418, 0.0845553, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+591, 13099, 30, 857.231, -394.577, 61.2174, 1.96817, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+592, 13099, 30, 857.108, -395.682, 61.2317, 4.87022, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+593, 13099, 30, 856.709, -395.28, 61.1814, 2.54913, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+594, 13099, 30, 850.922, -390.399, 60.8771, 2.85405, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+595, 13099, 30, 847.556, -388.228, 60.9438, 2.56872, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+596, 13099, 30, 842.031, -384.663, 61.6028, 2.56871, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+597, 13099, 30, 832.035, -389.301, 47.5567, 2.11185, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+598, 13099, 30, 827.415, -419.468, 48.3322, 1.49232, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+599, 13099, 30, 826.402, -349.454, 47.2722, 1.51844, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+600, 13099, 30, 817.83, -455.715, 48.4207, 0.925025, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+601, 13099, 30, 808.953, -325.964, 52.4043, 3.01942, 120, 120, 0, 0), -- Irondeep Explorer
(@CGUID+602, 13116, 30, 643.3094482421875, 37.69200515747070312, 69.06235504150390625, 1.570796370506286621, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+603, 13117, 30, 643.32501220703125, 37.65087890625, 69.0581512451171875, 1.570796370506286621, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+604, 13116, 30, 672.9842529296875, -367.533294677734375, 29.86406135559082031, 5.183627605438232421, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+605, 13117, 30, 673.1029052734375, -367.582183837890625, 29.86406135559082031, 5.16617441177368164, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+606, 13116, 30, 73.26047515869140625, -488.1827392578125, 48.88458633422851562, 4.764749050140380859, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+607, 13117, 30, 73.244140625, -487.845001220703125, 48.8932952880859375, 4.747295379638671875, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+608, 13116, 30, -160.63818359375, 18.41368293762207031, 77.21405029296875, 1.378810048103332519, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+609, 13117, 30, -160.63818359375, 18.41368293762207031, 77.21405029296875, 1.378810048103332519, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+610, 13116, 30, -540.7137451171875, -397.2314453125, 50.10065460205078125, 5.567600250244140625, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+611, 13117, 30, -540.95611572265625, -397.119476318359375, 50.09281539916992187, 5.567600250244140625, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+612, 13116, 30, -1089.8975830078125, -268.640411376953125, 57.10360336303710937, 1.535889744758605957, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+613, 13117, 30, -1089.447265625, -268.955230712890625, 57.08559036254882812, 1.570796370506286621, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+614, 13116, 30, -1488.142822265625, -329.205474853515625, 100.8531951904296875, 3.59537816047668457, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+615, 13117, 30, -1489.4744873046875, -329.778778076171875, 100.8793182373046875, 3.577924966812133789, 120, 120, 0, 0), -- Horde Spirit Guide
(@CGUID+616, 13116, 30, 872.7252197265625, -497.276580810546875, 96.76715087890625, 1.553343057632446289, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+617, 13116, 30, 873.29022216796875, -484.94586181640625, 96.74733734130859375, 4.642575740814208984, 120, 120, 0, 0), -- Alliance Spirit Guide
(@CGUID+618, 13117, 30, -822.324, -621.993, 54.2199, 0.471239, 120, 120, 0, 0), -- Horde Spirit Guide (Adjusted for classic)
(@CGUID+619, 13117, 30, -812.691, -615.783, 54.2149, 3.80482, 120, 120, 0, 0), -- Horde Spirit Guide (Adjusted for classic)
-- (@CGUID+620 - 628
(@CGUID+629, 13176, 30, -1251.503, -316.3269, 62.65648, 5.026548, 6300, 6300, 0, 0), -- Smith Regzar
(@CGUID+630, 13179, 30, 210.875, -357.3596, 56.45859, 5.67232, 604800, 604800, 0, 0), -- Wing Commander Guse -> Moves to -1331.997, -331.2427, 91.26306, 1.500983
(@CGUID+631, 13180, 30, 320.4858, -502.6451, 71.23212, 5.934119, 604800, 604800, 0, 0), -- Wing Commander Jeztor -> Moves to -1334.989, -330.9367, 91.22141, 0.2617994
(@CGUID+632, 13181, 30, 674.4692, -144.5338, 63.73538, 5.61996, 604800, 604800, 0, 0), -- Wing Commander Mulverick -> Moves to -1332.092, -328.9088, 91.26306, 1.902409
(@CGUID+633, 13216, 30, 569.9832, -94.99924, 37.94191, 1.396263, 430, 430, 0, 0), -- Gaelden Hammersmith
(@CGUID+634, 13218, 30, -1244.924, -308.9155, 63.2525, 1.623156, 430, 430, 0, 0), -- Grunnda Wolfheart
(@CGUID+635, 13236, 30, -1319.564, -342.6753, 60.34038, 1.204277, 6300, 6300, 0, 0), -- Primalist Thurloga -> Moves to -360.3185, -133.3459, 26.50991, 5.585053
(@CGUID+636, 13257, 30, 647.6097, -61.15484, 41.74047, 4.24115, 6300, 6300, 0, 0), -- Murgot Deepforge
(@CGUID+637, 13284, 30, -1317.614, -342.8535, 60.37259, 2.478368, 430, 430, 0, 0), -- Frostwolf Shaman
(@CGUID+638, 13284, 30, -1319.314, -344.4753, 60.38251, 1.727876, 430, 430, 0, 0), -- Frostwolf Shaman
(@CGUID+639, 13284, 30, -1321.641, -343.7296, 60.48333, 1.012291, 430, 430, 0, 0), -- Frostwolf Shaman
(@CGUID+640, 14283, 30, 940.2, -512.4, 94.1, 3.6, 300, 300, 0, 0), -- Stormpike Owl
(@CGUID+641, 14283, 30, 937.2, -507.8, 93.9, 3.6, 300, 300, 0, 0), -- Stormpike Owl
(@CGUID+642, 14283, 30, 305.8, -378.8, 0.2, 3.14, 300, 300, 0, 0), -- Stormpike Owl
(@CGUID+643, 14283, 30, 305.8, -381.3, 0.1, 3.14, 300, 300, 0, 0), -- Stormpike Owl
-- (@CGUID+640 - 643
(@CGUID+644, 13316, 30, -968.23, -254.995, 65.8186, 5.01636, 430, 430, 5, 1), -- Coldmine Peon
(@CGUID+645, 13316, 30, -970.389, -223.088, 68.4555, 5.98594, 430, 430, 5, 1), -- Coldmine Peon
(@CGUID+646, 13316, 30, -917.648, -46.8922, 77.0872, 5.27089, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+647, 13316, 30, -912.689, -45.4494, 76.2277, 4.60767, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+648, 13316, 30, -905.455, -84.5179, 75.3642, 3.29867, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+649, 13316, 30, -904.332, -111.509, 75.5925, 2.47837, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+650, 13316, 30, -904.27, -160.419, 61.9876, 3.61192, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+651, 13316, 30, -904.023, -90.4558, 75.3706, 3.40339, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+652, 13316, 30, -978.678, -37.3136, 75.8364, 2.84489, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+653, 13316, 30, -973.076, -36.5013, 77.5047, 1.0821, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+654, 13316, 30, -963.951, -87.734, 81.5555, 0.575959, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+655, 13316, 30, -961.941, -90.7252, 81.6629, 0.820305, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+656, 13316, 30, -957.623, -186.582, 66.6021, 1.95477, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+657, 13316, 30, -952.476, -179.778, 78.6771, 4.5204, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+658, 13316, 30, -950.427, -115.007, 79.6127, 3.68264, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+659, 13316, 30, -950.25, -151.95, 79.4598, -1.81423, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+660, 13316, 30, -950.169, -188.099, 66.6184, 5.55015, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+661, 13316, 30, -949.944, -142.977, 80.5382, 2.70526, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+662, 13316, 30, -947.854, -170.5, 79.7618, 0.942478, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+663, 13316, 30, -946.738, -139.567, 80.0904, 2.3911, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+664, 13316, 30, -945.503, -65.0654, 79.7907, 5.02655, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+665, 13316, 30, -943.678, -110.986, 80.2557, 0.959931, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+666, 13316, 30, -942.993, -56.9881, 79.8915, 5.65487, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+667, 13316, 30, -938.197, -155.838, 61.3111, 1.65806, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+668, 13316, 30, -930.488, -214.524, 72.1431, 2.1236, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+669, 13316, 30, -929.947, -154.449, 61.5084, 1.67552, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+670, 13316, 30, -927.412, -135.313, 61.1987, 3.29867, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+671, 13316, 30, -920.677, -156.859, 62.8033, 3.15306, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+672, 13316, 30, -916.75, -136.094, 62.2357, 0.0698132, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+673, 13316, 30, -915.319, -132.718, 62.562, 1.16984, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+674, 13316, 30, -913.589, -146.794, 76.9366, 1.8675, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+675, 13316, 30, -907.572, -148.937, 76.6898, 4.76475, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+676, 13316, 30, -902.02, -64.6174, 73.9707, 1.19169, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+677, 13316, 30, -899.489, -61.7252, 73.2498, 5.09636, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+678, 13316, 30, -894.792, -127.141, 75.3834, 6.14356, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+679, 13316, 30, -892.408, -162.525, 64.1212, 2.69884, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+680, 13316, 30, -892.326, -123.158, 76.0318, 5.5676, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+681, 13316, 30, -888.468, -148.462, 61.8012, 1.65806, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+682, 13316, 30, -883.268, -159.738, 63.5311, 5.20108, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+683, 13316, 30, -877.76, -118.07, 65.215, 2.94961, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+684, 13316, 30, -876.792, -128.646, 64.1045, 3.40339, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+685, 13316, 30, -874.901, -36.6579, 69.4246, 2.00713, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+686, 13316, 30, -874.856, -151.351, 62.7537, 3.57875, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+687, 13316, 30, -872.135, -150.08, 62.7513, 3.57201, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+688, 13316, 30, -870.288, -149.217, 62.5413, 3.56624, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+689, 13316, 30, -870.03, -6.27443, 70.3867, 2.3911, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+690, 13316, 30, -869.023, -82.2118, 69.5848, 3.22886, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+691, 13316, 30, -866.354, -40.2455, 70.842, 0.0698132, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+692, 13316, 30, -865.305, -152.302, 63.5044, 4.86947, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+693, 13316, 30, -861.926, -79.0519, 71.4178, 0.20944, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+694, 13316, 30, -857.292, -152.277, 63.2114, 4.18879, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+695, 13316, 30, -853.357, -0.696194, 72.0655, 0.994838, 120, 120, 0, 0), -- Coldmine Peon
(@CGUID+696, 13317, 30, -946.072, -54.0555, 79.8627, 3.79263, 430, 430, 5, 1), -- Coldmine Miner
(@CGUID+697, 13317, 30, -859.583, -11.9699, 70.8221, 2.01683, 430, 430, 5, 1), -- Coldmine Miner
(@CGUID+698, 13317, 30, -964.497, -93.9877, 81.4219, 5.02074, 430, 430, 5, 1), -- Coldmine Miner
(@CGUID+699, 13317, 30, -947.939, -181.602, 64.8921, 3.99765, 430, 430, 5, 1), -- Coldmine Miner
(@CGUID+700, 13317, 30, -897.423, -113.117, 75.4753, 5.50678, 430, 430, 5, 1), -- Coldmine Miner
(@CGUID+701, 13317, 30, -917.648, -46.8922, 77.0872, 5.27089, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+702, 13317, 30, -912.689, -45.4494, 76.2277, 4.60767, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+703, 13317, 30, -905.455, -84.5179, 75.3642, 3.29867, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+704, 13317, 30, -904.332, -111.509, 75.5925, 2.47837, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+705, 13317, 30, -904.27, -160.419, 61.9876, 3.61192, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+706, 13317, 30, -904.023, -90.4558, 75.3706, 3.40339, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+707, 13317, 30, -978.678, -37.3136, 75.8364, 2.84489, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+708, 13317, 30, -973.076, -36.5013, 77.5047, 1.0821, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+709, 13317, 30, -963.951, -87.734, 81.5555, 0.575959, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+710, 13317, 30, -961.941, -90.7252, 81.6629, 0.820305, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+711, 13317, 30, -957.623, -186.582, 66.6021, 1.95477, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+712, 13317, 30, -952.476, -179.778, 78.6771, 4.5204, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+713, 13317, 30, -950.427, -115.007, 79.6127, 3.68264, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+714, 13317, 30, -950.25, -151.95, 79.4598, -1.81423, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+715, 13317, 30, -950.169, -188.099, 66.6184, 5.55015, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+716, 13317, 30, -949.944, -142.977, 80.5382, 2.70526, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+717, 13317, 30, -947.854, -170.5, 79.7618, 0.942478, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+718, 13317, 30, -946.738, -139.567, 80.0904, 2.3911, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+719, 13317, 30, -945.503, -65.0654, 79.7907, 5.02655, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+720, 13317, 30, -943.678, -110.986, 80.2557, 0.959931, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+721, 13317, 30, -942.993, -56.9881, 79.8915, 5.65487, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+722, 13317, 30, -938.197, -155.838, 61.3111, 1.65806, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+723, 13317, 30, -930.488, -214.524, 72.1431, 2.1236, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+724, 13317, 30, -929.947, -154.449, 61.5084, 1.67552, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+725, 13317, 30, -927.412, -135.313, 61.1987, 3.29867, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+726, 13317, 30, -920.677, -156.859, 62.8033, 3.15306, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+727, 13317, 30, -916.75, -136.094, 62.2357, 0.0698132, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+728, 13317, 30, -915.319, -132.718, 62.562, 1.16984, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+729, 13317, 30, -913.589, -146.794, 76.9366, 1.8675, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+730, 13317, 30, -907.572, -148.937, 76.6898, 4.76475, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+731, 13317, 30, -902.02, -64.6174, 73.9707, 1.19169, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+732, 13317, 30, -899.489, -61.7252, 73.2498, 5.09636, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+733, 13317, 30, -894.792, -127.141, 75.3834, 6.14356, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+734, 13317, 30, -892.408, -162.525, 64.1212, 2.69884, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+735, 13317, 30, -892.326, -123.158, 76.0318, 5.5676, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+736, 13317, 30, -888.468, -148.462, 61.8012, 1.65806, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+737, 13317, 30, -883.268, -159.738, 63.5311, 5.20108, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+738, 13317, 30, -877.76, -118.07, 65.215, 2.94961, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+739, 13317, 30, -876.792, -128.646, 64.1045, 3.40339, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+740, 13317, 30, -874.901, -36.6579, 69.4246, 2.00713, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+741, 13317, 30, -874.856, -151.351, 62.7537, 3.57875, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+742, 13317, 30, -872.135, -150.08, 62.7513, 3.57201, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+743, 13317, 30, -870.288, -149.217, 62.5413, 3.56624, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+744, 13317, 30, -870.03, -6.27443, 70.3867, 2.3911, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+745, 13317, 30, -869.023, -82.2118, 69.5848, 3.22886, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+746, 13317, 30, -866.354, -40.2455, 70.842, 0.0698132, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+747, 13317, 30, -865.305, -152.302, 63.5044, 4.86947, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+748, 13317, 30, -861.926, -79.0519, 71.4178, 0.20944, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+749, 13317, 30, -857.292, -152.277, 63.2114, 4.18879, 120, 120, 0, 0), -- Coldmine Miner
(@CGUID+750, 13317, 30, -853.357, -0.696194, 72.0655, 0.994838, 120, 120, 0, 0), -- Coldmine Miner
-- (@CGUID+751 - 755
(@CGUID+756, 13326, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+757, 13326, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+758, 13326, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+759, 13326, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+760, 13326, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+761, 13326, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+762, 13326, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+763, 13326, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+764, 13326, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+765, 13326, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+766, 13326, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+767, 13326, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+768, 13326, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+769, 13326, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+770, 13326, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+771, 13326, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+772, 13326, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+773, 13326, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+774, 13326, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+775, 13326, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+776, 13326, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+777, 13326, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+778, 13326, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+779, 13326, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+780, 13326, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+781, 13326, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+782, 13326, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+783, 13326, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Seasoned Defender
(@CGUID+784, 13328, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+785, 13328, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+786, 13328, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+787, 13328, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+788, 13328, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+789, 13328, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+790, 13328, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+791, 13328, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+792, 13328, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+793, 13328, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+794, 13328, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+795, 13328, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+796, 13328, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+797, 13328, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+798, 13328, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+799, 13328, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+800, 13328, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+801, 13328, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+802, 13328, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+803, 13328, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+804, 13328, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+805, 13328, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+806, 13328, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+807, 13328, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+808, 13328, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+809, 13328, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+810, 13328, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Seasoned Guardian
(@CGUID+811, 13328, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Seasoned Guardian
-- (@CGUID+812 - 815
(@CGUID+816, 13331, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+817, 13331, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+818, 13331, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+819, 13331, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+820, 13331, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+821, 13331, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+822, 13331, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+823, 13331, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+824, 13331, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+825, 13331, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+826, 13331, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+827, 13331, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+828, 13331, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+829, 13331, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+830, 13331, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+831, 13331, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+832, 13331, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+833, 13331, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+834, 13331, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+835, 13331, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+836, 13331, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+837, 13331, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+838, 13331, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+839, 13331, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+840, 13331, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+841, 13331, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+842, 13331, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+843, 13331, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Veteran Defender
(@CGUID+844, 13332, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+845, 13332, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+846, 13332, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+847, 13332, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+848, 13332, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+849, 13332, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+850, 13332, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+851, 13332, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+852, 13332, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+853, 13332, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+854, 13332, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+855, 13332, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+856, 13332, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+857, 13332, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+858, 13332, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+859, 13332, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+860, 13332, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+861, 13332, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+862, 13332, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+863, 13332, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+864, 13332, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+865, 13332, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+866, 13332, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+867, 13332, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+868, 13332, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+869, 13332, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+870, 13332, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Veteran Guardian
(@CGUID+871, 13332, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Veteran Guardian
-- (@CGUID+872
(@CGUID+873, 13358, 30, 569.3947, -101.0635, 52.82956, 5.305801, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+874, 13358, 30, 574.8497, -92.98416, 52.5869, 5.951573, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+875, 13358, 30, 575.4115, -83.59695, 52.36259, 6.265732, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+876, 13358, 30, 571.3523, -75.6582, 52.47898, 0.5235988, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+877, 13358, 30, 667.6901, -121.7611, 64.1092, 2.200822, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+878, 13358, 30, 662.2532, -129.105, 64.17944, 2.069839, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+879, 13358, 30, 661.2094, -138.8774, 64.22514, 4.275775, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+880, 13358, 30, 665.4814, -146.8566, 64.12708, 3.075164, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+881, 13358, 30, 226.3107, -369.1876, 57.05086, 5.986479, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+882, 13358, 30, 191.36, -369.899, 57.1524, 3.24631, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+883, 13358, 30, 215.518, -384.019, 56.9889, 5.09636, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+884, 13358, 30, 199.625, -382.177, 56.8691, 4.08407, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+885, 13358, 30, -172.851, -452.366, 40.8725, 3.31829, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+886, 13358, 30, -147.147, -435.053, 40.8022, 0.599238, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+887, 13358, 30, -169.456, -440.325, 40.985, 2.59101, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+888, 13358, 30, -163.494, -434.904, 41.0725, 1.84174, 120, 120, 0, 0), -- Stormpike Bowman
(@CGUID+889, 13359, 30, -573.5216, -271.8542, 75.00776, 3.999893, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+890, 13359, 30, -565.6158, -269.0514, 74.99518, 5.026548, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+891, 13359, 30, -562.8245, -261.0871, 74.9898, 5.95157, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+892, 13359, 30, -569.1758, -254.4456, 74.87714, 0.820305, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+893, 13359, 30, -762.7337, -371.2397, 90.87794, 5.427974, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+894, 13359, 30, -758.4671, -361.4209, 90.88779, 0.4575799, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+895, 13359, 30, -773.6427, -354.9776, 90.87726, 2.548181, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+896, 13359, 30, -772.9677, -373.499, 90.93112, 4.537856, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+897, 13359, 30, -1296.943, -308.4302, 107.3566, 1.713484, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+898, 13359, 30, -1292.781, -317.9507, 107.4113, 6.003932, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+899, 13359, 30, -1292.87, -316.9934, 113.8544, 0.03490658, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+900, 13359, 30, -1296.395, -308.9451, 113.8452, 1.27409, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+901, 13359, 30, -1300.62, -275.9303, 114.1352, 4.685695, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+902, 13359, 30, -1288.263, -264.9863, 107.6954, 5.556268, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+903, 13359, 30, -1286.344, -265.084, 114.1718, 5.969026, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+904, 13359, 30, -1292.327, -273.1024, 114.2346, 4.499137, 120, 120, 0, 0), -- Frostwolf Bowman
(@CGUID+905, 13396, 30, 971.671, -442.657, 57.6951, 3.1765, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+906, 13396, 30, 969.979, -457.148, 58.1119, 4.5204, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+907, 13396, 30, 958.692, -333.477, 63.2276, 5.77704, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+908, 13396, 30, 957.113, -325.92, 61.7589, 1.13446, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+909, 13396, 30, 948.25, -448.268, 56.9009, 5.60251, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+910, 13396, 30, 934.727, -385.802, 63.0344, 3.75246, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+911, 13396, 30, 931.751, -403.458, 59.6737, 5.63741, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+912, 13396, 30, 931.146, -359.666, 66.0294, 3.9619, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+913, 13396, 30, 929.702, -412.401, 56.8776, 5.89921, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+914, 13396, 30, 926.849, -379.074, 63.5286, 2.0944, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+915, 13396, 30, 921.972, -358.597, 66.4313, 2.93215, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+916, 13396, 30, 921.449, -341.981, 67.1264, 3.4383, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+917, 13396, 30, 921.1, -395.812, 60.4615, 2.71695, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+918, 13396, 30, 919.274, -394.986, 60.3478, 2.71696, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+919, 13396, 30, 916.852, -393.891, 60.1726, 2.71695, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+920, 13396, 30, 914.568, -326.21, 66.1733, 2.25147, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+921, 13396, 30, 913.064, -395.773, 60.1364, 4.41568, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+922, 13396, 30, 909.246, -474.576, 58.2067, 0.226893, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+923, 13396, 30, 909.246, -474.576, 58.2901, 0.226893, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+924, 13396, 30, 907.209, -428.267, 59.8065, 1.8675, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+925, 13396, 30, 905.973, -459.528, 58.7594, 1.37189, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+926, 13396, 30, 905.067, -396.074, 60.2085, 5.07891, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+927, 13396, 30, 901.809, -457.709, 59.0116, 3.52557, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+928, 13396, 30, 900.962, -427.44, 59.0842, 1.50098, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+929, 13396, 30, 897.929, -471.742, 59.7729, 2.54818, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+930, 13396, 30, 893.376, -343.171, 68.1499, 5.35816, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+931, 13396, 30, 890.584, -406.049, 61.1925, 5.67232, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+932, 13396, 30, 888.208, -332.564, 68.148, 1.93732, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+933, 13396, 30, 887.647, -391.537, 61.8734, 1.37881, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+934, 13396, 30, 885.109, -343.338, 67.0867, 3.78979, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+935, 13396, 30, 881.618, -419.948, 53.5228, 0.593412, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+936, 13396, 30, 878.675, -345.36, 66.1052, 3.45651, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+937, 13396, 30, 877.127, -351.8, 66.5296, 5.74213, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+938, 13396, 30, 876.778, -345.97, 65.7724, 3.45262, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+939, 13396, 30, 874.577, -414.786, 52.7817, 1.67552, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+940, 13396, 30, 868.247, -343.136, 64.9894, 1.6057, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+941, 13396, 30, 859.03, -367.231, 47.4655, 0.0174533, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+942, 13396, 30, 857.513, -351.817, 65.1867, 4.39823, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+943, 13396, 30, 852.632, -372.416, 48.1657, 3.66519, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+944, 13396, 30, 849.86, -340.944, 66.2447, 0.401426, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+945, 13396, 30, 847.99, -386.287, 60.9277, 2.32374, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+946, 13396, 30, 847.601, -423.072, 50.0852, 4.57276, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+947, 13396, 30, 847.135, -411.307, 50.2106, 1.5708, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+948, 13396, 30, 835.077, -379.418, 48.2755, 5.93412, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+949, 13396, 30, 834.87, -453.304, 47.9075, 0.226893, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+950, 13396, 30, 834.634, -365.981, 62.8801, 1.32645, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+951, 13396, 30, 834.354, -355.526, 48.1491, 6.07375, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+952, 13396, 30, 833.702, -327.506, 65.0439, 0.331613, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+953, 13396, 30, 833.151, -374.228, 63.0938, 3.66519, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+954, 13396, 30, 831.711, -346.785, 47.2975, 0.226893, 120, 120, 0, 0), -- Irondeep Miner
(@CGUID+955, 13397, 30, 754.204, -322.754, 57.4426, 5.20939, 430, 430, 5, 1), -- Irondeep Peon
(@CGUID+956, 13397, 30, 774.243, -320.466, 54.4848, 2.67149, 430, 430, 5, 1), -- Irondeep Peon
(@CGUID+957, 13397, 30, 971.671, -442.657, 57.6951, 3.1765, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+958, 13397, 30, 969.979, -457.148, 58.1119, 4.5204, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+959, 13397, 30, 958.692, -333.477, 63.2276, 5.77704, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+960, 13397, 30, 957.113, -325.92, 61.7589, 1.13446, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+961, 13397, 30, 948.25, -448.268, 56.9009, 5.60251, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+962, 13397, 30, 934.727, -385.802, 63.0344, 3.75246, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+963, 13397, 30, 931.751, -403.458, 59.6737, 5.63741, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+964, 13397, 30, 931.146, -359.666, 66.0294, 3.9619, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+965, 13397, 30, 929.702, -412.401, 56.8776, 5.89921, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+966, 13397, 30, 926.849, -379.074, 63.5286, 2.0944, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+967, 13397, 30, 921.972, -358.597, 66.4313, 2.93215, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+968, 13397, 30, 921.449, -341.981, 67.1264, 3.4383, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+969, 13397, 30, 921.1, -395.812, 60.4615, 2.71695, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+970, 13397, 30, 919.274, -394.986, 60.3478, 2.71696, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+971, 13397, 30, 916.852, -393.891, 60.1726, 2.71695, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+972, 13397, 30, 914.568, -326.21, 66.1733, 2.25147, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+973, 13397, 30, 913.064, -395.773, 60.1364, 4.41568, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+974, 13397, 30, 909.246, -474.576, 58.2067, 0.226893, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+975, 13397, 30, 909.246, -474.576, 58.2901, 0.226893, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+976, 13397, 30, 907.209, -428.267, 59.8065, 1.8675, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+977, 13397, 30, 905.973, -459.528, 58.7594, 1.37189, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+978, 13397, 30, 905.067, -396.074, 60.2085, 5.07891, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+979, 13397, 30, 901.809, -457.709, 59.0116, 3.52557, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+980, 13397, 30, 900.962, -427.44, 59.0842, 1.50098, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+981, 13397, 30, 897.929, -471.742, 59.7729, 2.54818, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+982, 13397, 30, 893.376, -343.171, 68.1499, 5.35816, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+983, 13397, 30, 890.584, -406.049, 61.1925, 5.67232, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+984, 13397, 30, 888.208, -332.564, 68.148, 1.93732, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+985, 13397, 30, 887.647, -391.537, 61.8734, 1.37881, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+986, 13397, 30, 885.109, -343.338, 67.0867, 3.78979, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+987, 13397, 30, 881.618, -419.948, 53.5228, 0.593412, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+988, 13397, 30, 878.675, -345.36, 66.1052, 3.45651, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+989, 13397, 30, 877.127, -351.8, 66.5296, 5.74213, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+990, 13397, 30, 876.778, -345.97, 65.7724, 3.45262, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+991, 13397, 30, 874.577, -414.786, 52.7817, 1.67552, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+992, 13397, 30, 868.247, -343.136, 64.9894, 1.6057, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+993, 13397, 30, 859.03, -367.231, 47.4655, 0.0174533, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+994, 13397, 30, 857.513, -351.817, 65.1867, 4.39823, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+995, 13397, 30, 852.632, -372.416, 48.1657, 3.66519, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+996, 13397, 30, 849.86, -340.944, 66.2447, 0.401426, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+997, 13397, 30, 847.99, -386.287, 60.9277, 2.32374, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+998, 13397, 30, 847.601, -423.072, 50.0852, 4.57276, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+999, 13397, 30, 847.135, -411.307, 50.2106, 1.5708, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1000, 13397, 30, 835.077, -379.418, 48.2755, 5.93412, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1001, 13397, 30, 834.87, -453.304, 47.9075, 0.226893, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1002, 13397, 30, 834.634, -365.981, 62.8801, 1.32645, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1003, 13397, 30, 834.354, -355.526, 48.1491, 6.07375, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1004, 13397, 30, 833.702, -327.506, 65.0439, 0.331613, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1005, 13397, 30, 833.151, -374.228, 63.0938, 3.66519, 120, 120, 0, 0), -- Irondeep Peon
(@CGUID+1006, 13397, 30, 831.711, -346.785, 47.2975, 0.226893, 120, 120, 0, 0), -- Irondeep Peon
-- (@CGUID+1007
(@CGUID+1008, 13421, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1009, 13421, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1010, 13421, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1011, 13421, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1012, 13421, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1013, 13421, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1014, 13421, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1015, 13421, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1016, 13421, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1017, 13421, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1018, 13421, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1019, 13421, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1020, 13421, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1021, 13421, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1022, 13421, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1023, 13421, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1024, 13421, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1025, 13421, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1026, 13421, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1027, 13421, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1028, 13421, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1029, 13421, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1030, 13421, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1031, 13421, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1032, 13421, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1033, 13421, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1034, 13421, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Champion Guardian
(@CGUID+1035, 13421, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Champion Guardian
-- (@CGUID+1036 - 1037
(@CGUID+1038, 13422, 30, 635.17, -29.5594, 46.5056, 4.81711, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1039, 13422, 30, 642.488, -32.9437, 46.365, 4.67748, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1040, 13422, 30, 642.326, -27.9442, 46.9211, 4.59022, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1041, 13422, 30, 635.945, -33.6171, 45.7164, 4.97419, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1042, 13422, 30, 669.272, -297.304, 30.291, 4.66604, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1043, 13422, 30, 674.08, -292.328, 30.4817, 0.0918785, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1044, 13422, 30, 667.01, -288.532, 29.8809, 1.81583, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1045, 13422, 30, 664.153, -294.042, 30.2851, 3.28531, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1046, 13422, 30, 81.7027, -406.135, 47.7843, 0.598464, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1047, 13422, 30, 78.1431, -409.215, 48.0401, 5.05953, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1048, 13422, 30, 73.4135, -407.035, 46.7527, 3.34736, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1049, 13422, 30, 78.2258, -401.859, 46.4202, 2.05852, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1050, 13422, 30, -207.412, -110.616, 78.7959, 2.43251, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1051, 13422, 30, -197.95, -112.205, 78.5686, 6.22441, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1052, 13422, 30, -202.709, -116.829, 78.4358, 5.13742, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1053, 13422, 30, -202.059, -108.314, 78.5783, 5.91968, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1054, 13422, 30, -615.501, -393.802, 60.4299, 3.06147, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1055, 13422, 30, -608.513, -392.717, 62.5724, 2.06323, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1056, 13422, 30, -609.769, -400.072, 60.7174, 5.22367, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1057, 13422, 30, -616.093, -398.293, 60.5628, 3.73613, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1058, 13422, 30, -1077.7, -340.21, 55.4682, 6.25569, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1059, 13422, 30, -1082.74, -333.821, 54.7962, 2.05459, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1060, 13422, 30, -1090.66, -341.267, 54.6768, 3.27746, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1061, 13422, 30, -1081.58, -344.63, 55.256, 4.75636, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1062, 13422, 30, -1408.95, -311.69, 89.2536, 4.49954, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1063, 13422, 30, -1407.15, -305.323, 89.1993, 2.86827, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1064, 13422, 30, -1400.64, -304.3, 89.7008, 1.0595, 120, 120, 5, 1), -- Champion Defender
(@CGUID+1065, 13422, 30, -1400.4, -311.35, 89.3028, 4.99434, 120, 120, 5, 1), -- Champion Defender
-- (@CGUID+1066 - 1073
(@CGUID+1074, 13437, 30, -1303.375, -267.9886, 91.9538, 2.243448, 604800, 604800, 2, 1), -- Wing Commander Ichman -> Moves to 571.852, -55.7213, 38.1109, 0.3665192
(@CGUID+1075, 13438, 30, -768.864, -360.9263, 68.63197, 1.064651, 604800, 604800, 0, 0), -- Wing Commander Slidore -> Moves to 569.9629, -42.02181, 37.75815, 4.276057
(@CGUID+1076, 13439, 30, -1219.253, -353.1674, 57.75129, 4.485496, 604800, 604800, 0, 0), -- Wing Commander Vipore -> Moves to 568.0287, -48.54899, 38.50815, 4.031711
(@CGUID+1077, 13441, 30, -1248.786, -636.0178, 52.63483, 0.9599311, 6300, 6300, 0, 0), -- Frostwolf Wolf Rider Commander
(@CGUID+1078, 13442, 30, 729.2002, -78.81201, 51.6335, 3.979351, 430, 430, 0, 0), -- Arch Druid Renferal
(@CGUID+1079, 13443, 30, 724.7677, -84.16422, 51.6335, 0.7330383, 490, 490, 0, 0), -- Druid of the Grove
(@CGUID+1080, 13443, 30, 725.5536, -79.49734, 51.6335, 5.270895, 490, 490, 0, 0), -- Druid of the Grove
(@CGUID+1081, 13443, 30, 729.1176, -82.87132, 51.6335, 2.530727, 490, 490, 0, 0), -- Druid of the Grove
-- (@CGUID+1082 - 1083
(@CGUID+1084, 13447, 30, 596.6795, -83.06326, 38.97698, 6.248279, 490, 490, 0, 0), -- Corporal Noreg Stormpike
(@CGUID+1085, 13448, 30, -1212.107, -261.7742, 73.41485, 5.794493, 430, 430, 0, 0), -- Sergeant Yazra Bloodsnarl
-- (@CGUID+1086 - 1098
(@CGUID+1099, 13577, 30, 600.0322, -2.924751, 42.07877, 5.009095, 6300, 6300, 0, 0), -- Stormpike Ram Rider Commander
(@CGUID+1100, 13616, 30, -1244.961, -637.9991, 52.63655, 1.919862, 490, 490, 0, 0), -- Frostwolf Stable Master
(@CGUID+1101, 13617, 30, 610.2391, -21.84538, 43.27198, 4.904375, 490, 490, 0, 0), -- Stormpike Stable Master
-- (@CGUID+1102 - 1107
(@CGUID+1108, 13797, 30, 613.4215, -150.7637, 33.45171, 5.550147, 6300, 6300, 0, 0), -- Mountaineer Boombellow
(@CGUID+1109, 13798, 30, -1213.91, -370.619, 56.44551, 0.8377581, 6300, 6300, 0, 0), -- Jotek
-- (@CGUID+1110 - 1114
(@CGUID+1115, 14185, 30, -1271.211, -335.5542, 62.44618, 5.759586, 490, 490, 0, 0), -- Najak Hexxen
(@CGUID+1116, 14186, 30, -1268.641, -332.6885, 62.73878, 5.288348, 430, 430, 0, 0), -- Ravak Grimtotem
(@CGUID+1117, 14187, 30, 648.3634, -65.2233, 41.74047, 3.124139, 490, 490, 0, 0), -- Athramanis
(@CGUID+1118, 14188, 30, 648.2379, -67.89307, 41.74046, 2.600541, 490, 490, 0, 0), -- Dirk Swindle
-- (@CGUID+1119
(@CGUID+1120, 14282, 30, -1206.6187744140625, -253.149307250976562, 72.60112762451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Bloodhound
(@CGUID+1121, 14282, 30, -1208.6187744140625, -251.149307250976562, 72.60112762451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Bloodhound
(@CGUID+1122, 14282, 30, -747.00964355468750, -429.686187744140625, 66.5425262451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Bloodhound
(@CGUID+1123, 14282, 30, -745.00964355468750, -431.686187744140625, 66.5425262451171875, 0.0, 300, 300, 0, 0), -- Frostwolf Bloodhound
(@CGUID+1124, 14284, 30, 776.8299560546875, -496.35894775390625, 99.70737457275390625, 2.513274192810058593, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1125, 14284, 30, 773.6513671875, -497.4815673828125, 99.04083251953125, 2.111848354339599609, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1126, 14284, 30, 776.62078857421875, -487.775390625, 99.404937744140625, 3.50811171531677246, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1127, 14284, 30, 773.04144287109375, -485.532012939453125, 98.861297607421875, 4.223696708679199218, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1128, 14284, 30, 884.738525390625, -497.807830810546875, 96.90430450439453125, 3.019419670104980468, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1129, 14284, 30, 883.60015869140625, -500.616546630859375, 96.8499603271484375, 2.251474618911743164, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1130, 14284, 30, 876.66632080078125, -503.851470947265625, 96.706787109375, 0.03490658476948738, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1131, 14284, 30, 878.92059326171875, -508.4962158203125, 96.79261016845703125, 1.151917338371276855, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1132, 14284, 30, 866.84442138671875, -505.840484619140625, 96.5324859619140625, 2.460914134979248046, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1133, 14284, 30, 863.11358642578125, -508.144439697265625, 96.5519256591796875, 2.007128715515136718, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1134, 14284, 30, 857.81610107421875, -491.926666259765625, 96.9192352294921875, 4.86946868896484375, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1135, 14284, 30, 854.27642822265625, -494.241424560546875, 96.80171966552734375, 5.445427417755126953, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1136, 14284, 30, 936.85198974609375, -504.9757080078125, 94.2293243408203125, 5.724679946899414062, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1137, 14284, 30, 939.4197998046875, -502.777130126953125, 94.58873748779296875, 5.148721218109130859, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1138, 14284, 30, 947.4122314453125, -509.981658935546875, 95.109832763671875, 2.827433347702026367, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1139, 14284, 30, 949.0997314453125, -506.912872314453125, 95.4236907958984375, 3.31612563133239746, 430, 430, 0, 0), -- Stormpike Battleguard
(@CGUID+1140, 14284, 30, 936.3436, -511.4911, 93.79216, 3.610045, 430, 430, 0, 2), -- Stormpike Battleguard
(@CGUID+1141, 13816, 30, 704.3499, -22.90712, 50.21867, 0.7853982, 300, 300, 0, 0), -- Prospector Stonehewer
(@CGUID+1142, 14762, 30, 723.0579, -14.15484, 50.70463, 3.403392, 120, 120, 0, 0), -- Dun Baldar North Marshal
-- (@CGUID+1143
(@CGUID+1144, 14763, 30, 721.1042, -7.641547, 50.70463, 3.455752, 120, 120, 0, 0), -- Dun Baldar South Marshal
-- (@CGUID+1145
(@CGUID+1146, 14764, 30, 715.691, -4.722331, 50.21867, 3.473205, 120, 120, 0, 0), -- Icewing Marshal
-- (@CGUID+1147 - 1148
(@CGUID+1149, 14765, 30, 720.046, -19.9413, 50.21867, 3.368485, 120, 120, 0, 0), -- Stonehearth Marshal
-- (@CGUID+1150 - 1153
(@CGUID+1154, 14772, 30, -1368.085, -219.5863, 98.50992, 5.113815, 120, 120, 0, 0), -- East Frostwolf Warmaster
-- (@CGUID+1155
(@CGUID+1156, 14773, 30, -1376.09, -226.2954, 98.50992, 5.166174, 490, 490, 0, 0), -- Iceblood Warmaster
-- (@CGUID+1157 - 1160
(@CGUID+1161, 14776, 30, -1363.059, -220.0305, 98.48016, 5.113815, 490, 490, 0, 0), -- Tower Point Warmaster
-- (@CGUID+1162
(@CGUID+1163, 14777, 30, -1373.695, -222.2029, 98.50992, 5.148721, 120, 120, 0, 0), -- West Frostwolf Warmaster
-- Horde Side
(@CGUID+1775, 11837, 30, -1617.95, -391.549, 55.137, 0.834304, 300, 300, 2, 1), -- Wildpaw Shaman
(@CGUID+1776, 11837, 30, -1566.16, -397.12, 65.3396, 2.36521, 300, 300, 2, 1), -- Wildpaw Shaman
(@CGUID+1777, 11838, 30, -1612.24, -439.036, 80.0545, 5.37574, 300, 300, 2, 1), -- Wildpaw Mystic
(@CGUID+1778, 11838, 30, -1553.82, -342.933, 64.4159, 4.31570, 300, 300, 2, 1), -- Wildpaw Mystic
(@CGUID+1779, 11839, 30, -1565.21, -479.676, 59.2293, 2.06611, 300, 300, 2, 1), -- Wildpaw Brute
(@CGUID+1780, 11839, 30, -1477.04, -475.236, 69.4457, 5.29207, 300, 300, 2, 1), -- Wildpaw Brute
(@CGUID+1781, 11839, 30, -1646.17, -446.101, 49.8023, 1.17457, 300, 300, 2, 1), -- Wildpaw Brute
(@CGUID+1782, 11839, 30, -1550.729, -377.5234, 64.4669, 3.231004, 300, 300, 2, 1), -- Wildpaw Brute
(@CGUID+1783, 11839, 30, -1573.18, -361.9825, 64.19695, 0.2793322, 300, 300, 2, 1), -- Wildpaw Brute
(@CGUID+1784, 11840, 30, -1592.95, -408.627, 81.4215, 0.95002, 300, 300, 2, 1), -- Wildpaw Alpha
(@CGUID+1785, 11840, 30, -1568.06, -446.271, 67.846, 3.46805, 300, 300, 2, 1), -- Wildpaw Alpha
(@CGUID+1786, 11840, 30, -1485.83, -426.824, 70.3539, 5.26827, 300, 300, 2, 1), -- Wildpaw Alpha
(@CGUID+1787, 11840, 30, -1550.894, -361.3882, 66.58133, 4.401934, 300, 300, 2, 1), -- Wildpaw Alpha
(@CGUID+1788, 11840, 30, -1538.105, -358.4388, 64.60719, 0.359198, 300, 300, 2, 1), -- Wildpaw Alpha
-- (@CGUID+1789 - 1793
(@CGUID+1794, 12051, 30, -707.419983, -439.816010, 85.974800, 0, 300, 300, 0, 0), -- Frostwolf Legionnaire Patrol (Either one big Path or split in two for 1993,1992)
(@CGUID+1795, 12051, 30, -708.989990, -437.691010, 86.214500, 0, 300, 300, 0, 0), -- Frostwolf Legionnaire Patrol (prolly starts in frostwolf village though)
(@CGUID+1796, 12051, 30, -1267.32, -587.066, 54.8743, 1.13446, 300, 300, 0, 0), -- Frostwolf Legionnaire
(@CGUID+1797, 12051, 30, -1254.03, -587.41, 55.3577, 1.88496, 300, 300, 0, 0), -- Frostwolf Legionnaire
(@CGUID+1798, 12051, 30, -1254.31, -629.738, 52.9046, 0.558505, 300, 300, 0, 0), -- Frostwolf Legionnaire
(@CGUID+1799, 12051, 30, -1238.08, -641.841, 53.8959, 1.67552, 300, 300, 0, 0), -- Frostwolf Legionnaire
-- Alliance Side
-- (@CGUID+1800 - 1810
(@CGUID+1811, 10986, 30, 267.8507, -313.2709, -18.41218, 3.425254, 300, 300, 2, 1), -- Snowblind Harpy
(@CGUID+1812, 10986, 30, 296.1165, -78.50062, -38.20281, 4.062625, 300, 300, 2, 1), -- Snowblind Harpy
(@CGUID+1813, 10986, 30, 424.9368, -52.59122, -6.162855, 1.795768, 300, 300, 2, 1), -- Snowblind Harpy
(@CGUID+1814, 10986, 30, 449.6369, -35.48276, -0.544651, 2.790872, 300, 300, 2, 1), -- Snowblind Harpy
(@CGUID+1815, 10986, 30, 528.361, -54.5868, 20.5881, 2.93215, 300, 300, 2, 1), -- Snowblind Harpy
(@CGUID+1816, 11675, 30, 314.3878, -318.4957, -28.1123, 5.203387, 300, 300, 2, 1), -- Snowblind Windcaller
(@CGUID+1817, 11675, 30, 434.3255, -40.99554, -0.419651, 1.316094, 300, 300, 2, 1), -- Snowblind Windcaller
(@CGUID+1818, 11678, 30, -16.486200, 42.244499, 17.073900, 0.1214466, 300, 300, 0, 2), -- Snowblind Ambusher Patrol
(@CGUID+1819, 11678, 30, -5.21115, 153.663, 10.1208, 0.377409, 300, 300, 0, 4), -- Snowblind Ambusher Patrol
(@CGUID+1820, 11678, 30, -4.335072, 128.2781, 10.5636, 0, 300, 300, 0, 2), -- Snowblind Ambusher Patrol
(@CGUID+1821, 11678, 30, 67.26015, 181.5951, 6.897262, 6.100744, 300, 300, 5, 1), -- Snowblind Ambusher
(@CGUID+1822, 11678, 30, 115.992, 107.252, 3.14755, 1.07926, 300, 300, 0, 4), -- Snowblind Ambusher Patrol
(@CGUID+1823, 11678, 30, 126.984001, 184.539001, 9.910280, 0, 300, 300, 2, 1), -- Snowblind Ambusher Patrol?
(@CGUID+1824, 11678, 30, 173.6141, 128.6605, 8.42202, 5.378272, 300, 300, 2, 1), -- Snowblind Ambusher Patrol?
(@CGUID+1825, 11678, 30, 487.7982, -146.7828, 18.20642, 4.288023, 300, 300, 0, 2), -- Snowblind Ambusher Patrol
(@CGUID+1826, 0, 30, -14.36056, 32.73905, 16.92469, 0.3786411, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1827, 0, 30, -5.661440, 133.970993, 10.194300, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1828, 0, 30, -0.116211, 84.2564, 19.4327, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1829, 0, 30, 3.293910, 164.748993, 10.251800, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1830, 0, 30, 11.60883, 15.9375, -2.578961, 4.660029, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1831, 0, 30, 25.09579, 46.23475, 0.7573166, 2.512801, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1832, 0, 30, 34.39055, 67.21788, -0.9751591, 2.273348, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1833, 0, 30, 37.90408, 165.3339, 11.84925, 6.132656, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1834, 0, 30, 44.56627, -10.88285, -4.096216, 6.085869, 300, 300, 5, 1), -- creature_spawn_entry
(@CGUID+1835, 0, 30, 51.425201, 19.950899, -4.096210, 0, 300, 300, 5, 1), -- creature_spawn_entry
(@CGUID+1836, 0, 30, 52.3411, 162.9613, 10.97228, 4.815434, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1837, 0, 30, 59.187401, 51.488701, -1.478370, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1838, 0, 30, 72.788101, 2.895700, -4.096210, 0, 300, 300, 5, 1), -- creature_spawn_entry
(@CGUID+1839, 0, 30, 97.4924, 130.277, 3.56183, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1840, 0, 30, 104.626, 83.8926, 3.44215, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1841, 0, 30, 109.468, 98.1033, 3.59687, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1842, 0, 30, 138.475, 149.01, 2.36104, 0.991863, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1843, 0, 30, 149.369, 185.0151, 4.766237, 2.841442, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1844, 0, 30, 153.044, 67.5983, 7.01039, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1845, 0, 30, 163.8064, 147.8498, 3.819191, 5.859236, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1846, 0, 30, 173.9194, 172.6678, 2.568547, 3.154335, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1847, 0, 30, 195.1936, 96.18621, 16.96146, 0.4845817, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1848, 0, 30, 217.9759, 110.77400, 15.760299, 4.567930, 120, 120, 2, 1), -- creature_spawn_entry
(@CGUID+1849, 0, 30, 232.3547, 82.85602, 17.91818, 2.255911, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1850, 0, 30, 268.001007, 7.750380, 21.261000, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1851, 0, 30, 268.5983, 80.66288, 20.71787, 3.257379, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1852, 0, 30, 288.229004, 44.638302, 16.381201, 0, 300, 300, 2, 1), -- creature_spawn_entry
(@CGUID+1853, 0, 30, 308.9774, 12.46494, 2.297565, 2.615062, 300, 300, 5, 1), -- creature_spawn_entry
(@CGUID+1854, 0, 30, 320.873993, -45.548801, -23.123800, 0, 300, 300, 2, 1), -- creature_spawn_entry
-- (@CGUID+1855 - 1898
(@CGUID+1899, 13959, 30, 40.82042, 103.9332, 21.93791, 4.171337, 300, 300, 0, 2), -- Alterac Yeti
(@CGUID+1900, 13959, 30, -1635.4, -464.938, 52.5766, 2.26893, 300, 300, 0, 2), -- Alterac Yeti
-- Triggers and misc
(@CGUID+1979, 14026, 30, 216.6146, -377.9462, 62.60545, 5.009095, 300, 300, 0, 0), -- Trigger Guse
(@CGUID+1980, 14027, 30, 666.4675, -132.4711, 70.048, 0.08726646, 300, 300, 0, 0), -- Trigger Mulverick
(@CGUID+1981, 14028, 30, 320.4, -502.6, 71.2, 0, 300, 300, 0, 0), -- Trigger Mulverick
(@CGUID+1982, 14029, 30, -1303.992, -266.8175, 114.3625, 6.091199, 300, 300, 0, 0), -- Trigger Ichman
(@CGUID+1983, 14030, 30, -762.5497, -346.8925, 91.063, 4.799655, 300, 300, 0, 0), -- Trigger Slidore
(@CGUID+1984, 14031, 30, -1225.05, -350.431, 57.7918, 3.595378, 300, 300, 0, 0), -- Trigger Vipore
(@CGUID+1985, 13756, 30, 705.0177, -19.47488, 91.8856, 2.181662, 300, 300, 0, 0), -- PvP Graveyard Credit Marker
(@CGUID+1986, 13756, 30, 703.3907, -18.96691, 91.46259, 4.118977, 300, 300, 0, 0), -- PvP Graveyard Credit Marker
(@CGUID+1987, 13778, 30, 704.947, -18.67008, 91.93361, 2.670354, 300, 300, 0, 0), -- PvP Tower Credit Marker
(@CGUID+1988, 13778, 30, 704.5838, -18.19016, 91.8703, 6.265732, 300, 300, 0, 0), -- PvP Tower Credit Marker
(@CGUID+1989, 13796, 30, 704.1282, -17.59928, 91.78996, 3.839724, 300, 300, 0, 0), -- PvP Mine Credit Marker
-- (@CGUID+1991, 23472, 30, 5190.468, 2906.853, 410.2329, 5.375614, 300, 300, 0, 0), -- World Trigger (Large AOI, Not Immune PC/NPC) (Adjusted for classic)
-- (@CGUID+1992, 19871, 30, 5276.769, 3051.355, 438.5827, 3.211406, 300, 300, 0, 0), -- World Trigger (Not Immune NPC) (Adjusted for classic)
-- (@CGUID+1993, 19871, 30, 5159.208, 2938.436, 439.9297, 0.6457718, 300, 300, 0, 0), -- World Trigger (Not Immune NPC) (Adjusted for classic)
(@CGUID+1994, 15214, 30, 1623.939, -96.56581, 12.50112, 4.485496, 300, 300, 0, 0), -- Invisible Stalker
-- (@CGUID+1995, 23472, 30, 1441.079, -240.5939, 35.34715, 4.031711, 300, 300, 0, 0), -- World Trigger (Large AOI, Not Immune PC/NPC) (Adjusted for classic)
-- (@CGUID+1996, 23472, 30, 1193.757, 69.94054, 58.1295, 2.495821, 300, 300, 0, 0), -- World Trigger (Large AOI, Not Immune PC/NPC) (Adjusted for classic)
(@CGUID+1997, 15214, 30, 1230.2, -67.94097, 83.77162, 4.08407, 300, 300, 0, 0), -- Invisible Stalker
-- (@CGUID+1998, 23472, 30, 1043.523, -87.85069, 87.19695, 2.96706, 300, 300, 0, 0), -- World Trigger (Large AOI, Not Immune PC/NPC) (Adjusted for classic)
-- (@CGUID+1999, 23472, 30, 1227.886, -235.4575, 60.11116, 3.403392, 300, 300, 0, 0), -- World Trigger (Large AOI, Not Immune PC/NPC) (Adjusted for classic)
-- (@CGUID+2000, 22515, 30, 711.0102, -13.61388, 50.21867, 4.276057, 300, 300, 0, 0), -- World Trigger
(@CGUID+2001, 14848, 30, 699.2739, -17.63607, 90.39349, 3.473205, 300, 300, 0, 0), -- Herald
(@CGUID+2002, 14848, 30, -1357.466, -253.098, 120.9885, 5.131268, 300, 300, 0, 0), -- Herald
(@CGUID+2003, 14848, 30, -539.2852, -168.2434, 115.0156, 1.53589, 300, 300, 2, 1), -- Herald
(@CGUID+2004, 14848, 30, -48.4094, -288.8058, 55.51976, 0.1745329, 300, 300, 2, 1), -- Herald
(@CGUID+2005, 10981, 30, -1342.699951, -461.966003, 50.091599, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2006, 10981, 30, -1324.959961, -508.804993, 51.465401, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2007, 10981, 30, -1304.920044, -557.870972, 52.193199, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2008, 10981, 30, -1251.709961, -476.122986, 49.991798, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2009, 10981, 30, -1223.199951, -556.940002, 52.294102, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2010, 10981, 30, -1191.520020, -509.752991, 49.966675, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2011, 10981, 30, -1165.000000, -543.835999, 52.289799, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2012, 10981, 30, -1124.560059, -562.375977, 50.599400, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2013, 10981, 30, -1088.67, -350.344, 54.2678, 0, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2014, 10981, 30, -1084.4, -418.69, 53.4691, 6.22125, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2015, 10981, 30, -1066.709961, -454.342010, 51.158600, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2016, 10981, 30, -1048.979980, -549.120972, 48.297901, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2017, 10981, 30, -1045.599976, -489.959991, 44.883999, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2018, 10981, 30, -1027.55, -399.984, 51.5779, 3.01596, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2019, 10981, 30, -1012.460022, -513.583984, 42.625900, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2020, 10981, 30, -949.271, -399.401, 49.4849, 3.82078, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2021, 10981, 30, -944.112976, -473.079987, 43.250099, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2022, 10981, 30, -941.841003, -425.109009, 48.714500, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2023, 10981, 30, -904.5, -289.81500244140625, 65.12220001220703, 5.7846999168396, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2024, 10981, 30, -881.015, -424.764, 41.8941, 0.274182, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2025, 10981, 30, -864.332, -465.703, 46.8697, 1.83609, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2026, 10981, 30, -848.151, -456.902, 47.3774, 1.04199, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2027, 10981, 30, -843.437988, -307.425995, 54.575199, 0, 300, 300, 15, 1), -- Frostwolf
(@CGUID+2028, 10981, 30, -558.4550170898438, -198.76800537109375, 58.175498962402344, 4.979459762573242, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2029, 10981, 30, -558.169006, -490.595001, 77.723999, 0, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2030, 10981, 30, -481.242004, -194.218002, 55.641998, 0, 300, 300, 10, 1), -- Frostwolf
(@CGUID+2031, 10990, 30, -120.11, -381.753, 12.805, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2032, 10990, 30, -62.379002, -186.817993, 21.383200, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2033, 10990, 30, -60.908600, -508.170013, 43.873299, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2034, 10990, 30, 105.457, -328.949, 38.7395, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2035, 10990, 30, 165.435, -407.63, 45.1815, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2036, 10990, 30, 229.486, -424.403, 39.4983, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2037, 10990, 30, 258.140991, -258.549988, -42.869202, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2038, 10990, 30, 295.195007, -294.390991, -36.722599, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2039, 10990, 30, 313.576996, -105.193001, -42.862301, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2040, 10990, 30, 325.911987, -171.160995, -27.773500, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2041, 10990, 30, 336.29, -375.21, -1.99792, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2042, 10990, 30, 356.085999, -219.764999, -34.560600, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2043, 10990, 30, 360.928009, -124.360001, -22.465599, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2044, 10990, 30, 384.059, -351.295, -27.9058, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2045, 10990, 30, 402.760010, -303.045990, -42.862301, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2046, 10990, 30, 418.837006, -219.438995, -23.088699, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2047, 10990, 30, 450.322, -318.41, -37.9495, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2048, 10990, 30, 451.420990, -117.559998, 5.270170, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2049, 10990, 30, 460.606995, -192.380005, -4.123490, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2050, 10990, 30, 463.350006, -154.587006, 11.539900, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2051, 10990, 30, 476.089996, -455.269012, 41.010300, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2052, 10990, 30, 483.260010, -122.808998, 12.102700, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2053, 10990, 30, 486.533997, -231.292999, 4.387120, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2054, 10990, 30, 491.290009, -169.300003, 17.525900, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2055, 10990, 30, 494.329010, -71.143700, 5.715390, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2056, 10990, 30, 509.561005, -204.636002, 2.757640, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2057, 10990, 30, 511.210999, -477.648010, 58.187698, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2058, 10990, 30, 517.279, -297.652, -9.46027, 0, 300, 300, 15, 1), -- Alterac Ram
(@CGUID+2059, 10990, 30, 701.9, -260.469, 26.0565, 0, 300, 300, 15, 1); -- Alterac Ram

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 10986 FROM `creature` WHERE `guid` BETWEEN @CGUID+1826 AND @CGUID+1854; -- Snowblind Harpy
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11675 FROM `creature` WHERE `guid` BETWEEN @CGUID+1826 AND @CGUID+1854; -- Snowblind Windcaller

INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 46, 0 FROM `creature` WHERE `id` = 13078;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 50, 0 FROM `creature` WHERE `id` IN (13080,13098,13396,13552,13553,13554,13555,13556,13557) AND `map` = 30; -- North Mine - Alliance Control (c.id 13078)
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 46, 1 FROM `creature` WHERE `id` = 13079;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 50, 1 FROM `creature` WHERE `id` IN (13081,13099,13397,13540,13541,13542,13543,13544,13545) AND `map` = 30; -- North Mine - Horde Control (c.id 13079)
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 46, 2 FROM `creature` WHERE `id` = 11657;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 50, 2 FROM `creature` WHERE `id` IN (10987,11599,11600,11601,11602) AND `map` = 30; -- North Mine - Neutral Control (c.id 11657)

INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 47, 0 FROM `creature` WHERE `id` = 13086;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 51, 0 FROM `creature` WHERE `id` IN (13087,13096,13317,13546,13547,13548,13549,13550,13551) AND `map` = 30; -- South Mine - Alliance Control (c.id 13086)
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 47, 1 FROM `creature` WHERE `id` = 13088;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 51, 1 FROM `creature` WHERE `id` IN (13089,13097,13316,13534,13535,13536,13537,13538,13539) AND `map` = 30; -- South Mine - Horde Control (c.id 13088)
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 47, 2 FROM `creature` WHERE `id` = 11677;
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) SELECT `guid`, 51, 2 FROM `creature` WHERE `id` IN (10982,11603,11604,11605,11606) AND `map` = 30; -- South Mine - Neutral Control (c.id 11677)

-- classic ONLY
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+3001, 14285, 30, -861.46801757812500000000, -573.09497070312500000000, 57.65760040283203000000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Battleguard
(@CGUID+3002, 14282, 30, -859.70697021484380000000, -570.81097412109380000000, 57.66260147094726600000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Bloodhound Patrol
(@CGUID+3003, 14282, 30, -863.92199707031250000000, -573.41601562500000000000, 57.66640090942383000000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Bloodhound Patrol
(@CGUID+3004, 14285, 30, -732.60998535156250000000, -691.92901611328120000000, 50.89630126953125000000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Battleguard
(@CGUID+3005, 14282, 30, -730.97802734375000000000, -690.54797363281250000000, 50.88349914550781000000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Bloodhound Patrol
(@CGUID+3006, 14282, 30, -730.72497558593750000000, -689.15002441406250000000, 50.80289840698242000000, 0.00000000000000000000, 300, 300, 0, 0), -- Frostwolf Bloodhound Patrol

-- Further
(@CGUID+3007, 13137, 30, -637.59899902343750000000, -373.80599975585940000000, 61.16059875488281000000, 5.82940006256103500000, 604800, 604800, 0, 0), -- Lieutenant Rugba
(@CGUID+3008, 13138, 30, 80.2742, -413.037, 43.12450027465820000000, 49.1795, 604800, 604800, 0, 0), -- Lieutenant Spencer
(@CGUID+3009, 13139, 30, -159.406, -458.363, 40.4791, 1.25664, 604800, 604800, 0, 0), -- Commander Randolph
(@CGUID+3010, 13140, 30, -571.08099365234380000000, -263.75100708007810000000, 75.09200286865234000000, 5.41052007675170900000, 604800, 604800, 0, 0), -- Commander Dardosh
(@CGUID+3011, 13143, 30, -610.15600585937500000000, -404.24398803710940000000, 60.28269958496094000000, 2.98450994491577150000, 604800, 604800, 0, 0), -- Lieutenant Stronghoof
(@CGUID+3012, 13144, 30, -498.92800903320310000000, -195.03799438476562000000, 57.54840087890625000000, 6.14355993270874000000, 604800, 604800, 0, 0), -- Lieutenant Vol'talar
(@CGUID+3013, 13145, 30, -579.18402099609380000000, -308.31399536132810000000, 46.80270004272461000000, 0.00000000000000000000, 604800, 604800, 0, 4), -- Lieutenant Grummus
(@CGUID+3014, 13146, 30, -731.03601074218750000000, -344.06799316406250000000, 66.68530273437500000000, 0.00000000000000000000, 604800, 604800, 0, 4), -- Lieutenant Murp
(@CGUID+3015, 13147, 30, -491.38400268554690000000, -176.36000061035156000000, 57.53519821166992000000, 5.96902990341186500000, 604800, 604800, 0, 0), -- Lieutenant Lewis
(@CGUID+3016, 13152, 30, -1090.31994628906250000000, -349.62298583984375000000, 54.64469909667969000000, 0.03490659967064857500, 604800, 604800, 0, 0), -- Commander Malgor
(@CGUID+3017, 13153, 30, -1406.13, -313.233, 89.3647, 0.139626, 604800, 604800, 0, 0), -- Commander Mulfort
(@CGUID+3018, 13154, 30, -764.65399169921880000000, -355.08499145507810000000, 90.88480377197266000000, 1.13445997238159180000, 604800, 604800, 0, 0), -- Commander Louis Philips
(@CGUID+3019, 13296, 30, 9.62153, -318.631, 17.1601, 6.14356, 604800, 604800, 0, 0), -- Lieutenant Largent
(@CGUID+3020, 13297, 30, 75.567902, -392.531006, 45.155300, 0, 604800, 604800, 0, 4), -- Lieutenant Stouthandle
(@CGUID+3021, 13298, 30, 14.7054, -278.976, 16.1597, 6.10865, 604800, 604800, 0, 0), -- Lieutenant Greywand
(@CGUID+3022, 13299, 30, 173.699997, -403.769012, 42.668301, 0, 604800, 604800, 0, 4), -- Lieutenant Lonadin
(@CGUID+3023, 13300, 30, -110.296997, -541.583008, 45.447300, 0, 604800, 604800, 0, 4), -- Lieutenant Mancuso
(@CGUID+3024, 13318, 30, 595.380981, -87.928398, 39.291000, 0, 604800, 604800, 0, 4), -- Commander Mortimer
(@CGUID+3025, 13319, 30, 672.408, -286.799, 29.7551, 3.61283, 604800, 604800, 0, 0), -- Commander Duffy
(@CGUID+3026, 13320, 30, 214.099, -373.896, 56.4709, 2.26893, 604800, 604800, 0, 0), -- Commander Karl Philips
(@CGUID+3027, 13446, 30, -256.5013, -415.4905, 17.6300, 4.65672016143798800000, 600, 600, 0, 0); -- Field Marshal Teravaine

-- Potential Prenerf Spawns Spawn Locations !Wrong Entrys!
-- (@CGUID+XXX, 12047, 30, 101.43, -390.854, 45.1353, 0.351658, 1290, 1290, 5, 1), -- Stormpike Mountaineer
-- (51911, 12050, 30, -46.10469818115234400000, -277.77600097656250000000, 15.56449985504150400000, 1.36669003963470460000, 430, 430, 0, 0); -- Stormpike Defender
-- (51912, 12050, 30, -29.46290016174316400000, -280.47601318359375000000, 15.56449985504150400000, 1.47031998634338380000, 430, 430, 0, 0); -- Stormpike Defender
-- (51913, 12050, 30, -7.22618007659912100000, -289.70700073242190000000, 15.56410026550293000000, 4.65556001663208000000, 430, 430, 0, 0); -- Stormpike Defender
-- (51914, 12050, 30, -49.90330123901367000000, -299.55300903320310000000, 15.56449985504150400000, 4.57781982421875000000, 430, 430, 0, 0); -- Stormpike Defender
-- (51915, 12050, 30, -9.20145988464355500000, -300.87899780273440000000, 15.56410026550293000000, 1.43394994735717770000, 430, 430, 0, 0); -- Stormpike Defender
-- (51916, 12050, 30, -33.23820114135742000000, -302.79800415039060000000, 15.56449985504150400000, 4.49146986007690400000, 430, 430, 0, 0); -- Stormpike Defender
-- (51917, 12050, 30, -49.62879943847656000000, -288.50698852539060000000, 15.56449985504150400000, 6.05312013626098600000, 430, 430, 0, 0); -- Stormpike Defender
-- (51918, 12051, 30, -554.93298339843750000000, -174.87600708007812000000, 57.95629882812500000000, 0.46565499901771545000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (51919, 12051, 30, -536.28002929687500000000, -182.78399658203125000000, 57.95190048217773400000, 4.85222005844116200000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (51920, 12051, 30, -524.85900878906250000000, -159.14999389648438000000, 57.94689941406250000000, 0.46147400140762330000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (51921, 12051, 30, -504.28900146484375000000, -187.98599243164062000000, 57.87779998779297000000, 5.87226009368896500000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (51922, 12051, 30, -555.05200195312500000000, -160.85299682617188000000, 57.95690155029297000000, 5.95877981185913100000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (51923, 12051, 30, -545.04199218750000000000, -150.99899291992188000000, 57.95679855346680000000, 4.92367982864379900000, 430, 430, 0, 0); -- Frostwolf Legionnaire
-- (@CGUID+XXX, 12052, 30, -461.106, -355.693, 31.0315, 5.24885, 430, 430, 5, 1), -- Frostwolf Warrior
-- (@CGUID+XXX, 12052, 30, -491.932, -338.25, 32.315, 2.65704, 430, 430, 5, 1), -- Frostwolf Warrior
-- (@CGUID+XXX, 12053, 30, -1286.08, -292.165, 89.4414, 0.13892, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1209.79, -258.971, 72.807, 6.04762, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1419.36, -322.491, 89.0562, 0.54054, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1336.7, -292.145, 90.9146, 3.28446, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1290.83, -267.808, 114.151, 0.155989, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1159.49, -356.846, 51.8699, 0.276326, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1304.12, -270.546, 114.139, 3.52747, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1421.74, -318.38, 89.1177, 0.516545, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -500.359, -177.578, 57.8746, 5.89323, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1162.4, -352.024, 51.857, 3.45484, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1304.99, -265.518, 114.151, 3.2484, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1222.15, -362.484, 57.8358, 4.79095, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1357.27, -289.823, 91.5309, 5.21118, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1161.1, -348.035, 52.0591, 6.07008, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1314.1, -265.656, 91.6178, 3.33955, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1217.35, -361.464, 57.2907, 4.81431, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1207.97, -249.112, 73.0852, 5.84621, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1312.64, -276.64, 91.2948, 3.51738, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12053, 30, -1344.07, -284.766, 91.1725, 4.98263, 430, 430, 5, 1), -- Frostwolf Guardian
-- (@CGUID+XXX, 12127, 30, 631.399, -189.692, 38.713, 3.286891, 430, 430, 0, 0), -- Stormpike Guardsman
-- (12127, 30, 613.594, -152.993, 33.4517, 5.23599);
-- (12127, 30, 615.326, -107.738, 39.4461, 0.401426);
-- (12127, 30, 624.137, -151.742, 33.4517, 4.36332);
-- (12127, 30, 630.249, -273.453, 30.2169, 5.39307);
-- (12127, 30, 636.908, -274.706, 30.2716, 2.79253);
-- (12127, 30, 638.376, -274.26, 30.3459, 3.29867);
-- (12127, 30, 641.985, -271.863, 30.5436, 3.9619);
-- (12127, 30, 646.041, -106.446, 49.4266, 3.82227);
-- (52033, 12127, 30, 623.19000244140620000000, -151.59300231933594000000, 33.36840057373047000000, 1.59725999832153320000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52034, 12127, 30, 624.47302246093750000000, -232.80400085449220000000, 37.47269821166992000000, 0.15175299346446990000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52035, 12127, 30, 723.95501708984380000000, -21.53709983825683600000, 50.62129974365234400000, 3.47102999687194820000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52036, 12127, 30, 637.59600830078120000000, -230.50799560546875000000, 37.50799942016601600000, 3.31479001045227050000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52037, 12127, 30, 647.04199218750000000000, -108.81900024414062000000, 49.57540130615234400000, 2.84764003753662100000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52038, 12127, 30, 637.60699462890620000000, -54.65549850463867000000, 42.29769897460937500000, 2.87433004379272460000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52039, 12127, 30, 660.40600585937500000000, -36.63790130615234400000, 49.54869842529297000000, 3.33393001556396500000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52040, 12127, 30, 656.25701904296880000000, -22.39259910583496000000, 49.56179809570312500000, 3.35980010032653800000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52041, 12127, 30, 645.94500732421880000000, -270.98300170898440000000, 30.13290023803711000000, 4.85466003417968750000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52042, 12127, 30, 618.01098632812500000000, -191.65199279785156000000, 38.71500015258789000000, 0.17126399278640747000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52043, 12127, 30, 646.10198974609380000000, -102.44400024414062000000, 49.58200073242187500000, 2.96778011322021500000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52044, 12127, 30, 717.60699462890620000000, -0.56432098150253300000, 50.62129974365234400000, 3.63749003410339360000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (52045, 12127, 30, 627.70397949218750000000, -272.22799682617190000000, 30.13360023498535000000, 4.89551019668579100000, 430, 430, 0, 0); -- Stormpike Guardsman
-- (150089, 12127, 30, 446.16299438476560000000, -377.11898803710940000000, -1.12724995613098140000, 0.20952600240707397000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150090, 12127, 30, 549.34802246093750000000, -399.25399780273440000000, 53.35369873046875000000, 3.24728989601135250000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150091, 12127, 30, 549.80102539062500000000, -401.21701049804690000000, 53.83050155639648400000, 3.24728989601135250000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150092, 12127, 30, 192.70399475097656000000, -406.87399291992190000000, 42.91830062866211000000, 6.10695981979370100000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150093, 12127, 30, 441.30499267578125000000, -435.76501464843750000000, 28.23850059509277300000, 2.14472007751464840000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150094, 12127, 30, 192.98199462890625000000, -404.89099121093750000000, 43.01319885253906000000, 6.10610008239746100000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150096, 12127, 30, 446.03500366210940000000, -375.10400390625000000000, -1.12724995613098140000, 0.21032999455928802000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150098, 12127, 30, 610.73999023437500000000, -331.58499145507810000000, 30.80209922790527300000, 5.14252996444702150000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150099, 12127, 30, 609.81500244140620000000, -329.77499389648440000000, 30.92709922790527300000, -2.38828992843627930000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (150101, 12127, 30, 443.33700561523440000000, -435.28298950195310000000, 28.68420028686523400000, 2.13768005371093750000, 120, 120, 0, 0); -- Stormpike Guardsman
-- (53112, 13151, 30, -325.45199584960940000000, -631.49499511718750000000, 121.55400085449219000000, 0.62437701225280760000, 490, 490, 0, 0); -- Syndicate Master Ryson
-- (@CGUID+XXX, 13325, 30, 99.9783, -312.868, 34.4257, 5.25954, 430, 430, 0, 0), -- Seasoned Mountaineer
-- (@CGUID+XXX, 13331, 30, 676.381, -31.9315, 50.6192, 1.8439, 610, 610, 5, 1), -- Veteran Defender
-- (@CGUID+XXX, 13331, 30, 704.814, -38.8323, 50.6213, 1.93984, 610, 610, 5, 1), -- Veteran Defender
-- (@CGUID+XXX, 13331, 30, 692.081, 3.14777, 50.6212, 5.80163, 610, 610, 5, 1), -- Veteran Defender
-- (@CGUID+XXX, 13331, 30, 671.829, -17.7163, 50.6192, 5.09153, 610, 610, 5, 1), -- Veteran Defender
-- (@CGUID+XXX, 13335, 30, 141.547, -367.192, 45.7941, 5.92711, 430, 430, 0, 0), -- Veteran Mountaineer
-- (@CGUID+XXX, 13422, 30, 700.033, -13.9355, 50.1353, 0.238083, 430, 430, 5, 1), -- Champion Defender
-- (@CGUID+XXX, 13422, 30, 701.632, -19.6478, 50.1353, 0.423632, 430, 430, 5, 1), -- Champion Defender
-- (53623, 13425, 30, -1189.04003906250000000000, -355.77301025390625000000, 53.29660034179687500000, 5.88980007171630900000, 430, 430, 5, 1); -- Champion Legionnaire
-- (53624, 13425, 30, -1186.78002929687500000000, -351.52301025390625000000, 53.15890121459961000000, 5.94941997528076200000, 430, 430, 5, 1); -- Champion Legionnaire
-- (@CGUID+XXX, 13426, 30, -53.9927, -495.938, 44.0359, 2.64533, 430, 430, 5, 1), -- Champion Mountaineer
-- (@CGUID+XXX, 13426, 30, -96.1053, -533.749, 45.0986, 3.73703, 430, 430, 5, 1), -- Champion Mountaineer
-- (@CGUID+XXX, 13428, 30, -285.642, -136.171, 13.043, 2.66582, 430, 430, 5, 1), -- Champion Warrior
-- (@CGUID+XXX, 13428, 30, -260.623, -154.529, 13.1007, 4.98033, 430, 430, 5, 1), -- Champion Warrior
-- (@CGUID+XXX, 13428, 30, -273.385, -156.281, 13.1007, 4.90028, 430, 430, 5, 1), -- Champion Warrior
-- (@CGUID+XXX, 13428, 30, -269.546, -147.809, 13.1007, 2.23385, 430, 430, 5, 1), -- Champion Warrior
-- (53652, 13525, 30, -1196.45996093750000000000, -346.49899291992190000000, 53.47909927368164000000, 5.62613010406494100000, 490, 490, 5, 1); -- Seasoned Commando
-- (53653, 13525, 30, -1199.70996093750000000000, -349.06600952148440000000, 53.47909927368164000000, 4.95451021194458000000, 490, 490, 5, 1); -- Seasoned Commando
-- (53655, 13536, 30, -852.52801513671880000000, -86.96630096435547000000, 68.51409912109375000000, 4.09034013748168950000, 430, 430, 5, 1); -- Champion Coldmine Guard
-- (53656, 13536, 30, -991.14801025390620000000, -261.65100097656250000000, 66.08049774169922000000, 0.26264101266860960000, 430, 430, 5, 1); -- Champion Coldmine Guard
-- (53657, 13539, 30, -850.34301757812500000000, -89.49530029296875000000, 68.47989654541016000000, 4.39584016799926800000, 430, 430, 0, 0); -- Champion Coldmine Surveyor
-- (53658, 13545, 30, 956.45800781250000000000, -448.20999145507810000000, 56.86320114135742000000, 2.54314994812011700000, 430, 430, 0, 0); -- Champion Irondeep Raider
-- (53660, 13546, 30, -988.58599853515620000000, -259.48400878906250000000, 65.46440124511719000000, 0.35070300102233887000, 430, 430, 0, 0); -- Seasoned Coldmine Explorer
-- (53661, 13548, 30, -1028.56005859375000000000, -362.43099975585940000000, 54.19919967651367000000, 5.09291982650756800000, 430, 430, 0, 0); -- Champion Coldmine Explorer
-- (53662, 13551, 30, -1009.54998779296880000000, -353.44299316406250000000, 56.55899810791015600000, 4.82275009155273400000, 430, 430, 0, 0); -- Champion Coldmine Invader
-- (53663, 13554, 30, 883.62500000000000000000, -445.01901245117190000000, 54.59709930419922000000, 2.45391011238098140000, 430, 430, 0, 0); -- Champion Irondeep Guard
-- (53664, 13554, 30, 875.56097412109380000000, -448.31201171875000000000, 54.60100173950195000000, 1.37729001045227050000, 430, 430, 0, 0); -- Champion Irondeep Guard
-- (53665, 13557, 30, 880.27099609375000000000, -448.09600830078125000000, 54.73619842529297000000, 2.05484008789062500000, 430, 430, 0, 0);  -- Champion Irondeep Surveyor
-- (@CGUID+XXX, 13576, 30, 662.116, -285.804, 29.7976, 3.05254, 490, 490, 0, 0), -- Stormpike Ram Rider
-- (53682, 13618, 30, -1253.71997070312500000000, -605.13397216796880000000, 55.38619995117187500000, 3.10634994506835940000, 430, 430, 0, 0); -- Stabled Frostwolf
-- (53683, 13618, 30, -1268.26000976562500000000, -598.09899902343750000000, 55.38619995117187500000, 6.17372989654541000000, 430, 430, 0, 0); -- Stabled Frostwolf
-- (53684, 13618, 30, -1269.18994140625000000000, -609.81701660156250000000, 55.32770156860351600000, 6.16468000411987300000, 430, 430, 0, 0); -- Stabled Frostwolf
-- (53685, 13618, 30, -1267.93005371093750000000, -592.80700683593750000000, 55.38909912109375000000, 6.23266983032226600000, 430, 430, 0, 0); -- Stabled Frostwolf
-- (53689, 13676, 30, 2.63958001136779800000, -437.79000854492190000000, 44.59149932861328000000, 4.18744993209838900000, 430, 430, 0, 0); -- Stabled Alterac Ram
-- (53690, 13676, 30, -6.28014993667602500000, -451.07400512695310000000, 44.59149932861328000000, 1.00879001617431640000, 430, 430, 0, 0); -- Stabled Alterac Ram
-- (53772, 13959, 30, 2.18373990058898930000, 160.63699340820312000000, 10.02149963378906200000, 0.04475599899888038600, 430, 430, 5, 1); -- Alterac Yeti
-- (53773, 13959, 30, 32.10400009155273400000, 61.65750122070312500000, -0.48587900400161743000, 1.75297999382019040000, 430, 430, 5, 1); -- Alterac Yeti
-- (53774, 13959, 30, 148.34300231933594000000, 66.22339630126953000000, 6.05096006393432600000, 5.92035007476806600000, 430, 430, 5, 1); -- Alterac Yeti
-- (53775, 13959, 30, 71.04160308837890000000, 187.09800720214844000000, 7.40629005432128900000, 4.71952009201049800000, 430, 430, 5, 1); -- Alterac Yeti
-- (53776, 13959, 30, 92.56330108642578000000, 133.90800476074220000000, 3.28235006332397460000, 5.27716016769409200000, 430, 430, 5, 1); -- Alterac Yeti

-- ===========
-- GAMEOBJECTS
-- ===========

REPLACE INTO `gameobject_battleground` (`guid`, `event1`, `event2`) VALUES
(@OGUID+136, 63, 0), -- Alliance - Captain Dead
(@OGUID+137, 63, 0), -- Alliance - Captain Dead
(@OGUID+138, 63, 0), -- Alliance - Captain Dead
(@OGUID+139, 63, 0), -- Alliance - Captain Dead
(@OGUID+140, 63, 0), -- Alliance - Captain Dead
(@OGUID+146, 63, 0), -- Alliance - Captain Dead
(@OGUID+147, 63, 0), -- Alliance - Captain Dead
(@OGUID+148, 63, 0), -- Alliance - Captain Dead
(@OGUID+149, 63, 0), -- Alliance - Captain Dead
(@OGUID+150, 63, 0), -- Alliance - Captain Dead
(@OGUID+191, 254, 0), -- Doors
(@OGUID+192, 254, 0), -- Doors
(@OGUID+28, 8, 1), -- Dunbaldar North - Alliance Control
(@OGUID+32, 8, 1), -- Dunbaldar North - Alliance Control
(@OGUID+179, 8, 2), -- Dunbaldar North - Horde Assaulted
(@OGUID+183, 8, 2), -- Dunbaldar North - Horde Assaulted
(@OGUID+67, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+68, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+69, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+70, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+71, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+72, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+73, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+74, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+75, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+418, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+419, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+420, 8, 3), -- Dunbaldar North - Horde Control
(@OGUID+27, 7, 1), -- Dunbaldar South - Alliance Control
(@OGUID+31, 7, 1), -- Dunbaldar South - Alliance Control
(@OGUID+178, 7, 2), -- Dunbaldar South - Horde Assaulted
(@OGUID+182, 7, 2), -- Dunbaldar South - Horde Assaulted
(@OGUID+57, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+58, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+59, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+60, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+417, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+61, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+62, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+63, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+64, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+65, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+66, 7, 3), -- Dunbaldar South - Horde Control
(@OGUID+156, 0, 0), -- Firstaid Station - Alliance Assaulted
(@OGUID+20, 0, 1), -- Firstaid Station - Alliance Control
(@OGUID+163, 0, 2), -- Firstaid Station - Horde Assaulted
(@OGUID+13, 0, 3), -- Firstaid Station - Horde Control
(@OGUID+37, 13, 0), -- Frostwolf east Tower - Alliance Assaulted
(@OGUID+188, 13, 0), -- Frostwolf east Tower - Alliance Assaulted
(@OGUID+116, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+117, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+118, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+119, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+120, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+121, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+122, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+123, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+124, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+125, 13, 1), -- Frostwolf east Tower - Alliance Control
(@OGUID+41, 13, 3), -- Frostwolf east Tower - Horde Control
(@OGUID+45, 13, 3), -- Frostwolf east Tower - Horde Control
(@OGUID+161, 5, 0), -- Frostwolf Grave - Alliance Assaulted
(@OGUID+25, 5, 1), -- Frostwolf Grave - Alliance Control
(@OGUID+168, 5, 2), -- Frostwolf Grave - Horde Assaulted
(@OGUID+18, 5, 3), -- Frostwolf Grave - Horde Control
(@OGUID+162, 6, 0), -- Frostwolf Hut - Alliance Assaulted
(@OGUID+26, 6, 1), -- Frostwolf Hut - Alliance Control
(@OGUID+169, 6, 2), -- Frostwolf Hut - Horde Assaulted
(@OGUID+19, 6, 3), -- Frostwolf Hut - Horde Control
(@OGUID+38, 14, 0), -- Frostwolf west Tower - Alliance Assaulted
(@OGUID+189, 14, 0), -- Frostwolf west Tower - Alliance Assaulted
(@OGUID+126, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+127, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+128, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+129, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+130, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+131, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+132, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+133, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+134, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+135, 14, 1), -- Frostwolf west Tower - Alliance Control
(@OGUID+42, 14, 3), -- Frostwolf west Tower - Horde Control
(@OGUID+46, 14, 3), -- Frostwolf west Tower - Horde Control
(@OGUID+141, 64, 0), -- Horde - Captain Dead
(@OGUID+142, 64, 0), -- Horde - Captain Dead
(@OGUID+143, 64, 0), -- Horde - Captain Dead
(@OGUID+144, 64, 0), -- Horde - Captain Dead
(@OGUID+145, 64, 0), -- Horde - Captain Dead
(@OGUID+151, 64, 0), -- Horde - Captain Dead
(@OGUID+152, 64, 0), -- Horde - Captain Dead
(@OGUID+153, 64, 0), -- Horde - Captain Dead
(@OGUID+154, 64, 0), -- Horde - Captain Dead
(@OGUID+155, 64, 0), -- Horde - Captain Dead
(@OGUID+160, 4, 0), -- Iceblood Grave - Alliance Assaulted
(@OGUID+24, 4, 1), -- Iceblood Grave - Alliance Control
(@OGUID+167, 4, 2), -- Iceblood Grave - Horde Assaulted
(@OGUID+17, 4, 3), -- Iceblood Grave - Horde Control
(@OGUID+35, 11, 0), -- Iceblood Tower - Alliance Assaulted
(@OGUID+186, 11, 0), -- Iceblood Tower - Alliance Assaulted
(@OGUID+96, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+97, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+98, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+99, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+100, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+101, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+102, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+103, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+104, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+105, 11, 1), -- Iceblood Tower - Alliance Control
(@OGUID+39, 11, 3), -- Iceblood Tower - Horde Control
(@OGUID+43, 11, 3), -- Iceblood Tower - Horde Control
(@OGUID+29, 9, 1), -- Icewing Bunker - Alliance Control
(@OGUID+33, 9, 1), -- Icewing Bunker - Alliance Control
(@OGUID+180, 9, 2), -- Icewing Bunker - Horde Assaulted
(@OGUID+184, 9, 2), -- Icewing Bunker - Horde Assaulted
(@OGUID+76, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+77, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+78, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+79, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+80, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+81, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+82, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+83, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+84, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+85, 9, 3), -- Icewing Bunker - Horde Control
(@OGUID+159, 3, 0), -- Snowfall Grave - Alliance Assaulted
(@OGUID+170, 3, 0), -- Snowfall Grave - Alliance Assaulted
(@OGUID+171, 3, 0), -- Snowfall Grave - Alliance Assaulted
(@OGUID+172, 3, 0), -- Snowfall Grave - Alliance Assaulted
(@OGUID+173, 3, 0), -- Snowfall Grave - Alliance Assaulted
(@OGUID+23, 3, 1), -- Snowfall Grave - Alliance Control
(@OGUID+49, 3, 1), -- Snowfall Grave - Alliance Control
(@OGUID+50, 3, 1), -- Snowfall Grave - Alliance Control
(@OGUID+51, 3, 1), -- Snowfall Grave - Alliance Control
(@OGUID+52, 3, 1), -- Snowfall Grave - Alliance Control
(@OGUID+166, 3, 2), -- Snowfall Grave - Horde Assaulted
(@OGUID+174, 3, 2), -- Snowfall Grave - Horde Assaulted
(@OGUID+175, 3, 2), -- Snowfall Grave - Horde Assaulted
(@OGUID+176, 3, 2), -- Snowfall Grave - Horde Assaulted
(@OGUID+177, 3, 2), -- Snowfall Grave - Horde Assaulted
(@OGUID+16, 3, 3), -- Snowfall Grave - Horde Control
(@OGUID+53, 3, 3), -- Snowfall Grave - Horde Control
(@OGUID+54, 3, 3), -- Snowfall Grave - Horde Control
(@OGUID+55, 3, 3), -- Snowfall Grave - Horde Control
(@OGUID+56, 3, 3), -- Snowfall Grave - Horde Control
(@OGUID+190, 3, 5), -- Snowfall Grave - Neutral Control
(@OGUID+30, 10, 1), -- Stoneheart Bunker - Alliance Control
(@OGUID+34, 10, 1), -- Stoneheart Bunker - Alliance Control
(@OGUID+181, 10, 2), -- Stoneheart Bunker - Horde Assaulted
(@OGUID+185, 10, 2), -- Stoneheart Bunker - Horde Assaulted
(@OGUID+86, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+87, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+88, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+89, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+90, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+91, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+92, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+93, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+94, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+95, 10, 3), -- Stoneheart Bunker - Horde Control
(@OGUID+158, 2, 0), -- Stoneheart Grave - Alliance Assaulted
(@OGUID+22, 2, 1), -- Stoneheart Grave - Alliance Control
(@OGUID+165, 2, 2), -- Stoneheart Grave - Horde Assaulted
(@OGUID+15, 2, 3), -- Stoneheart Grave - Horde Control
(@OGUID+157, 1, 0), -- Stormpike Grave - Alliance Assaulted
(@OGUID+21, 1, 1), -- Stormpike Grave - Alliance Control
(@OGUID+164, 1, 2), -- Stormpike Grave - Horde Assaulted
(@OGUID+14, 1, 3), -- Stormpike Grave - Horde Control
(@OGUID+36, 12, 0), -- Tower Point - Alliance Assaulted
(@OGUID+187, 12, 0), -- Tower Point - Alliance Assaulted
(@OGUID+106, 12, 1), -- Tower Point - Alliance Control
(@OGUID+107, 12, 1), -- Tower Point - Alliance Control
(@OGUID+108, 12, 1), -- Tower Point - Alliance Control
(@OGUID+109, 12, 1), -- Tower Point - Alliance Control
(@OGUID+110, 12, 1), -- Tower Point - Alliance Control
(@OGUID+111, 12, 1), -- Tower Point - Alliance Control
(@OGUID+112, 12, 1), -- Tower Point - Alliance Control
(@OGUID+113, 12, 1), -- Tower Point - Alliance Control
(@OGUID+114, 12, 1), -- Tower Point - Alliance Control
(@OGUID+115, 12, 1), -- Tower Point - Alliance Control
(@OGUID+40, 12, 3), -- Tower Point - Horde Control
(@OGUID+44, 12, 3); -- Tower Point - Horde Control

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 28048, 30, 41.16716384887695312, -426.866058349609375, 44.68276596069335937, 2.783799409866333007, 0, 0, 0.984040617942810058, 0.177943915128707885, 120, 120), -- Wooden Chair
(@OGUID+2, 28049, 30, 39.09878921508789062, -425.746246337890625, 44.68799209594726562, -0.61959218978881835, 0, 0, -0.30486443638801574, 0.952395737171173095, 120, 120), -- Wooden Chair
(@OGUID+3, 28606, 30, 25.757965087890625, -425.8372802734375, 47.63694000244140625, -1.98094844818115234, 0, 0, -0.83628606796264648, 0.548293352127075195, 120, 120), -- Wooden Chair
(@OGUID+4, 28607, 30, 27.67864608764648437, -427.69012451171875, 47.63694000244140625, -2.67908143997192382, 0, 0, 0.973379373550415039, -0.2291998267173767, 120, 120), -- Wooden Chair
(@OGUID+5, 28605, 30, 25.24818038940429687, -433.104461669921875, 47.63694000244140625, 2.382374525070190429, 0, 0, 0.928809583187103271, 0.370557367801666259, 120, 120), -- Wooden Chair
(@OGUID+6, 179384, 30, -145.341384887695312, -444.845672607421875, 26.41629981994628906, -0.05235961452126502, 0, 0, -0.02617681771516799, 0.999657332897186279, 120, 120), -- Chair
(@OGUID+7, 179385, 30, -155.404754638671875, -440.240142822265625, 33.28620147705078125, 2.347468852996826171, 0, 0, 0.922201156616210937, 0.386710554361343383, 120, 120), -- Chair
(@OGUID+8, 179386, 30, -150.786636352539062, -459.829376220703125, 26.41629981994628906, 0.558506906032562255, 0, 0, 0.275638103485107421, 0.961261451244354248, 120, 120), -- Chair
(@OGUID+9, 179387, 30, -153.74835205078125, -438.6392822265625, 33.28620147705078125, -2.8885197639465332, 0, 0, 0.992004930973052978, -0.12619900703430175, 120, 120), -- Chair
(@OGUID+10, 179388, 30, -149.056793212890625, -461.08917236328125, 26.41629981994628906, 1.387538909912109375, 0, 0, 0.639439821243286132, 0.768841147422790527, 120, 120), -- Chair
(@OGUID+11, 179389, 30, -168.342391967773437, -458.40032958984375, 33.28620147705078125, -0.44505864381790161, 0, 0, -0.22069728374481201, 0.975342333316802978, 120, 120), -- Chair
(@OGUID+12, 179390, 30, -142.968017578125, -444.076416015625, 26.41629981994628906, -2.23401975631713867, 0, 0, 0.898793697357177734, -0.4383719265460968, 120, 120), -- Chair
-- 178364 - BG_AV_GO_GY_BANNER_HORDE
(@OGUID+13, 178364, 30, 638.605712890625, -32.1506080627441406, 46.09933853149414062, -1.60570323467254638, 0, 0, 0.719339907169342041, -0.69465827941894531, 0, 0), -- Horde Banner (180101)
(@OGUID+14, 178388, 30, 669.31671142578125, -294.0552978515625, 30.28966903686523437, -0.36651927232742309, 0, 0, 0.182235583662986755, -0.98325490951538085, 0, 0), -- Horde Banner (180101)
(@OGUID+15, 179285, 30, 77.7978515625, -404.695526123046875, 46.91283416748046875, -0.85521155595779418, 0, 0, 0.414693355560302734, -0.90996122360229492, 0, 0), -- Horde Banner (180101)
(@OGUID+16, 179467, 30, -202.622726440429687, -112.551490783691406, 78.49015045166015625, -1.25663685798645019, 0, 0, 0.587785184383392333, -0.80901706218719482, 0, 0), -- Horde Banner (180101)
(@OGUID+17, 179483, 30, -612.671630859375, -396.693267822265625, 60.85839080810546875, 3.089232683181762695, 0, 0, 0.999657332897186279, 0.026176994666457176, 0, 0), -- Horde Banner (180101)
(@OGUID+18, 178393, 30, -1082.5294189453125, -346.5670166015625, 54.97712326049804687, -1.55334317684173583, 0, 0, 0.700909316539764404, -0.71325039863586425, 0, 0), -- Horde Banner (180101)
(@OGUID+19, 179472, 30, -1402.19189453125, -307.467071533203125, 89.44189453125, 0.191986218094825744, 0, 0, 0.095845751464366912, 0.995396196842193603, 0, 0), -- Horde Banner (180101)
-- 178365 - BG_AV_GO_GY_BANNER_ALLIANCE
(@OGUID+20, 179465, 30, 638.59210205078125, -32.4220390319824218, 46.06084442138671875, -1.62315630912780761, 0, 0, 0.725374400615692138, -0.6883544921875, 0, 0), -- Alliance Banner (180100)
(@OGUID+21, 178389, 30, 669.00726318359375, -294.078277587890625, 30.29091072082519531, 2.775073528289794921, 0, 0, 0.983254909515380859, 0.182235524058341979, 0, 0), -- Alliance Banner (180100)
(@OGUID+22, 179284, 30, 77.50444793701171875, -404.58734130859375, 46.78254318237304687, 2.286381244659423828, 0, 0, 0.909961283206939697, 0.414693266153335571, 0, 0), -- Alliance Banner (180100)
(@OGUID+23, 178365, 30, -202.277786254882812, -113.208442687988281, 78.47940826416015625, -1.25663685798645019, 0, 0, 0.587785184383392333, -0.80901706218719482, 0, 0), -- Alliance Banner (180100)
(@OGUID+24, 179481, 30, -612.91387939453125, -396.83831787109375, 60.85839080810546875, 3.106686115264892578, 0, 0, 0.999847710132598876, 0.017452383413910865, 0, 0), -- Alliance Banner (180100)
(@OGUID+25, 178394, 30, -1082.4276123046875, -346.791656494140625, 54.92647552490234375, -1.51843619346618652, 0, 0, 0.6883544921875, -0.72537446022033691, 0, 0), -- Alliance Banner (180100)
(@OGUID+26, 179470, 30, -1402.2095947265625, -307.43115234375, 89.44242095947265625, 0.191986218094825744, 0, 0, 0.095845751464366912, 0.995396196842193603, 0, 0), -- Alliance Banner (180100)
-- BG_AV_GO_BANNER_ALLIANCE = 178925, // control flags
(@OGUID+27, 178925, 30, 553.7794189453125, -78.6565780639648437, 51.93778610229492187, -1.22173047065734863, 0, 0, 0.57357645034790039, -0.81915205717086791, 0, 0), -- Alliance Banner
(@OGUID+28, 178929, 30, 674.0006103515625, -143.12506103515625, 63.6615142822265625, 0.994837701320648193, 0, 0, 0.47715875506401062, 0.878817141056060791, 0, 0), -- Alliance Banner
(@OGUID+29, 178935, 30, 203.238494873046875, -360.26422119140625, 56.38615036010742187, -0.87266474962234497, 0, 0, 0.422618329524993896, -0.90630775690078735, 0, 0), -- Alliance Banner
(@OGUID+30, 178936, 30, -152.433914184570312, -441.61480712890625, 40.3970947265625, -1.93731522560119628, 0, 0, 0.824126124382019042, -0.56640630960464477, 0, 0), -- Alliance Banner
-- // object entries: alliance: 178927; horde contested: 179436
(@OGUID+31, 178927, 30, 557.2266845703125, -86.85205078125, 62.17669677734375, -0.24434597790241241, 0, 0, 0.121869280934333801, -0.99254614114761352, 0, 0), -- [PH] Alliance A1 Tower Banner BIG (180421)
(@OGUID+32, 178932, 30, 679.33917236328125, -136.46783447265625, 73.96262359619140625, -2.16420817375183105, 0, 0, 0.882947564125061035, -0.46947157382965087, 0, 0), -- [PH] Alliance A2 Tower Banner BIG (180421)
(@OGUID+33, 178947, 30, 208.9728240966796875, -365.97125244140625, 66.7409210205078125, -0.24434597790241241, 0, 0, 0.121869280934333801, -0.99254614114761352, 0, 0), -- [PH] Alliance A3 Tower Banner BIG (180421)
(@OGUID+34, 178948, 30, -156.4697265625, -449.953125, 50.668243408203125, -0.24434597790241241, 0, 0, 0.121869280934333801, -0.99254614114761352, 0, 0), -- [PH] Alliance A4 Tower Banner BIG (180421)
-- BG_AV_GO_BANNER_ALLIANCE_CONT = 178940, // contested flags
(@OGUID+35, 178940, 30, -571.85675048828125, -262.790924072265625, 75.00867462158203125, -0.78539824485778808, 0, 0, 0.382683485746383666, -0.92387950420379638, 0, 0), -- Contested Banner
(@OGUID+36, 179453, 30, -768.07525634765625, -362.6295166015625, 90.89485931396484375, 1.151917338371276855, 0, 0, 0.544639050960540771, 0.838670551776885986, 0, 0), -- Contested Banner
(@OGUID+37, 179449, 30, -1302.8995361328125, -316.981109619140625, 113.8671035766601562, 2.007128715515136718, 0, 0, 0.843391478061676025, 0.537299573421478271, 0, 0), -- Contested Banner
(@OGUID+38, 179445, 30, -1297.694580078125, -266.7301025390625, 114.1512222290039062, -2.93215298652648925, 0, 0, 0.994521915912628173, -0.10452850908041, 0, 0), -- Contested Banner
-- BG_AV_GO_BANNER_HORDE = 178943, // control flags
(@OGUID+39, 178946, 30, -571.879638671875, -262.776763916015625, 75.00867462158203125, -0.80285149812698364, 0, 0, 0.39073115587234497, -0.92050486803054809, 0, 0), -- Horde Banner
(@OGUID+40, 178945, 30, -768.0872802734375, -362.66607666015625, 90.89485931396484375, 1.117010712623596191, 0, 0, 0.529919266700744628, 0.848048090934753417, 0, 0), -- Horde Banner
(@OGUID+41, 178944, 30, -1302.8681640625, -316.9683837890625, 113.8671035766601562, 2.007128715515136718, 0, 0, 0.843391478061676025, 0.537299573421478271, 0, 0), -- Horde Banner
(@OGUID+42, 178943, 30, -1297.7154541015625, -266.741485595703125, 114.1512222290039062, -2.96705961227416992, 0, 0, 0.996194720268249511, -0.0871557667851448, 0, 0), -- Horde Banner
-- // object entries: horde: 178955; alliance contested: 179446
(@OGUID+43, 178958, 30, -572.32891845703125, -262.476287841796875, 88.64957427978515625, -0.57595854997634887, 0, 0, 0.284015297889709472, -0.95881974697113037, 0, 0), -- [PH] Horde H4 Tower Banner BIG (180422)
(@OGUID+44, 178957, 30, -768.19903564453125, -363.105255126953125, 104.537200927734375, 0.104719750583171844, 0, 0, 0.052335958927869796, 0.998629510402679443, 0, 0), -- [PH] Horde H3 Tower Banner BIG (180422)
(@OGUID+45, 178956, 30, -1302.73486328125, -316.63031005859375, 127.5031967163085937, 0.122173056006431579, 0, 0, 0.061048541218042373, 0.998134791851043701, 0, 0), -- [PH] Horde H2 Tower Banner BIG (180422)
(@OGUID+46, 178955, 30, -1297.7864990234375, -266.742828369140625, 127.7904205322265625, 0.069813162088394165, 0, 0, 0.034899495542049407, 0.999390840530395507, 0, 0), -- [PH] Horde H1 Tower Banner BIG (180422)
(@OGUID+47, 179024, 30, 63.27116012573242187, 5.837618827819824218, -4.09621810913085937, 2.216568231582641601, 0, 0, 0.894934356212615966, 0.446197777986526489, 120, 120), -- Stormpike Banner
(@OGUID+48, 179025, 30, -1551.8802490234375, -364.1875, 65.593353271484375, -1.95476889610290527, 0, 0, 0.829037606716156005, -0.55919283628463745, 120, 120), -- Frostwolf Banner
-- object entries: alliance: 179044; alliance contested: 179424
(@OGUID+49, 179044, 30, -191.016708374023437, -129.963272094726562, 78.864227294921875, -1.04719769954681396, 0, 0, 0.500000059604644775, -0.8660253882408142, 60, 60), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+50, 179044, 30, -201.284072875976562, -134.570266723632812, 78.84847259521484375, -0.82030475139617919, 0, 0, 0.398749053478240966, -0.91706007719039916, 60, 60), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+51, 179044, 30, -216.212020874023437, -90.7064361572265625, 79.80706024169921875, 1.169370651245117187, 0, 0, 0.551936984062194824, 0.833885848522186279, 60, 60), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+52, 179044, 30, -200.464630126953125, -96.41796875, 79.75870513916015625, 1.361356735229492187, 0, 0, 0.629320383071899414, 0.777145922183990478, 60, 60), -- [PH] Alliance Graveyard Mid Banner BIG
-- object entries: horde: 179064; horde contested: 179425
(@OGUID+53, 179064, 30, -190.94097900390625, -129.869354248046875, 78.93259429931640625, -1.06465089321136474, 0, 0, 0.507538378238677978, -0.86162918806076049, 60, 60), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+54, 179064, 30, -201.443679809570312, -134.444442749023437, 78.9321136474609375, -0.85521155595779418, 0, 0, 0.414693355560302734, -0.90996122360229492, 60, 60), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+55, 179064, 30, -215.740997314453125, -90.9972915649414062, 80.08941650390625, 1.169370651245117187, 0, 0, 0.551936984062194824, 0.833885848522186279, 60, 60), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+56, 179064, 30, -200.429367065429687, -96.5082473754882812, 79.75235748291015625, 1.343903660774230957, 0, 0, 0.622514665126800537, 0.78260815143585205, 60, 60), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+57, 179065, 30, 562.632080078125, -88.1814804077148437, 61.99303054809570312, 0.383972406387329101, 0, 0, 0.190808996558189392, 0.981627166271209716, 0, 0), -- Roaring Flame
(@OGUID+58, 179065, 30, 562.52294921875, -74.5027694702148437, 37.94743728637695312, -0.05235988646745681, 0, 0, 0.026176951825618743, -0.99965733289718627, 0, 0), -- Roaring Flame
(@OGUID+59, 179065, 30, 558.0970458984375, -70.984161376953125, 52.48755645751953125, 0.820304811000823974, 0, 0, 0.398749083280563354, 0.917060077190399169, 0, 0), -- Roaring Flame
(@OGUID+60, 179065, 30, 578.16705322265625, -71.8190689086914062, 38.15139389038085937, 2.722713708877563476, 0, 0, 0.978147625923156738, 0.207911655306816101, 0, 0), -- Roaring Flame
(@OGUID+61, 179065, 30, 556.02777099609375, -94.9242095947265625, 44.8191070556640625, 3.054326057434082031, 0, 0, 0.999048233032226562, 0.043619453907012939, 0, 0), -- Roaring Flame
(@OGUID+62, 179065, 30, 572.45086669921875, -94.3654556274414062, 37.94425201416015625, -1.7278759479522705, 0, 0, 0.760405957698822021, -0.64944803714752197, 0, 0), -- Roaring Flame
(@OGUID+63, 179065, 30, 549.262939453125, -79.364532470703125, 44.8191070556640625, 0.436332345008850097, 0, 0, 0.216439619660377502, 0.976296007633209228, 0, 0), -- Roaring Flame
(@OGUID+64, 179065, 30, 543.5126953125, -94.4005508422851562, 52.48191070556640625, 0.03490658476948738, 0, 0, 0.017452405765652656, 0.999847710132598876, 0, 0), -- Roaring Flame
(@OGUID+65, 179065, 30, 572.1492919921875, -93.7861862182617187, 52.57261276245117187, 0.541052043437957763, 0, 0, 0.267238378524780273, 0.963630437850952148, 0, 0), -- Roaring Flame
(@OGUID+66, 179065, 30, 582.161865234375, -81.2375259399414062, 37.9216461181640625, 0.087266460061073303, 0, 0, 0.043619386851787567, 0.999048233032226562, 0, 0), -- Roaring Flame
(@OGUID+67, 179065, 30, 664.7972412109375, -143.650177001953125, 64.17842864990234375, -0.45378574728965759, 0, 0, 0.224951118230819702, -0.9743700623512268, 0, 0), -- Roaring Flame
(@OGUID+68, 179065, 30, 664.50482177734375, -139.451614379882812, 49.6695556640625, -0.03490668907761573, 0, 0, 0.017452457919716835, -0.99984771013259887, 0, 0), -- Roaring Flame
(@OGUID+69, 179065, 30, 676.06695556640625, -124.319343566894531, 49.67263031005859375, -1.01229083538055419, 0, 0, 0.484809547662734985, -0.87461978197097778, 0, 0), -- Roaring Flame
(@OGUID+70, 179065, 30, 693.0042724609375, -144.025070190429687, 64.1754913330078125, 2.443460941314697265, 0, 0, 0.939692616462707519, 0.342020153999328613, 0, 0), -- Roaring Flame
(@OGUID+71, 179065, 30, 661.1746826171875, -117.690757751464843, 49.64495086669921875, 1.919862151145935058, 0, 0, 0.819152057170867919, 0.57357645034790039, 0, 0), -- Roaring Flame
(@OGUID+72, 179065, 30, 684.4228515625, -146.582138061523437, 63.66624832153320312, 0.994837701320648193, 0, 0, 0.47715875506401062, 0.878817141056060791, 0, 0), -- Roaring Flame
(@OGUID+73, 179065, 30, 682.79083251953125, -127.768608093261718, 62.41549301147460937, 1.099557399749755859, 0, 0, 0.522498548030853271, 0.852640151977539062, 0, 0), -- Roaring Flame
(@OGUID+74, 179065, 30, 674.5762939453125, -147.101181030273437, 56.54253005981445312, -1.60570323467254638, 0, 0, 0.719339907169342041, -0.69465827941894531, 0, 0), -- Roaring Flame
(@OGUID+75, 179065, 30, 655.71905517578125, -126.673286437988281, 49.81383895874023437, 2.809980154037475585, 0, 0, 0.986285626888275146, 0.165047571063041687, 0, 0), -- Roaring Flame
(@OGUID+76, 179065, 30, 231.503143310546875, -356.688140869140625, 42.37038040161132812, 0.296705961227416992, 0, 0, 0.147809401154518127, 0.989015877246856689, 0, 0), -- Roaring Flame
(@OGUID+77, 179065, 30, 224.9886016845703125, -348.175201416015625, 42.56069564819335937, 1.500983238220214843, 0, 0, 0.681998372077941894, 0.731353700160980224, 0, 0), -- Roaring Flame
(@OGUID+78, 179065, 30, 205.7818450927734375, -351.335174560546875, 56.8997955322265625, 1.01229095458984375, 0, 0, 0.48480960726737976, 0.874619722366333007, 0, 0), -- Roaring Flame
(@OGUID+79, 179065, 30, 196.6048736572265625, -369.1871337890625, 56.39142227172851562, 2.460914134979248046, 0, 0, 0.942641496658325195, 0.333806902170181274, 0, 0), -- Roaring Flame
(@OGUID+80, 179065, 30, 210.6187591552734375, -376.9375, 49.26770782470703125, 2.862339973449707031, 0, 0, 0.990268051624298095, 0.139173105359077453, 0, 0), -- Roaring Flame
(@OGUID+81, 179065, 30, 209.6469268798828125, -352.6319580078125, 42.39586639404296875, -0.69813191890716552, 0, 0, 0.342020213603973388, -0.93969261646270751, 0, 0), -- Roaring Flame
(@OGUID+82, 179065, 30, 220.64996337890625, -368.13238525390625, 42.39780807495117187, -0.2617996335029602, 0, 0, 0.130526319146156311, -0.99144482612609863, 0, 0), -- Roaring Flame
(@OGUID+83, 179065, 30, 224.68212890625, -374.031463623046875, 57.06790542602539062, 0.541052043437957763, 0, 0, 0.267238378524780273, 0.963630437850952148, 0, 0), -- Roaring Flame
(@OGUID+84, 179065, 30, 200.2595977783203125, -359.967620849609375, 49.26770782470703125, -2.89724659919738769, 0, 0, 0.992546141147613525, -0.12186928838491439, 0, 0), -- Roaring Flame
(@OGUID+85, 179065, 30, 196.6188201904296875, -378.016265869140625, 56.91305160522460937, 1.01229095458984375, 0, 0, 0.48480960726737976, 0.874619722366333007, 0, 0), -- Roaring Flame
(@OGUID+86, 179065, 30, -155.487518310546875, -437.35589599609375, 33.27962112426757812, 2.600540637969970703, 0, 0, 0.963630437850952148, 0.267238348722457885, 0, 0), -- Roaring Flame
(@OGUID+87, 179065, 30, -163.441085815429687, -454.1876220703125, 33.27962112426757812, 1.93731546401977539, 0, 0, 0.824126183986663818, 0.56640625, 0, 0), -- Roaring Flame
(@OGUID+88, 179065, 30, -143.977218627929687, -445.148223876953125, 26.40972328186035156, -1.86750245094299316, 0, 0, 0.803856909275054931, -0.5948227047920227, 0, 0), -- Roaring Flame
(@OGUID+89, 179065, 30, -135.763992309570312, -464.708343505859375, 26.38227272033691406, 2.251474618911743164, 0, 0, 0.902585268020629882, 0.430511146783828735, 0, 0), -- Roaring Flame
(@OGUID+90, 179065, 30, -154.075515747070312, -466.929046630859375, 41.0635528564453125, -1.86750245094299316, 0, 0, 0.803856909275054931, -0.5948227047920227, 0, 0), -- Roaring Flame
(@OGUID+91, 179065, 30, -149.908203125, -460.331695556640625, 26.40834999084472656, -2.09439492225646972, 0, 0, 0.866025388240814208, -0.50000005960464477, 0, 0), -- Roaring Flame
(@OGUID+92, 179065, 30, -151.637802124023437, -439.521270751953125, 40.37968826293945312, 0.436332345008850097, 0, 0, 0.216439619660377502, 0.976296007633209228, 0, 0), -- Roaring Flame
(@OGUID+93, 179065, 30, -131.300994873046875, -454.904510498046875, 26.57706069946289062, 2.932153224945068359, 0, 0, 0.994521915912628173, 0.10452841967344284, 0, 0), -- Roaring Flame
(@OGUID+94, 179065, 30, -171.291015625, -444.683502197265625, 40.92113113403320312, 2.30383467674255371, 0, 0, 0.913545489311218261, 0.406736612319946289, 0, 0), -- Roaring Flame
(@OGUID+95, 179065, 30, -143.591476440429687, -439.749664306640625, 40.92749404907226562, -1.7278759479522705, 0, 0, 0.760405957698822021, -0.64944803714752197, 0, 0), -- Roaring Flame
(@OGUID+96, 179065, 30, -572.66680908203125, -267.9234619140625, 56.85420989990234375, 2.356194496154785156, 0, 0, 0.923879504203796386, 0.382683426141738891, 0, 0), -- Roaring Flame
(@OGUID+97, 179065, 30, -561.0213623046875, -262.6890869140625, 68.4589080810546875, 1.378810048103332519, 0, 0, 0.636078178882598876, 0.771624624729156494, 0, 0), -- Roaring Flame
(@OGUID+98, 179065, 30, -572.538330078125, -262.649261474609375, 88.61969757080078125, 1.832595705986022949, 0, 0, 0.79335331916809082, 0.608761429786682128, 0, 0), -- Roaring Flame
(@OGUID+99, 179065, 30, -574.77020263671875, -251.450027465820312, 74.94216156005859375, -1.18682420253753662, 0, 0, 0.559193015098571777, -0.82903748750686645, 0, 0), -- Roaring Flame
(@OGUID+100, 179065, 30, -578.625, -267.570953369140625, 68.469573974609375, 0.506145477294921875, 0, 0, 0.250380009412765502, 0.968147635459899902, 0, 0), -- Roaring Flame
(@OGUID+101, 179065, 30, -571.47589111328125, -257.234375, 63.32225418090820312, 3.106686115264892578, 0, 0, 0.999847710132598876, 0.017452383413910865, 0, 0), -- Roaring Flame
(@OGUID+102, 179065, 30, -566.03497314453125, -273.9073486328125, 52.95818328857421875, -0.89011794328689575, 0, 0, 0.430511116981506347, -0.90258526802062988, 0, 0), -- Roaring Flame
(@OGUID+103, 179065, 30, -580.94793701171875, -259.770233154296875, 68.469573974609375, 1.466076612472534179, 0, 0, 0.669130623340606689, 0.743144810199737548, 0, 0), -- Roaring Flame
(@OGUID+104, 179065, 30, -568.31781005859375, -267.099822998046875, 75.00077056884765625, 1.01229095458984375, 0, 0, 0.48480960726737976, 0.874619722366333007, 0, 0), -- Roaring Flame
(@OGUID+105, 179065, 30, -559.6212158203125, -268.5966796875, 52.89863967895507812, 0.052359882742166519, 0, 0, 0.026176949962973594, 0.999657332897186279, 0, 0), -- Roaring Flame
(@OGUID+106, 179065, 30, -776.072265625, -368.04638671875, 84.35575103759765625, 2.635447263717651367, 0, 0, 0.968147635459899902, 0.250379949808120727, 0, 0), -- Roaring Flame
(@OGUID+107, 179065, 30, -777.5635986328125, -368.5211181640625, 90.67014312744140625, 1.727875947952270507, 0, 0, 0.760405957698822021, 0.649448037147521972, 0, 0), -- Roaring Flame
(@OGUID+108, 179065, 30, -765.46051025390625, -357.71142578125, 90.88797760009765625, 0.314159303903579711, 0, 0, 0.156434476375579833, 0.987688362598419189, 0, 0), -- Roaring Flame
(@OGUID+109, 179065, 30, -768.76300048828125, -362.73486328125, 104.6117324829101562, 1.815142273902893066, 0, 0, 0.788010716438293457, 0.615661501884460449, 0, 0), -- Roaring Flame
(@OGUID+110, 179065, 30, -760.35589599609375, -358.895721435546875, 84.35575103759765625, 2.129301786422729492, 0, 0, 0.874619722366333007, 0.484809577465057373, 0, 0), -- Roaring Flame
(@OGUID+111, 179065, 30, -771.96746826171875, -352.8380126953125, 84.34844207763671875, 1.745329260826110839, 0, 0, 0.766044437885284423, 0.642787635326385498, 0, 0), -- Roaring Flame
(@OGUID+112, 179065, 30, -773.3331298828125, -364.652679443359375, 79.23514556884765625, -1.64060950279235839, 0, 0, 0.731353700160980224, -0.68199831247329711, 0, 0), -- Roaring Flame
(@OGUID+113, 179065, 30, -764.10894775390625, -366.0693359375, 70.09340667724609375, 0.383972406387329101, 0, 0, 0.190808996558189392, 0.981627166271209716, 0, 0), -- Roaring Flame
(@OGUID+114, 179065, 30, -767.10284423828125, -350.737030029296875, 68.79332733154296875, 2.809980154037475585, 0, 0, 0.986285626888275146, 0.165047571063041687, 0, 0), -- Roaring Flame
(@OGUID+115, 179065, 30, -760.115478515625, -353.844635009765625, 68.86331939697265625, 1.797689080238342285, 0, 0, 0.78260815143585205, 0.622514665126800537, 0, 0), -- Roaring Flame
(@OGUID+116, 179065, 30, -1304.8658447265625, -304.52490234375, 91.83664703369140625, -0.68067866563796997, 0, 0, 0.333806991577148437, -0.94264143705368041, 0, 0), -- Roaring Flame
(@OGUID+117, 179065, 30, -1301.77392578125, -310.97369384765625, 95.82520294189453125, 0.907571256160736083, 0, 0, 0.438371151685714721, 0.898794054985046386, 0, 0), -- Roaring Flame
(@OGUID+118, 179065, 30, -1305.5775146484375, -320.624725341796875, 102.1660385131835937, -0.55850535631179809, 0, 0, 0.275637358427047729, -0.96126168966293334, 0, 0), -- Roaring Flame
(@OGUID+119, 179065, 30, -1294.2664794921875, -323.467620849609375, 113.8926315307617187, -1.67551600933074951, 0, 0, 0.743144810199737548, -0.66913068294525146, 0, 0), -- Roaring Flame
(@OGUID+120, 179065, 30, -1302.6549072265625, -317.19232177734375, 127.487213134765625, 2.30383467674255371, 0, 0, 0.913545489311218261, 0.406736612319946289, 0, 0), -- Roaring Flame
(@OGUID+121, 179065, 30, -1293.89453125, -313.4776611328125, 107.3280029296875, 1.605702877044677734, 0, 0, 0.71933978796005249, 0.694658398628234863, 0, 0), -- Roaring Flame
(@OGUID+122, 179065, 30, -1312.40673828125, -312.998809814453125, 107.3280029296875, 1.570796370506286621, 0, 0, 0.707106769084930419, 0.707106769084930419, 0, 0), -- Roaring Flame
(@OGUID+123, 179065, 30, -1311.566650390625, -308.079742431640625, 91.7665557861328125, -1.85004889965057373, 0, 0, 0.798635482788085937, -0.6018151044845581, 0, 0), -- Roaring Flame
(@OGUID+124, 179065, 30, -1314.703125, -322.1309814453125, 107.3601531982421875, 0.645771801471710205, 0, 0, 0.317304641008377075, 0.948323667049407958, 0, 0), -- Roaring Flame
(@OGUID+125, 179065, 30, -1304.5982666015625, -310.75384521484375, 113.8587417602539062, -0.40142565965652465, 0, 0, 0.199367895722389221, -0.979924738407135, 0, 0), -- Roaring Flame
(@OGUID+126, 179065, 30, -1308.239990234375, -273.26025390625, 92.05139923095703125, -0.13962635397911071, 0, 0, 0.069756470620632171, -0.99756407737731933, 0, 0), -- Roaring Flame
(@OGUID+127, 179065, 30, -1302.2554931640625, -262.857696533203125, 95.9268951416015625, 0.418879061937332153, 0, 0, 0.207911700010299682, 0.978147625923156738, 0, 0), -- Roaring Flame
(@OGUID+128, 179065, 30, -1297.2769775390625, -267.772613525390625, 126.7559127807617187, 2.234021425247192382, 0, 0, 0.898794054985046386, 0.438371151685714721, 0, 0), -- Roaring Flame
(@OGUID+129, 179065, 30, -1299.0775146484375, -256.889923095703125, 114.1078414916992187, -2.44346094131469726, 0, 0, 0.939692616462707519, -0.34202012419700622, 0, 0), -- Roaring Flame
(@OGUID+130, 179065, 30, -1303.4053955078125, -268.2369384765625, 114.1512069702148437, -1.23918378353118896, 0, 0, 0.580702960491180419, -0.81411552429199218, 0, 0), -- Roaring Flame
(@OGUID+131, 179065, 30, -1304.43408203125, -273.681915283203125, 107.6121063232421875, 0.244346097111701965, 0, 0, 0.121869347989559173, 0.992546141147613525, 0, 0), -- Roaring Flame
(@OGUID+132, 179065, 30, -1309.53369140625, -265.950531005859375, 92.14180755615234375, -2.49582076072692871, 0, 0, 0.948323667049407958, -0.31730467081069946, 0, 0), -- Roaring Flame
(@OGUID+133, 179065, 30, -1295.5533447265625, -263.865081787109375, 105.033172607421875, 0.925024449825286865, 0, 0, 0.446197807788848876, 0.894934356212615966, 0, 0), -- Roaring Flame
(@OGUID+134, 179065, 30, -1294.7120361328125, -281.465728759765625, 107.6638412475585937, -1.50098299980163574, 0, 0, 0.681998312473297119, -0.731353759765625, 0, 0), -- Roaring Flame
(@OGUID+135, 179065, 30, -1289.6929931640625, -259.5211181640625, 107.6121063232421875, -2.19911503791809082, 0, 0, 0.89100658893585205, -0.45399039983749389, 0, 0), -- Roaring Flame
(@OGUID+136, 179065, 30, -3.4092879295349121, -306.287506103515625, 33.3399505615234375, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+137, 179065, 30, -48.6190338134765625, -266.91650390625, 47.8167877197265625, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+138, 179065, 30, -62.9473762512207031, -286.21197509765625, 66.72882843017578125, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+139, 179065, 30, -5.05132389068603515, -325.322967529296875, 38.85361480712890625, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+140, 179065, 30, -64.2676849365234375, -289.411529541015625, 33.46895980834960937, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+141, 179065, 30, -517.05316162109375, -200.4287109375, 80.75904083251953125, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+142, 179065, 30, -514.360595703125, -163.863983154296875, 104.16265869140625, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+143, 179065, 30, -568.03961181640625, -188.706924438476562, 81.549957275390625, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+144, 179065, 30, -501.77484130859375, -151.580947875976562, 81.2026824951171875, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+145, 179065, 30, -509.974517822265625, -191.652023315429687, 83.29779052734375, 0, 0, 0, 0, 1, 0, 0), -- Roaring Flame
(@OGUID+146, 179066, 30, -64.4986953735351562, -289.330078125, 33.46157455444335937, -2.82743334770202636, 0, 0, 0.987688362598419189, -0.15643444657325744, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+147, 179066, 30, -5.98025178909301757, -326.143890380859375, 38.85381698608398437, 0, 0, 0, 0, 1, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+148, 179066, 30, -2.67892789840698242, -306.997772216796875, 33.41654205322265625, 0, 0, 0, 0, 1, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+149, 179066, 30, -60.25, -309.2320556640625, 50.240814208984375, -1.46607661247253417, 0, 0, 0.669130623340606689, -0.74314481019973754, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+150, 179066, 30, -48.7940559387207031, -266.53314208984375, 47.79162979125976562, 2.443460941314697265, 0, 0, 0.939692616462707519, 0.342020153999328613, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+151, 179066, 30, -524.27581787109375, -199.60009765625, 82.8733062744140625, -1.46607661247253417, 0, 0, 0.669130623340606689, -0.74314481019973754, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+152, 179066, 30, -518.19586181640625, -173.084854125976562, 102.4303665161132812, 0, 0, 0, 0, 1, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+153, 179066, 30, -500.731658935546875, -145.357864379882812, 88.5337371826171875, 2.443460941314697265, 0, 0, 0.939692616462707519, 0.342020153999328613, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+154, 179066, 30, -501.083648681640625, -150.78369140625, 80.85060882568359375, 0, 0, 0, 0, 1, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+155, 179066, 30, -518.30914306640625, -163.963485717773437, 102.5209884643554687, 2.967059612274169921, 0, 0, 0.996194720268249511, 0.08715580403804779, 0, 0), -- Smoke Emitter, Large AOI, scale 2
-- 179286 -- BG_AV_GO_GY_BANNER_ALLIANCE_CONT
(@OGUID+156, 179468, 30, 638.65704345703125, -32.2294387817382812, 46.09035110473632812, -1.62315630912780761, 0, 0, 0.725374400615692138, -0.6883544921875, 0, 0), -- Contested Banner (180102)
(@OGUID+157, 179287, 30, 669.29534912109375, -294.03753662109375, 30.28968620300292968, -0.36651927232742309, 0, 0, 0.182235583662986755, -0.98325490951538085, 0, 0), -- Contested Banner (180102)
(@OGUID+158, 179310, 30, 77.80132293701171875, -404.699859619140625, 46.75493240356445312, -0.87266474962234497, 0, 0, 0.422618329524993896, -0.90630775690078735, 0, 0), -- Contested Banner (180102)
(@OGUID+159, 180419, 30, -202.580841064453125, -112.730262756347656, 78.487579345703125, -0.71558505296707153, 0, 0, 0.350207418203353881, -0.93667215108871459, 0, 0), -- Contested Banner (180102)
(@OGUID+160, 179482, 30, -611.52276611328125, -396.819000244140625, 60.85839080810546875, -0.03490668907761573, 0, 0, 0.017452457919716835, -0.99984771013259887, 0, 0), -- Contested Banner (180102)
(@OGUID+161, 179304, 30, -1082.4476318359375, -346.823394775390625, 54.92188262939453125, -1.53588998317718505, 0, 0, 0.694658458232879638, -0.71933972835540771, 0, 0), -- Contested Banner (180102)
(@OGUID+162, 179471, 30, -1402.2781982421875, -307.37982177734375, 89.44196319580078125, 0.191986218094825744, 0, 0, 0.095845751464366912, 0.995396196842193603, 0, 0), -- Contested Banner (180102)
-- 179287 -- BG_AV_GO_GY_BANNER_HORDE_CONT
(@OGUID+163, 179465, 30, 638.59210205078125, -32.4220390319824218, 46.06084442138671875, -1.62315571308135986, 0, 0, -0.72537422180175781, 0.688354730606079101, 0, 0), -- Contested Banner (180100)
(@OGUID+164, 179286, 30, 669.0321044921875, -294.060333251953125, 30.29091072082519531, 2.775073528289794921, 0, 0, 0.983254909515380859, 0.182235524058341979, 0, 0), -- Contested Banner (180102)
(@OGUID+165, 179308, 30, 78.385528564453125, -405.450531005859375, 46.60544204711914062, -0.85521155595779418, 0, 0, 0.414693355560302734, -0.90996122360229492, 0, 0), -- Contested Banner (180102)
(@OGUID+166, 180420, 30, -202.651580810546875, -112.807289123535156, 78.487060546875, -1.09955763816833496, 0, 0, 0.522498667240142822, -0.85264009237289428, 0, 0), -- Contested Banner (180102)
(@OGUID+167, 179484, 30, -612.6614990234375, -396.69921875, 60.85839080810546875, -0.03490668907761573, 0, 0, 0.017452457919716835, -0.99984771013259887, 0, 0), -- Contested Banner (180102)
(@OGUID+168, 179305, 30, -1082.5361328125, -346.567169189453125, 54.97722244262695312, -1.55334317684173583, 0, 0, 0.700909316539764404, -0.71325039863586425, 0, 0), -- Contested Banner (180102)
(@OGUID+169, 179473, 30, -1402.175537109375, -307.3056640625, 89.4469757080078125, 0.191986218094825744, 0, 0, 0.095845751464366912, 0.995396196842193603, 0, 0), -- Contested Banner (180102)
-- alliance contested: 179424
(@OGUID+170, 179424, 30, -191.153106689453125, -129.868377685546875, 78.5594940185546875, -1.25663685798645019, 0, 0, 0.587785184383392333, -0.80901706218719482, 60, 60), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+171, 179424, 30, -201.281692504882812, -134.31884765625, 78.6753387451171875, -0.94247794151306152, 0, 0, 0.453990578651428222, -0.8910064697265625, 60, 60), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+172, 179424, 30, -215.980911254882812, -91.4101028442382812, 80.87021636962890625, -1.74532926082611083, 0, 0, 0.766044437885284423, -0.64278763532638549, 60, 60), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+173, 179424, 30, -200.738723754882812, -96.6796875, 79.7800140380859375, -2.00712847709655761, 0, 0, 0.84339141845703125, -0.53729963302612304, 60, 60), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
-- horde contested: 179425
(@OGUID+174, 179425, 30, -191.17578125, -129.929473876953125, 78.675201416015625, -1.2042773962020874, 0, 0, 0.566406309604644775, -0.82412612438201904, 60, 60), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+175, 179425, 30, -201.178604125976562, -134.266876220703125, 78.677734375, -0.99483758211135864, 0, 0, 0.477158725261688232, -0.87881714105606079, 60, 60), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+176, 179425, 30, -216.158309936523437, -91.621856689453125, 80.86038970947265625, -1.7278759479522705, 0, 0, 0.760405957698822021, -0.64944803714752197, 60, 60), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+177, 179425, 30, -200.6962890625, -96.61767578125, 79.70095062255859375, -2.09439492225646972, 0, 0, 0.866025388240814208, -0.50000005960464477, 60, 60), -- [PH] Horde Graveyard Mid Pre-Banner BIG
-- BG_AV_GO_BANNER_HORDE_CONT = 179435, // contested flags
(@OGUID+178, 179435, 30, 553.82159423828125, -78.7675247192382812, 51.93867874145507812, -1.06465089321136474, 0, 0, 0.507538378238677978, -0.86162918806076049, 0, 0), -- Contested Banner
(@OGUID+179, 179439, 30, 674.046875, -143.155868530273437, 63.66139602661132812, 0.994837701320648193, 0, 0, 0.47715875506401062, 0.878817141056060791, 0, 0), -- Contested Banner
(@OGUID+180, 179441, 30, 203.2808685302734375, -360.3663330078125, 56.38690567016601562, -0.92502433061599731, 0, 0, 0.446197748184204101, -0.89493441581726074, 0, 0), -- Contested Banner
(@OGUID+181, 179443, 30, -152.437286376953125, -441.75823974609375, 40.39822769165039062, -1.95476889610290527, 0, 0, 0.829037606716156005, -0.55919283628463745, 0, 0), -- Contested Banner
-- horde contested: 179436
(@OGUID+182, 179436, 30, 555.84759521484375, -84.4151458740234375, 64.43967437744140625, 3.124139308929443359, 0, 0, 0.999961912631988525, 0.008726561442017555, 0, 0), -- [PH] Horde A1 Tower Pre-Banner BIG (180423)
(@OGUID+183, 179440, 30, 677.5916748046875, -139.034286499023437, 76.21964263916015625, -1.98967528343200683, 0, 0, 0.838670551776885986, -0.54463905096054077, 0, 0), -- [PH] Horde A2 Tower Pre-Banner BIG (180423)
(@OGUID+184, 179442, 30, 202.5411834716796875, -361.857574462890625, 67.73706817626953125, 0.610865175724029541, 0, 0, 0.300705790519714355, 0.953716933727264404, 0, 0), -- [PH] Horde A3 Tower Pre-Banner BIG (180423)
(@OGUID+185, 179444, 30, -155.832473754882812, -449.40093994140625, 52.7305908203125, 0.610865175724029541, 0, 0, 0.300705790519714355, 0.953716933727264404, 0, 0), -- [PH] Horde A4 Tower Pre-Banner BIG (180423)
-- alliance contested: 179446
(@OGUID+186, 179458, 30, -572.20538330078125, -262.476226806640625, 88.66471099853515625, -0.59341222047805786, 0, 0, 0.29237183928489685, -0.95630472898483276, 0, 0), -- [PH] Alliance H4 Tower Pre-Banner BIG (180423)
(@OGUID+187, 179454, 30, -768.15411376953125, -363.102325439453125, 104.534576416015625, 0.122173056006431579, 0, 0, 0.061048541218042373, 0.998134791851043701, 0, 0), -- [PH] Alliance H3 Tower Pre-Banner BIG (180423)
(@OGUID+188, 179450, 30, -1302.8350830078125, -316.581878662109375, 127.516387939453125, 0.122173056006431579, 0, 0, 0.061048541218042373, 0.998134791851043701, 0, 0), -- [PH] Alliance H2 Tower Pre-Banner BIG (180423)
(@OGUID+189, 179446, 30, -1297.869384765625, -266.7623291015625, 127.7958297729492187, 0.069813162088394165, 0, 0, 0.034899495542049407, 0.999390840530395507, 0, 0), -- [PH] Alliance H1 Tower Pre-Banner BIG (180423)
(@OGUID+190, 180418, 30, -202.6107,-112.778,78.48716,-1.151916, 0, 0, 0, 0, 0, 0), -- Snowfall Banner
(@OGUID+191, 180424, 30, 780.487, -493.024, 99.9553, 3.0976, 0, 0, 0, 0, 60, 60), -- Alterac Valley Gate
(@OGUID+192, 180424, 30, -870.94396972656250000000, -558.57800292968750000000, 57.26279830932617000000, 2.16421008110046400000, 0, 0, 0.8829470276832581, 0.4694730043411255, 60, 60), -- Alterac Valley Gate (Adjusted for classic)
(@OGUID+193, 180654, 30, 713.369, -457.524, 68.5122, 0.173563, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+194, 180654, 30, 663.165, -258.335, 14.6348, 4.77835, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+195, 180654, 30, 383.217, -370.09, -18.2239, 5.40746, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+196, 180654, 30, 441.107, -243.111, -19.4384, 1.38779, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+197, 180654, 30, 319.974, -177.098, -30.7619, 2.12292, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+198, 180654, 30, 290.743, -90.8554, -39.989, 1.69881, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+199, 180654, 30, 331.946, -4.27387, -2.21438, 0.661298, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+200, 180654, 30, 269.75, 40.629, 20.6186, 2.64521, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+201, 180654, 30, 393.96, -126.64, -8.37789, 5.64857, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+202, 180654, 30, 510.265, -79.9827, 13.2593, 0.951894, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+203, 180654, 30, 382.65, -257.878, -40.0292, 3.81624, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+204, 180654, 30, 292.685, -404.206, 16.4788, 0.0730329, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+205, 180654, 30, 187.871, -347.493, 49.9014, 0.794812, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+206, 180654, 30, 107.732, -259.346, 25.1696, 0.524635, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+207, 180654, 30, 6.7223, -350.19, 18.5508, 4.91501, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+208, 180654, 30, -30.5515, -393.019, 22.7206, 4.90951, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+209, 180654, 30, -60.9539, -491.516, 45.2524, 3.47538, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+210, 180654, 30, -131.512, -559.269, 47.5295, 3.56884, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+211, 180654, 30, -171.517, -474.433, 28.6923, 2.25487, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+212, 180654, 30, -275.328, -460.374, 28.3529, 2.90518, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+213, 180654, 30, -341.738, -352.906, 10.0064, 1.94463, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+214, 180654, 30, -374.579, -238.116, 14.4059, 2.3177, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+215, 180654, 30, -377.27, -134.087, 26.4231, 0.201835, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+216, 180654, 30, -416.699, -43.0144, 35.6197, 2.37582, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+217, 180654, 30, -268.635, -28.047, 41.0637, 2.0915, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+218, 180654, 30, -170.045, -95.8946, 35.1276, 4.58907, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+219, 180654, 30, -107.962, -147.486, 20.0322, 1.25898, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+220, 180654, 30, -35.2907, -188.867, 21.9315, 6.22191, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+221, 180654, 30, -332.611, -243.971, 14.2602, 0.685642, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+222, 180654, 30, -391.983, -319.717, 19.2212, 2.61144, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+223, 180654, 30, -453.542, -349.82, 33.1161, 4.78385, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+224, 180654, 30, -529.263, -363.65, 34.1552, 3.17928, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+225, 180654, 30, -469.793, -441.135, 37.7274, 5.88655, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+226, 180654, 30, -588.135, -284.45, 54.6961, 2.1889, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+227, 180654, 30, -598.035, -355.309, 61.6211, 4.64798, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+228, 180654, 30, -687.065, -354.415, 60.9971, 2.15277, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+229, 180654, 30, -727.579, -313.932, 64.9773, 3.01513, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+230, 180654, 30, -761.414, -392.392, 79.5707, 4.00709, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+231, 180654, 30, -906.423, -336.417, 55.4283, 2.59023, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+232, 180654, 30, -903.362, -493.481, 46.2971, 4.24585, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+233, 180654, 30, -917.213, -574.985, 65.2434, 4.13276, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+234, 180654, 30, -934.978, -526.52, 54.9837, 2.61223, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+235, 180654, 30, -1024.04, -427.249, 51.7721, 2.35069, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+236, 180654, 30, -1168.4, -441.957, 58.9765, 2.36404, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+237, 180654, 30, -1148.24, -370.189, 55.1857, 1.47026, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+238, 180654, 30, -1098.88, -287.895, 58.3042, 2.60987, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+239, 180654, 30, -1023.15, -266.23, 63.7499, 1.09798, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+240, 180654, 30, -952.973, -216.597, 70.0072, 5.94389, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+241, 180654, 30, -898.396, -279.974, 64.4548, 6.26433, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+242, 180654, 30, -812.467, -263.533, 61.2332, 0.308656, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+243, 180654, 30, -826.867, -206.29, 81.1801, 2.66564, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+244, 180654, 30, -751.005, -304.337, 67.9169, 0.265461, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+245, 180654, 30, -774.599, -276.901, 79.6937, 1.20087, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+246, 180654, 30, -1027.96, -345.436, 57.9763, 3.28846, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+247, 180654, 30, -1085.46, -416.242, 53.1229, 3.69529, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+248, 180654, 30, -1083.35, -524.103, 49.6222, 4.05972, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+249, 180654, 30, -1084.97, -637.372, 57.0936, 5.79388, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+250, 180654, 30, -1174.9, -651.996, 64.9471, 3.50366, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+251, 180654, 30, -1239.32, -587.034, 52.7883, 2.33813, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+252, 180654, 30, -1300.5, -579.354, 60.908, 2.54861, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+253, 180654, 30, -1356.81, -540.745, 54.1318, 4.59536, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+254, 180654, 30, -1385.98, -466.664, 49.9666, 4.12098, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+255, 180654, 30, -1331.21, -395.291, 50.6683, 2.29729, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+256, 180654, 30, -1262.1, -436.518, 57.4549, 3.07954, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+257, 180654, 30, -1290.14, -423.533, 65.2731, 4.787, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+258, 180654, 30, -1194.3, -414.699, 58.366, 0.177496, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+259, 180654, 30, -1154.95, -293.355, 39.1069, 4.95272, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+260, 180654, 30, -970.251, -309.063, 65.5942, 5.90305, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+261, 180654, 30, -811.955, -345.576, 53.6397, 0.328295, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+262, 180654, 30, -663.423, -398.289, 60.754, 0.713925, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+263, 180654, 30, -551.439, -418.423, 55.5601, 4.96371, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+264, 180654, 30, -465.786, -398.398, 28.1647, 1.58415, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+265, 180654, 30, -172.513, -399.726, 15.8117, 5.72634, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+266, 180654, 30, -99.5573, -376.942, 15.8158, 1.60378, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+267, 180654, 30, -32.7714, -523.832, 47.5873, 6.02479, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+268, 180654, 30, 7.6156, -433.974, 45.3332, 1.86375, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+269, 180654, 30, 84.1501, -465.508, 49.1185, 6.10647, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+270, 180654, 30, 64.5926, -440.894, 49.684, 3.01828, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+271, 180654, 30, 136.004, -320.534, 49.1353, 5.28808, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+272, 180654, 30, 256.619, -450.356, 49.4244, 0.402907, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+273, 180654, 30, 491.954, -316.141, -12.9273, 0.0981722, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+274, 180654, 30, 588.82, -348.094, 32.6343, 4.10684, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+275, 180654, 30, 649.332, -273.921, 31.1966, 1.18831, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+276, 180654, 30, 596.836, -114.791, 41.8419, 2.13864, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+277, 180654, 30, 694.055, -108.678, 51.906, 6.12139, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+278, 180654, 30, 604.648, -43.066, 40.3963, 1.75144, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+279, 180654, 30, 659.018, -4.70805, 55.5548, 0.571768, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+280, 180654, 30, 652.94, 33.3443, 70.3421, 1.17574, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+281, 180654, 30, 541.548, -62.9618, 37.852, 4.2168, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+282, 180654, 30, 558.834, -6.05473, 45.4063, 2.06403, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+283, 180654, 30, 489.569, 13.109, 24.3065, 2.8565, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+284, 180654, 30, 414.552, -36.1106, 0.967913, 4.02281, 0, 0, 0, 0, 600, 600), -- Hardpacked Snowdrift
(@OGUID+285, 178684, 30, 649.2647705078125, -59.1102447509765625, 41.54756927490234375, -2.68780708312988281, 0, 0, 0.974370002746582031, -0.22495099902153015, 0, 0), -- Forge
(@OGUID+286, 178685, 30, 646.207275390625, -57.2428398132324218, 41.65867996215820312, -0.15707938373088836, 0, 0, -0.07845900207757949, 0.996917009353637695, 0, 0), -- Anvil
(@OGUID+287, 179384, 30, 560.834228515625, -75.42657470703125, 37.9557952880859375, 0.785397708415985107, 0, 0, 0.382683217525482177, 0.923879623413085937, 0, 0), -- Chair
(@OGUID+288, 179385, 30, 550.677978515625, -79.823394775390625, 44.8256988525390625, -3.09795928001403808, 0, 0, 0.99976205825805664, -0.02181493677198886, 0, 0), -- Chair
(@OGUID+289, 179386, 30, 568.32568359375, -89.499237060546875, 37.9557952880859375, 1.396264195442199707, 0, 0, 0.642787933349609375, 0.766044199466705322, 0, 0), -- Chair
(@OGUID+290, 179387, 30, 550.59661865234375, -77.521270751953125, 44.8256988525390625, -2.05076265335083007, 0, 0, -0.85491204261779785, 0.51877295970916748, 0, 0), -- Chair
(@OGUID+291, 179388, 30, 570.41943359375, -89.0566864013671875, 37.9557952880859375, 2.225296258926391601, 0, 0, 0.896873056888580322, 0.442288070917129516, 0, 0), -- Chair
(@OGUID+292, 179389, 30, 555.5166015625, -101.5894775390625, 44.8256988525390625, 0.392698675394058227, 0, 0, 0.195090129971504211, 0.980785310268402099, 0, 0), -- Chair
(@OGUID+293, 179390, 30, 561.85064697265625, -73.1480636596679687, 37.9557952880859375, -1.39626240730285644, 0, 0, -0.64278721809387207, 0.7660447359085083, 0, 0), -- Chair
(@OGUID+294, 179391, 30, 548.68243408203125, -100.84619140625, 44.819122314453125, 1.466077685356140136, 0, 0, 0.669131040573120117, 0.743144452571868896, 0, 0), -- Anvil
(@OGUID+295, 179392, 30, 552.42864990234375, -102.764350891113281, 44.819122314453125, 2.469640016555786132, 0, 0, 0.944088876247406005, 0.329691052436828613, 0, 0), -- Anvil
(@OGUID+296, 179393, 30, 549.47210693359375, -101.547271728515625, 44.819122314453125, 1.160643577575683593, 0, 0, 0.548293054103851318, 0.83628624677658081, 0, 0), -- Anvil
(@OGUID+297, 179394, 30, 550.34747314453125, -101.698478698730468, 44.819122314453125, 1.596975326538085937, 0, 0, 0.716301620006561279, 0.697790801525115966, 0, 0), -- Anvil
(@OGUID+298, 179395, 30, 551.27142333984375, -102.225814819335937, 44.819122314453125, 0.898843467235565185, 0, 0, 0.434444755315780639, 0.900698482990264892, 0, 0), -- Anvil
(@OGUID+299, 179396, 30, 553.9466552734375, -103.346946716308593, 44.819122314453125, -0.19198615849018096, 0, 0, -0.09584572166204452, 0.995396196842193603, 0, 0), -- Anvil
(@OGUID+300, 179397, 30, 553.725341796875, -102.395965576171875, 44.819122314453125, 0.157079651951789855, 0, 0, 0.078459113836288452, 0.996917307376861572, 0, 0), -- Anvil
(@OGUID+301, 179437, 30, 618.7481689453125, -52.1125755310058593, 42.11217880249023437, -0.069813072681427, 0, 0, 0.034899450838565826, -0.9993908405303955, 0, 0), -- Wanted: ORCS!
(@OGUID+302, 179438, 30, -1181.099609375, -370.747222900390625, 53.62457275390625, 2.687807083129882812, 0, 0, 0.974370062351226806, 0.224951043725013732, 0, 0), -- Wanted: DWARVES!
(@OGUID+303, 3832, 30, -1235.5711669921875, -241.478118896484375, 73.4377593994140625, 1.483530640602111816, 0, 0, 0.67559051513671875, 0.737277030944824218, 0, 0), -- Burning Embers
(@OGUID+304, 3833, 30, -1248.8515625, -254.060440063476562, 73.4377593994140625, 1.483530640602111816, 0, 0, 0.67559051513671875, 0.737277030944824218, 0, 0), -- Burning Embers
(@OGUID+305, 3834, 30, -1248.14892578125, -245.59942626953125, 73.4377593994140625, -0.05236048251390457, 0, 0, -0.02617725171148777, 0.999657332897186279, 0, 0), -- Burning Embers
(@OGUID+306, 3835, 30, -1237.206298828125, -260.1676025390625, 73.4377593994140625, 1.483530640602111816, 0, 0, 0.67559051513671875, 0.737277030944824218, 0, 0), -- Burning Embers
(@OGUID+307, 3836, 30, -1260.3656005859375, -248.766998291015625, 77.9454193115234375, 1.483530640602111816, 0, 0, 0.67559051513671875, 0.737277030944824218, 0, 0), -- Burning Embers
(@OGUID+308, 3837, 30, -1249.3153076171875, -244.907470703125, 92.33716583251953125, 0.401426285505294799, 0, 0, 0.199368208646774291, 0.979924619197845458, 0, 0), -- Burning Embers
(@OGUID+309, 3838, 30, -1250.091796875, -254.603591918945312, 92.30152130126953125, 0.148352280259132385, 0, 0, 0.074108138680458068, 0.997250258922576904, 0, 0), -- Burning Embers
(@OGUID+310, 177405, 30, -1140.8155517578125, -343.392364501953125, 50.90771484375, -2.7837996482849121, 0, 0, 0.98404097557067871, -0.17794400453567504, 0, 0), -- Brazier (2061)
(@OGUID+311, 177406, 30, -1139.681884765625, -356.2882080078125, 51.26401901245117187, -0.70685797929763793, 0, 0, -0.34611698985099792, 0.938190996646881103, 0, 0), -- Brazier (2061)
(@OGUID+312, 177408, 30, -743.42657470703125, -398.241973876953125, 76.4265594482421875, 0.872664213180541992, 0.01739400066435337, -0.00633100001141428, 0.422701001167297363, 0.906080007553100585, 0, 0), -- Bonfire (2066)
(@OGUID+313, 177409, 30, -1215.5924072265625, -371.9459228515625, 56.52930068969726562, 0.357793539762496948, 0, 0, 0.177944004535675048, 0.98404097557067871, 0, 0), -- Brazier (2061)
(@OGUID+314, 177410, 30, -1241.24658203125, -345.114959716796875, 59.68674087524414062, 0.357793539762496948, 0, 0, 0.177944004535675048, 0.98404097557067871, 0, 0), -- Brazier (2061)
(@OGUID+315, 177411, 30, -1202.8046875, -271.598541259765625, 72.58054351806640625, 0.357793539762496948, 0, 0, 0.177944004535675048, 0.98404097557067871, 0, 0), -- Brazier (2061)
(@OGUID+316, 177412, 30, -1282.2083740234375, -284.083343505859375, 87.25603485107421875, -0.0610855221748352, 0, 0, -0.03053800016641616, 0.999534010887145996, 0, 0), -- Brazier (2061)
(@OGUID+317, 177413, 30, -1256.5538330078125, -280.27777099609375, 73.94734954833984375, -0.0610855221748352, 0, 0, -0.03053800016641616, 0.999534010887145996, 0, 0), -- Brazier (2061)
(@OGUID+318, 177292, 30, -1099.207763671875, -266.23101806640625, 57.88490676879882812, -2.28638100624084472, 0, 0, 0.90996098518371582, -0.41469299793243408, 0, 0), -- Brazier (2061)
(@OGUID+319, 177293, 30, -1082.6024169921875, -266.68072509765625, 57.85751724243164062, 2.408553361892700195, 0, 0, 0.933579981327056884, 0.358368009328842163, 0, 0), -- Brazier (2061)
(@OGUID+320, 179419, 30, -1423.1614990234375, -318.435760498046875, 89.11356353759765625, 2.356192827224731445, 0, 0, 0.923879027366638183, 0.382683992385864257, 0, 0), -- Brazier (2061)
(@OGUID+321, 179945, 30, -1070.53369140625, -617.908203125, 51.32492446899414062, -0.44506001472473144, 0, 0, -0.22069799900054931, 0.975341975688934326, 0, 0), -- Campfire (2061)
(@OGUID+322, 177261, 30, -1290.2744140625, -172.470535278320312, 72.18534088134765625, 3.063053369522094726, 0.008720000274479389, -0.00034299999242648, 0.999190986156463623, 0.039257999509572982, 0, 0), -- Brazier (2061)
(@OGUID+323, 177262, 30, -1286.2486572265625, -184.480148315429687, 71.833404541015625, -2.05076169967651367, -0.00733100017532706, -0.02996000088751316, -0.85425800085067749, 0.518932998180389404, 0, 0), -- Campfire (2061)
(@OGUID+324, 177263, 30, -1280.1744384765625, -220.53717041015625, 72.26860809326171875, 1.623155117034912109, 0, 0, 0.72537398338317871, 0.688355028629302978, 0, 0), -- Campfire (2061)
(@OGUID+325, 0, 30, -1368.373291015625, -218.88677978515625, 98.42658233642578125, -0.24434597790241241, 0, 0, 0.121869280934333801, -0.99254614114761352, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+326, 0, 30, -1371.357666015625, -216.960617065429687, 99.37108612060546875, -0.03490668907761573, 0, 0, 0.017452457919716835, -0.99984771013259887, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+327, 0, 30, -1361.5943603515625, -207.93658447265625, 99.3700714111328125, -3.07177948951721191, 0, 0, 0.999390840530395507, -0.03489946201443672, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+328, 0, 30, -1359.902099609375, -237.353836059570312, 99.3710174560546875, -1.01229083538055419, 0, 0, 0.484809547662734985, -0.87461978197097778, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+329, 0, 30, -1389.341552734375, -225.45367431640625, 99.3710174560546875, 0.663225054740905761, 0, 0, 0.325568139553070068, 0.945518553256988525, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+330, 0, 30, -1370.873046875, -205.35211181640625, 99.3712615966796875, 0.209439516067504882, 0, 0, 0.104528464376926422, 0.994521915912628173, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+331, 0, 30, -1367.1849365234375, -240.346893310546875, 99.37102508544921875, 0.157079622149467468, 0, 0, 0.078459098935127258, 0.996917307376861572, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+332, 0, 30, -1389.5538330078125, -230.888076782226562, 99.37131500244140625, -0.89011794328689575, 0, 0, 0.430511116981506347, -0.90258526802062988, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+333, 0, 30, -1384.009765625, -212.374404907226562, 99.37100982666015625, -2.68780708312988281, 0, 0, 0.974370062351226806, -0.22495099902153015, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+334, 0, 30, -1377.0546875, -210.818313598632812, 99.36980438232421875, -0.01745349541306495, 0, 0, 0.008726636879146099, -0.99996191263198852, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+335, 0, 30, -1373.2786865234375, -220.912872314453125, 98.42658233642578125, 2.443460941314697265, 0, 0, 0.939692616462707519, 0.342020153999328613, 0, 0), -- Drek'Thar's Scrolls (179004/179005)
(@OGUID+336, 179909, 30, -914.01348876953125, -520.347900390625, 57.22958755493164062, 1.535890698432922363, 0.057845998555421829, -0.04110400006175041, 0.693563997745513916, 0.716892004013061523, 0, 0), -- Rock of Durotan
(@OGUID+337, 51704, 30, -1245.2012939453125, -307.058685302734375, 63.31994247436523437, 3.079593896865844726, -0.00711202248930931, -0.02363062836229801, 0.999219894409179687, 0.030832992866635322, 0, 0), -- Anvil
(@OGUID+338, 51705, 30, -1258.2259521484375, -310.97747802734375, 63.20154571533203125, 0.862905621528625488, 0.017974497750401496, -0.01690872386097908, 0.418255954980850219, 0.907993912696838378, 0, 0), -- Anvil
(@OGUID+339, 50984, 30, -1250.392578125, -310.19140625, 61.18503189086914062, -1.10828375816345214, 0.024020733311772346, 0.005656135268509387, -0.52631253004074096, 0.849933028221130371, 0, 0), -- Heated Forge
(@OGUID+340, 178442, 30, -1258.9970703125, -318.02740478515625, 62.53152084350585937, -2.61799383163452148, 0, 0, 0.965925812721252441, -0.25881904363632202, 0, 0), -- Horde Supply Crate
(@OGUID+341, 178442, 30, -1259.0013427734375, -317.988433837890625, 63.88884353637695312, -0.97738438844680786, 0, 0, 0.469471573829650878, -0.88294756412506103, 0, 0), -- Horde Supply Crate
(@OGUID+342, 178442, 30, -1260.2662353515625, -316.172149658203125, 64.1017303466796875, -2.47836756706237792, 0, 0, 0.9455186128616333, -0.32556810975074768, 0, 0), -- Horde Supply Crate
(@OGUID+343, 178442, 30, -1260.1881103515625, -316.3150634765625, 62.78687286376953125, -2.18166136741638183, 0, 0, 0.887010812759399414, -0.46174865961074829, 0, 0), -- Horde Supply Crate
(@OGUID+344, 22205, 30, 50.64005661010742187, -421.1663818359375, 44.7325439453125, -0.00875192321836948, -0.00858677271753549, 0.001553107169456779, -0.00436275731772184, 0.999952375888824462, 0, 0), -- Dwarven Fire (2061)
(@OGUID+345, 22207, 30, 30.41684341430664062, -428.852752685546875, 41.5280303955078125, -2.59181499481201171, 0, 0, 0.962455391883850097, -0.27143990993499755, 0, 0), -- Dwarven Fire (2061)
(@OGUID+346, 22208, 30, 31.2216339111328125, -428.080474853515625, 41.5280303955078125, 0.549779474735260009, 0, 0, 0.271440833806991577, 0.96245509386062622, 0, 0), -- Dwarven Fire (2061)
(@OGUID+347, 161488, 30, 360.91546630859375, -497.098541259765625, 71.33890533447265625, 3.141592741012573242, 0, 0, 1, 0, 0, 0), -- Bonfire
(@OGUID+348, 161489, 30, 360.3800048828125, -527.5487060546875, 71.120452880859375, -2.05076241493225097, 0, 0, -0.85491198301315307, 0.518773019313812255, 0, 0), -- Anvil
(@OGUID+349, 179391, 30, -172.362991333007812, -452.824188232421875, 33.27962493896484375, 0.62832045555114746, 0, 0, 0.309017896652221679, 0.951056241989135742, 0, 0), -- Anvil
(@OGUID+350, 179392, 30, -171.28173828125, -456.89166259765625, 33.27962493896484375, 1.631882667541503906, 0, 0, 0.728370904922485351, 0.685183048248291015, 0, 0), -- Anvil
(@OGUID+351, 179393, 30, -172.355575561523437, -453.880157470703125, 33.27962493896484375, 0.322886228561401367, 0, 0, 0.160742729902267456, 0.986996352672576904, 0, 0), -- Anvil
(@OGUID+352, 179394, 30, -171.882232666015625, -454.6318359375, 33.27962493896484375, 0.759218096733093261, 0, 0, 0.370557367801666259, 0.928809583187103271, 0, 0), -- Anvil
(@OGUID+353, 179395, 30, -171.6558837890625, -455.67132568359375, 33.27962493896484375, 0.061086133122444152, 0, 0, 0.030538318678736686, 0.999533593654632568, 0, 0), -- Anvil
(@OGUID+354, 179396, 30, -170.698928833007812, -458.40960693359375, 33.27962493896484375, -1.02974343299865722, 0, 0, -0.49242320656776428, 0.870355904102325439, 0, 0), -- Anvil
(@OGUID+355, 179397, 30, -170.140335083007812, -457.6087646484375, 33.27962493896484375, -0.68067771196365356, 0, 0, -0.33380651473999023, 0.942641615867614746, 0, 0), -- Anvil
(@OGUID+356, 178646, 30, 640.8292236328125, -55.8193893432617187, 41.79124069213867187, 1.151917338371276855, 0, 0, 0.544639050960540771, 0.838670551776885986, 0, 0), -- Alliance Supply Crate
(@OGUID+357, 178646, 30, 640.88671875, -55.8350143432617187, 42.37792587280273437, -1.83259570598602294, 0, 0, 0.79335331916809082, -0.60876142978668212, 0, 0), -- Alliance Supply Crate
(@OGUID+358, 178646, 30, 639.73223876953125, -57.2604179382324218, 42.2751922607421875, -1.60570323467254638, 0, 0, 0.719339907169342041, -0.69465827941894531, 0, 0), -- Alliance Supply Crate
(@OGUID+359, 178646, 30, 639.71051025390625, -57.2125129699707031, 41.657135009765625, -1.64060950279235839, 0, 0, 0.731353700160980224, -0.68199831247329711, 0, 0), -- Alliance Supply Crate
-- (@OGUID+360 - 373
(@OGUID+374, 177425, 30, -353.1181640625, 37.095703125, 65.89037322998046875, 3.141592741012573242, 0, 0, 1, 0, 0, 0), -- Campfire (2061)
(@OGUID+375, 177396, 30, 12.82514095306396484, -120.210830688476562, 41.66688156127929687, 3.141592741012573242, 0, 0, 1, 0, 0, 0), -- Cauldron (2061)
(@OGUID+376, 0, 30, 724.22760009765625, -28.8534622192382812, 50.62129974365234375, 0.541052043437957763, 0, 0, 0.267238378524780273, 0.963630437850952148, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+377, 0, 30, 717.86309814453125, 4.872232913970947265, 50.62129974365234375, 1.745329260826110839, 0, 0, 0.766044437885284423, 0.642787635326385498, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+378, 0, 30, 717.66937255859375, 1.327962040901184082, 50.62129974365234375, 2.513274192810058593, 0, 0, 0.951056540012359619, 0.309016972780227661, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+379, 0, 30, 715.34954833984375, 2.809135913848876953, 50.62129974365234375, -1.83259570598602294, 0, 0, 0.79335331916809082, -0.60876142978668212, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+380, 0, 30, 721.557861328125, 1.249673962593078613, 50.62129974365234375, 1.954768657684326171, 0, 0, 0.82903754711151123, 0.559192895889282226, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+381, 0, 30, 727.11688232421875, -28.9257278442382812, 50.62130355834960937, 2.775073528289794921, 0, 0, 0.983254909515380859, 0.182235524058341979, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+382, 0, 30, 722.92547607421875, -31.2355690002441406, 50.62130355834960937, -1.65806281566619873, 0, 0, 0.737277328968048095, -0.67559021711349487, 0, 0), -- Vanndar's Documents (179006/179007/179008)
(@OGUID+383, 34571, 30, -105.423355102539062, -584.35174560546875, 42.01491928100585937, 2.364921092987060546, 0, 0, 0.925540506839752197, 0.378648638725280761, 0, 0), -- Forge
(@OGUID+384, 161487, 30, 361.097869873046875, -531.69293212890625, 71.1897735595703125, -2.15547943115234375, 0, 0, 0.88089001178741455, -0.47332000732421875, 0, 0), -- Forge
-- (@OGUID+385, 180424, 30, 794.64312744140625, -493.474517822265625, 99.77789306640625, -0.12217313796281814, 0, 0, 0.061048582196235656, -0.9981347918510437, 0, 0), -- Alterac Valley Gate
-- (@OGUID+386, 180322, 30, 794.63494873046875, -493.643280029296875, 98.60199737548828125, 3.03687286376953125, 0, 0, 0.998629510402679443, 0.05233597382903099, 0, 0, 100, 1); -- Ghost Gate
-- Alliance - Boss Dead - Alliance Lost Flames?
(@OGUID+401, 179065, 30, 584.4066162109375, -40.0251731872558593, 38.67543411254882812, -3.07177948951721191, 0, 0, 0.999390840530395507, -0.03489946201443672, 0, 0), -- Roaring Flame
(@OGUID+402, 179065, 30, 669.2791748046875, -9.81559276580810546, 68.08280181884765625, -0.34906607866287231, 0, 0, 0.173648297786712646, -0.98480772972106933, 0, 0), -- Roaring Flame
(@OGUID+403, 179065, 30, 637.67742919921875, -22.1296119689941406, 45.83824539184570312, -0.87266474962234497, 0, 0, 0.422618329524993896, -0.90630775690078735, 0, 0), -- Roaring Flame
(@OGUID+404, 179065, 30, 680.2996826171875, -48.2595481872558593, 69.04096221923828125, 1.850049138069152832, 0, 0, 0.798635542392730712, 0.60181504487991333, 0, 0), -- Roaring Flame
(@OGUID+405, 179065, 30, 601.42364501953125, -8.08734798431396484, 41.9954376220703125, -0.33161243796348571, 0, 0, 0.165047541260719299, -0.98628562688827514, 0, 0), -- Roaring Flame
(@OGUID+406, 179065, 30, 618.95843505859375, -91.4492721557617187, 46.2015838623046875, -0.55850535631179809, 0, 0, 0.275637358427047729, -0.96126168966293334, 0, 0), -- Roaring Flame
(@OGUID+407, 179065, 30, 693.9171142578125, -19.9106998443603515, 50.62129974365234375, 2.809980154037475585, 0, 0, 0.986285626888275146, 0.165047571063041687, 0, 0), -- Roaring Flame
(@OGUID+408, 179065, 30, 649.8858642578125, -60.9094505310058593, 41.657135009765625, -0.45378574728965759, 0, 0, 0.224951118230819702, -0.9743700623512268, 0, 0), -- Roaring Flame
(@OGUID+409, 179065, 30, 697.90252685546875, -10.8285045623779296, 50.36879730224609375, 1.413716673851013183, 0, 0, 0.649448037147521972, 0.760405957698822021, 0, 0), -- Roaring Flame
(@OGUID+410, 179065, 30, 619.4541015625, -31.8742408752441406, 45.79620361328125, 0.750491559505462646, 0, 0, 0.366501212120056152, 0.930417597293853759, 0, 0), -- Roaring Flame
(@OGUID+411, 179065, 30, 683.22698974609375, -21.9343528747558593, 80.07077789306640625, 2.234021425247192382, 0, 0, 0.898794054985046386, 0.438371151685714721, 0, 0), -- Roaring Flame
(@OGUID+412, 179065, 30, 672.25811767578125, -17.0868606567382812, 50.62070465087890625, 3.089232683181762695, 0, 0, 0.999657332897186279, 0.026176994666457176, 0, 0), -- Roaring Flame
(@OGUID+413, 179065, 30, 629.0030517578125, -137.68023681640625, 39.66905975341796875, 2.129301786422729492, 0, 0, 0.874619722366333007, 0.484809577465057373, 0, 0), -- Roaring Flame
(@OGUID+414, 179065, 30, 716.99456787109375, -34.8136940002441406, 50.62130355834960937, 2.670353651046752929, 0, 0, 0.972369909286499023, 0.233445420861244201, 0, 0), -- Roaring Flame
(@OGUID+415, 179065, 30, 731.68438720703125, -8.08680534362792968, 50.62129974365234375, -0.54105222225189208, 0, 0, 0.267238438129425048, -0.96363043785095214, 0, 0), -- Roaring Flame
(@OGUID+416, 179065, 30, 704.49420166015625, 6.974718093872070312, 50.62130355834960937, -0.94247794151306152, 0, 0, 0.453990578651428222, -0.8910064697265625, 0, 0), -- Roaring Flame
(@OGUID+417, 179065, 30, 581.780517578125, -70.9401016235351562, 38.22216033935546875, 1.605702877044677734, 0, 0, 0.71933978796005249, 0.694658398628234863, 0, 0), -- Roaring Flame
(@OGUID+418, 179065, 30, 658.65802001953125, -117.631019592285156, 49.6421051025390625, -2.75762009620666503, 0, 0, 0.981627166271209716, -0.19080902636051177, 0, 0), -- Roaring Flame
(@OGUID+419, 179065, 30, 680.2628173828125, -118.591583251953125, 64.33632659912109375, 2.548180580139160156, 0, 0, 0.956304728984832763, 0.292371779680252075, 0, 0), -- Roaring Flame
(@OGUID+420, 179065, 30, 676.392822265625, -146.849609375, 56.54253005981445312, 2.460914134979248046, 0, 0, 0.942641496658325195, 0.333806902170181274, 0, 0), -- Roaring Flame
(@OGUID+421, 178784, 30, -975.856, -82.5496, 80.4898, 5.55015, 0, 0, -0.358368, 0.93358, 120, 300), -- Coldtooth Supplies
(@OGUID+422, 178784, 30, -962.466, -168.579, 77.657, 0.174532, 0, 0, 0.0871553, 0.996195, 120, 300), -- Coldtooth Supplies
(@OGUID+423, 178784, 30, -951.394, -193.695, 67.634, 0.802851, 0, 0, 0.390731, 0.920505, 120, 300), -- Coldtooth Supplies
(@OGUID+424, 178784, 30, -947.642, -208.807, 77.0101, 1.36136, 0, 0, 0.62932, 0.777146, 120, 300), -- Coldtooth Supplies
(@OGUID+425, 178784, 30, -934.212, -57.3517, 80.277, 6.26573, 0, 0, -0.00872612, 0.999962, 120, 300), -- Coldtooth Supplies
(@OGUID+426, 178784, 30, -925.867, -127.293, 61.3233, 5.49779, 0, 0, -0.382683, 0.92388, 120, 300), -- Coldtooth Supplies
(@OGUID+427, 178784, 30, -916.281, -36.8579, 77.0227, 0.122173, 0, 0, 0.0610485, 0.998135, 120, 300), -- Coldtooth Supplies
(@OGUID+428, 178784, 30, -902.73, -103.868, 75.4378, 4.69494, 0, 0, -0.71325, 0.70091, 120, 300), -- Coldtooth Supplies
(@OGUID+429, 178784, 30, -900.514, -143.527, 75.9686, 1.8675, 0, 0, 0.803857, 0.594823, 120, 300), -- Coldtooth Supplies
(@OGUID+430, 178784, 30, -862.882, -0.353299, 72.1526, 3.76991, 0, 0, -0.951056, 0.309017, 120, 300), -- Coldtooth Supplies
(@OGUID+431, 178784, 30, -854.932, -85.9184, 68.6056, 4.24115, 0, 0, -0.85264, 0.522499, 120, 300), -- Coldtooth Supplies
(@OGUID+432, 178784, 30, -851.833, -118.959, 63.8672, 6.21337, 0, 0, -0.0348988, 0.999391, 120, 300), -- Coldtooth Supplies
(@OGUID+433, 178784, 30, -849.832, -20.8421, 70.4672, 4.46804, 0, 0, -0.788011, 0.615662, 120, 300), -- Coldtooth Supplies
(@OGUID+434, 178784, 30, -844.25, -60.0374, 72.1031, 4.08407, 0, 0, -0.891006, 0.453991, 120, 300), -- Coldtooth Supplies
(@OGUID+435, 178784, 30, -831.747, -154.647, 62.5997, 1.44862, 0, 0, 0.66262, 0.748956, 120, 300), -- Coldtooth Supplies
(@OGUID+436, 178784, 30, -820.644, -136.043, 63.1977, 2.40855, 0, 0, 0.93358, 0.358368, 120, 300), -- Coldtooth Supplies
(@OGUID+437, 178785, 30, 793.411, -326.281, 63.1117, 3.49067, 0, 0, -0.984807, 0.173652, 120, 300), -- Irondeep Supplies
(@OGUID+438, 178785, 30, 817.509, -457.331, 48.4666, 2.07694, 0, 0, 0.861629, 0.507539, 120, 300), -- Irondeep Supplies
(@OGUID+439, 178785, 30, 825.214, -320.174, 63.712, 3.45576, 0, 0, -0.987688, 0.156436, 120, 300), -- Irondeep Supplies
(@OGUID+440, 178785, 30, 837.117, -452.556, 47.2331, 3.15906, 0, 0, -0.999962, 0.00873464, 120, 300), -- Irondeep Supplies
(@OGUID+441, 178785, 30, 854.449, -442.255, 50.6589, 0.401425, 0, 0, 0.199368, 0.979925, 120, 300), -- Irondeep Supplies
(@OGUID+442, 178785, 30, 857.204, -371.45, 47.5951, 1.27409, 0, 0, 0.594822, 0.803857, 120, 300), -- Irondeep Supplies
(@OGUID+443, 178785, 30, 869.755, -448.867, 52.5448, 5.42797, 0, 0, -0.414693, 0.909961, 120, 300), -- Irondeep Supplies
(@OGUID+444, 178785, 30, 870.899, -388.434, 61.6406, 5.06146, 0, 0, -0.573576, 0.819152, 120, 300), -- Irondeep Supplies
(@OGUID+445, 178785, 30, 886.685, -442.358, 54.6962, 5.06146, 0, 0, -0.573576, 0.819152, 120, 300), -- Irondeep Supplies
(@OGUID+446, 178785, 30, 900.35, -479.024, 58.3553, 0.122173, 0, 0, 0.0610485, 0.998135, 120, 300), -- Irondeep Supplies
(@OGUID+447, 178785, 30, 907.227, -323.286, 67.584, 2.21657, 0, 0, 0.894934, 0.446199, 120, 300), -- Irondeep Supplies
(@OGUID+448, 178785, 30, 937.862, -352.902, 66.0311, 3.07177, 0, 0, 0.999391, 0.0349061, 120, 300), -- Irondeep Supplies
(@OGUID+449, 178785, 30, 946.596, -390.488, 63.1124, 3.97935, 0, 0, -0.913545, 0.406738, 120, 300), -- Irondeep Supplies
(@OGUID+450, 178785, 30, 949.877, -458.198, 56.4874, 0.314158, 0, 0, 0.156434, 0.987688, 120, 300), -- Irondeep Supplies
(@OGUID+451, 178785, 30, 960.823, -331.684, 62.7006, 3.87463, 0, 0, -0.93358, 0.358368, 120, 300), -- Irondeep Supplies
(@OGUID+452, 178785, 30, 964.27, -441.871, 56.0285, 1.79769, 0, 0, 0.782608, 0.622515, 120, 300); -- Irondeep Supplies

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+31, 0, 0), -- [PH] Alliance A1 Tower Banner BIG
(@OGUID+32, 0, 0), -- [PH] Alliance A2 Tower Banner BIG
(@OGUID+33, 0, 0), -- [PH] Alliance A3 Tower Banner BIG
(@OGUID+34, 0, 0), -- [PH] Alliance A4 Tower Banner BIG
(@OGUID+43, 0, 0), -- [PH] Horde H4 Tower Banner BIG
(@OGUID+44, 0, 0), -- [PH] Horde H3 Tower Banner BIG
(@OGUID+45, 0, 0), -- [PH] Horde H2 Tower Banner BIG
(@OGUID+46, 0, 0), -- [PH] Horde H1 Tower Banner BIG
(@OGUID+49, 0, 0), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+50, 0, 0), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+51, 0, 0), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+52, 0, 0), -- [PH] Alliance Graveyard Mid Banner BIG
(@OGUID+53, 0, 0), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+54, 0, 0), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+55, 0, 0), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+56, 0, 0), -- [PH] Horde Graveyard Mid Banner BIG
(@OGUID+57, 0, -1), -- Roaring Flame
(@OGUID+58, 0, -1), -- Roaring Flame
(@OGUID+59, 0, -1), -- Roaring Flame
(@OGUID+60, 0, -1), -- Roaring Flame
(@OGUID+61, 0, -1), -- Roaring Flame
(@OGUID+62, 0, -1), -- Roaring Flame
(@OGUID+63, 0, -1), -- Roaring Flame
(@OGUID+64, 0, -1), -- Roaring Flame
(@OGUID+65, 0, -1), -- Roaring Flame
(@OGUID+66, 0, -1), -- Roaring Flame
(@OGUID+67, 0, -1), -- Roaring Flame
(@OGUID+68, 0, -1), -- Roaring Flame
(@OGUID+69, 0, -1), -- Roaring Flame
(@OGUID+70, 0, -1), -- Roaring Flame
(@OGUID+71, 0, -1), -- Roaring Flame
(@OGUID+72, 0, -1), -- Roaring Flame
(@OGUID+73, 0, -1), -- Roaring Flame
(@OGUID+74, 0, -1), -- Roaring Flame
(@OGUID+75, 0, -1), -- Roaring Flame
(@OGUID+76, 0, -1), -- Roaring Flame
(@OGUID+77, 0, -1), -- Roaring Flame
(@OGUID+78, 0, -1), -- Roaring Flame
(@OGUID+79, 0, -1), -- Roaring Flame
(@OGUID+80, 0, -1), -- Roaring Flame
(@OGUID+81, 0, -1), -- Roaring Flame
(@OGUID+82, 0, -1), -- Roaring Flame
(@OGUID+83, 0, -1), -- Roaring Flame
(@OGUID+84, 0, -1), -- Roaring Flame
(@OGUID+85, 0, -1), -- Roaring Flame
(@OGUID+86, 0, -1), -- Roaring Flame
(@OGUID+87, 0, -1), -- Roaring Flame
(@OGUID+88, 0, -1), -- Roaring Flame
(@OGUID+89, 0, -1), -- Roaring Flame
(@OGUID+90, 0, -1), -- Roaring Flame
(@OGUID+91, 0, -1), -- Roaring Flame
(@OGUID+92, 0, -1), -- Roaring Flame
(@OGUID+93, 0, -1), -- Roaring Flame
(@OGUID+94, 0, -1), -- Roaring Flame
(@OGUID+95, 0, -1), -- Roaring Flame
(@OGUID+96, 0, -1), -- Roaring Flame
(@OGUID+97, 0, -1), -- Roaring Flame
(@OGUID+98, 0, -1), -- Roaring Flame
(@OGUID+99, 0, -1), -- Roaring Flame
(@OGUID+100, 0, -1), -- Roaring Flame
(@OGUID+101, 0, -1), -- Roaring Flame
(@OGUID+102, 0, -1), -- Roaring Flame
(@OGUID+103, 0, -1), -- Roaring Flame
(@OGUID+104, 0, -1), -- Roaring Flame
(@OGUID+105, 0, -1), -- Roaring Flame
(@OGUID+106, 0, -1), -- Roaring Flame
(@OGUID+107, 0, -1), -- Roaring Flame
(@OGUID+108, 0, -1), -- Roaring Flame
(@OGUID+109, 0, -1), -- Roaring Flame
(@OGUID+110, 0, -1), -- Roaring Flame
(@OGUID+111, 0, -1), -- Roaring Flame
(@OGUID+112, 0, -1), -- Roaring Flame
(@OGUID+113, 0, -1), -- Roaring Flame
(@OGUID+114, 0, -1), -- Roaring Flame
(@OGUID+115, 0, -1), -- Roaring Flame
(@OGUID+116, 0, -1), -- Roaring Flame
(@OGUID+117, 0, -1), -- Roaring Flame
(@OGUID+118, 0, -1), -- Roaring Flame
(@OGUID+119, 0, -1), -- Roaring Flame
(@OGUID+120, 0, -1), -- Roaring Flame
(@OGUID+121, 0, -1), -- Roaring Flame
(@OGUID+122, 0, -1), -- Roaring Flame
(@OGUID+123, 0, -1), -- Roaring Flame
(@OGUID+124, 0, -1), -- Roaring Flame
(@OGUID+125, 0, -1), -- Roaring Flame
(@OGUID+126, 0, -1), -- Roaring Flame
(@OGUID+127, 0, -1), -- Roaring Flame
(@OGUID+128, 0, -1), -- Roaring Flame
(@OGUID+129, 0, -1), -- Roaring Flame
(@OGUID+130, 0, -1), -- Roaring Flame
(@OGUID+131, 0, -1), -- Roaring Flame
(@OGUID+132, 0, -1), -- Roaring Flame
(@OGUID+133, 0, -1), -- Roaring Flame
(@OGUID+134, 0, -1), -- Roaring Flame
(@OGUID+135, 0, -1), -- Roaring Flame
(@OGUID+136, 0, -1), -- Roaring Flame
(@OGUID+137, 0, -1), -- Roaring Flame
(@OGUID+138, 0, -1), -- Roaring Flame
(@OGUID+139, 0, -1), -- Roaring Flame
(@OGUID+140, 0, -1), -- Roaring Flame
(@OGUID+141, 0, -1), -- Roaring Flame
(@OGUID+142, 0, -1), -- Roaring Flame
(@OGUID+143, 0, -1), -- Roaring Flame
(@OGUID+144, 0, -1), -- Roaring Flame
(@OGUID+145, 0, -1), -- Roaring Flame
(@OGUID+146, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+147, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+148, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+149, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+150, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+151, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+152, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+153, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+154, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+155, 0, 0), -- Smoke Emitter, Large AOI, scale 2
(@OGUID+170, 0, 0), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+171, 0, 0), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+172, 0, 0), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+173, 0, 0), -- [PH] Alliance Graveyard Mid Pre-Banner BIG
(@OGUID+174, 0, 0), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+175, 0, 0), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+176, 0, 0), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+177, 0, 0), -- [PH] Horde Graveyard Mid Pre-Banner BIG
(@OGUID+182, 0, 0), -- [PH] Horde A1 Tower Pre-Banner BIG
(@OGUID+183, 0, 0), -- [PH] Horde A2 Tower Pre-Banner BIG
(@OGUID+184, 0, 0), -- [PH] Horde A3 Tower Pre-Banner BIG
(@OGUID+185, 0, 0), -- [PH] Horde A4 Tower Pre-Banner BIG
(@OGUID+186, 0, 0), -- [PH] Alliance H4 Tower Pre-Banner BIG
(@OGUID+187, 0, 0), -- [PH] Alliance H3 Tower Pre-Banner BIG
(@OGUID+188, 0, 0), -- [PH] Alliance H2 Tower Pre-Banner BIG
(@OGUID+189, 0, 0), -- [PH] Alliance H1 Tower Pre-Banner BIG
(@OGUID+401, 0, -1), -- Roaring Flame
(@OGUID+402, 0, -1), -- Roaring Flame
(@OGUID+403, 0, -1), -- Roaring Flame
(@OGUID+404, 0, -1), -- Roaring Flame
(@OGUID+405, 0, -1), -- Roaring Flame
(@OGUID+406, 0, -1), -- Roaring Flame
(@OGUID+407, 0, -1), -- Roaring Flame
(@OGUID+408, 0, -1), -- Roaring Flame
(@OGUID+409, 0, -1), -- Roaring Flame
(@OGUID+410, 0, -1), -- Roaring Flame
(@OGUID+411, 0, -1), -- Roaring Flame
(@OGUID+412, 0, -1), -- Roaring Flame
(@OGUID+413, 0, -1), -- Roaring Flame
(@OGUID+414, 0, -1), -- Roaring Flame
(@OGUID+415, 0, -1), -- Roaring Flame
(@OGUID+416, 0, -1), -- Roaring Flame
(@OGUID+417, 0, -1), -- Roaring Flame
(@OGUID+418, 0, -1), -- Roaring Flame
(@OGUID+419, 0, -1), -- Roaring Flame
(@OGUID+420, 0, -1); -- Roaring Flame

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 179004 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+325 AND @OGUID+335; -- Drek'Thar's Scrolls
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 179005 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+325 AND @OGUID+335; -- Drek'Thar's Scrolls
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 179006 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+376 AND @OGUID+382; -- Vanndar's Documents
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 179007 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+376 AND @OGUID+382; -- Vanndar's Documents
INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid`, 179008 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+376 AND @OGUID+382; -- Vanndar's Documents

-- Hacks due to Core Issues
UPDATE `gameobject` SET `id` = 178364 WHERE `guid` BETWEEN @OGUID+13 AND @OGUID+19; -- BG_AV_GO_GY_BANNER_HORDE
UPDATE `gameobject` SET `id` = 178365 WHERE `guid` BETWEEN @OGUID+20 AND @OGUID+26; -- BG_AV_GO_GY_BANNER_ALLIANCE
UPDATE `gameobject` SET `id` = 178925 WHERE `guid` BETWEEN @OGUID+27 AND @OGUID+30; -- BG_AV_GO_BANNER_ALLIANCE
UPDATE `gameobject` SET `id` = 178927 WHERE `guid` BETWEEN @OGUID+31 AND @OGUID+34; -- object entries: alliance: 178927; horde contested: 179436
UPDATE `gameobject` SET `id` = 178940 WHERE `guid` BETWEEN @OGUID+35 AND @OGUID+38; -- BG_AV_GO_BANNER_ALLIANCE_CONT
UPDATE `gameobject` SET `id` = 178943 WHERE `guid` BETWEEN @OGUID+39 AND @OGUID+42; -- BG_AV_GO_BANNER_HORDE
UPDATE `gameobject` SET `id` = 178955 WHERE `guid` BETWEEN @OGUID+43 AND @OGUID+46; -- object entries: horde: 178955; alliance contested: 179446
UPDATE `gameobject` SET `id` = 179286 WHERE `guid` BETWEEN @OGUID+156 AND @OGUID+162; -- BG_AV_GO_GY_BANNER_ALLIANCE_CONT
UPDATE `gameobject` SET `id` = 179287 WHERE `guid` BETWEEN @OGUID+163 AND @OGUID+169; -- BG_AV_GO_GY_BANNER_HORDE_CONT
UPDATE `gameobject` SET `id` = 179435 WHERE `guid` BETWEEN @OGUID+178 AND @OGUID+181; -- BG_AV_GO_BANNER_HORDE_CONT
UPDATE `gameobject` SET `id` = 179436 WHERE `guid` BETWEEN @OGUID+182 AND @OGUID+185; -- object entries: alliance: 178927; horde contested: 179436
UPDATE `gameobject` SET `id` = 179446 WHERE `guid` BETWEEN @OGUID+186 AND @OGUID+189; -- object entries: horde: 178955; alliance contested: 179446
UPDATE `gameobject` SET `spawnMask` = 0 WHERE `guid` BETWEEN @OGUID+401 AND @OGUID+416; -- Alliance - Boss Dead - Alliance Lost Flames?

-- ======
-- EVENTS
-- ======

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@OGUID+193, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+194, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+195, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+196, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+197, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+198, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+199, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+200, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+201, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+202, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+203, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+204, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+205, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+206, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+207, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+208, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+209, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+210, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+211, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+212, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+213, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+214, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+215, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+216, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+217, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+218, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+219, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+220, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+221, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+222, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+223, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+224, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+225, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+226, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+227, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+228, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+229, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+230, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+231, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+232, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+233, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+234, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+235, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+236, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+237, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+238, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+239, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+240, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+241, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+242, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+243, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+244, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+245, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+246, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+247, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+248, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+249, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+250, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+251, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+252, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+253, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+254, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+255, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+256, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+257, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+258, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+259, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+260, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+261, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+262, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+263, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+264, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+265, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+266, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+267, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+268, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+269, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+270, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+271, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+272, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+273, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+274, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+275, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+276, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+277, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+278, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+279, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+280, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+281, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+282, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+283, 2), -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)
(@OGUID+284, 2); -- Hardpacked Snowdrift (Feast of Winter Veil - Main Event)

-- WOTLK+

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 25, 'Hardpacked Snowdrift (180654)'),
(@PGUID+2, 7, 'Drek''Thar''s Scrolls (179004/179005)');

-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES

-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+325, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+326, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+327, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+328, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+329, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+330, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+331, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+332, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+333, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+334, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)'),
(@OGUID+335, @PGUID+2, 0, 'Drek''Thar''s Scrolls (179004/179005)');

INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(180654, @PGUID+1, 0, 'Hardpacked Snowdrift (180654)');

-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+0, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000', '0', '0', '0', '0'),
(@SGGUID+1, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001', '0', '0', '0', '0'),
(@SGGUID+2, 'Alterac Valley - Frostwolf Battleguard (2) Standing 000', '0', '0', '0', '0'),
(@SGGUID+3, 'Alterac Valley - Frostwolf Battleguard (2) Standing 001', '0', '0', '0', '0'),
(@SGGUID+4, 'Alterac Valley - Frostwolf Battleguard (2) Standing 002', '0', '0', '0', '0'),
(@SGGUID+5, 'Alterac Valley - Frostwolf Battleguard (2) Standing 003', '0', '0', '0', '0'),
(@SGGUID+6, 'Alterac Valley - Frostwolf Battleguard (2) Standing 004', '0', '0', '0', '0'),
(@SGGUID+7, 'Alterac Valley - Frostwolf Battleguard (2) Standing 005', '0', '0', '0', '0'),
(@SGGUID+8, 'Alterac Valley - Frostwolf Battleguard (2) Standing 006', '0', '0', '0', '0'),
(@SGGUID+9, 'Alterac Valley - Frostwolf Battleguard (2) Standing 007', '0', '0', '0', '0'),
(@SGGUID+10, 'Alterac Valley - Frostwolf Battleguard (2) Standing 008', '0', '0', '0', '0'),
(@SGGUID+11, 'Alterac Valley - Frostwolf Battleguard (2) Standing 009', '0', '0', '0', '0'),
(@SGGUID+14, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000', '0', '0', '0', '0'),
(@SGGUID+15, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001', '0', '0', '0', '0');

-- INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+0, @CGUID+3001, '0'),
(@SGGUID+0, @CGUID+3002, '1'),
(@SGGUID+0, @CGUID+3003, '2'),
(@SGGUID+1, @CGUID+3004, '0'),
(@SGGUID+1, @CGUID+3005, '1'),
(@SGGUID+1, @CGUID+3006, '2'),
(@SGGUID+2, @CGUID+329, '-1'),
(@SGGUID+2, @CGUID+330, '-1'),
(@SGGUID+3, @CGUID+331, '-1'),
(@SGGUID+3, @CGUID+332, '-1'),
(@SGGUID+4, @CGUID+333, '-1'),
(@SGGUID+4, @CGUID+334, '-1'),
(@SGGUID+5, @CGUID+335, '-1'),
(@SGGUID+5, @CGUID+336, '-1'),
(@SGGUID+6, @CGUID+337, '-1'),
(@SGGUID+6, @CGUID+338, '-1'),
(@SGGUID+7, @CGUID+339, '-1'),
(@SGGUID+7, @CGUID+340, '-1'),
(@SGGUID+8, @CGUID+341, '-1'),
(@SGGUID+8, @CGUID+342, '-1'),
(@SGGUID+9, @CGUID+343, '-1'),
(@SGGUID+9, @CGUID+344, '-1'),
(@SGGUID+10, @CGUID+345, '-1'),
(@SGGUID+10, @CGUID+346, '-1'),
(@SGGUID+11, @CGUID+347, '-1'),
(@SGGUID+11, @CGUID+348, '-1'),
(@SGGUID+14, @CGUID+327, '0'),
(@SGGUID+14, @CGUID+1120, '1'),
(@SGGUID+14, @CGUID+1121, '2'),
(@SGGUID+15, @CGUID+328, '0'),
(@SGGUID+15, @CGUID+1122, '1'),
(@SGGUID+15, @CGUID+1123, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+0, '2', '2', '0', @SGGUID+1, 4, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000'),
(@SGGUID+1, '2', '2', '0', @SGGUID+1, 4, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001'),
(@SGGUID+14, '2', '2', '0', @SGGUID+14, 4, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000'),
(@SGGUID+15, '2', '2', '0', @SGGUID+15, 4, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+0, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 000'),
(@SGGUID+1, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001'),
(@SGGUID+14, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000'),
(@SGGUID+15, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+0, 1, -859.836, -575.13, 57.5842, 100, 0, 0),
(@SGGUID+0, 2, -849.803, -589.85, 57.2139, 100, 0, 0),
(@SGGUID+0, 3, -839.376, -608.24, 53.8367, 100, 0, 0),
(@SGGUID+0, 4, -830.051, -614.475, 53.8358, 100, 0, 0),
(@SGGUID+0, 5, -823.818, -617.372, 54.0997, 100, 0, 0),
(@SGGUID+0, 6, -820.073, -621.848, 54.1188, 100, 0, 0),
(@SGGUID+0, 7, -824.824, -633.686, 54.0985, 100, 0, 0),
(@SGGUID+0, 8, -822.824, -645.186, 53.7469, 100, 0, 0),
(@SGGUID+0, 9, -816.324, -657.933, 52.4179, 100, 0, 0),
(@SGGUID+0, 10, -806.441, -671.972, 50.9329, 100, 0, 0),
(@SGGUID+0, 11, -793.291, -679.941, 51.3639, 100, 0, 0),
(@SGGUID+0, 12, -775.048, -680.999, 52.6981, 100, 0, 0),
(@SGGUID+0, 13, -752.352, -678.177, 51.2936, 100, 0, 0),
(@SGGUID+0, 14, -737.628, -684.115, 50.4701, 100, 0, 0),
(@SGGUID+0, 15, -733.896, -690.757, 50.7434, 100, 0, 0),
(@SGGUID+1, 1, -732.963, -692.409, 50.8744, 100, 0, 0),
(@SGGUID+1, 2, -741.759, -681.463, 50.5996, 100, 0, 0),
(@SGGUID+1, 3, -760.867, -678.376, 52.044, 100, 0, 0),
(@SGGUID+1, 4, -794.834, -680.382, 51.2917, 100, 0, 0),
(@SGGUID+1, 5, -805.914, -674.36, 50.9202, 100, 0, 0),
(@SGGUID+1, 6, -816.755, -655.284, 52.9218, 100, 0, 0),
(@SGGUID+1, 7, -825.154, -636.088, 54.1761, 100, 0, 0),
(@SGGUID+1, 8, -816.909, -624.247, 54.1102, 100, 0, 0),
(@SGGUID+1, 9, -821.624, -614.07, 54.0106, 100, 0, 0),
(@SGGUID+1, 10, -836.596, -614.253, 53.6729, 100, 0, 0),
(@SGGUID+1, 11, -847.75, -592.845, 56.6611, 100, 0, 0),
(@SGGUID+1, 12, -861.909, -571.033, 57.6101, 100, 0, 0),

(@SGGUID+14, 01, -1204.6187744140625, -255.149307250976562, 72.60112762451171875, 100, 0, 0),
(@SGGUID+14, 02, -1198.6724853515625, -263.806488037109375, 72.40224456787109375, 100, 0, 0),
(@SGGUID+14, 03, -1199.0384521484375, -276.228149414062500, 72.30696105957031250, 100, 0, 0),
(@SGGUID+14, 04, -1211.3309326171875, -293.159606933593750, 71.30730438232421875, 100, 0, 0),
(@SGGUID+14, 05, -1221.3789062500000, -304.292968750000000, 66.68947601318359375, 100, 0, 0),
(@SGGUID+14, 06, -1234.9140625000000, -320.330078125000000, 60.92349624633789062, 100, 0, 0),
(@SGGUID+14, 07, -1246.5870361328125, -335.933990478515625, 59.53279495239257812, 100, 0, 0),
(@SGGUID+14, 08, -1248.4927978515625, -350.659942626953125, 59.61238479614257812, 100, 0, 0),
(@SGGUID+14, 09, -1243.2993164062500, -362.562988281250000, 59.88753128051757812, 100, 0, 0),
(@SGGUID+14, 10, -1231.6542968750000, -368.349761962890625, 58.55659484863281250, 100, 0, 0),
(@SGGUID+14, 11, -1216.1821289062500, -367.168121337890625, 56.70429992675781250, 100, 0, 0),
(@SGGUID+14, 12, -1201.3459472656250, -366.813812255859375, 54.24971008300781250, 100, 0, 0),
(@SGGUID+14, 13, -1184.0523681640625, -361.436035156250000, 52.52675628662109375, 100, 0, 0),
(@SGGUID+14, 14, -1170.6364746093750, -355.453125000000000, 51.90175628662109375, 100, 0, 0),

(@SGGUID+15, 01, -749.00964355468750, -427.686187744140625, 66.5425262451171875, 100, 0, 0),
(@SGGUID+15, 02, -738.63140869140625, -421.380523681640625, 67.3579559326171875, 100, 0, 0),
(@SGGUID+15, 03, -721.63500976562500, -406.322174072265625, 67.7239532470703125, 100, 0, 0),
(@SGGUID+15, 04, -716.61816406250000, -390.288970947265625, 67.7145080566406250, 100, 0, 0),
(@SGGUID+15, 05, -713.53265380859375, -367.938140869140625, 67.2191467285156250, 100, 0, 0),
(@SGGUID+15, 06, -720.30621337890625, -353.030609130859375, 66.9865875244140625, 100, 0, 0),
(@SGGUID+15, 07, -731.67663574218750, -343.282287597656250, 66.6787261962890625, 100, 0, 0),
(@SGGUID+15, 08, -741.40808105468750, -344.549591064453125, 66.6887817382812500, 100, 0, 0),
(@SGGUID+15, 09, -731.53546142578125, -343.368774414062500, 66.6684722900390625, 100, 0, 0),
(@SGGUID+15, 10, -719.85864257812500, -353.696716308593750, 66.9414215087890625, 100, 0, 0),
(@SGGUID+15, 11, -707.65203857421875, -364.708923339843750, 66.6379547119140625, 100, 0, 0),
(@SGGUID+15, 12, -695.75152587890625, -368.396484375000000, 66.2544250488281250, 100, 0, 0),
(@SGGUID+15, 13, -673.94219970703125, -377.505096435546875, 65.6372375488281250, 100, 0, 0),
(@SGGUID+15, 14, -658.81726074218750, -384.289398193359375, 63.2656250000000000, 100, 0, 0);

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


