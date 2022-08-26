
DELETE FROM `creature` WHERE (`guid` IN (44397, 44396, 44366, 44365, 42921));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @PATH_ID := 10076;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10076;

SET @CREATURE_0 := 44373;
SET @CREATURE_1 := 44374;
SET @CREATURE_2 := 44375;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-8113.03808593750', '971.91894531250000', '61.91807556152343750', '0.01745329238474369', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-8117.20654296875', '967.50390625000000', '63.71255874633789062', '6.07374572753906250', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_2, '0', '1', '1', '0', '0', '-8120.85009765625', '979.61480712890625', '62.40194320678710937', '5.79449319839477539', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-8107.39746093750', '968.460266113281250', '61.39082717895507812', '100', '0', '0'),
(@PATH_ID, '02', '-8102.69531250000', '967.628234863281250', '59.71175003051757812', '100', '0', '0'),
(@PATH_ID, '03', '-8097.49755859375', '968.050659179687500', '57.13080596923828125', '100', '0', '0'),
(@PATH_ID, '04', '-8091.92724609375', '968.571838378906250', '54.41352081298828125', '100', '0', '0'),
(@PATH_ID, '05', '-8083.96728515625', '969.309387207031250', '49.85309600830078125', '100', '0', '0'),
(@PATH_ID, '06', '-8075.33496093750', '971.126098632812500', '46.48102569580078125', '100', '0', '0'),
(@PATH_ID, '07', '-8065.84716796875', '977.336364746093750', '44.28659439086914062', '100', '0', '0'),
(@PATH_ID, '08', '-8065.17382812500', '984.783874511718750', '42.63229751586914062', '100', '0', '0'),
(@PATH_ID, '09', '-8064.59277343750', '993.407348632812500', '41.57773208618164062', '100', '0', '0'),
(@PATH_ID, '10', '-8060.65087890625', '997.812194824218750', '40.37204360961914062', '100', '0', '0'),
(@PATH_ID, '11', '-8054.95654296875', '1004.85101318359375', '39.32977294921875000', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15196'),
(@CREATURE_1, '11737'),
(@CREATURE_2, '11737');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Deathclasp | Stonelash Flayer (3) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '4', '5', '0', @PATH_ID, @PATH_TYPE, 'Silithus - Deathclasp | Stonelash Flayer (3) Patrol 000');
