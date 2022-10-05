-- Revamp Winterspring (Winterfall Village)
-- High Chief Winterfall 10738
-- 2008-06-03 07-00-09_MUUGI.sqlite
-- 2009-03-24-19-51_9551_MIHASYA.sqlite
-- https://www.youtube.com/watch?v=58yibU0WuHU&ab_channel=BloodyFoxGaming
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 7438; -- Winterfall Ursa 7438
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 10738; -- High Chief Winterfall 10738
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 7439; -- Winterfall Shaman 7439 - creature_spell_list
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 7440; -- Winterfall Den Watcher 7440
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 10916; -- -- Winterfall Runner 10916 - NSR
-- 7441,7442,14372

-- about 50% have 17205 active
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (7438,7439,7440,7441,7442,14372,10738); -- AI handled (s.17205,13585)

DELETE FROM `creature` WHERE `id` IN (7438,7439,7440,10738,10916) AND `guid` IN (41021,41029,41018,41019,41022,41033,42315,41031,41028,41027,41017,41023,41020,41024,41025,41032,41026,41047,41049,41048,41034,41045,41042,41030,41046,41037,41044,41035,41041,41043);
DELETE FROM `creature_addon` WHERE `guid` = 42315;

DELETE FROM `creature` WHERE `id` IN (0,7438,7439,7440,10738,10916) AND `guid` BETWEEN 191474 AND 191506;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `movementtype`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
-- spawngroup 8-10min, reduce a bit as respawn happens at lowest respawntime
(191474, 10738, 1, 6726.2646, -5276.126, 778.2439, 0, 0, 0, 480, 600), -- High Chief Winterfall
(191475, 7439, 1, 6726.2646, -5276.126, 778.2439, 0, 0, 0, 480, 600), -- right when going back in
(191476, 7438, 1, 6726.2646, -5276.126, 778.2439, 0, 0, 0, 480, 600), -- left when going back in
-- spawn_entry
(191477, 7438, 1, 6718.06, -5225.87, 776.05, 0, 0, 4, 240, 360), -- 7439?
(191478, 7439, 1, 6672.991, -5123.819, 776.6279, 0, 0, 4, 240, 360), -- den watcher/shaman
(191479, 7440, 1, 6867.45, -5199.46, 733.573, 0, 0, 2, 240, 360), -- den watcher/shaman
(191480, 7440, 1, 6896.047, -5145.929, 698.4564, 0, 0, 2, 240, 360), -- den watcher/shaman
-- mountain
(191481, 7438, 1, 6667.84, -5122.11, 780.42, 0, 10, 1, 240, 360),
(191482, 7438, 1, 6646.41, -5083.27, 791.9520, 0, 10, 1, 240, 360),
(191483, 7438, 1, 6690.06, -5044.10, 780.40997, 0, 10, 1, 240, 360),
(191484, 7438, 1, 6719.06, -5010.87, 766.1040, 0, 10, 1, 240, 360),
(191485, 7438, 1, 6750.95, -4982.43, 774.3099, 0, 10, 1, 240, 360),
(191486, 7438, 1, 6747.06, -4953.18, 771.3369, 0, 10, 1, 240, 360),
(191487, 7438, 1, 6775.89, -4953.06, 763.7109, 0, 10, 1, 240, 360),
-- above
(191488, 7438, 1, 6780.27, -5049.56, 722.9160, 0, 1, 1, 240, 360), -- ursa/shaman
(191489, 7438, 1, 6780.07, -5062.27, 722.848, 0, 1, 1, 240, 360), -- ursa/shaman
(191490, 7439, 1, 6785.71, -5161.02, 732.786, 0, 1, 1, 240, 360), -- ursa/shaman
(191491, 7438, 1, 6787.50, -5151.04, 731.9110, 0, 1, 1, 240, 360), -- ursa/shaman
(191492, 7439, 1, 6731.89, -5134.97, 733.104, 0, 1, 1, 240, 360), -- ursa/shaman
(191493, 7438, 1, 6740.64, -5140.04, 730.0070, 0, 1, 1, 240, 360), -- ursa/shaman
(191494, 7438, 1, 6742.47, -5201.79, 761.6199, 0, 1, 1, 240, 360), -- ursa/shaman
-- below
(191495, 7440, 1, 6818.08, -5083.12, 693.565, 0, 1, 1, 240, 360), -- den watcher/shaman
(191496, 7440, 1, 6833.2, -5041.2, 690.799, 0, 1, 1, 240, 360), -- den watcher/shaman
(191497, 7440, 1, 6833.81, -5108.75, 693.6040, 0, 1, 1, 240, 360), -- den watcher/shaman
(191498, 7439, 1, 6845.32, -5115.65, 694.739, 0, 1, 1, 240, 360), -- den watcher/shaman
(191499, 7439, 1, 6865.22, -5098.99, 692.6569, 0, 1, 1, 240, 360), -- den watcher/shaman
(191500, 7440, 1, 6847.62, -5148.45, 704.5919, 0, 8, 1, 240, 360),
(191501, 7440, 1, 6879.10, -5192.58, 728.8530, 0, 8, 1, 240, 360),
(191502, 7440, 1, 6912.93, -5142.75, 695.0289, 0, 20, 1, 240, 360),
(191503, 7440, 1, 6922.14, -5080.25, 695.5139, 0, 20, 1, 240, 360),
(191504, 7440, 1, 6905.95, -5011.29, 693.1820, 0, 20, 1, 240, 360),
(191505, 7440, 1, 6856.73, -5014.25, 694.9570, 0, 20, 1, 240, 360),
(191506, 7440, 1, 6883.64, -4985.54, 696.64, 0, 20, 1, 240, 360);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 7438 FROM `creature` WHERE `guid` IN (191477,191488,191489,191490,191491,191492,191493,191494);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 7439 FROM `creature` WHERE `guid` IN (191477,191488,191489,191490,191491,191492,191493,191494);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 7439 FROM `creature` WHERE `guid` IN (191478,191479,191480,191495,191496,191497,191498,191499);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 7440 FROM `creature` WHERE `guid` IN (191478,191479,191480,191495,191496,191497,191498,191499);
UPDATE `creature` SET `Id` = 0 WHERE `guid` IN (191477,191488,191489,191490,191491,191492,191493,191494,191478,191479,191480,191495,191496,191497,191498,191499);

DELETE FROM `creature_movement` WHERE `id` = 191477;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(191477, 1, 6718.06, -5225.87, 776.05, 100, 0, 0),
(191477, 2, 6729.85, -5218.91, 769.35, 100, 0, 0),
(191477, 3, 6737.74, -5213.06, 764.17, 100, 0, 0),
(191477, 4, 6728.60, -5199.37, 756.44, 100, 0, 0),
(191477, 5, 6722.29, -5190.31, 752.26, 100, 0, 0),
(191477, 6, 6731.52, -5176.72, 743.48, 100, 0, 0),
(191477, 7, 6750.77, -5146.70, 729.74, 100, 0, 0),
(191477, 8, 6770.41, -5159.79, 732.60, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 191478;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(191478, 1, 6672.991, -5123.819, 776.6279, 100, 0, 0),
(191478, 2, 6638.452, -5102.194, 785.6561, 100, 0, 0),
(191478, 3, 6650.196, -5078.844, 791.2263, 100, 0, 0),
(191478, 4, 6677.679, -5060.239, 780.3429, 100, 0, 0),
(191478, 5, 6687.422, -5044.838, 780.5929, 100, 0, 0),
(191478, 6, 6697.113, -5037.76, 775.5929, 100, 0, 0),
(191478, 7, 6707.379, -5024.815, 766.2048, 100, 0, 0),
(191478, 8, 6724.477, -5014.26, 765.8298, 100, 0, 0),
(191478, 9, 6740.117, -4984.761, 773.6328, 100, 0, 0),
(191478, 10, 6733.8867, -4965.7383, 772.15936, 100, 0, 0),
(191478, 11, 6764.60, -4958.81, 768.484, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 191479;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(191479, 1, 6867.45, -5199.46, 733.573, 100, 0, 0),
(191479, 2, 6866.66, -5185.33, 724.42, 100, 0, 0),
(191479, 3, 6860.35, -5176.68, 718.20, 100, 0, 0),
(191479, 4, 6844.37, -5143.83, 700.96, 100, 0, 0),
(191479, 5, 6856.64, -5133.49, 697.53, 100, 0, 0),
(191479, 6, 6860.04, -5122.54, 695.85, 100, 0, 0),
(191479, 7, 6852.93, -5083.08, 690.47, 100, 0, 0),
(191479, 8, 6843.18, -5057.18, 690.28, 100, 0, 0),
(191479, 9, 6832.81, -5060.62, 690.79, 100, 0, 0),
(191479, 10, 6830.04, -5072.24, 691.25, 100, 0, 0),
(191479, 11, 6831.81, -5086.66, 691.79, 100, 0, 0),
(191479, 12, 6836.77, -5105.74, 692.84, 100, 0, 0),
(191479, 13, 6860.04, -5122.54, 695.85, 100, 0, 0),
(191479, 14, 6856.64, -5133.49, 697.53, 100, 0, 0),
(191479, 15, 6844.37, -5143.83, 700.96, 100, 0, 0),
(191479, 16, 6860.35, -5176.68, 718.20, 100, 0, 0),
(191479, 17, 6866.66, -5185.33, 724.42, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 191480;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(191480, 1, 6896.047, -5145.929, 698.4564, 100, 0, 0),
(191480, 2, 6912.23, -5154.356, 699.7226, 100, 0, 0),
(191480, 3, 6917.795, -5157.371, 698.9726, 100, 0, 0),
(191480, 4, 6924.244, -5140.042, 694.5976, 100, 0, 0),
(191480, 5, 6926.439, -5140.172, 694.2226, 100, 0, 0),
(191480, 6, 6912.631, -5155.736, 699.8476, 100, 0, 0),
(191480, 7, 6898.35, -5155.16, 698.56, 100, 0, 0),
(191480, 8, 6893.58, -5100.58, 695.29, 100, 0, 0),
(191480, 9, 6904.77, -5064.33, 691.32, 100, 0, 0),
(191480, 10, 6875.16, -5014.68, 694.93, 100, 0, 0),
(191480, 11, 6865.56, -4995.85, 695.94, 100, 0, 0),
(191480, 12, 6884.68, -4974.75, 699.25, 100, 0, 0),
(191480, 13, 6893.75, -4981.16, 697.89, 100, 0, 0),
(191480, 14, 6905.25, -5032.75, 693.83, 100, 0, 0),
(191480, 15, 6904.77, -5064.33, 691.32, 100, 0, 0),
(191480, 16, 6893.58, -5100.58, 695.29, 100, 0, 0);

DELETE FROM `spawn_group` WHERE `Id` = 19005;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19005, 'Winterspring (Winterfall Village) - High Chief Winterfall | Winterfall Ursa | Winterfall Shaman (3)', 0, 0, 0, 2);

DELETE FROM `spawn_group_spawn` WHERE `Id` = 19005;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19005, 191474, 0), -- High Chief Winterfall
(19005, 191476, 1), -- left when going back in
(19005, 191475, 2); -- right when going back in

DELETE FROM `spawn_group_formation` WHERE `Id` = 19005;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19005, 3, 5, 0, 19005, 2, 'Winterspring (Winterfall Village) - High Chief Winterfall | Winterfall Ursa | Winterfall Shaman (3)');

DELETE FROM `waypoint_path_name` WHERE `PathId` = 19005;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19005, 'Winterspring (Winterfall Village) - High Chief Winterfall | Winterfall Ursa | Winterfall Shaman (3)');

DELETE FROM `creature_movement` WHERE `id` IN (42315,41033);
DELETE FROM `waypoint_path` WHERE `PathId` = 19005;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19005, 1, 6726.2646, -5276.126, 778.2439, 100, 0, 0),
(19005, 2, 6723.2944, -5266.33, 778.23694, 100, 0, 0),
(19005, 3, 6716.6504, -5246.5376, 779.4019, 100, 0, 0),
(19005, 4, 6719.367, -5253.45, 778.2501, 100, 0, 0),
(19005, 5, 6723.7593, -5268.194, 777.9988, 100, 0, 0);

-- Winterfall Shaman 7439 - creature_spell_list
UPDATE `creature_template` SET `SpellList` = 743901 WHERE `entry` = 7439;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(743901, 'Winterspring - Winterfall Shaman', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(743901, 0, 11431, 0, 201, 0, 100, 1, 0, 10000, 10000, 20000, 'Winterspring - Winterfall Shaman - Healing Touch on Friendly Missing 50% including self');

