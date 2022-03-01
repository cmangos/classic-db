
SET @PATH_ID := 3;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 15;

SET @CREATURE_0 := 15544;
SET @CREATURE_1 := 15545;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`Id` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-25.8860683441162109', '-898.64892578125000', '56.00811386108398437', '100', '0', '0'),
(@PATH_ID, '02', '-30.9086914062500000', '-887.16473388671875', '56.25811386108398437', '100', '0', '0'),
(@PATH_ID, '03', '-41.1330299377441406', '-876.28656005859375', '55.91707611083984375', '100', '0', '0'),
(@PATH_ID, '04', '-51.3488502502441406', '-866.22686767578125', '55.63732528686523437', '100', '0', '0'),
(@PATH_ID, '05', '-53.7286796569824218', '-855.41857910156250', '56.13732528686523437', '100', '0', '0'),
(@PATH_ID, '06', '-52.1078567504882812', '-838.13629150390625', '56.51232528686523437', '100', '0', '0'),
(@PATH_ID, '07', '-45.0291328430175781', '-827.61413574218750', '57.16371917724609375', '100', '0', '0'),
(@PATH_ID, '08', '-34.0718879699707031', '-819.03253173828125', '57.60243988037109375', '100', '0', '0'),
(@PATH_ID, '09', '-22.5513782501220703', '-809.70117187500000', '58.02598190307617187', '100', '0', '0'),
(@PATH_ID, '10', '-17.2842884063720703', '-801.41705322265625', '58.91343307495117187', '100', '0', '0'),
(@PATH_ID, '11', '-16.2386074066162109', '-789.41882324218750', '59.59490966796875000', '100', '0', '0'),
(@PATH_ID, '12', '-19.1359596252441406', '-778.89746093750000', '60.26263427734375000', '100', '0', '0'),
(@PATH_ID, '13', '-22.5136718750000000', '-766.35351562500000', '61.43785476684570312', '100', '0', '0'),
(@PATH_ID, '14', '-22.7338867187500000', '-754.71032714843750', '63.30699539184570312', '100', '0', '0'),
(@PATH_ID, '15', '-20.2440872192382812', '-743.15185546875000', '65.33140563964843750', '100', '0', '0'),
(@PATH_ID, '16', '-18.7917747497558593', '-729.40576171875000', '67.89772796630859375', '100', '0', '0'),
(@PATH_ID, '17', '-19.8821067810058593', '-719.29595947265625', '69.37868499755859375', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-26.3453769683837890', '-900.05358886718750', '56.03553009033203125', '1.710422635078430175', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '-24.5785045623779296', '-899.83477783203125', '55.98673629760742187', '1.570796370506286621', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2405'),
(@CREATURE_1, '2405');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills - Tarren Mill - Tarren Mill Deathguard (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '1', '0', @PATH_ID, @PATH_TYPE, 'Hillsbrad Foothills - Tarren Mill - Tarren Mill Deathguard (2) Patrol 000');
