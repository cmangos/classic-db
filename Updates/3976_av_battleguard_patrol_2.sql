
SET @PATH_ID := 300001;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 300001;

SET @CREATURE_0 := 51949;
SET @CREATURE_1 := 53886;
SET @CREATURE_2 := 53887;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-732.6103515625000', '-691.92895507812500', '50.89625549316406250', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_1, '0', '30', '1', '0', '0', '-730.9776611328125', '-690.54754638671875', '50.88350677490234375', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_2, '0', '30', '1', '0', '0', '-730.7253417968750', '-689.14965820312500', '50.80292510986328125', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'); -- not the actual spawnpoint

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-732.96301269531250', '-692.40942382812500', '50.87435150146484375', '100', '0', '0'),
(@PATH_ID, '02', '-741.75909423828125', '-681.46282958984375', '50.59962463378906250', '100', '0', '0'),
(@PATH_ID, '03', '-760.86651611328125', '-678.37609863281250', '52.04396820068359375', '100', '0', '0'),
(@PATH_ID, '04', '-794.83404541015625', '-680.38232421875000', '51.29168701171875000', '100', '0', '0'),
(@PATH_ID, '05', '-805.91436767578125', '-674.36047363281250', '50.92020416259765625', '100', '0', '0'),
(@PATH_ID, '06', '-816.75469970703125', '-655.28350830078125', '52.92183685302734375', '100', '0', '0'),
(@PATH_ID, '07', '-825.15447998046875', '-636.08758544921875', '54.17605209350585937', '100', '0', '0'),
(@PATH_ID, '08', '-816.90863037109375', '-624.24737548828125', '54.11020660400390625', '100', '0', '0'),
(@PATH_ID, '09', '-821.62402343750000', '-614.07012939453125', '54.01057052612304687', '100', '0', '0'),
(@PATH_ID, '10', '-836.59613037109375', '-614.25311279296875', '53.67286682128906250', '100', '0', '0'),
(@PATH_ID, '11', '-847.74987792968750', '-592.84533691406250', '56.66110229492187500', '100', '0', '0'),
(@PATH_ID, '12', '-861.90917968750000', '-571.03314208984375', '57.61011886596679687', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14282'),
(@CREATURE_2, '14282');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@PATH_ID, 'Alterac Valley - Frostwolf Battleguard | Frostwolf Bloodhound (3) Patrol 001');
