-- https://github.com/vmangos/core/commit/ed6b03221703ddea4fcff1c10b5b6481f366af0b

-- grom gol base camp
-- add missing grom gol grunt
-- https://youtu.be/xmL1BQP0dK0?t=732 - one standing at vendor, fire - gate near flight master, 2 at fire
DELETE FROM creature WHERE guid IN (566,567,684) AND id=1064;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
(684, 1064, 0, -12384.4, 173.336, 3.24808, 1.01615, 300, 300, 0, 2);

-- add grom gol grunt waypoints
DELETE FROM creature_movement WHERE id=684;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(684, 1, -12369, 154.027, 2.97559, 1.5708, 50000, 0),
(684, 2, -12371.6, 155.394, 2.81416, 100, 0, 0),
(684, 3, -12374.4, 156.719, 2.84573, 100, 0, 0),
(684, 4, -12380.2, 158.36, 2.84261, 100, 0, 0),
(684, 5, -12388.9, 157.468, 2.67425, 100, 0, 0),
(684, 6, -12393.7, 153.945, 2.73388, 100, 0, 0),
(684, 7, -12396.6, 148.972, 2.8709, 100, 0, 0),
(684, 8, -12396.6, 138.978, 3.66229, 100, 13000, 0),
(684, 9, -12397.1, 140.612, 3.55516, 100, 0, 0),
(684, 10, -12397.2, 146.16, 3.04669, 100, 0, 0),
(684, 11, -12396.1, 152.329, 2.80381, 100, 0, 0),
(684, 12, -12390.6, 163.016, 2.46791, 100, 0, 0),
(684, 13, -12384.4, 173.336, 3.14583, 100, 13000, 0);

-- add missing grom gol grunt
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
(566, 1064, 0, -12372.8, 179.325, 3.28885, 2.89725, 300, 300, 0, 0);

-- add missing grom gol grunt
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
(567, 1064, 0, -12374, 184.474, 3.24808, 3.34054, 300, 300, 0, 0);

-- add correct waypoints to grom gol grunt
DELETE FROM creature_movement WHERE id=610;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(610, 1, -12383.7, 227.084, 2.67865, 1.6166, 13000, 0), -- added spawnpoint orientation as it makes no sense to make it look at the wall
(610, 2, -12384.2, 224.195, 2.64434, 100, 0, 0),
(610, 3, -12383.3, 215.205, 2.3636, 100, 0, 0),
(610, 4, -12383.4, 206.133, 2.02113, 100, 0, 0),
(610, 5, -12383.7, 203.173, 1.99872, 100, 0, 0),
(610, 6, -12385, 200.433, 2.13383, 100, 0, 0),
(610, 7, -12386.6, 197.907, 2.20216, 100, 0, 0),
(610, 8, -12391.9, 195.553, 1.84427, 3.03687, 78000, 0),
(610, 9, -12386.6, 197.907, 2.20216, 100, 0, 0),
(610, 10, -12385, 200.433, 2.13383, 100, 0, 0),
(610, 11, -12383.7, 203.173, 1.99872, 100, 0, 0),
(610, 12, -12383.4, 206.133, 2.02113, 100, 0, 0),
(610, 13, -12383.3, 215.205, 2.3636, 100, 0, 0),
(610, 14, -12384.2, 224.195, 2.64434, 100, 0, 0);

-- commander aggro gosh should roam
UPDATE creature SET movementtype=1, spawndist=3 WHERE guid=721;

-- rebel camp
-- add rebel watchman waypoints
UPDATE creature SET movementtype=2 WHERE id=754;
DELETE FROM creature_movement_template WHERE entry=754;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(754, 1, -11324, -213.783, 76.5032, 2.25148, 87000, 0),
(754, 2, -11327.2, -212.021, 75.9563, 100, 0, 0),
(754, 3, -11334.8, -209.889, 75.2551, 100, 0, 0),
(754, 4, -11342.8, -210.905, 75.2215, 100, 0, 0),
(754, 5, -11346.8, -210.962, 75.2223, 100, 0, 0),
(754, 6, -11354.8, -210.423, 75.2585, 100, 0, 0),
(754, 7, -11366.8, -212.733, 75.2209, 100, 0, 0),
(754, 8, -11370.6, -213.99, 75.2973, 100, 0, 0),
(754, 9, -11376.5, -219.242, 75.0468, 100, 0, 0),
(754, 10, -11379.7, -226.428, 73.4426, 100, 0, 0),
(754, 11, -11381.6, -237.335, 68.7688, 100, 0, 0),
(754, 12, -11382.6, -248.607, 65.2183, 100, 25000, 0),
(754, 13, -11381.9, -240.936, 67.6475, 100, 0, 0),
(754, 14, -11379.7, -229.946, 72.1583, 100, 0, 0),
(754, 15, -11378.7, -226.508, 73.5829, 100, 0, 0),
(754, 16, -11375.4, -219.386, 75.0807, 100, 0, 0),
(754, 17, -11373, -216.171, 75.2465, 100, 0, 0),
(754, 18, -11365.7, -212.828, 75.2215, 100, 0, 0),
(754, 19, -11353.7, -211.491, 75.2339, 100, 0, 0),
(754, 20, -11345.6, -211.416, 75.2236, 100, 0, 0),
(754, 21, -11337.5, -210.781, 75.2219, 100, 0, 0),
(754, 22, -11333.4, -210.355, 75.283, 100, 0, 0);

-- add private merle waypoints
UPDATE creature SET movementtype=2 WHERE id=1421;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(1626, 1421, 0, 1, 0, 0, -11329.3, -236.289, 74.6221, 4.80494, 300, 300, 0, 0, 0, 0, 0, 2);
DELETE FROM creature_movement_template WHERE entry=1421;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1421, 1, -11330.7, -248.137, 73.1889, 100, 20000, 0),
(1421, 2, -11329.2, -244.447, 73.9503, 100, 0, 0),
(1421, 3, -11328.6, -240.528, 74.545, 100, 0, 0),
(1421, 4, -11327.2, -232.493, 75.1051, 100, 0, 0),
(1421, 5, -11328, -229.059, 75.277, 100, 0, 0),
(1421, 6, -11330.1, -225.739, 75.1965, 100, 0, 0),
(1421, 7, -11329.8, -221.863, 75.2206, 100, 0, 0),
(1421, 8, -11328.1, -218.944, 75.881, 100, 0, 0),
(1421, 9, -11329.4, -211.039, 75.7732, 100, 0, 0),
(1421, 10, -11330.4, -207.144, 75.4199, 100, 0, 0),
(1421, 11, -11330.1, -201.702, 75.3271, 100, 20000, 0),
(1421, 12, -11334.5, -208.484, 75.3069, 100, 0, 0),
(1421, 13, -11336.9, -211.741, 75.2205, 100, 0, 0),
(1421, 14, -11338.2, -215.378, 75.2206, 100, 0, 0),
(1421, 15, -11337.8, -227.284, 74.5209, 100, 10000, 0),
(1421, 16, -11334.1, -225.796, 75.0422, 100, 0, 0),
(1421, 17, -11331.2, -228.612, 74.9793, 100, 0, 0),
(1421, 18, -11329.7, -232.287, 74.9004, 100, 0, 0),
(1421, 19, -11329.3, -236.289, 74.723, 100, 0, 0),
(1421, 20, -11330.2, -240.199, 74.323, 100, 0, 0);

-- https://www.youtube.com/watch?v=GF1SkliEVGo&ab_channel=HonkL
UPDATE creature_template SET NpcFlags=NpcFlags&~2 WHERE entry=738; -- Private Thorsen
UPDATE creature_template SET Faction=35, MovementType=2 WHERE entry=775; -- Kurzen's Agent
UPDATE creature SET position_x=-11313.9, position_y=-202.766, position_z=75.576, orientation=5.5676 WHERE id=738;
DELETE FROM creature_movement_template WHERE entry=738;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(738, 1, -11313.9, -202.766, 75.576, 5.5676, 1500000, 0), -- 25min - 30min befor starting
(738, 2, -11313.9, -202.766, 75.576, 5.5676, 0, 73801), -- 73801
(738, 3, -11321.7, -205.85, 75.4398, 100, 0, 0),
(738, 4, -11326.7, -216.63, 76.3375, 100, 0, 0),
(738, 5, -11331, -223.29, 75.2301, 100, 0, 0),
(738, 6, -11342.43, -226.04, 75.12, 100, 0, 0), -- custom for tbc+ due to flightpoint (-11339.5, -222.598, 75.1477)
(738, 7, -11351.3, -212.923, 75.2968, 100, 0, 0),
(738, 8, -11361.9, -212.078, 75.2968, 100, 0, 0),
(738, 9, -11374.4, -217.351, 75.2161, 100, 0, 0),
(738, 10, -11379.1, -227.022, 73.4353, 100, 0, 0),
(738, 11, -11379.4, -239.568, 67.9693, 100, 0, 0),
(738, 12, -11382.1, -251.993, 64.5292, 100, 0, 0),
(738, 13, -11384.7, -267.21, 60.9735, 100, 0, 0),
(738, 14, -11389.4, -273.725, 59.7828, 100, 500, 73802),
(738, 15, -11421.5, -287.48, 52.1968, 100, 0, 0),
(738, 16, -11441.1, -287.254, 45.9617, 100, 0, 0),
(738, 17, -11456.1, -287.166, 41.4507, 100, 0, 0),
(738, 18, -11472.5, -288.005, 37.0786, 100, 0, 0),
(738, 19, -11491.2, -299.717, 35.798, 100, 0, 0),
(738, 20, -11510.9, -317.675, 35.8094, 100, 0, 0),
(738, 21, -11521.4, -323.755, 35.8094, 100, 0, 0),
(738, 22, -11528.3, -335.951, 36.9253, 100, 0, 0),
(738, 23, -11527.6, -353.22, 37.7493, 100, 30000, 73803),
(738, 24, -11527.6, -353.22, 37.7493, 4.67, 180000, 73804), -- add quest giver
(738, 25, -11527.6, -353.22, 37.7493, 4.67, 1000, 73805),
(738, 26, -11521.5, -328.624, 36.0411, 100, 0, 0),
(738, 27, -11497.7, -306.014, 35.7996, 100, 0, 0),
(738, 28, -11473.7, -289.043, 36.9186, 100, 0, 0),
(738, 29, -11447.1, -287.478, 44.0555, 100, 0, 0),
(738, 30, -11415.6, -287.884, 53.9915, 100, 0, 0),
(738, 31, -11394.3, -285.5, 58.7721, 100, 0, 0),
(738, 32, -11384.7, -257.563, 62.7445, 100, 500, 73806),
(738, 33, -11382.7, -245.982, 65.8541, 100, 0, 0),
(738, 34, -11382.5, -237.982, 68.5594, 100, 0, 0),
(738, 35, -11381.8, -230.669, 71.8558, 100, 0, 0),
(738, 36, -11380, -225.222, 74.0057, 100, 0, 0),
(738, 37, -11376.7, -220.913, 75.0584, 100, 0, 0),
(738, 38, -11372, -214.515, 75.3274, 100, 0, 0),
(738, 39, -11364.8, -211.369, 75.2968, 100, 0, 0),
(738, 40, -11358.4, -210.313, 75.2968, 100, 0, 0),
(738, 41, -11352.7, -210.88, 75.2968, 100, 0, 0),
(738, 42, -11344.8, -210.795, 75.2968, 100, 0, 0),
(738, 43, -11338.4, -210.338, 75.2968, 100, 0, 0),
(738, 44, -11332.4, -207.985, 75.4801, 100, 0, 0),
(738, 45, -11325.3, -205.129, 75.5001, 100, 0, 0),
(738, 46, -11316.5, -201.627, 75.8807, 100, 0, 0),
(738, 47, -11314, -202.753, 75.4623, 100, 0, 73807);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 73801 AND 73807;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(73801, 0, 0, 21, 1, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Active'),
(73801, 0, 1, 0, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),
(73801, 0, 2, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Remove UNIT_NPC_FLAG_GOSSIP'), -- custom

(73802, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Set Run'),
(73802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),
(73802, 0, 1, 22, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Set Faction Victim'),

(73803, 0, 0, 10, 775, 300000, 1, 0, 0, 0, 103, 0, 0, 0, -11511.1, -445.023, 41.4481, 1.03381, 0, 'Private Thorsen - Summon Kurzen''s Agent'),
(73803, 0, 0, 10, 775, 300000, 2, 0, 0, 0, 103, 0, 0, 0, -11508.2, -442.857, 41.6781, 2.53693, 0, 'Private Thorsen - Summon Kurzen''s Agent'),
(73803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),

(73804, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Add UNIT_NPC_FLAG_QUESTGIVER'),

(73805, 0, 0, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Remove UNIT_NPC_FLAG_QUESTGIVER'), -- he does not stop movement for gossip interaction during this "escort"
(73805, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),

(73806, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Set Walk'),
(73806, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 106, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),
(73806, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Set Faction Default'),

(73807, 0, 0, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Add UNIT_NPC_FLAG_GOSSIP'), -- custom
(73807, 0, 0, 21, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Unactive'),
(73807, 5000, 0, 0, 0, 0, 0, 733, 20, 0, 108, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Sergeant Yohwa (733) - Say Text');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (77501,77502);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(77501, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Idle'),
(77501, 0, 1, 22, 41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Set Faction Villian'),
(77501, 0, 2, 26, 0, 0, 0, 738, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Attack Private Thorsen (738)'),
(77501, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Say Text'),

(77502, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Idle'),
(77502, 0, 1, 22, 41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Set Faction Villian'),
(77502, 0, 2, 26, 0, 0, 0, 738, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Attack Private Thorsen (738)'),
(77502, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen''s Agent - Say Text');

DELETE FROM creature_movement_template WHERE entry=775;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(775, 1, 1, -11519.11, -361.98, 37.94, 1000, 1, 77501),
(775, 2, 1, -11518.29, -360.42, 37.79, 1000, 1, 77502);

-- yojamba isle
-- zandalar headshrinker should be static
UPDATE creature SET movementtype=0, spawndist=0 WHERE guid IN (284, 280, 285, 283);
DELETE FROM creature WHERE guid=282;
DELETE FROM creature_movement WHERE id=282;
-- https://www.youtube.com/watch?v=QWT0UleOYmM&ab_channel=WoWFilmsRUS
-- https://www.youtube.com/watch?v=WC3pVCbWtyM&ab_channel=vandi

-- add correct waypoints to zandalar headshrinker patrol
-- there is no consistency in the points of this path https://github.com/vmangos/core/commit/ed6b03221703ddea4fcff1c10b5b6481f366af0b#diff-068ce0a266ad778ba2d9cb0238db68c25bf2cd93391b18c604a99a08d5a5c6b5R127
-- i believe this is the path of the follower not the leader
DELETE FROM creature_movement WHERE id=286;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(286, 1, -11837.3, 1288.95, 1.51261, 100, 0, 0),
(286, 2, -11832.4, 1271.94, 1.45981, 100, 0, 0),
(286, 3, -11825.1, 1251.7, 2.42904, 100, 0, 0),
(286, 4, -11823.5, 1249.54, 2.50154, 100, 0, 0),
(286, 5, -11813.5, 1243.42, 1.65065, 100, 0, 0),
(286, 6, -11809.8, 1243.62, 1.39979, 100, 0, 0),
(286, 7, -11794.4, 1257.63, 1.22299, 100, 0, 0),
(286, 8, -11789.6, 1260.66, 1.52232, 100, 0, 0),
(286, 9, -11764.8, 1273.67, 2.99804, 100, 0, 0),
(286, 10, -11748, 1301.76, 1.38028, 100, 0, 0), -- point added
(286, 11, -11789.6, 1260.66, 1.52232, 100, 0, 0),
(286, 12, -11794.4, 1257.63, 1.22299, 100, 0, 0),
(286, 13, -11809.8, 1243.62, 1.39979, 100, 0, 0),
(286, 14, -11813.5, 1243.42, 1.65065, 100, 0, 0),
(286, 15, -11823.5, 1249.54, 2.50154, 100, 0, 0),
(286, 16, -11825.1, 1251.7, 2.42904, 100, 0, 0),
(286, 17, -11832.4, 1271.94, 1.45981, 100, 0, 0);

-- update exzhal - execution event
UPDATE creature SET spawntimesecsmin=900 , spawntimesecsmax=900 WHERE id=14912; -- 900 900
UPDATE creature_template_addon SET bytes1=0 WHERE entry=14912; -- Remove UNIT_STAND_STATE_KNEEL
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=14912);
UPDATE gameobject SET spawntimesecsmin=-233, spawntimesecsmax=-233 WHERE guid=12165; -- 900 900

UPDATE creature SET position_x=-11828.349609375, position_y=1246.7828369140625, position_z=2.393602371215820312, orientation=2.396308422088623046, movementtype=2 WHERE guid=312; -- Exzhal [Entry 14910]
UPDATE creature SET position_x=-11835.3271484375, position_y=1257.3831787109375, position_z=2.264826536178588867, orientation=5.07860565185546875 WHERE guid=314; -- Zandalar Enforcer [Entry 14911]
UPDATE creature SET position_x=-11838.4697265625, position_y=1256.1219482421875, position_z=2.154930353164672851, orientation=5.811946392059326171 WHERE guid=2368; -- Captured Hakkari Zealot [Entry 14912]

DELETE FROM creature_movement_template WHERE entry=14910;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14910, 1, -11828.349609375, 1246.7828369140625, 2.393602371215820312, 100, 1500000, 0), -- 1800000 every 5 hours? hourly event?
(14910, 2, -11828.349609375, 1246.7828369140625, 2.393602371215820312, 100, 300000, 1491001);

DELETE FROM dbscripts_on_creature_movement WHERE id=1491001;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(1491001, 0, 0, 31, 14911, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Terminate Script If Zandalar Enforcer (14911) Is Not Found in Range'),
(1491001, 0, 0, 31, 14911, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Terminate Script If Zandalar Enforcer (14911) Is Not Found in Range'),
(1491001, 0, 1, 31, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Terminate Script If Captured Hakkari Zealot (14912) Is Not Found in Range'),
(1491001, 0, 2, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Remove UNIT_NPC_FLAG_GOSSIP, UNIT_NPC_FLAG_QUESTGIVER'),
(1491001, 0, 3, 0, 0, 0, 0, 0, 0, 0, 10306, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39631, 0, 'Exzhal - Set Orientation'),
(1491001, 1000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_POINT (25)'),
(1491001, 5000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.75959, 0, 'Exzhal - Set Orientation'),
(1491001, 5000, 1, 15, 23949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Cast Exzhal Calls Circle of Binding DND'),
(1491001, 5000, 2, 20, 2, 0, 0, 14911, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Zandalar Enforcer (14911) - Start PathId 0'),
(1491001, 7000, 0, 9, 12165, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Respawn Circle of Binding for 233secs'),
(1491001, 30000, 0, 20, 2, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Start PathId 0'),
(1491001, 41000, 0, 0, 0, 0, 0, 0, 0, 0, 10309, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 42000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_POINT (25)'),
(1491001, 47000, 0, 0, 0, 0, 0, 14912, 20, 0, 10310, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 53000, 0, 0, 0, 0, 0, 0, 0, 0, 10311, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 58000, 0, 28, 8, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - UNIT_STAND_STATE_KNEEL'),
(1491001, 59000, 0, 0, 0, 0, 0, 0, 0, 0, 10312, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 65000, 0, 0, 0, 0, 0, 14912, 20, 0, 10313, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 72000, 0, 0, 0, 0, 0, 0, 0, 0, 10314, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 75000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_TALK (1)'),
(1491001, 79000, 0, 0, 0, 0, 0, 14912, 20, 0, 10315, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 83000, 0, 0, 0, 0, 0, 14912, 20, 0, 10316, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 86000, 0, 1, 1, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_TALK (1)'),
(1491001, 94000, 0, 0, 0, 0, 0, 0, 0, 0, 10317, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 98000, 0, 0, 0, 0, 0, 14912, 20, 0, 10315, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 100000, 0, 0, 0, 0, 0, 14912, 20, 0, 10318, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 103000, 0, 1, 1, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_TALK (1)'),
(1491001, 109000, 0, 0, 0, 0, 0, 14912, 20, 0, 10319, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 118000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_POINT (25)'),
(1491001, 119000, 0, 0, 0, 0, 0, 0, 0, 0, 10320, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 122000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_TALK (1)'),
(1491001, 128000, 0, 0, 0, 0, 0, 14912, 20, 0, 10321, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 132000, 0, 0, 0, 0, 0, 14912, 20, 0, 10322, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 135000, 0, 1, 6, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_QUESTION (6)'),
(1491001, 139000, 0, 1, 1, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_TALK (1)'),
(1491001, 143000, 0, 0, 0, 0, 0, 14912, 20, 0, 10323, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 150000, 0, 0, 0, 0, 0, 14912, 20, 0, 10324, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 153000, 0, 1, 25, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_POINT (25)'),
(1491001, 162000, 0, 0, 0, 0, 0, 0, 0, 0, 10325, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 167000, 0, 0, 0, 0, 0, 14912, 20, 0, 10315, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 170000, 0, 0, 0, 0, 0, 14912, 20, 0, 10326, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 177000, 0, 0, 0, 0, 0, 14912, 20, 0, 10327, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 181000, 0, 1, 6, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_QUESTION (6)'),
(1491001, 185000, 0, 0, 0, 0, 0, 14912, 20, 0, 10329, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 185000, 1, 0, 0, 0, 0, 14912, 20, 0, 10328, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 192000, 0, 0, 0, 0, 0, 0, 0, 0, 10330, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 195000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - EMOTE_ONESHOT_EXCLAMATION (5)'),
(1491001, 198000, 0, 0, 0, 0, 0, 14912, 20, 0, 10331, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 200000, 0, 1, 1, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - EMOTE_ONESHOT_TALK (1)'),
(1491001, 205000, 0, 15, 23950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Cast Exzhal Searches for Wild Gods DND'),
(1491001, 207000, 0, 15, 23950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Cast Exzhal Searches for Wild Gods DND'),
(1491001, 209000, 0, 15, 23950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Cast Exzhal Searches for Wild Gods DND'),
(1491001, 212000, 0, 0, 0, 0, 0, 0, 0, 0, 10332, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Say Text'),
(1491001, 216000, 0, 0, 0, 0, 0, 14912, 20, 0, 10333, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 219000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.40855, 0, 'Exzhal - Set Orientation'),
(1491001, 226000, 0, 0, 0, 0, 0, 14912, 20, 0, 10334, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 231000, 0, 0, 0, 0, 0, 14912, 20, 0, 10335, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Say Text'),
(1491001, 232000, 0, 3, 0, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.8801, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Set Orientation'),
(1491001, 232000, 1, 28, 0, 0, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - UNIT_STAND_STATE_STAND'),
(1491001, 233000, 0, 1, 37, 0, 0, 14911, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Zandalar Enforcer (14911) - EMOTE_ONESHOT_ATTACK2HTIGHT (37)'), -- OneShotAttack2HTight sniff
(1491001, 233000, 1, 15, 3617, 1, 0, 14912, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Captured Hakkari Zealot (14912) - Cast Quiet Suicide'),
(1491001, 236000, 0, 0, 0, 0, 0, 14911, 20, 0, 10336, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Zandalar Enforcer (14911) - Say Text'),
-- -- (1491001, 240000, 0, 41, 0, 0, 0, 0, 12165, 0, 12, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Despawn Gobject'), -- Circle of Binding s.23949
(1491001, 240000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Add UNIT_NPC_FLAG_GOSSIP, UNIT_NPC_FLAG_QUESTGIVER'),
(1491001, 245000, 0, 18, 0, 0, 0, 14912, 20, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Despawn Captured Hakkari Zealot (14912)');
-- -- (1491001, 245000, 0, 34, 2, 0, 0, 0, 2368, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Exzhal - Set Home (Creature ID: 14912)');

-- update emotes for exzhal event
UPDATE broadcast_text SET emoteid1=15 WHERE id=10314; -- 0
UPDATE broadcast_text SET emoteid1=1 WHERE id=10318; -- 0
UPDATE broadcast_text SET emoteid1=0 WHERE id=10320; -- 0
UPDATE broadcast_text SET emoteid1=25 WHERE id=10322; -- 0
UPDATE broadcast_text SET emoteid1=1 WHERE id=10325; -- 0
UPDATE broadcast_text SET emoteid1=5 WHERE id=10327; -- 0
UPDATE broadcast_text SET emoteid1=6 WHERE id=10331; -- 0
UPDATE broadcast_text SET emoteid1=11 WHERE id=10333; -- 0
UPDATE broadcast_text SET emoteid1=5 WHERE id=10334; -- 0
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (10315,10321,10329,10332,10335,10336); -- textemotes

-- update zandalari enforcer scripts
DELETE FROM creature_movement_template WHERE entry=14911;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14911, 0, 1, -11835.3271484375, 1257.3831787109375, 2.264826536178588867, 100, 5000, 1491101),
(14911, 0, 2, -11834.4, 1256.34, 2.20851, 100, 0, 0),
(14911, 0, 3, -11835.8, 1254.65, 2.17807, 100, 10000, 1491102),
(14911, 0, 4, -11833.1, 1258.41, 2.05416, 100, 9000, 1491103), -- 7000
(14911, 0, 5, -11826.3, 1253.94, 2.31451, 100, 0, 0),
(14911, 0, 6, -11820.2, 1248.14, 2.43893, 100, 0, 0),
(14911, 0, 7, -11819.1, 1244.68, 2.02891, 100, 0, 0),
(14911, 0, 8, -11826, 1240.57, 1.53743, 100, 198000, 1491104),
(14911, 0, 9, -11826.9, 1250.12, 2.4449, 100, 0, 0),
(14911, 0, 10, -11835.3271484375, 1257.3831787109375, 2.264826536178588867, 5.07860565185546875, 5000, 1491105);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1491101 AND 1491105;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(1491101, 0, 0, 36, 0, 0, 0, 14910, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Face Exzhal (14910)'),
(1491101, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 10307, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Say Text'),
(1491101, 3000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - EMOTE_ONESHOT_SALUTE (66)'),

(1491102, 1000, 0, 36, 0, 0, 0, 14912, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Face Captured Hakkari Zealot (14912)'),
(1491102, 2000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - EMOTE_STATE_USESTANDING (69)'),
(1491102, 6000, 0, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - EMOTE_STATE_NONE (30)'),
(1491102, 7000, 0, 11, 11027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Open Cage Guid (11027)'),

(1491103, 1000, 0, 36, 0, 0, 0, 14912, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Face Captured Hakkari Zealot (14912)'), -- 2000
(1491103, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 10308, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Say Text'),
(1491103, 4000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - EMOTE_ONESHOT_POINT (25)'),

(1491104, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Run'),
(1491104, 1000, 0, 36, 0, 0, 0, 14910, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Face Exzhal (14910)'),

(1491105, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Walk'),
(1491105, 2000, 0, 12, 11027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Close Cage Guid (11027)'),
(1491105, 4000, 2, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zandalar Enforcer - Idle');

-- update captured hakari zealot scripts
DELETE FROM creature_movement_template WHERE entry=14912;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14912, 0, 1, -11838.5, 1256.12, 2.07029, 100, 0, 0),
(14912, 0, 2, -11834.8, 1254.37, 2.22775, 100, 0, 0),
(14912, 0, 3, -11827.2, 1253, 2.34738, 100, 0, 0),
(14912, 0, 4, -11823.4, 1244.34, 2.03717, 100, 240000, 1491201);

DELETE FROM dbscripts_on_creature_movement WHERE id=1491201;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(1491201, 1000, 0, 36, 0, 0, 0, 14910, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Hakkari Zealot - Face Exzhal (14910)'); -- SCRIPT_COMMAND_SET_FACING 

-- ziata jai ruins
-- add skullsplitter patrol
UPDATE creature SET position_x=-12505.6, position_y=-748.509, position_z=37.4733, movementtype=2, spawndist=0 WHERE guid=1405;
UPDATE creature SET position_x=-12505.51, position_y=-745.11, position_z=38.12, movementtype=0, spawndist=0 WHERE guid=1406;
UPDATE creature SET position_x=-12509.21, position_y=-747.67, position_z=38.26, movementtype=0, spawndist=0 WHERE guid=1407;

DELETE FROM creature_linking WHERE master_guid=1405;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(1406, 1405, 512),
(1407, 1405, 512);

DELETE FROM creature_movement WHERE id=1405;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1405, 1, -12505.6, -748.509, 37.4733, 100, 0, 0),
(1405, 2, -12502.9, -758.203, 37.4595, 100, 0, 0),
(1405, 3, -12518.9, -790.723, 37.9103, 100, 0, 0),
(1405, 4, -12526.8, -804.906, 38.3087, 100, 0, 0),
(1405, 5, -12542.9, -822.725, 41.0361, 100, 0, 0),
(1405, 6, -12553.8, -834.302, 43.8454, 100, 0, 0),
(1405, 7, -12565.8, -844.824, 46.4901, 100, 0, 0),
(1405, 8, -12570.5, -850.869, 48.1285, 100, 0, 0),
(1405, 9, -12576, -861.556, 49.8767, 100, 0, 0),
(1405, 10, -12582.1, -886.265, 48.7459, 100, 30000, 0),
(1405, 11, -12593.4, -896.793, 50.4639, 100, 0, 0),
(1405, 12, -12629.7, -882.075, 52.303, 100, 0, 0),
(1405, 13, -12644.5, -875.323, 52.3698, 100, 0, 0),
(1405, 14, -12672, -868.502, 51.0329, 100, 0, 0),
(1405, 15, -12697.5, -879.137, 54.5915, 100, 0, 0),
(1405, 16, -12729.3, -883.734, 55.2066, 100, 0, 0),
(1405, 17, -12757.2, -885.654, 53.3629, 100, 0, 0),
(1405, 18, -12773.4, -885.254, 53.8699, 100, 0, 0),
(1405, 19, -12785.3, -883.501, 55.0784, 100, 0, 0),
(1405, 20, -12796, -879.049, 57.0381, 100, 0, 0),
(1405, 21, -12805.1, -871.277, 58.5779, 100, 0, 0),
(1405, 22, -12816.2, -860.279, 60.3142, 100, 0, 0),
(1405, 23, -12834, -844.302, 56.9032, 100, 0, 0),
(1405, 24, -12858.2, -824.133, 54.5293, 100, 30000, 0),
(1405, 25, -12854.2, -823.224, 54.699, 100, 0, 0),
(1405, 26, -12842.9, -818.939, 55.3834, 100, 0, 0),
(1405, 27, -12834.8, -810.795, 58.4522, 100, 0, 0),
(1405, 28, -12825.9, -803.276, 61.0659, 100, 0, 0),
(1405, 29, -12815.3, -797.553, 61.8574, 100, 0, 0),
(1405, 30, -12799.9, -792.906, 62.2464, 100, 0, 0),
(1405, 31, -12779.4, -795.687, 61.6628, 100, 0, 0),
(1405, 32, -12755.7, -798.848, 60.0422, 100, 0, 0),
(1405, 33, -12739.5, -799.549, 60.8576, 100, 0, 0),
(1405, 34, -12723.3, -799.902, 60.9062, 100, 0, 0),
(1405, 35, -12702.9, -799.558, 60.7436, 100, 0, 0),
(1405, 36, -12674.7, -796.753, 59.3341, 100, 0, 0),
(1405, 37, -12664.7, -791.207, 59.1141, 100, 0, 0),
(1405, 38, -12651.7, -782.325, 56.1493, 100, 0, 0),
(1405, 39, -12623.1, -773.396, 44.1436, 100, 0, 0),
(1405, 40, -12606.7, -762.372, 41.8668, 100, 0, 0),
(1405, 41, -12600, -757.836, 42.3014, 100, 0, 0),
(1405, 42, -12586.7, -748.843, 44.0255, 100, 0, 0),
(1405, 43, -12579.8, -744.662, 43.5917, 100, 0, 0),
(1405, 44, -12569.5, -738.798, 40.9609, 100, 0, 0),
(1405, 45, -12559.2, -735.755, 39.1732, 100, 30000, 0),
(1405, 46, -12552.4, -734.985, 39.1693, 100, 0, 0),
(1405, 47, -12548.5, -733.411, 39.1987, 100, 0, 0),
(1405, 48, -12545.2, -731.308, 39.4668, 100, 0, 0),
(1405, 49, -12540.8, -724.491, 39.8921, 100, 30000, 0),
(1405, 50, -12537.6, -731.317, 38.9928, 100, 0, 0),
(1405, 51, -12525.3, -737.404, 38.9094, 100, 0, 0);

-- add skullsplitter patrol
UPDATE creature SET position_x=-12762, position_y=-890.346, position_z=52.7586, movementtype=2, spawndist=0 WHERE guid=1408;
UPDATE creature SET position_x=-12764.64, position_y=-893.05, position_z=52.41, movementtype=0, spawndist=0 WHERE guid=2539;
UPDATE creature SET position_x=-12764.99, position_y=-888.91, position_z=52.92, movementtype=0, spawndist=0 WHERE guid=1409;

DELETE FROM creature_linking WHERE master_guid=1408;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(2539, 1408, 512),
(1409, 1408, 512);

DELETE FROM creature_movement WHERE id=1408;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1408, 1, -12762, -890.346, 52.7586, 100, 0, 0),
(1408, 2, -12730.1, -887.774, 55.5323, 100, 0, 0),
(1408, 3, -12714.3, -885.025, 53.4196, 100, 0, 0),
(1408, 4, -12699.1, -879.825, 54.4919, 100, 0, 0),
(1408, 5, -12681.8, -869.564, 52.6233, 100, 0, 0),
(1408, 6, -12674.4, -869.165, 51.188, 100, 0, 0),
(1408, 7, -12666.7, -871.35, 51.4219, 100, 0, 0),
(1408, 8, -12650.9, -873.392, 52.5857, 100, 0, 0),
(1408, 9, -12638.7, -876.715, 52.3258, 100, 0, 0),
(1408, 10, -12628.2, -882.72, 52.3613, 100, 0, 0),
(1408, 11, -12614.1, -890.653, 53.2341, 100, 0, 0),
(1408, 12, -12607.4, -894.497, 52.9249, 100, 0, 0),
(1408, 13, -12596.1, -898.259, 50.9869, 100, 0, 0),
(1408, 14, -12584.8, -891.217, 48.1915, 100, 30000, 0),
(1408, 15, -12581.3, -875.678, 49.6814, 100, 0, 0),
(1408, 16, -12563.8, -839.487, 46.2891, 100, 0, 0),
(1408, 17, -12548.5, -821.83, 42.4999, 100, 0, 0),
(1408, 18, -12528.2, -802.737, 38.3867, 100, 0, 0),
(1408, 19, -12517.3, -790.733, 37.6283, 100, 0, 0),
(1408, 20, -12504.1, -761.325, 37.2703, 100, 0, 0),
(1408, 21, -12504.8, -749.482, 37.1879, 100, 30000, 0),
(1408, 22, -12525.3, -740.081, 39.0834, 100, 0, 0),
(1408, 23, -12531, -735.172, 38.9141, 100, 0, 0),
(1408, 24, -12534.3, -733.351, 38.8407, 100, 0, 0),
(1408, 25, -12541.9, -731.708, 39.2788, 100, 0, 0),
(1408, 26, -12549.2, -722.585, 40.6961, 100, 0, 0),
(1408, 27, -12556.6, -713.417, 39.0303, 100, 0, 0),
(1408, 28, -12563.1, -708.661, 39.1064, 100, 0, 0),
(1408, 29, -12573.6, -702.577, 39.3474, 100, 0, 0),
(1408, 30, -12583.1, -690.176, 39.9489, 100, 0, 0),
(1408, 31, -12588.2, -679.075, 39.7129, 100, 0, 0),
(1408, 32, -12595, -664.307, 39.9864, 100, 0, 0),
(1408, 33, -12599.4, -652.97, 39.8231, 100, 0, 0),
(1408, 34, -12599.9, -645.003, 39.8947, 100, 0, 0),
(1408, 35, -12597.3, -637.418, 40.4238, 100, 0, 0),
(1408, 36, -12594.9, -629.737, 40.2418, 100, 0, 0),
(1408, 37, -12594.6, -625.751, 40.4491, 100, 0, 0),
(1408, 38, -12595.2, -613.827, 38.8148, 100, 0, 0),
(1408, 39, -12594.7, -593.58, 36.5525, 100, 0, 0),
(1408, 40, -12600.2, -579.04, 34.2872, 100, 0, 0),
(1408, 41, -12611.5, -562.366, 31.9708, 100, 0, 0),
(1408, 42, -12620, -553.872, 31.7559, 100, 0, 0),
(1408, 43, -12630.2, -547.365, 31.936, 100, 0, 0),
(1408, 44, -12640, -540.128, 32.2561, 100, 0, 0),
(1408, 45, -12645.3, -534.178, 31.9934, 100, 0, 0),
(1408, 46, -12651.1, -523.508, 31.2743, 100, 0, 0),
(1408, 47, -12665, -509.139, 29.4158, 100, 0, 0),
(1408, 48, -12671.9, -506.452, 29.5088, 100, 0, 0),
(1408, 49, -12679.5, -504.044, 29.5854, 100, 0, 0),
(1408, 50, -12686.7, -500.509, 29.0686, 100, 0, 0),
(1408, 51, -12689.9, -498.088, 29.1882, 100, 0, 0),
(1408, 52, -12693, -487.472, 29.2998, 100, 30000, 0),
(1408, 53, -12693.2, -491.533, 29.438, 100, 0, 0),
(1408, 54, -12700.5, -494.845, 30.2639, 100, 0, 0),
(1408, 55, -12716.4, -491.824, 29.6841, 100, 0, 0),
(1408, 56, -12741.2, -516.6, 30.2787, 100, 0, 0),
(1408, 57, -12767.2, -535.472, 34.1034, 100, 0, 0),
(1408, 58, -12801.5, -530.203, 36.8804, 100, 0, 0),
(1408, 59, -12821.9, -537.812, 46.1076, 100, 0, 0),
(1408, 60, -12836.6, -544.153, 47.7871, 100, 0, 0),
(1408, 61, -12864.3, -543.38, 47.7794, 100, 0, 0),
(1408, 62, -12879.5, -554.229, 48.8942, 100, 0, 0),
(1408, 63, -12877.9, -568.303, 50.6014, 100, 0, 0),
(1408, 64, -12862.4, -579.861, 53.7743, 100, 0, 0),
(1408, 65, -12856.3, -589.198, 54.669, 100, 0, 0),
(1408, 66, -12859.6, -604.335, 56.8006, 100, 30000, 0),
(1408, 67, -12878, -624.164, 52.679, 100, 0, 0),
(1408, 68, -12891.5, -632.918, 51.3038, 100, 0, 0),
(1408, 69, -12901.8, -644.776, 51.2709, 100, 0, 0),
(1408, 70, -12906.7, -660.089, 51.0987, 100, 0, 0),
(1408, 71, -12924.3, -691.778, 51.1009, 100, 30000, 0),
(1408, 72, -12910.9, -724.205, 51.1811, 100, 0, 0),
(1408, 73, -12906, -772.41, 51.5967, 100, 0, 0),
(1408, 74, -12896, -789.531, 51.9119, 100, 0, 0),
(1408, 75, -12880.5, -807.939, 54.6357, 100, 0, 0),
(1408, 76, -12858.4, -823.952, 54.5228, 100, 30000, 0),
(1408, 77, -12854.9, -825.987, 54.6521, 100, 0, 0),
(1408, 78, -12844.5, -832.331, 55.2178, 100, 0, 0),
(1408, 79, -12834.5, -838.677, 56.7409, 100, 0, 0),
(1408, 80, -12825.1, -845.945, 59.0249, 100, 0, 0),
(1408, 81, -12817.3, -854.857, 61.2077, 100, 0, 0),
(1408, 82, -12804.1, -870.033, 59.086, 100, 0, 0),
(1408, 83, -12780.5, -884.721, 54.3719, 100, 0, 0);

-- add skullsplitter patrol
UPDATE creature SET position_x=-12663.6, position_y=-508.931, position_z=29.5798, movementtype=2, spawndist=0 WHERE guid=2516;
UPDATE creature SET position_x=-12665.88, position_y=-505.74, position_z=29.73, movementtype=0, spawndist=0 WHERE guid=2517;
UPDATE creature SET position_x=-12666.65, position_y=-510.71, position_z=29.36, movementtype=0, spawndist=0 WHERE guid=2518;

DELETE FROM creature_linking WHERE master_guid=2516;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(2517, 2516, 512),
(2518, 2516, 512);

DELETE FROM creature_movement WHERE id=2516;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2516, 1, -12663.6, -508.931, 29.5798, 100, 0, 0),
(2516, 2, -12640.7, -540.48, 32.2609, 100, 0, 0),
(2516, 3, -12616.7, -554.255, 31.883, 100, 0, 0),
(2516, 4, -12605.3, -572.367, 33.3503, 100, 0, 0),
(2516, 5, -12593.4, -587.799, 35.9762, 100, 0, 0),
(2516, 6, -12596.4, -635.345, 40.4541, 100, 0, 0),
(2516, 7, -12601.9, -650.487, 39.7871, 100, 0, 0),
(2516, 8, -12588.7, -676.953, 39.759, 100, 0, 0),
(2516, 9, -12574.3, -701.697, 39.288, 100, 0, 0),
(2516, 10, -12555.6, -712.722, 38.7759, 100, 0, 0),
(2516, 11, -12540.6, -722.316, 39.7217, 100, 30000, 0),
(2516, 12, -12536.7, -723.138, 39.1306, 100, 0, 0),
(2516, 13, -12532.8, -724.051, 38.9953, 100, 0, 0),
(2516, 14, -12527.8, -730.385, 38.8131, 100, 0, 0),
(2516, 15, -12519.3, -738.912, 38.653, 100, 0, 0),
(2516, 16, -12512.8, -743.277, 38.4347, 100, 0, 0),
(2516, 17, -12506.4, -747.885, 37.7085, 100, 0, 0),
(2516, 18, -12504.5, -751.205, 37.1529, 100, 0, 0),
(2516, 19, -12504.5, -759.188, 37.3704, 100, 0, 0),
(2516, 20, -12508.4, -770.642, 36.6436, 100, 0, 0),
(2516, 21, -12512.6, -782.086, 37.2624, 100, 0, 0),
(2516, 22, -12516, -789.548, 37.5997, 100, 0, 0),
(2516, 23, -12521.6, -795.084, 37.9125, 100, 0, 0),
(2516, 24, -12524.7, -797.578, 38.2524, 100, 0, 0),
(2516, 25, -12528.8, -808.885, 38.1886, 100, 0, 0),
(2516, 26, -12529.8, -812.729, 37.8954, 100, 0, 0),
(2516, 27, -12536.3, -817.095, 39.3836, 100, 0, 0),
(2516, 28, -12542.5, -821.944, 40.8698, 100, 0, 0),
(2516, 29, -12553.6, -833.322, 43.7255, 100, 0, 0),
(2516, 30, -12562.2, -841.567, 45.7154, 100, 0, 0),
(2516, 31, -12570.4, -850.198, 47.9946, 100, 0, 0),
(2516, 32, -12574.5, -857.03, 49.26, 100, 0, 0),
(2516, 33, -12580.4, -872.052, 49.8233, 100, 0, 0),
(2516, 34, -12581.4, -886.514, 48.5391, 100, 30000, 0),
(2516, 35, -12584, -889.562, 48.3149, 100, 0, 0),
(2516, 36, -12589.7, -895.215, 49.4118, 100, 0, 0),
(2516, 37, -12592.9, -897.15, 50.3205, 100, 0, 0),
(2516, 38, -12604.7, -895.833, 52.3949, 100, 0, 0),
(2516, 39, -12615.9, -891.214, 53.0229, 100, 0, 0),
(2516, 40, -12625.2, -883.652, 52.4735, 100, 0, 0),
(2516, 41, -12635.8, -877.763, 52.2481, 100, 0, 0),
(2516, 42, -12655.5, -873.401, 52.3643, 100, 0, 0),
(2516, 43, -12667.4, -871.234, 51.3445, 100, 0, 0),
(2516, 44, -12679.4, -870.943, 52.0598, 100, 0, 0),
(2516, 45, -12686.6, -873.635, 53.3724, 100, 0, 0),
(2516, 46, -12705.1, -881.311, 53.8575, 100, 0, 0),
(2516, 47, -12728.6, -886.687, 55.3895, 100, 0, 0),
(2516, 48, -12768.8, -888.368, 53.0689, 100, 0, 0),
(2516, 49, -12784.3, -885.804, 54.4875, 100, 0, 0),
(2516, 50, -12798.3, -878.592, 57.7295, 100, 0, 0),
(2516, 51, -12806.5, -869.737, 58.8736, 100, 0, 0),
(2516, 52, -12813.9, -860.724, 60.5766, 100, 0, 0),
(2516, 53, -12837.7, -839.618, 56.168, 100, 0, 0),
(2516, 54, -12858.8, -823.824, 54.5093, 100, 30000, 0),
(2516, 55, -12855, -824.006, 54.6605, 100, 0, 0),
(2516, 56, -12851, -823.168, 54.8511, 100, 0, 0),
(2516, 57, -12841.3, -816.427, 55.588, 100, 0, 0),
(2516, 58, -12838.6, -813.54, 56.4768, 100, 0, 0),
(2516, 59, -12830.3, -805.415, 60.0935, 100, 0, 0),
(2516, 60, -12816.4, -797.57, 61.8897, 100, 0, 0),
(2516, 61, -12802.2, -789.839, 61.9909, 100, 0, 0),
(2516, 62, -12790, -779.394, 61.5143, 100, 0, 0),
(2516, 63, -12779.7, -766.841, 60.8136, 100, 0, 0),
(2516, 64, -12770.9, -758.718, 60.3391, 100, 0, 0),
(2516, 65, -12756.5, -752.015, 62.8276, 100, 0, 0),
(2516, 66, -12745.7, -746.585, 63.667, 100, 0, 0),
(2516, 67, -12737.3, -737.875, 63.9252, 100, 0, 0),
(2516, 68, -12732.5, -727.264, 64.8006, 100, 0, 0),
(2516, 69, -12727.8, -703.421, 63.0317, 100, 0, 0),
(2516, 70, -12724, -687.973, 59.9778, 100, 0, 0),
(2516, 71, -12721.6, -680.692, 57.5211, 100, 0, 0),
(2516, 72, -12712.4, -663.815, 44.1446, 100, 0, 0),
(2516, 73, -12707.8, -649.805, 38.5891, 100, 0, 0),
(2516, 74, -12708.2, -633.98, 40.951, 100, 0, 0),
(2516, 75, -12709.6, -614.003, 39.81, 100, 0, 0),
(2516, 76, -12711.2, -585.787, 36.8269, 100, 0, 0),
(2516, 77, -12716.1, -558.074, 33.4151, 100, 0, 0),
(2516, 78, -12721.2, -542.879, 31.1939, 100, 0, 0),
(2516, 79, -12729.9, -529.278, 30.0038, 100, 0, 0),
(2516, 80, -12734.8, -518.281, 30.0734, 100, 0, 0),
(2516, 81, -12734.6, -510.688, 29.8902, 100, 0, 0),
(2516, 82, -12728.5, -500.512, 29.0533, 100, 0, 0),
(2516, 83, -12719.4, -487.5, 28.7728, 100, 0, 0),
(2516, 84, -12712.5, -477.983, 29.2377, 100, 0, 0),
(2516, 85, -12704.8, -467.574, 30.1593, 100, 30000, 0),
(2516, 86, -12701.2, -468.997, 30.1922, 100, 0, 0),
(2516, 87, -12694.1, -478.794, 29.5006, 100, 0, 0),
(2516, 88, -12691.8, -498.844, 29.2305, 100, 0, 0);

-- add skullsplitter patrol
UPDATE creature SET position_x=-12808.8, position_y=-790.261, position_z=61.4108, movementtype=2, spawndist=0 WHERE guid=857;
UPDATE creature SET position_x=-12810.53, position_y=-793.31, position_z=61.48, movementtype=0, spawndist=0 WHERE guid=858;
UPDATE creature SET position_x=-12812.22, position_y=-789.37, position_z=61.43, movementtype=0, spawndist=0 WHERE guid=859;

DELETE FROM creature_linking WHERE master_guid=857;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(858, 857, 512),
(859, 857, 512);

DELETE FROM creature_movement WHERE id=857;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(857, 1, -12808.8, -790.261, 61.4108, 100, 0, 0),
(857, 2, -12798.2, -784.473, 62.2808, 100, 0, 0),
(857, 3, -12786.1, -774.162, 61.2438, 100, 0, 0),
(857, 4, -12771.3, -761.481, 60.316, 100, 0, 0),
(857, 5, -12756.8, -754.828, 62.6106, 100, 0, 0),
(857, 6, -12749.6, -751.143, 63.3112, 100, 0, 0),
(857, 7, -12739, -739.303, 63.8856, 100, 0, 0),
(857, 8, -12735.1, -732.225, 64.3525, 100, 0, 0),
(857, 9, -12728.2, -713.169, 64.4459, 100, 0, 0),
(857, 10, -12725.2, -701.539, 62.6778, 100, 0, 0),
(857, 11, -12720.4, -686.493, 59.1679, 100, 0, 0),
(857, 12, -12712.7, -663.773, 44.3386, 100, 0, 0),
(857, 13, -12708.5, -649.872, 38.7075, 100, 0, 0),
(857, 14, -12708.3, -641.947, 38.9813, 100, 0, 0),
(857, 15, -12707.5, -622.09, 41.0591, 100, 0, 0),
(857, 16, -12698.9, -609.684, 39.5117, 100, 0, 0),
(857, 17, -12684.6, -602.683, 38.1895, 100, 0, 0),
(857, 18, -12675.1, -590.482, 36.8763, 100, 0, 0),
(857, 19, -12668.8, -572.061, 32.4446, 100, 0, 0),
(857, 20, -12666.3, -556.351, 33.5797, 100, 0, 0),
(857, 21, -12664.8, -528.21, 32.2876, 100, 0, 0),
(857, 22, -12664.2, -512.286, 29.5436, 100, 0, 0),
(857, 23, -12663.6, -492.078, 29.7032, 100, 0, 0),
(857, 24, -12663, -483.57, 29.5811, 100, 0, 0),
(857, 25, -12662.8, -475.462, 30.1972, 100, 0, 0),
(857, 26, -12663.4, -463.4, 30.1114, 100, 0, 0),
(857, 27, -12662.3, -452.503, 27.4379, 100, 30000, 0),
(857, 28, -12663.4, -468.134, 30.4193, 100, 0, 0),
(857, 29, -12664.5, -480.243, 29.7838, 100, 0, 0),
(857, 30, -12672.3, -493.402, 30.0779, 100, 0, 0),
(857, 31, -12680.3, -502.59, 29.6548, 100, 0, 0),
(857, 32, -12690.2, -500.314, 29.1463, 100, 0, 0),
(857, 33, -12701.2, -495.446, 30.33, 100, 0, 0),
(857, 34, -12713, -493.72, 30.5647, 100, 0, 0),
(857, 35, -12729, -504.393, 30.0121, 100, 0, 0),
(857, 36, -12738.7, -517.266, 30.0721, 100, 0, 0),
(857, 37, -12753.3, -530.768, 33.1066, 100, 0, 0),
(857, 38, -12771.2, -539.731, 34.6667, 100, 0, 0),
(857, 39, -12797.1, -532.118, 36.3557, 100, 0, 0),
(857, 40, -12818.5, -536.019, 44.5534, 100, 0, 0),
(857, 41, -12832.5, -542.717, 47.8185, 100, 0, 0),
(857, 42, -12848, -544.823, 49.4328, 100, 0, 0),
(857, 43, -12868.2, -543.583, 47.659, 100, 0, 0),
(857, 44, -12881.8, -556.548, 48.9577, 100, 0, 0),
(857, 45, -12876.7, -569.919, 50.9357, 100, 0, 0),
(857, 46, -12860.1, -580.463, 54.1022, 100, 0, 0),
(857, 47, -12855.3, -596.746, 54.9877, 100, 30000, 0),
(857, 48, -12876.4, -620.271, 53.5266, 100, 0, 0),
(857, 49, -12895.1, -635.351, 51.4542, 100, 0, 0),
(857, 50, -12904.4, -657.241, 51.1925, 100, 0, 0),
(857, 51, -12927, -692.569, 51.0642, 100, 30000, 0),
(857, 52, -12911.1, -720.953, 51.1509, 100, 0, 0),
(857, 53, -12907.9, -760.966, 51.3873, 100, 0, 0),
(857, 54, -12900.2, -783.897, 51.7958, 100, 0, 0),
(857, 55, -12890.5, -796.604, 52.4773, 100, 0, 0),
(857, 56, -12876.6, -811.234, 54.5698, 100, 0, 0),
(857, 57, -12859.3, -826.326, 54.4844, 100, 30000, 0),
(857, 58, -12856.3, -825.979, 54.5954, 100, 0, 0),
(857, 59, -12844.4, -816.441, 55.3631, 100, 0, 0),
(857, 60, -12837, -807.25, 58.0551, 100, 0, 0),
(857, 61, -12827.3, -800.899, 60.6489, 100, 0, 0);

-- ruins of zul mamwe
-- add ana thek the cruel patrol
-- not needed, but we might miss a last waypoint for c.guid.1365 - https://github.com/vmangos/core/commit/ed6b03221703ddea4fcff1c10b5b6481f366af0b#diff-068ce0a266ad778ba2d9cb0238db68c25bf2cd93391b18c604a99a08d5a5c6b5R646
-- we also need to adjust follower orientation on last waypoints with movement change for master (back in cave)
-- (1059, 27, -12905.4, -777.794, 51.8072, 100, 20000, 0, 0),

-- add skullsplitter hunter patrol - pets spellsummoned
UPDATE creature SET movementtype=2, spawndist=0 WHERE guid=1391;
DELETE FROM creature_movement WHERE id=1391;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1391, 1, -12992.4, -671.172, 52.4459, 100, 0, 0),
(1391, 2, -13008.5, -683.035, 55.2639, 100, 0, 0),
(1391, 3, -13019.7, -692.503, 55.1819, 100, 0, 0),
(1391, 4, -13022.1, -715.903, 54.698, 100, 0, 0),
(1391, 5, -13022.3, -728.91, 54.9169, 100, 0, 0),
(1391, 6, -13022.2, -720.807, 54.6897, 100, 0, 0),
(1391, 7, -13021.3, -704.648, 55.2174, 100, 0, 0),
(1391, 8, -13021.3, -693.826, 55.3925, 100, 0, 0),
(1391, 9, -13010, -684.352, 55.2492, 100, 0, 0),
(1391, 10, -12997.8, -673.99, 53.6997, 100, 0, 0),
(1391, 11, -12984, -669.189, 51.5392, 100, 0, 0),
(1391, 12, -12976.9, -670.189, 51.367, 100, 0, 0),
(1391, 13, -12936.8, -689.792, 51.0965, 100, 0, 0),
(1391, 14, -12976.9, -670.189, 51.3674, 100, 0, 0);

-- add skullsplitter hunter patrol
UPDATE creature SET  position_x=-12828.1, position_y=-804.768, position_z=60.5913, movementtype=2, spawndist=0 WHERE guid=1360;
DELETE FROM creature_movement WHERE id=1360;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1360, 1, -12828.1, -804.768, 60.5913, 100, 0, 0),
(1360, 2, -12802, -785.664, 62.3812, 100, 0, 0),
(1360, 3, -12791.1, -773.972, 61.4198, 100, 0, 0),
(1360, 4, -12792, -766.739, 62.088, 100, 0, 0),
(1360, 5, -12796.9, -755.996, 71.1552, 100, 0, 0),
(1360, 6, -12798.8, -752.783, 71.2339, 100, 0, 0),
(1360, 7, -12801.9, -752.073, 72.854, 100, 0, 0),
(1360, 8, -12804.7, -752.601, 74.7718, 100, 0, 0),
(1360, 9, -12811, -750.177, 77.107, 100, 0, 0),
(1360, 10, -12813.3, -746.817, 77.3109, 100, 0, 0),
(1360, 11, -12817.8, -736.891, 75.2427, 100, 0, 0),
(1360, 12, -12814.7, -744.203, 76.7653, 100, 0, 0),
(1360, 13, -12812.8, -747.688, 77.3984, 100, 0, 0),
(1360, 14, -12810.4, -751.107, 77.0424, 100, 0, 0),
(1360, 15, -12807.3, -752.504, 75.9823, 100, 0, 0),
(1360, 16, -12803.8, -752.412, 74.2985, 100, 0, 0),
(1360, 17, -12800.6, -752.212, 72.0734, 100, 0, 0),
(1360, 18, -12795, -759.765, 68.4002, 100, 0, 0),
(1360, 19, -12791.3, -768.447, 61.7334, 100, 0, 0),
(1360, 20, -12794.8, -778.515, 61.9093, 100, 0, 0),
(1360, 21, -12819.7, -798.98, 61.9473, 100, 0, 0),
(1360, 22, -12834.7, -809.028, 58.7304, 100, 0, 0);

-- add skullsplitter hunter patrol
UPDATE creature SET  position_x=-12812.5, position_y=-686.394, position_z=81.4995, movementtype=2, spawndist=0 WHERE guid=1380;
DELETE FROM creature_movement WHERE id=1380;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1380, 1, -12812.5, -686.394, 81.4995, 100, 0, 0),
(1380, 2, -12809.8, -691.803, 81.9422, 100, 0, 0),
(1380, 3, -12812, -698.643, 80.3653, 100, 0, 0),
(1380, 4, -12813.8, -701.964, 81.0294, 100, 0, 0),
(1380, 5, -12816.3, -705.029, 81.5747, 100, 0, 0),
(1380, 6, -12817.1, -708.954, 82.4586, 100, 0, 0),
(1380, 7, -12817.2, -713.097, 82.1438, 100, 0, 0),
(1380, 8, -12820.1, -719.53, 80.51, 100, 0, 0),
(1380, 9, -12822.7, -721.685, 80.4382, 100, 0, 0),
(1380, 10, -12825.8, -723.828, 80.3614, 100, 0, 0),
(1380, 11, -12833.8, -729.371, 79.0146, 100, 0, 0),
(1380, 12, -12830.5, -727.392, 79.6808, 100, 0, 0),
(1380, 13, -12824.5, -722.925, 80.1836, 100, 0, 0),
(1380, 14, -12821.6, -720.934, 80.2101, 100, 0, 0),
(1380, 15, -12818.8, -718.356, 80.5203, 100, 0, 0),
(1380, 16, -12817.1, -713.576, 81.9534, 100, 0, 0),
(1380, 17, -12817.2, -709.644, 82.4768, 100, 0, 0),
(1380, 18, -12816.6, -705.662, 81.7275, 100, 0, 0),
(1380, 19, -12812.3, -699.151, 80.4864, 100, 0, 0),
(1380, 20, -12810.7, -695.853, 80.5682, 100, 0, 0),
(1380, 21, -12811.4, -688.525, 81.4155, 100, 0, 0),
(1380, 22, -12813.8, -685.447, 82.0557, 100, 0, 0),
(1380, 23, -12817.9, -679.75, 80.988, 100, 0, 0),
(1380, 24, -12813.5, -664.972, 70.7187, 100, 0, 0),
(1380, 25, -12815.7, -670.463, 76.0304, 100, 0, 0),
(1380, 26, -12817.6, -676.784, 79.7162, 100, 0, 0),
(1380, 27, -12816.4, -683.531, 81.6081, 100, 0, 0);

-- add skullsplitter hunter patrol
UPDATE creature SET  position_x=-12851.7, position_y=-653.414, position_z=59.6281, movementtype=2, spawndist=0 WHERE guid=1213;
DELETE FROM creature_movement WHERE id=1213;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1213, 1, -12851.7, -653.414, 59.6281, 100, 0, 0),
(1213, 2, -12858.8, -656.43, 57.2591, 100, 0, 0),
(1213, 3, -12864.8, -665.388, 56.7861, 100, 0, 0),
(1213, 4, -12866.9, -677.362, 55.9866, 100, 0, 0),
(1213, 5, -12868.6, -693.505, 56.1732, 100, 0, 0),
(1213, 6, -12882.6, -706.893, 53.9363, 100, 0, 0),
(1213, 7, -12966.8, -727.768, 54.9683, 100, 0, 0),
(1213, 8, -12927.5, -718.73, 51.4769, 100, 0, 0),
(1213, 9, -12892, -711.201, 53.2939, 100, 0, 0),
(1213, 10, -12871.9, -698.534, 55.8871, 100, 0, 0),
(1213, 11, -12867.8, -683.877, 55.8077, 100, 0, 0),
(1213, 12, -12865.2, -667.258, 56.7242, 100, 0, 0);

-- add skullsplitter scout patrol
UPDATE creature SET  position_x=-12916.2, position_y=-859.78, position_z=71.5787, movementtype=2, spawndist=0 WHERE guid=1638;
DELETE FROM creature_movement WHERE id=1638;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1638, 1, -12916.2, -859.78, 71.5787, 100, 0, 0),
(1638, 2, -12920, -858.451, 71.5586, 100, 0, 0),
(1638, 3, -12923.5, -856.786, 71.0654, 100, 0, 0),
(1638, 4, -12927.2, -846.474, 67.2017, 100, 0, 0),
(1638, 5, -12928.3, -831.7, 60.6419, 100, 0, 0),
(1638, 6, -12929, -812.085, 55.9197, 100, 0, 0),
(1638, 7, -12921.8, -798.986, 54.4089, 100, 0, 0),
(1638, 8, -12911.4, -787.026, 52.3732, 100, 0, 0),
(1638, 9, -12909.7, -772.18, 51.9389, 100, 0, 0),
(1638, 10, -12917.2, -763.856, 53.0313, 100, 0, 0),
(1638, 11, -12931.9, -765.301, 54.9675, 100, 0, 0),
(1638, 12, -12947.3, -770.293, 56.1804, 100, 0, 0),
(1638, 13, -12987.3, -774.836, 57.4332, 100, 0, 0),
(1638, 14, -12993.1, -775.34, 59.2078, 100, 0, 0),
(1638, 15, -13024, -780.168, 70.933, 100, 0, 0),
(1638, 16, -12996.8, -775.957, 60.3381, 100, 0, 0),
(1638, 17, -12957.1, -772.305, 55.989, 100, 0, 0),
(1638, 18, -12941.5, -768.347, 56.0734, 100, 0, 0),
(1638, 19, -12922.2, -762.436, 53.9582, 100, 0, 0),
(1638, 20, -12915.2, -765.063, 52.5908, 100, 0, 0),
(1638, 21, -12908.6, -778.248, 52.1807, 100, 0, 0),
(1638, 22, -12915.2, -791.527, 53.2577, 100, 0, 0),
(1638, 23, -12925.9, -803.167, 55.1184, 100, 0, 0),
(1638, 24, -12928.7, -825.902, 58.3814, 100, 0, 0),
(1638, 25, -12927.8, -837.123, 62.9437, 100, 0, 0),
(1638, 26, -12927.1, -848.177, 67.923, 100, 0, 0),
(1638, 27, -12924.8, -855.036, 70.4717, 100, 0, 0);

-- add skullsplitter beastmaster patrol
UPDATE creature SET  position_x=-12928, position_y=-805.329, position_z=55.5855, movementtype=2, spawndist=0 WHERE guid=1381;
DELETE FROM creature_movement WHERE id=1381;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1381, 1, -12928, -805.329, 55.5855, 100, 0, 0),
(1381, 2, -12918.7, -797.611, 54.0618, 100, 0, 0),
(1381, 3, -12912.1, -793.166, 53.0195, 100, 0, 0),
(1381, 4, -12904.6, -792.458, 52.7476, 100, 0, 0),
(1381, 5, -12897.3, -795.892, 52.382, 100, 0, 0),
(1381, 6, -12889.9, -799.11, 52.8043, 100, 0, 0),
(1381, 7, -12877.1, -809.358, 54.5744, 100, 0, 0),
(1381, 8, -12896.5, -792.158, 52.0629, 100, 0, 0),
(1381, 9, -12907.4, -766.345, 51.4709, 100, 0, 0),
(1381, 10, -12908.6, -734.069, 51.1974, 100, 0, 0),
(1381, 11, -12923.6, -696.912, 51.099, 100, 0, 0),
(1381, 12, -12910.4, -669.195, 51.0906, 100, 0, 0),
(1381, 13, -12900.8, -646.892, 51.272, 100, 0, 0),
(1381, 14, -12888.7, -630.891, 51.3232, 100, 0, 0),
(1381, 15, -12872.7, -617.51, 54.5991, 100, 0, 0),
(1381, 16, -12892.9, -634.743, 51.4005, 100, 0, 0),
(1381, 17, -12907.7, -663.178, 51.1715, 100, 0, 0),
(1381, 18, -12925.9, -689.998, 51.0756, 100, 0, 0),
(1381, 19, -12962.7, -673.807, 51.2743, 100, 0, 0),
(1381, 20, -12987.3, -659.53, 51.3785, 100, 0, 0),
(1381, 21, -13004.8, -649.454, 53.0795, 100, 0, 0),
(1381, 22, -13015.4, -644.223, 53.9215, 100, 0, 0),
(1381, 23, -13034.8, -632.844, 53.3921, 100, 0, 0),
(1381, 24, -13017.2, -642.664, 53.9216, 100, 0, 0),
(1381, 25, -13004, -651.936, 53.1014, 100, 0, 0),
(1381, 26, -12994.9, -659.888, 52.1759, 100, 0, 0),
(1381, 27, -12991.9, -666.896, 52.0397, 100, 0, 0),
(1381, 28, -12991.6, -674.425, 52.4821, 100, 0, 0),
(1381, 29, -12995.4, -685.857, 53.6993, 100, 0, 0),
(1381, 30, -12997, -689.551, 53.8864, 100, 0, 0),
(1381, 31, -12999.9, -699.593, 54.644, 100, 0, 0),
(1381, 32, -12999.2, -691.825, 54.1769, 100, 0, 0),
(1381, 33, -12985.5, -672.754, 51.7215, 100, 0, 0),
(1381, 34, -12974.8, -668.873, 51.3572, 100, 0, 0),
(1381, 35, -12958.6, -667.337, 51.1577, 100, 0, 0),
(1381, 36, -12949.6, -661.599, 51.3661, 100, 0, 0),
(1381, 37, -12946.2, -654.433, 52.4136, 100, 0, 0),
(1381, 38, -12943.6, -640.24, 53.237, 100, 0, 0),
(1381, 39, -12943.5, -660.504, 52.1165, 100, 0, 0),
(1381, 40, -12939.9, -680.232, 51.2024, 100, 0, 0),
(1381, 41, -12925.3, -699.117, 51.0653, 100, 0, 0),
(1381, 42, -12911.5, -723.907, 51.2176, 100, 0, 0),
(1381, 43, -12909.6, -753.856, 51.4276, 100, 0, 0),
(1381, 44, -12907.3, -782.097, 52.3189, 100, 0, 0),
(1381, 45, -12924.5, -802.933, 54.8039, 100, 0, 0);

-- guid.1373 missing path

-- booty bay
-- allow npc's to roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (66, 579);

-- allow venture co geologist to roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (1414, 1423, 1846, 2193);

-- zg entrance
/*-- add hakkari oracle patrol
UPDATE creature SET movementtype=2, spawndist=0 WHERE guid=733;
DELETE FROM creature_movement WHERE id=733;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(733, 1, -11916.5, -1089.93, 77.2794, 100, 0, 0),
(733, 2, -11916.5, -1072.16, 77.2796, 100, 0, 0),
(733, 3, -11916.5, -1084.36, 77.2798, 100, 0, 0),
(733, 4, -11916.1, -1116.62, 77.2792, 100, 0, 0),
(733, 5, -11916, -1142.12, 77.2789, 100, 0, 0),
(733, 6, -11916.1, -1121.86, 77.282, 100, 0, 0);*/

UPDATE creature SET movementtype=2 WHERE guid=739 AND id=11346;
DELETE FROM creature_movement WHERE id=739;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(739, 3, -11946, -1157.99, 77.7556, 3.97935, 9000, 1134601);

DELETE FROM dbscripts_on_creature_movement WHERE id=1134601;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1134601,0,0,31,11355,5,0,0,0,0,0,0,0,0,'Hakkari Oracle - Terminate Script if Gurubashi Warrior not found in range',0,0,0,0),
(1134601,0,1,1,1,0,0,0,0,0,0,0,0,0,'Hakkari Oracle - EMOTE_ONESHOT_TALK',0,0,0,0),
(1134601,3000,0,1,1,0,0,0,0,0,0,11355,5,3,'Hakkari Oracle - Gurubashi Warrior (11355) - EMOTE_ONESHOT_TALK',0,0,0,0);

UPDATE creature SET movementtype=2 WHERE guid=742 AND id=11346;
DELETE FROM creature_movement WHERE id=742;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(742, 3, -11885.2, -1153.59, 77.3678, 5.11381, 9000, 1134601);

UPDATE creature SET spawndist=1, MovementType=1 WHERE guid IN (556,677,730,732,729,731);

UPDATE creature SET spawndist=5, MovementType=1 WHERE guid=747; -- no path

-- High Priestess Hai'watna (11383)
UPDATE creature SET position_x=-11868, position_y=-1013.6, position_z=69.47, orientation=3.50811 WHERE guid=910 AND id=11383;
UPDATE creature SET position_x=-11949.5, position_y=-1064, position_z=92.0441, orientation=4.2586 WHERE guid=98905 AND id=11383;
UPDATE creature SET position_x=-11949.7, position_y=-1011.28, position_z=66.8958, orientation=5.21372 WHERE guid=98906 AND id=11383;
UPDATE creature SET position_x=-11885.1, position_y=-1061.73, position_z=97.2396, orientation=4.74729 WHERE guid=98907 AND id=11383;
