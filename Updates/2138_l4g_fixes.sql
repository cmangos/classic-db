-- Menethil Harbour NPCs
-- Updates for NPCs with random movement
UPDATE creature SET spawndist=4, MovementType=1 WHERE guid=9453;
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid=9464;
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=9504;
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=9527;
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid=9528;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=9554;
UPDATE creature SET spawndist=4, MovementType=1 WHERE guid=9555;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=9561;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=9562;
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid=9697;
UPDATE creature SET position_x=-3667.17, position_y=-884.368, position_z=9.95435, orientation=0.6876, spawndist=4, MovementType=1 WHERE guid=9454;
UPDATE creature SET position_x=-3646.95, position_y=-835.279, position_z=9.65445, orientation=5.7590 WHERE guid=9456;

-- Updates for NPCs with Waypoints
UPDATE creature SET position_x=-3793.04, position_y=-862.698, position_z=11.5974, orientation=2.2355, MovementType=2 WHERE guid=9461 AND id=1441; -- Brak Durnad ID 1441
UPDATE creature SET position_x=-3767.47, position_y=-778.853, position_z=8.91371, orientation=5.1637, MovementType=2 WHERE guid=9475 AND id=1481; -- Bart Tidewater ID 1481
UPDATE creature SET position_x=-3602.91, position_y=-711.051, position_z=6.48002, orientation=6.1372, MovementType=2 WHERE guid=9695 AND id=1434; -- Menethil Sentry GUID 9695
UPDATE creature SET position_x=-3822.19, position_y=-767.092, position_z=10.0241, orientation=3.24575, MovementType=2 WHERE guid=9514 AND id=1434; -- Menethil Sentry GUID 9514
UPDATE creature SET position_x=-3797.76, position_y=-866.926, position_z=11.5981, orientation=3.216594, MovementType=2 WHERE guid=9522 AND id=1450; -- Brahnmar ID 1450
UPDATE creature SET position_x=-3776.6, position_y=-797.833, position_z=8.69004, orientation=2.882, MovementType=2 WHERE guid=9525 AND id=1451; -- Camerick Jougleur ID 1451
UPDATE creature SET position_x=-3730.16, position_y=-807.502, position_z=20.3016, orientation=4.23419, MovementType=2 WHERE guid=9557 AND id=1434; -- Menethil Sentry GUID 9514
UPDATE creature SET position_x=-3758.33, position_y=-855.729, position_z=10.0241, orientation=4.46419, MovementType=2 WHERE guid=9563 AND id=1459; -- Naela Trance ID 1459
UPDATE creature SET position_x=-3743.22, position_y=-797.57, position_z=11.4796, orientation=2.64953, MovementType=2 WHERE guid=9570 AND id=1483; -- Murphy West ID 1483
UPDATE creature SET position_x=-3713.02, position_y=-735.669, position_z=10.9144, orientation=2.64953, MovementType=2 WHERE guid=9696 AND id=1434; -- Menethil Sentry GUID 9696
UPDATE creature SET MovementType=2 WHERE guid=9468 AND id=1437; -- Thomas Booker ID 1437

DELETE FROM creature_movement_template WHERE entry IN (1441,1481,1450,1451,1459,1483,1437);
INSERT INTO creature_movement_template (entry, point, pathId, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Brak Durnad ID 1441
(1441, 1, 0, -3793.04, -862.698, 11.5974, 9000, 0, 100),
(1441, 2, 0, -3788.95, -868.414, 11.5929, 10000, 0, 100),
-- Bart Tidewater ID 1481
(1481, 1, 0, -3767.47, -778.853, 8.91371, 9000, 0, 100),
(1481, 2, 0, -3766.09, -775.896, 8.82388, 0, 0, 100),
(1481, 3, 0, -3767.08, -765.029, 8.01714, 0, 0, 100),
(1481, 4, 0, -3765.77, -753.063, 7.872, 0, 0, 100),
(1481, 5, 0, -3753.29, -746.688, 7.9276, 0, 0, 100),
(1481, 6, 0, -3743.20, -746.79, 8.49915, 60000, 148101, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 1, -3763.94, -751.883, 7.873, 0, 0, 100),
(1481, 2, 1, -3767.2, -749.197, 7.99052, 0, 0, 100),
(1481, 3, 1, -3769.32, -745.156, 8.00674, 0, 0, 100),
(1481, 4, 1, -3760.97, -735.759, 8.03362, 0, 0, 100),
(1481, 5, 1, -3739.74, -721.4, 8.34226, 0, 0, 100),
(1481, 6, 1, -3733.03, -717.09, 8.31754, 0, 0, 100),
(1481, 7, 1, -3736.66, -717.01, 8.32097, 60000, 148102, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 2, -3767.1, -737.135, 8.04506, 0, 0, 100),
(1481, 2, 2, -3782.87, -746.452, 8.03465, 0, 0, 100),
(1481, 3, 2, -3797.23, -755.576, 8.03365, 60000, 148103, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 3, -3783.72, -763.875, 7.60233, 0, 0, 100),
(1481, 2, 3, -3779.46, -761.803, 7.65703, 0, 0, 100),
(1481, 3, 3, -3771.77, -768.995, 8.02206, 0, 148104, 100),
-- Brahnmar ID 1450
(1450, 1, 0, -3797.76, -866.926, 11.5981, 7000, 0, 100),
(1450, 2, 0, -3795.23, -863.794, 11.598, 10000, 0, 100),
-- Camerick Jougleur ID 1451
(1451, 1, 0, -3776.6, -797.833, 8.69004, 29000, 0, 100),
(1451, 2, 0, -3778.79, -800.852, 8.57007, 0, 0, 100),
(1451, 3, 0, -3778.43, -807.106, 8.86214, 0, 0, 100),
(1451, 4, 0, -3775.92, -808.031, 9.76186, 0, 0, 100),
(1451, 5, 0, -3775.25, -806.261, 9.89661, 12000, 0, 100),
(1451, 6, 0, -3772.94, -807.634, 10.4204, 0, 0, 100),
(1451, 7, 0, -3770.64, -805.001, 10.3747, 0, 0, 100),
(1451, 8, 0, -3768.57, -799.271, 9.746, 0, 0, 100),
(1451, 9, 0, -3772.09, -796.733, 9.22766, 13000, 1025, 100), -- Script 466 emote point.
(1451, 10, 0, -3770.23, -794.62, 9.36567, 0, 0, 100),
(1451, 11, 0, -3772.34, -792.51, 8.97663, 0, 0, 100),
(1451, 12, 0, -3774.92, -791.916, 8.61633, 0, 0, 100),
(1451, 13, 0, -3776.59, -793.099, 8.51261, 0, 0, 100),
(1451, 14, 0, -3775.36, -798.295, 8.85547, 0, 0, 100),
-- Naela Trance ID 1459
(1459, 1, 0, -3758.33, -855.729, 10.0241, 8000, 0, 100),
(1459, 2, 0, -3757.78, -855.045, 9.90017, 1000, 0, 100),
(1459, 3, 0, -3755.05, -857.688, 9.90017, 0, 0, 100),
(1459, 4, 0, -3750.88, -854.487, 10.3368, 0, 0, 100),
(1459, 5, 0, -3751.38, -853.43, 10.3055, 9000, 0, 100),
(1459, 6, 0, -3754.08, -857.361, 9.89969, 0, 0, 100),
(1459, 7, 0, -3757.78, -855.045, 9.90017, 0, 0, 100),
-- Murphy West ID 1483
(1483, 1, 0, -3743.22, -797.57, 11.4796, 45000, 0, 100),
(1483, 2, 0, -3743.28, -798.991, 11.4801, 0, 0, 100),
(1483, 3, 0, -3728.19, -806.318, 11.4801, 0, 0, 100),
(1483, 4, 0, -3723.09, -795.092, 11.4801, 0, 0, 100),
(1483, 5, 0, -3726.25, -793.331, 11.4798, 0, 0, 100),
(1483, 6, 0, -3737.96, -786.927, 4.68735, 0, 0, 100),
(1483, 7, 0, -3739.68, -792.001, 4.32461, 0, 0, 100),
(1483, 8, 0, -3738, -799.006, 4.32461, 60000, 148301, 100), -- movement should switch to random for 60 sec spawndist 4
(1483, 1, 1, -3739.68, -792.001, 4.32461, 0, 0, 100),
(1483, 2, 1, -3737.96, -786.927, 4.68735, 0, 0, 100),
(1483, 3, 1, -3726.25, -793.331, 11.4798, 0, 0, 100),
(1483, 4, 1, -3723.09, -795.092, 11.4801, 0, 0, 100),
(1483, 5, 1, -3728.19, -806.318, 11.4801, 0, 148302, 100),
-- Thomas Booker ID 1437(9468) and horse 9469
(1437, 1, 0, -3644.88, -754.938, 9.86772, 3000, 0, 100),
(1437, 2, 0, -3651.28, -755.471, 9.88141, 0, 0, 100),
(1437, 3, 0, -3654.63, -751.725, 9.87952, 0, 0, 100),
(1437, 4, 0, -3655.63, -745.931, 9.85159, 0, 0, 100),
(1437, 5, 0, -3651.79, -737.735, 9.83451, 0, 0, 100),
(1437, 6, 0, -3648.7, -734.25, 9.98569, 0, 0, 100),
(1437, 7, 0, -3638.53, -739.414, 9.77649, 0, 0, 100);

DELETE FROM dbscripts_on_creature_movement WHERE id=1025;
INSERT INTO dbscripts_on_creature_movement VALUES (1025, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_POINT');


DELETE FROM creature_linking WHERE master_guid=9468;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(9469, 9468, 512);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (148101,148102,148103,148104,148301,148302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(148101, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148101, 60, 20, 2, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 1'),
(148102, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148102, 60, 20, 2, 2, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 2'),
(148103, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148103, 60, 20, 2, 3, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 3'),
(148104, 0, 20, 2, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 0'),
(148301, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West -  Set MovementType 1 and Spawndist 4'),
(148301, 60, 20, 2, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West - Set MovementType 2 and pathId 1'),
(148302, 0, 20, 2, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West - Set MovementType 2 and pathId 0');

UPDATE creature_movement_template SET comment='Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 1' WHERE script_id=148101;
UPDATE creature_movement_template SET comment='Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 2' WHERE script_id=148102;
UPDATE creature_movement_template SET comment='Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 3' WHERE script_id=148103;
UPDATE creature_movement_template SET comment='Bart Tidewater -  Set MovementType 2 and pathId 0' WHERE script_id=148104;
UPDATE creature_movement_template SET comment='GENERIC EMOTE - ONESHOT_POINT' WHERE script_id=1025;
UPDATE creature_movement_template SET comment='Murphy West -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 1' WHERE script_id=148301;
UPDATE creature_movement_template SET comment='Murphy West - Set MovementType 2 and pathId 0' WHERE script_id=148302;

DELETE FROM creature_movement WHERE id IN(9514,9557,9695,9696);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Menethil Sentry GUID 9514
(9514, 1, -3822.19, -767.092, 8.06787, 0, 0, 100),
(9514, 2, -3831.28, -776.409, 8.05275, 0, 0, 100),
(9514, 3, -3833.04, -777.78, 6.23465, 0, 0, 100),
(9514, 4, -3838.14, -778.421, 4.5457, 0, 0, 100),
(9514, 5, -3833.87, -805.345, 9.64904, 0, 0, 100),
(9514, 6, -3856.37, -822.15, 8.59936, 0, 0, 100),
(9514, 7, -3856.07, -831.333, 9.17249, 1000, 0, 100),
(9514, 8, -3856.37, -822.15, 8.59936, 0, 0, 100),
(9514, 9, -3833.87, -805.345, 9.64904, 0, 0, 100),
(9514, 10, -3838.14, -778.421, 4.5457, 0, 0, 100),
(9514, 11, -3833.04, -777.78, 6.23465, 0, 0, 100),
(9514, 12, -3831.28, -776.409, 8.05275, 0, 0, 100),
(9514, 13, -3822.19, -767.092, 8.06787, 0, 0, 100),
(9514, 14, -3806.91, -765.37, 8.0228, 1000, 0, 100),
-- Menethil Sentry GUID 9557
(9557, 1, -3730.16, -807.502, 20.3016, 0, 0, 100),
(9557, 2, -3723.6, -795.39, 20.3016, 0, 0, 100),
(9557, 3, -3727.46, -792.542, 20.1036, 0, 0, 100),
(9557, 4, -3733.06, -789.129, 15.4086, 0, 0, 100),
(9557, 5, -3736.24, -787.182, 15.4086, 0, 0, 100),
(9557, 6, -3738.61, -790.885, 15.1369, 0, 0, 100),
(9557, 7, -3741.1, -794.995, 11.4798, 0, 0, 100),
(9557, 8, -3743.26, -798.874, 11.4798, 0, 0, 100),
(9557, 9, -3741.1, -794.995, 11.4798, 0, 0, 100),
(9557, 10, -3738.61, -790.885, 15.1369, 0, 0, 100),
(9557, 11, -3736.24, -787.182, 15.4086, 0, 0, 100),
(9557, 12, -3733.06, -789.129, 15.4086, 0, 0, 100),
(9557, 13, -3727.46, -792.542, 20.1036, 0, 0, 100),
(9557, 14, -3723.6, -795.39, 20.3016, 0, 0, 100),
-- Menethil Sentry GUID 9695
(9695, 1, -3602.91, -711.051, 6.48002, 0, 0, 100),
(9695, 2, -3613.58, -706.494, 8.29125, 0, 0, 100),
(9695, 3, -3620.7, -710.571, 9.53107, 0, 0, 100),
(9695, 4, -3626.76, -710.311, 9.59993, 0, 0, 100),
(9695, 5, -3627.08, -714.309, 9.88046, 0, 0, 100),
(9695, 6, -3627.75, -723.77, 10.5426, 1000, 0, 100),
(9695, 7, -3627.08, -714.309, 9.88046, 0, 0, 100),
(9695, 8, -3626.76, -710.311, 9.59993, 0, 0, 100),
(9695, 9, -3620.7, -710.571, 9.53107, 0, 0, 100),
(9695, 10, -3613.58, -706.494, 8.29125, 0, 0, 100),
(9695, 11, -3602.91, -711.051, 6.48002, 0, 0, 100),
(9695, 12, -3622.45, -698.266, 6.27468, 0, 0, 100),
(9695, 13, -3645.15, -694.848, 5.30492, 1000, 0, 100),
(9695, 14, -3621.2, -699.579, 6.92538, 0, 0, 100),
-- Menethil Sentry GUID 9696
(9696, 1, -3713.02, -735.669, 10.9144, 0, 0, 100),
(9696, 2, -3719.48, -737.253, 11.0237, 0, 0, 100),
(9696, 3, -3712.89, -721.908, 9.86457, 0, 0, 100),
(9696, 4, -3710.79, -719.43, 9.70997, 0, 0, 100),
(9696, 5, -3710.14, -714.073, 10.0695, 0, 0, 100),
(9696, 6, -3708.34, -711.863, 8.7437, 0, 0, 100),
(9696, 7, -3689.72, -695.789, 5.30313, 1000, 0, 100),
(9696, 8, -3708.34, -711.863, 8.7437, 0, 0, 100),
(9696, 9, -3710.14, -714.073, 10.0695, 0, 0, 100),
(9696, 10, -3710.79, -719.43, 9.70997, 0, 0, 100),
(9696, 11, -3712.89, -721.908, 9.86457, 0, 0, 100),
(9696, 12, -3719.48, -737.253, 11.0237, 0, 0, 100);

-- SW Druid trainer missing class quest http://www.wowhead.com/quest=5924/heeding-the-call
DELETE FROM creature_questrelation WHERE id=5505 AND quest=5924;
INSERT INTO creature_questrelation (id, quest) VALUES
(5505, 5924);

-- Raven Hill "Duskwood" Waypoint paths
UPDATE creature SET position_x=-10382.6, position_y=359.137, position_z=48.6547, orientation=2.87, MovementType=2 WHERE guid=5137;
UPDATE creature SET position_x=-10426.2, position_y=343.543, position_z=42.0242, orientation=1.657, MovementType=2 WHERE guid=5138;
DELETE FROM creature_movement WHERE id IN (5137,5138);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Skeletal Raider GUID 5137 Path
(5137,1,-10382.6,359.137,48.6547,0,0,100),
(5137,2,-10396.6,362.309,45.7539,0,0,100),
(5137,3,-10405.8,349.167,44.0018,0,0,100),
(5137,4,-10407.4,324.846,41.3671,0,0,100),
(5137,5,-10410.6,311.263,39.3739,0,0,100),
(5137,6,-10453,285.726,36.1031,1000,0,100),
(5137,7,-10410.6,311.263,39.3739,0,0,100),
(5137,8,-10407.4,324.846,41.3671,0,0,100),
(5137,9,-10405.8,349.167,44.0018,0,0,100),
(5137,10,-10396.6,362.309,45.7539,0,0,100),
-- Skeletal Raider GUID 5138 Path
(5138,1,-10426.2,343.543,42.0242,1000,0,100),
(5138,2,-10428.5,328.338,41.4056,0,0,100),
(5138,3,-10433,320.714,41.2088,0,0,100),
(5138,4,-10433.5,314.481,40.3401,0,0,100),
(5138,5,-10446.2,326.655,40.4781,0,0,100),
(5138,6,-10453.9,359.494,41.1352,0,0,100),
(5138,7,-10446.2,326.655,40.4781,0,0,100),
(5138,8,-10433.5,314.481,40.3401,0,0,100),
(5138,9,-10433,320.714,41.2088,0,0,100),
(5138,10,-10428.5,328.338,41.4056,0,0,100);

-- 1512 duskbat movement increased
UPDATE creature SET spawndist=10,MovementType=1 WHERE id=1512 AND MovementType != 2;
-- 1509 ragged scavengers on bigger random
UPDATE creature SET spawndist=10,MovementType=1 WHERE id=1509 AND MovementType != 2;
-- 1513 mangy duskbats on bigger random
UPDATE creature SET spawndist=10,MovementType=1 WHERE id=1513 AND MovementType != 2;

-- Reviewed above, not below

-- set up wretched zombie on wp path and to charge to the guards
UPDATE creature SET spawndist=0,MovementType=2 WHERE guid=44808;
DELETE FROM creature_movement WHERE id=44808;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime, script_id, orientation) VALUES 
(44808, 1, 1922.09, 1548.48, 87.1417, 0, 0, 100),
(44808, 2, 1916.51, 1563.13, 86.3795, 0, 0, 100),
(44808, 3, 1931.5, 1559.04, 87.006, 0, 0, 100),
(44808, 4, 1936.0, 1557.74, 87.6393, 0, 0, 100),
(44808, 5, 1930.04, 1552.25, 87.8579, 0, 0, 100),
(44808, 6, 1925.3, 1551.31, 87.1472, 0, 0, 100),
(44808, 7, 1917.13, 1548.74, 86.9007, 0, 0, 100),
(44808, 8, 1920.98, 1561.15, 86.1384, 0, 0, 100),
(44808, 9, 1932.77, 1566.77, 84.1405, 0, 0, 100),
(44808, 10, 1949.08, 1574.19, 81.2356, 0, 0, 100),
(44808, 11, 1956.98, 1585.29, 81.2102, 0, 0, 100),
(44808, 12, 1951.91, 1593.34, 82.0238, 0, 0, 100),
(44808, 13, 1947.45, 1583.45, 80.9648, 0, 0, 100),
(44808, 14, 1936.29, 1574.2, 82.7512, 0, 0, 100),
(44808, 15, 1925.86, 1573.74, 84.1143, 0, 0, 100),
(44808, 16, 1926.94, 1580.69, 83.099, 0, 0, 100),
(44808, 17, 1919.99, 1585.89, 83.861, 1000, 0, 100),
(44808, 18, 1898.07, 1586.52, 87.3678, 3000, 0, 100),
(44808, 19, 1886.25, 1588.39, 89.2619, 0, 150201, 100),-- W.Ghuol - Faction change
(44808, 20, 1930.4, 1580.68, 82.7223, 0, 0, 100);

-- wp path for misc zombie (he is just blizzards eyecandy)
UPDATE creature SET spawndist=0,MovementType=2 WHERE guid=44818;
DELETE FROM creature_movement WHERE id=44818;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime, script_id, orientation) VALUES 
(44818, 1, 1917.28, 1532.13, 86.9054, 0, 0, 100),
(44818, 2, 1920.1, 1557.7, 86.4135, 0, 0, 100),
(44818, 3, 1926.93, 1573.8, 83.991, 0, 0, 100),
(44818, 4, 1929.87, 1573.85, 83.6135, 0, 0, 100),
(44818, 5, 1924.92, 1579.0, 83.4188, 0, 0, 100),
(44818, 6, 1931.67, 1595.07, 83.6037, 0, 0, 100),
(44818, 7, 1932.63, 1607.29, 82.7558, 0, 0, 100),
(44818, 8, 1930.97, 1591.35, 83.3431, 0, 0, 100),
(44818, 9, 1922.52, 1586.04, 83.5847, 0, 0, 100),
(44818, 10, 1931.54, 1581.75, 82.5486, 0, 5, 100),
(44818, 11, 1922.33, 1559.69, 86.201, 0, 6, 100); -- runs back to pt 1

-- Remove auras where creatures have player pet auras
UPDATE creature_template_addon SET auras= '' WHERE entry IN (454, 728, 3862, 5427, 7456, 8960, 10200);

-- mines should not (move) & give no exp
UPDATE creature_template SET ExtraFlags=ExtraFlags|64 WHERE entry IN (7527, 8035, 15368);

-- Harvest Golem 36
-- http://wow.gamepedia.com/index.php?title=Harvest_Golem&oldid=1481283
UPDATE creature_template SET MechanicImmuneMask= 8407056 WHERE entry=36;

-- Correct InhabitType for creature_template WHERE name LIKE '%Crocolisk%'
UPDATE creature_template SET InhabitType='3' WHERE entry='3231';

-- Origrimmar Flags
DELETE FROM gameobject WHERE guid BETWEEN 190322 AND 190324;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(190322,180394,1,1586.363281, -4411.131348, 7.637368,180,180,255,1),
(190323,180396,1,1586.363281, -4411.131348, 7.637368,180,180,255,1),
(190324,180395,1,1586.363281, -4411.131348, 7.637368,180,180,255,1);

-- Orgrimmar Flags GameObject GameEvent Condition
DELETE FROM game_event_gameobject WHERE guid BETWEEN 190322 AND 190325;
INSERT INTO game_event_gameobject (guid, event) VALUES
(190322, 19),
(190323, 20),
(190324, 18);

-- Origrimmar NPC's
DELETE FROM creature WHERE guid BETWEEN 190584 AND 190591;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, MovementType, spawndist) VALUES
(190584,14990,1,1587.792236, -4414.447754, 8.393807, 1.409748,300,300,0,0),
(190585,14990,1,1587.744751, -4408.309082, 7.011856, 4.728053,300,300,0,0),
(190588,15106,1,1587.792236, -4414.447754, 8.393807, 1.409748,120,300,0,0),
(190589,15106,1,1587.744751, -4408.309082, 7.011856, 4.728053,120,300,0,0),
(190590,15105,1,1587.792236, -4414.447754, 8.393807, 1.409748,300,300,0,0),
(190591,15105,1,1587.744751, -4408.309082, 7.011856, 4.728053,300,300,0,0);

-- Game Event creature Conditions
DELETE FROM game_event_creature WHERE guid BETWEEN 190584 AND 190591;
INSERT INTO game_event_creature (guid, event) VALUES
(190588, 18),
(190589, 18),
(190590, 19),
(190591, 19),
(190584, 20),
(190585, 20);

-- Stuck in Wall
UPDATE creature SET position_x=-324.3194, position_y=1550.3234, position_z=25.2766, orientation=3.1000 WHERE guid=17663 AND id=1895;

-- 7395	Cockroach - no loot
UPDATE creature_template SET lootid=0, skinninglootid=0 WHERE entry=7395;
DELETE FROM creature_loot_template WHERE entry=7395;

-- 12922	Imp Minion
UPDATE creature_template SET MinLootGold=0, MaxLootGold=0 WHERE entry=12922;

-- Teronis' Corpse 3891
-- Scout Jyoba 18035
UPDATE creature_template SET CreatureTypeFlags=128 WHERE entry=3891;
DELETE FROM creature_addon WHERE guid=32348;
UPDATE creature_template_addon SET bytes1=7 WHERE entry=3891; -- done by 29266 aura

-- Elder Razormaw nerf
UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry=1019;

-- falling under map
UPDATE creature SET position_z=68.1645, orientation=0.313708 WHERE guid=394;

-- Darnassus Wisp movement
DELETE FROM creature WHERE guid=46384;
DELETE FROM creature_movement WHERE id=46384;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (46384, 3681, 1, 10045, 0, 10103.3, 2451.37, 1318.94, 4.54641, 300, 300, 0, 0, 64, 0, 0, 2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(46384, 1, 10093.5, 2453.88, 1318.27, 0, 0, 100),
(46384, 2, 10104.3, 2461.38, 1317.78, 0, 0, 100),
(46384, 3, 10111.6, 2475.67, 1317.32, 0, 0, 100),
(46384, 4, 10111.9, 2490.86, 1318.19, 0, 0, 100),
(46384, 5, 10093.4, 2527.76, 1317.64, 0, 0, 100),
(46384, 6, 10105.1, 2505.08, 1318.6, 0, 0, 100),
(46384, 7, 10111.3, 2489.62, 1317.98, 0, 0, 100),
(46384, 8, 10110.9, 2475.37, 1317.29, 0, 0, 100),
(46384, 9, 10102.8, 2458.83, 1318.06, 0, 0, 100),
(46384, 10, 10085.3, 2449.67, 1317.97, 0, 0, 100);

-- slight ppm-correction for Omen of Clarity
UPDATE spell_proc_event SET ppmRate=2.5 WHERE entry=16864; -- 2

-- no loot npcs
DELETE FROM creature_loot_template WHERE entry IN (10925,10684,10698,17887,2462,10928,10388,10389);
UPDATE creature_template SET MinLootGold=0, MaxLootGold=0, lootid=0 WHERE entry IN (10925,10684,10698,17887,2462,10928,10388,10389);

-- ===============================================
-- Add Several Spell Targets (Gnarlpine Vengeance)
-- ===============================================
DELETE FROM spell_script_target WHERE entry=5628;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(5628, 1, 2006),
(5628, 1, 2007),
(5628, 1, 2008),
(5628, 1, 2009),
(5628, 1, 2010),
(5628, 1, 2011),
(5628, 1, 2012),
(5628, 1, 2013),
(5628, 1, 2014);

DELETE FROM pool_template WHERE entry BETWEEN 39900 AND 39951;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(39900, 7, 'Dun Morogh (1-10) - Master Chest Pool'),
(39901, 5, 'Durotar (1-10) - Master Chest Pool'),
(39902, 1, 'Elwynn Forest (1-10) - Master Chest Pool'),
(39903, 5, 'Mulgore (1-10) - Master Chest Pool'),
(39904, 5, 'Teldrassil (1-10) - Master Chest Pool'),
(39905, 3, 'Tirisfal Glades (1-10) - Master Chest Pool'),
(39906, 6, 'Darkshore (10-20) - Master Chest Pool'),
(39907, 7, 'Loch Modan (10-20 - Master Chest Pool'),
(39908, 6, 'Silverpine Forest (10-20) - Master Chest Pool'),
(39909, 1, 'Westfall (10-20) - Master Chest Pool'),
(39910, 9, 'Barrens (10-25) - Master Chest Pool'),
(39911, 3, 'Redridge Mountains (15-25) - Master Chest Pool'),
(39912, 3, 'Stonetalon Mountains (15-27) - Master Chest Pool'),
(39913, 2, 'Ashenvale (18-30) - Master Chest Pool'),
(39914, 1, 'Duskwood (18-30) - Master Chest Pool'),
(39915, 2, 'Hillsbrad Foothills (20-30) - Master Chest Pool'),
(39916, 1, 'Wetlands (20-30) - Master Chest Pool'),
(39917, 1, 'Thousand Needles (25-35) - Master Chest Pool'),
(39918, 1, 'Alterac Mountains (30-40) - Master Chest Pool'),
(39919, 2, 'Arathi Highlands (30-40) - Master Chest Pool'),
(39920, 1, 'Desolace (30-40) - Master Chest Pool'),
(39921, 1, 'Stranglethorn Vale (30-45) - Master Chest Pool'),
(39922, 1, 'Dustwallow Marsh (35-45) - Master Chest Pool'),
(39923, 1, 'Badlands (35-45) - Master Chest Pool'),
(39924, 1, 'Swamp of Sorrows (35-45) - Master Chest Pool'), --
(39925, 1, 'Feralas (40-50) - Master Chest Pool'),
(39926, 1, 'Hinterlands (40-50) - Master Chest Pool'),
(39927, 1, 'Tanaris (40-50) - Master Chest Pool'),
(39928, 1, 'Searing Gorge (45-50) - Master Chest Pool'),
(39929, 1, 'Azshara (45-55) - Master Chest Pool'),
(39930, 1, 'Blasted Lands (45-55) - Master Chest Pool'),
(39931, 1, 'Un''goro Crater (48-55) - Master Chest Pool'),
(39932, 1, 'Felwood (48-55) - Master Chest Pool'),
(39933, 1, 'Burning Steppes (50-58) - Master Chest Pool'),
(39935, 1, 'Deadwind Pass (55-60) - Master Chest Pool'),
(39936, 1, 'Eastern Plaguelands (53-60) - Master Chest Pool'), --
(39937, 1, 'Winterspring (53-60) - Master Chest Pool'),
(39938, 1, 'Moonglade (55-60) - Master Chest Pool'), --
(39939, 1, 'Silithus (55-60) - Master Chest Pool');

DELETE FROM pool_gameobject WHERE pool_entry BETWEEN 39900 AND 39951;
INSERT INTO pool_gameobject (guid, pool_entry, Chance, description) VALUES
-- Dun Morogh
(1397, 39900, 0, 'Dun Morogh - Battered Chest (2843)'),
(1454, 39900, 0, 'Dun Morogh - Battered Chest (2843)'),
(9477, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(9932, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(9940, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10048, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10850, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10856, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10870, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10891, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29334, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29343, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29633, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29638, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(32370, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
-- Teldrassil
(49528, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(49529, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(49621, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49622, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49623, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49624, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49625, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49626, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49627, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49628, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
-- Tirisfal Glades
(45060, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45106, 39905, 0, 'Tirisfal Glades - Battered Chest (2843)'),
(45110, 39905, 0, 'Tirisfal Glades - Battered Chest (2843)'),
(45240, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45244, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45251, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45257, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
-- Durotar
(12396, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12499, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12500, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12503, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12504, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12546, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12547, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12548, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12552, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12600, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12603, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12611, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12637, 39901, 0, 'Durotar - Battered Chest (106318)'),
-- Mulgore
(18442, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18443, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18444, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18445, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18446, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18447, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18448, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18449, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18450, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18451, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18452, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18453, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18454, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18455, 39903, 0, 'Mulgore - Battered Chest (106318)'),
-- Loch Modan
(12909, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(12926, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(13197, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(13437, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(12796, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(12877, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(12998, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13209, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13246, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13248, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13426, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
-- The Barrens
(13066, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13068, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13071, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13073, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13074, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13305, 39910, 0, 'The Barrens - Armor Crate (3660)'),
(13309, 39910, 0, 'The Barrens - Weapon Crate (3661)'),
(13310, 39910, 0, 'The Barrens - Weapon Crate (3661)'),
(13435, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(13438, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(13439, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(13327, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13338, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13339, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13345, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13346, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13347, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13348, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13349, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13528, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(15748, 39910, 0, 'The Barrens - Tattered Chest (111095)'),
-- Hillsbrad Foothills
(20885, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (3715)'),
(30036, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (3715)'),
(29650, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (4096)'),
(30032, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (4096)'),
-- Silverpine Forest
(35436, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35447, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35484, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35487, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35449, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35481, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35489, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35483, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(35569, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42067, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42068, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42069, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42077, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42957, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
-- Stonetalon Mountains
(40707, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40708, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40709, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40710, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40711, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(47589, 39912, 0, 'Stonetalon Mountains - Tattered Chest (3715)'),
(47590, 39912, 0, 'Stonetalon Mountains - Tattered Chest (3715)'),
-- Darkshore
(48492, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48531, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48727, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48756, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48651, 39906, 0, 'Darkshore - Armor Crate (3660)'),
(48765, 39906, 0, 'Darkshore - Armor Crate (3660)'),
(48774, 39906, 0, 'Darkshore - Weapon Crate (3661)'),
(48537, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48602, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48623, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48695, 39906, 0, 'Darkshore - Battered Chest (106319)'),
-- Redridge Mountains
(20798, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(28632, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31122, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31127, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31130, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(20651, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
-- Ashenvale
(47813, 39913, 0, 'Ashenvale - Battered Chest (2849)'),
(47814, 39913, 0, 'Ashenvale - Battered Chest (2849)'),
(47972, 39913, 0, 'Ashenvale - Weapon Crate (3689)'),
(47973, 39913, 0, 'Ashenvale - Weapon Crate (3689)'),
-- Arathi Highlands
(16947, 39919, 0, 'Arathi Highlands - Tattered Chest (105578)'),
(16787, 39919, 0, 'Arathi Highlands - Tattered Chest (105579)'),
(16992, 39919, 0, 'Arathi Highlands - Tattered Chest (105581)'),
-- Alterac Mountains
(32213, 39918, 0, 'Arathi Highlands - Tattered Chest (105579)'),
(33181, 39918, 0, 'Arathi Highlands - Tattered Chest (105579)');

-- under map
UPDATE creature SET position_x=-2069.12, position_y=-3365.45, position_z=60.51, orientation=2.50 WHERE guid=11242;

-- Trelane's Chest 2716, Trelane's Footlocker 2717, Trelane's Lockbox 2718
DELETE FROM dbscripts_on_event WHERE id IN (415, 416, 417);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, data_flags, x, y, z, o, comments) VALUES
(415, 0, 31, 2570, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Footlocker 2717 - Terminate Script if 2570 is already spawned'),
(415, 3, 10, 2570, 300000, 0, -1778.46, -1510.57, 75.17, 5.22, 'Quest 696 - Trelane''s Footlocker 2717 - Summon 2570'),
(415, 3, 10, 2569, 300000, 0, -1777.64, -1513.58, 75.51, 5.28, 'Quest 696 - Trelane''s Footlocker 2717 - Summon 2569'),
(416, 0, 31, 2569, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Chest 2716 - Terminate Script if 2569 is already spawned'),
(416, 3, 10, 2569, 300000, 0, -1797.32, -1504.7, 99.39, 5.14, 'Quest 696 - Trelane''s Chest 2716 - Summon 2569'),
(416, 3, 10, 2570, 300000, 0, -1789.8, -1499.9, 99.38, 4.6, 'Quest 696 - Trelane''s Chest 2716 - Summon 2570'),
(417, 0, 31, 2569, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Lockbox 2718 - Terminate Script if 2569 is already spawned'),
(417, 3, 10, 2569, 300000, 0, -1772.93, -1505.9, 91.87, 5.7, 'Quest 696 - Trelane''s Lockbox 2718 - Summon 2569'),
(417, 3, 10, 2570, 300000, 0, -1774.76, -1495.07, 90.6, 5.27, 'Quest 696 - Trelane''s Lockbox 2718 - Summon 2570');

-- Trelane's Chest 2716, Trelane's Footlocker 2717, Trelane's Lockbox 2718
UPDATE gameobject_template SET flags=0 WHERE entry IN (2716,2717,2718);

DELETE FROM gameobject_loot_template WHERE entry IN (2177,2178,2179);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES (2177, 4531, 100, 0, 1, 1, 0, 'Trelane''s Orb');
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES (2178, 4530, 100, 0, 1, 1, 0, 'Trelane''s Phylactery');
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES (2179, 4532, 100, 0, 1, 1, 0, 'Trelane''s Ember Agate');

-- Food Crate
UPDATE gameobject SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE id IN (3662, 153470, 153471, 153472, 153473) AND spawntimesecsmin < 900;

-- Huldar equipment
DELETE FROM creature_equip_template WHERE entry=2057;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (2057, 1905, 1957, 0);
UPDATE creature_template SET EquipmentTemplateId=2057 WHERE Entry=2057;
UPDATE creature_template_addon SET b2_0_sheath=0 WHERE entry=2057;

-- Caynrus equipment
DELETE FROM creature_equip_template WHERE entry=4240;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (4240, 1908, 0, 0);
UPDATE creature_template_addon SET b2_0_sheath=0 WHERE entry=4240;

-- Creature below ground in dustwallow marsh
UPDATE creature SET position_z= 36.3271 WHERE guid=25154;
UPDATE creature SET position_z= 49.5146 WHERE guid=25156;
UPDATE creature SET position_z= 47.1466 WHERE guid=30491;
UPDATE creature SET position_z= 42.3603 WHERE guid=30533;
UPDATE creature SET position_z= 39.6442 WHERE guid=31049;
UPDATE creature SET position_z= 45.9868 WHERE guid=30591;
UPDATE creature SET position_z= 46.9210 WHERE guid=28826;
UPDATE creature SET position_z= 36.8431 WHERE guid=30604;
UPDATE creature SET position_z= 48.9282 WHERE guid=7888;
UPDATE creature SET position_z= 62.3438 WHERE guid=25377;
UPDATE creature SET position_z=63.4751 WHERE guid=7886;

-- Fix Hoard of the Black Dragonflight - Should Always Drop Black Dragonflight Molt
UPDATE item_loot_template SET ChanceOrQuestChance=100 WHERE  Entry=10569 AND Item=10575; -- 96,3504

-- Heavy War Golem 5854 - most golems were fear immune in tbc, also drain effects and mc
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry=5854;

-- z level
UPDATE creature SET position_z='42.0511' WHERE guid=11352;

-- Duplicate
DELETE FROM creature WHERE guid=16655;

-- Midsummer Sausage 5er Stack like all other event food items
UPDATE item_template SET BuyCount=5 WHERE entry=23326;

-- Set Duration as already set for 23215 14 days duration!
UPDATE item_template SET duration=1209600 WHERE entry IN (23327,23326,23211,23246,23435);

-- ore vein offset
UPDATE gameobject SET position_x=-689.3330, position_y=168.5295, position_z=17.9345 WHERE guid=75314; -- Pool 4788
UPDATE gameobject SET position_x=-689.3330, position_y=168.5295, position_z=17.9345 WHERE guid=75315; -- Pool 4788
UPDATE gameobject SET position_x=-689.3330, position_y=168.5295, position_z=17.9345 WHERE guid=75316; -- Pool 4788
UPDATE gameobject SET position_x=-689.3330, position_y=168.5295, position_z=17.9345 WHERE guid=71438; -- Pool 4740
UPDATE gameobject SET position_x=-689.3330, position_y=168.5295, position_z=17.9345 WHERE guid=71439; -- Pool 4740