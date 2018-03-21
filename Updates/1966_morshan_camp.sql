-- Mor'shan Base Camp (The Barrens)

-- Horde Laborer 14718

-- lumberjacks
UPDATE `creature` SET `MovementType`=2 WHERE `guid` IN (14429,14430,14431,14432);
DELETE FROM creature_movement WHERE id IN (14429,14430,14431,14432);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14429,1,1029.83,-2154.75,123.049,4.395,30000,1471801),
(14429,2,1029.83,-2154.75,123.049,1.19849,9000,1471802),

(14430,1,1010.26,-2134.29,126.945,4.076,30000,1471801),
(14430,2,1010.26,-2134.29,126.945,0.612264,9000,1471802),

(14431,1,1019.54,-2142.49,124.767,3.89,30000,1471801),
(14431,2,1019.54,-2142.49,124.767,0.882199,9000,1471802),

(14432,1,1015.51,-2138.34,125.82,4.01,30000,1471801),
(14432,2,1015.51,-2138.34,125.82,0.753775,9000,1471802);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1471801,1471802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1471801, 0, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471801, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471802, 7, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature` SET `MovementType`=2 WHERE `guid`=14433;
DELETE FROM creature_movement WHERE id=14433;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14433,1,1048.24,-2107.62,123.129,100,37000,1471803);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1471803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1471803, 0, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 20, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 23, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 25, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 31, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471803, 35, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1028.75,`position_y`=-2105.72,`position_z`=122.947, orientation=2.523 WHERE `guid`=14428;
DELETE FROM creature_movement WHERE id=14428;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14428,1,1028.75,-2105.72,122.947,2.523,15000,1471804),
(14428,2,1032.92,-2120.55,123.07,100,0,0),
(14428,3,1034.61,-2126.27,123.07,100,0,0),
(14428,4,1034.14,-2129.03,122.984,100,0,0),
(14428,5,1033.1,-2140.6,122.962,100,0,0),
(14428,6,1035.98,-2143.79,122.896,100,0,0),
(14428,7,1033.33,-2148.96,122.962,100,0,0),
(14428,8,1030.73,-2150,123.087,100,0,0),
(14428,9,1029.41,-2150.15,123.113,2.218,15000,1471805),
(14428,10,1030.73,-2150,123.087,100,0,0),
(14428,11,1033.33,-2148.96,122.962,100,0,0),
(14428,12,1035.98,-2143.79,122.896,100,0,0),
(14428,13,1033.1,-2140.6,122.962,100,0,0),
(14428,14,1034.14,-2129.03,122.984,100,0,0),
(14428,15,1041.67,-2129.69,123.706,100,0,0),
(14428,16,1045.1,-2128.93,124.203,100,5000,1471806),
(14428,17,1045.5,-2130.79,124.212,100,5000,1471806),
(14428,18,1041.67,-2129.69,123.706,100,0,0),
(14428,19,1034.61,-2126.27,123.07,100,0,0),
(14428,20,1032.92,-2120.55,123.07,100,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1471804,1471805,1471806);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1471804, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471804, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471804, 6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471804, 12, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),

(1471805, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471805, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471805, 6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471805, 10, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),

(1471806, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1471806, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
