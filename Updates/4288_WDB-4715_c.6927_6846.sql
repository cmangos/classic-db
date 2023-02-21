-- Jerod's Landing - Elvynn Forest

-- Defias Dockmaster 6846 -- corrected
UPDATE creature SET MovementType=4 WHERE guid = 80737;
UPDATE creature_template SET MovementType = 4 WHERE Entry = 6846; -- linear
DELETE FROM creature_movement WHERE id IN (80737);
DELETE FROM creature_movement_template WHERE entry = 6846;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(6846,1,-9952.356,-132.7373,25.526875,3.4732,120000,0),
(6846,2,-9960.04,-136.021,25.3618,100,0,0),
(6846,3,-9965.11,-140.852,24.4639,100,0,0),
(6846,4,-9967.56,-144.874,24.131,3.90064,15000,684601);

-- Defias Dockworker 6927
UPDATE creature SET position_x = -9961.2, position_y = -153.40921, position_z = 21.847925, spawndist = 0, MovementType = 0 WHERE guid IN (84587,80730,80732);
DELETE FROM creature_movement WHERE id IN (84587,80730,80732);
-- remove from linking
DELETE FROM `creature_linking` WHERE master_guid IN (84587,80730,80732);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19982;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19982, 'Elvynn Forest - Defias Dockworker 6927 x3 - Patrol', 0, 0, 0, 3);

DELETE FROM `spawn_group_spawn` WHERE id = 19982;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19982, 84587, 0),
(19982, 80730, 1),
(19982, 80732, 2);

DELETE FROM `spawn_group_formation` WHERE id = 19982;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19982, 1, 2, 0, 19982, 4, 'Elvynn Forest - Defias Dockworker 6927 x3 - Patrol');

DELETE FROM `waypoint_path_name` WHERE PathId = 19982;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19982,'Elvynn Forest - Defias Dockworker 6927 x3 - Patrol');

DELETE FROM `waypoint_path` WHERE PathId = 19982;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19982,1,-9961.2,-153.40921,21.847925,100,1000,0),
(19982,2,-9956.517,-159.12874,22.818628,100,0,0),
(19982,3,-9951.445,-163.15524,24.69314,100,0,0),
(19982,4,-9946.228,-165.53757,27.017359,100,0,0),
(19982,5,-9944.468,-163.84106,27.131617,100,0,0),
(19982,6,-9944.139,-153.49643,25.133081,100,0,0),
(19982,7,-9943.608,-147.81813,25.008081,100,0,0),
(19982,8,-9936.224,-135.3706,25.780787,100,0,0),
(19982,9,-9929.365,-131.3284,25.417545,100,0,0),
(19982,10,-9928.282,-121.96587,25.139225,100,0,0),
(19982,11,-9935.369,-114.50511,25.765055,100,0,0),
(19982,12,-9945.132,-113.93359,25.394205,100,0,0),
(19982,13,-9956.19,-116.17986,25.25944,100,0,0),
(19982,14,-9965.036,-125.75975,25.56315,100,0,0),
(19982,15,-9966.419,-130.92566,24.818033,100,0,0),
(19982,16,-9967.337,-137.82283,24.607573,100,0,0),
(19982,17,-9965.224,-140.53967,24.583359,100,1000,0);

