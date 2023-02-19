-- Kolkar Crag - Durotar

-- Warlord Kolkanis 5808
-- moved to spawn GROUPS
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1253); -- 1253	1	Warlord Kolkanis (5808)
DELETE FROM `pool_template` WHERE `entry` IN (1253);
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1253);
DELETE FROM `spawn_group` WHERE id = 19987;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19987, 'Durotar - Kolkar Crag - Warlord Kolkanis 5808', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19987;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19987, 12269, -1),
(19987, 12268, -1),
(19987, 12260, -1);

-- updates
UPDATE creature SET position_x = -924.866943, position_y = -4484.079590, position_z = 29.544739 WHERE guid = 3446;
UPDATE creature SET position_x = -989.229370, position_y = -4555.665039, position_z = 25.508944, spawndist = 15, MovementType = 1 WHERE guid = 12917;
UPDATE creature SET position_x = -973.575928, position_y = -4509.231445, position_z = 25.933950, spawndist = 10, MovementType = 1 WHERE guid = 12920;
UPDATE creature SET position_x = -1011.1714, position_y = -4511.447, position_z = 25.703856, spawndist = 0, MovementType = 4 WHERE guid = 6592; -- linear wp
UPDATE creature SET position_x = -946.34204, position_y = -4497.454, position_z = 28.634068, spawndist = 0, MovementType = 4 WHERE guid = 12926; -- linear wp
UPDATE creature SET position_x = -1039.308960, position_y = -4489.505371, position_z = 25.684795, spawndist = 15, MovementType = 1 WHERE guid = 3450;
-- waypoints
DELETE FROM creature_movement WHERE id IN (6592,12926);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 6592
(6592,1,-1011.1714,-4511.447,25.703856,100,1000,0),
(6592,2,-1016.5749,-4504.837,25.430418,100,0,0),
(6592,3,-1022.3192,-4498.245,25.783218,100,0,0),
(6592,4,-1030.9442,-4488.652,26.033218,100,0,0),
(6592,5,-1032.9987,-4483.2085,25.783218,100,0,0),
(6592,6,-1034.337,-4476.383,25.445433,100,0,0),
(6592,7,-1035.5571,-4466.5044,26.187475,100,0,0),
(6592,8,-1035.4294,-4455.0845,25.87644,100,0,0),
(6592,9,-1034.4946,-4447.6855,25.937475,100,0,0),
(6592,10,-1031.3956,-4438.9873,25.821508,100,0,0),
(6592,11,-1025.6041,-4430.6777,26.34033,100,0,0),
(6592,12,-1016.3214,-4424.8374,26.221434,100,0,0),
(6592,13,-1010.3958,-4422.237,26.490477,100,2000,0),
-- 12926
(12926,1,-946.34204,-4497.454,28.634068,100,1000,21),
(12926,2,-957.75714,-4500.8384,25.858488,100,0,0),
(12926,3,-966.61316,-4506.733,25.733488,100,0,0),
(12926,4,-972.24384,-4511.816,25.965178,100,0,0),
(12926,5,-982.7132,-4522.9604,25.733488,100,0,0),
(12926,6,-986.43036,-4533.489,25.760836,100,0,0),
(12926,7,-991.0911,-4546.8306,25.804781,100,0,0),
(12926,8,-990.4855,-4556.076,25.554781,100,0,0),
(12926,9,-990.051,-4564.4106,25.936129,100,0,0),
(12926,10,-989.3495,-4570.9473,25.681177,100,0,0),
(12926,11,-988.3284,-4581.595,27.092667,100,60000,0);

