
SET @PATH_ID := 2;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 14;

SET @CREATURE_0 := 16597;
SET @CREATURE_1 := 16598;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`Id` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '400.548065185546875', '-1006.97210693359375', '111.4292907714843750', '100', '0', '0'),
(@PATH_ID, '02', '417.568847656250000', '-1017.57788085937500', '111.9616851806640625', '100', '0', '0'),
(@PATH_ID, '03', '431.936523437500000', '-1025.43322753906250', '112.4709472656250000', '100', '0', '0'),
(@PATH_ID, '04', '458.349395751953125', '-1042.47082519531250', '108.2526473999023437', '100', '0', '0'),
(@PATH_ID, '05', '466.463531494140625', '-1046.00634765625000', '108.0832672119140625', '100', '0', '0'),
(@PATH_ID, '06', '477.207153320312500', '-1044.00256347656250', '108.4262466430664062', '100', '0', '0'),
(@PATH_ID, '07', '484.171020507812500', '-1045.38647460937500', '108.4306564331054687', '100', '0', '0'),
(@PATH_ID, '08', '483.021484375000000', '-1055.37756347656250', '108.6252441406250000', '100', '0', '0'),
(@PATH_ID, '09', '482.951293945312500', '-1060.69677734375000', '108.5797653198242187', '100', '0', '0'),
(@PATH_ID, '10', '490.055816650390625', '-1069.55419921875000', '107.9219818115234375', '100', '0', '0'),
(@PATH_ID, '11', '498.686157226562500', '-1075.47033691406250', '107.3527069091796875', '100', '0', '0'),
(@PATH_ID, '12', '511.566619873046875', '-1085.87829589843750', '105.4243392944335937', '100', '0', '0'),
(@PATH_ID, '13', '518.680786132812500', '-1088.69787597656250', '105.3427734375000000', '100', '0', '0'),
(@PATH_ID, '14', '531.083740234375000', '-1087.55627441406250', '105.8041610717773437', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '400.146270751953125', '-1008.19732666015625', '111.4647293090820312', '1.850049018859863281', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '401.270294189453125', '-1006.72808837890625', '111.2815551757812500', '2.652900457382202148', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Mountains - Frostwolf Battleguard (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Alterac Mountains - Frostwolf Battleguard (2) Patrol 000');
