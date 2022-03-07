
SET @PATH_ID := 5;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 17;

SET @CREATURE_0 := 6858; -- new, does not seem to exist
SET @CREATURE_1 := 6867; -- new, does not seem to exist

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6934.82421875000', '-1260.2910156250000', '148.3810577392578125', '100', '0', '0'),
(@PATH_ID, '02', '-6931.22070312500', '-1272.6796875000000', '152.0112152099609375', '100', '0', '0'),
(@PATH_ID, '03', '-6928.71533203125', '-1285.1052246093750', '155.5783538818359375', '100', '0', '0'),
(@PATH_ID, '04', '-6926.16845703125', '-1297.9465332031250', '159.5961761474609375', '100', '0', '0'),
(@PATH_ID, '05', '-6925.52832031250', '-1312.6861572265625', '165.0602264404296875', '100', '0', '0'),
(@PATH_ID, '06', '-6923.62353515625', '-1324.5836181640625', '166.2352752685546875', '100', '0', '0'),
(@PATH_ID, '07', '-6924.25439453125', '-1343.7224121093750', '166.6816101074218750', '100', '0', '0'),
(@PATH_ID, '08', '-6918.93457031250', '-1357.2006835937500', '166.9545593261718750', '100', '0', '0'),
(@PATH_ID, '09', '-6905.97998046875', '-1369.5549316406250', '167.5514831542968750', '100', '0', '0'),
(@PATH_ID, '10', '-6897.16943359375', '-1371.8743896484375', '167.1439971923828125', '100', '0', '0'),
(@PATH_ID, '11', '-6884.44531250000', '-1384.3165283203125', '167.7064971923828125', '100', '0', '0'),
(@PATH_ID, '12', '-6872.94580078125', '-1395.2946777343750', '167.7064971923828125', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6936.47900390625', '-1252.1317138671875', '146.3401031494140625', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '-6939.11425781250', '-1254.5560302734375', '146.6172485351562500', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5844'),
(@CREATURE_1, '5844');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Dark Iron Slayer (2) Patrol 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '3', '0', @PATH_ID, @PATH_TYPE, 'Searing Gorge - Dark Iron Slayer (2) Patrol 001');
