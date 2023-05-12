-- Murloc 285 & Murloc Streamrunner 735 - Elvynn Forest
-- Spawn Groups
UPDATE creature SET position_x = -9533.875, position_y = -247.13477, position_z = 59.253498, spawndist = 0, MovementType = 0 WHERE guid IN (81075,81076);
DELETE FROM `spawn_group` WHERE id = 19949;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19949, 'Elvynn Forest - Crystal Lake - Murloc 285 & Murloc Streamrunner 735 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 19949;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19949, 81075, 0),
(19949, 81076, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19949;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19949, 2, 2, 0, 19949, 4, 'Elvynn Forest - Crystal Lake - Murloc 285 & Murloc Streamrunner 735 - Patrol - 1'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19949;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19949,'Elvynn Forest - Crystal Lake - Murloc 285 & Murloc Streamrunner 735 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 19949;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19949,1,-9533.875,-247.13477,59.253498,100,1000,0),
(19949,2,-9528.381,-275.625,59.212124,100,0,0),
(19949,3,-9534.31,-314.94553,61.39488,100,0,0),
(19949,4,-9533.392,-338.09244,58.830914,100,0,0),
(19949,5,-9529.281,-363.15875,61.970486,100,0,0),
(19949,6,-9538.1455,-385.48166,59.468914,100,0,0),
(19949,7,-9538.119,-414.9847,60.872627,100,0,0),
(19949,8,-9520.827,-452.0129,59.869164,100,0,0),
(19949,9,-9495.76,-468.91742,59.08064,100,0,0),
(19949,10,-9454.783,-468.91678,58.688805,100,0,0),
(19949,11,-9432.437,-450.43448,58.62647,100,0,0),
(19949,12,-9411.854,-429.52258,58.592583,100,0,0),
(19949,13,-9413.962,-404.32693,59.47637,100,0,0),
(19949,14,-9411.835,-373.01877,58.20725,100,0,0),
(19949,15,-9402.171,-339.41104,57.584885,100,0,0),
(19949,16,-9415.855,-316.53354,59.472088,100,0,0),
(19949,17,-9433.978,-304.1337,58.819855,100,0,0),
(19949,18,-9459.294,-288.67133,58.307087,100,0,0),
(19949,19,-9474.396,-269.57877,58.005177,100,0,0),
(19949,20,-9475.601,-261.26248,58.050617,100,0,0),
(19949,21,-9462.517,-237.57812,57.73024,100,1000,0);

