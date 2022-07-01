
SET @PATH_ID := 300002;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 300014;

SET @CREATURE_0 := 150084;
SET @CREATURE_1 := 150126;
SET @CREATURE_2 := 150127;

UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8.0 / 7.0) WHERE (`Entry` IN  ('12051', '14282'));

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-1204.6187744140625', '-255.149307250976562', '72.60112762451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_1, '0', '30', '1', '0', '0', '-1206.6187744140625', '-253.149307250976562', '72.60112762451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_2, '0', '30', '1', '0', '0', '-1208.6187744140625', '-251.149307250976562', '72.60112762451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'); -- not the actual spawnpoint

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-1204.6187744140625', '-255.149307250976562', '72.60112762451171875', '100', '0', '0'),
(@PATH_ID, '02', '-1198.6724853515625', '-263.806488037109375', '72.40224456787109375', '100', '0', '0'),
(@PATH_ID, '03', '-1199.0384521484375', '-276.228149414062500', '72.30696105957031250', '100', '0', '0'),
(@PATH_ID, '04', '-1211.3309326171875', '-293.159606933593750', '71.30730438232421875', '100', '0', '0'),
(@PATH_ID, '05', '-1221.3789062500000', '-304.292968750000000', '66.68947601318359375', '100', '0', '0'),
(@PATH_ID, '06', '-1234.9140625000000', '-320.330078125000000', '60.92349624633789062', '100', '0', '0'),
(@PATH_ID, '07', '-1246.5870361328125', '-335.933990478515625', '59.53279495239257812', '100', '0', '0'),
(@PATH_ID, '08', '-1248.4927978515625', '-350.659942626953125', '59.61238479614257812', '100', '0', '0'),
(@PATH_ID, '09', '-1243.2993164062500', '-362.562988281250000', '59.88753128051757812', '100', '0', '0'),
(@PATH_ID, '10', '-1231.6542968750000', '-368.349761962890625', '58.55659484863281250', '100', '0', '0'),
(@PATH_ID, '11', '-1216.1821289062500', '-367.168121337890625', '56.70429992675781250', '100', '0', '0'),
(@PATH_ID, '12', '-1201.3459472656250', '-366.813812255859375', '54.24971008300781250', '100', '0', '0'),
(@PATH_ID, '13', '-1184.0523681640625', '-361.436035156250000', '52.52675628662109375', '100', '0', '0'),
(@PATH_ID, '14', '-1170.6364746093750', '-355.453125000000000', '51.90175628662109375', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '12051'),
(@CREATURE_1, '14282'),
(@CREATURE_2, '14282');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@PATH_ID, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 000');


