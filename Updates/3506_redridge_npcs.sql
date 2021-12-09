-- Add your query below.

-- add guard ashlock waypoints
UPDATE creature SET movementtype=2 WHERE id=932;
DELETE FROM creature_movement_template WHERE entry=932;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(932, 1, -9411.45, -2263.29, 67.44, 2.96349, 138000, 0),
(932, 2, -9412.7, -2274.91, 67.5881, 100, 0, 0),
(932, 3, -9392.95, -2276.88, 69.2616, 100, 0, 0),
(932, 4, -9376.98, -2278.46, 70.8277, 100, 0, 0),
(932, 5, -9355.68, -2280.33, 71.638, 100, 0, 0),
(932, 6, -9326.81, -2282.58, 71.3529, 100, 0, 0),
(932, 7, -9304.62, -2284.34, 69.7367, 100, 0, 0),
(932, 8, -9283.22, -2286.02, 67.513, 100, 0, 0),
(932, 9, -9272.34, -2288.82, 68.3972, 100, 40000, 0),
(932, 10, -9280.92, -2286.35, 67.575, 100, 0, 0),
(932, 11, -9302.99, -2284.43, 69.4787, 100, 0, 0),
(932, 12, -9325.11, -2282.69, 71.2947, 100, 0, 0),
(932, 13, -9353.9, -2280.47, 71.6418, 100, 0, 0),
(932, 14, -9375.76, -2278.53, 70.9219, 100, 0, 0),
(932, 15, -9398.81, -2267.96, 68.2125, 100, 0, 0),
(932, 16, -9404.16, -2264.43, 67.5405, 100, 0, 0);

DELETE FROM dbscripts_on_relay WHERE id=15;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(15, 2000, 0, 0, 0, 0, 0, 5608, 2, 0, 2000003335, 0, 0, 0, 0, 0, 0, 0, 0, 'Jamin 5608 - Say 1'),
(15, 4000, 0, 0, 0, 0, 0, 5608, 2, 0, 2000003336, 0, 0, 0, 0, 0, 0, 0, 0, 'Jamin 5608 - Say 2');

DELETE FROM dbscript_string WHERE entry IN (2000003335,2000003336);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000003335, 'I dunno. What do you want to do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 1923, 'Jamin 5608 - Say 1'),
(2000003336, 'Fishing sounds good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 1924, 'Jamin 5608 - Say 2');

-- add rachel nathan running waypoints
DELETE FROM creature_linking WHERE master_guid=6154;
DELETE FROM creature_linking_template WHERE master_entry=849;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(847, 0, 849, 512, 0);

DELETE FROM creature_spawn_data WHERE guid IN (6154,6155);
INSERT INTO creature_spawn_data (guid, id) VALUES (6154, 1),(6155, 1);
DELETE FROM dbscripts_on_creature_movement WHERE id=84901;

DELETE FROM creature_movement_template WHERE entry=849;
UPDATE creature SET position_x=-9261.87, position_y=-2204.55, position_z=64.0584 WHERE id=849;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(849, 1, -9261.87, -2204.55, 64.0584, 100, 0, 0),
(849, 2, -9261.87, -2204.55, 64.0584, 100, 0, 0),
(849, 3, -9282.83, -2209.97, 63.3877, 100, 0, 0),
(849, 4, -9301.25, -2213.08, 61.8977, 100, 0, 0),
(849, 5, -9310.97, -2213.33, 61.8977, 100, 0, 0),
(849, 6, -9315.62, -2213.45, 61.8977, 100, 0, 0),
(849, 7, -9330.2, -2210.8, 61.8977, 100, 0, 0),
(849, 8, -9340.87, -2207.14, 61.8977, 100, 0, 0),
(849, 9, -9343.02, -2197.43, 61.8977, 100, 0, 0),
(849, 10, -9343.81, -2187.63, 61.8977, 100, 0, 0),
(849, 11, -9336.98, -2186.64, 61.8977, 100, 0, 0),
(849, 12, -9339.89, -2200.43, 61.8977, 100, 0, 0),
(849, 13, -9333.95, -2210.12, 61.8977, 100, 0, 0),
(849, 14, -9330.47, -2210.75, 61.8977, 100, 0, 0),
(849, 15, -9321.55, -2211.16, 61.8977, 100, 0, 0),
(849, 16, -9302.36, -2210.39, 61.8977, 100, 0, 0),
(849, 17, -9296.63, -2209.55, 61.8977, 100, 0, 0),
(849, 18, -9288.54, -2204.6, 62.6703, 100, 0, 0),
(849, 19, -9285.53, -2188.26, 61.3343, 100, 0, 0),
(849, 20, -9284.87, -2184.13, 60.7893, 100, 0, 0),
(849, 21, -9278.34, -2171, 60.5339, 100, 0, 0),
(849, 22, -9268.07, -2144.49, 61.7918, 100, 0, 0),
(849, 23, -9264.06, -2133.67, 64.2613, 100, 0, 0),
(849, 24, -9258.41, -2131.88, 64.3106, 100, 0, 0),
(849, 25, -9239.23, -2129.39, 63.9688, 100, 0, 0),
(849, 26, -9227.58, -2127.89, 64.0584, 100, 0, 0),
(849, 27, -9218.61, -2131.55, 64.0584, 100, 0, 0),
(849, 28, -9211.34, -2134.51, 64.0584, 100, 0, 0),
(849, 29, -9201.9, -2136.4, 64.1311, 100, 0, 0),
(849, 30, -9199.55, -2136.14, 64.1766, 100, 0, 0),
(849, 31, -9192.25, -2135.31, 64.4404, 100, 0, 0),
(849, 32, -9190.95, -2136.76, 64.0945, 100, 0, 0),
(849, 33, -9183.52, -2151.81, 64.0584, 100, 0, 0),
(849, 34, -9183.23, -2153.86, 64.0584, 100, 0, 0),
(849, 35, -9181, -2171.11, 64.0584, 100, 0, 0),
(849, 36, -9180.76, -2173.08, 64.0584, 100, 0, 0),
(849, 37, -9187.96, -2197.41, 64.0522, 100, 0, 0),
(849, 38, -9189.03, -2198.99, 64.0514, 100, 0, 0),
(849, 39, -9193.73, -2191.88, 64.0544, 100, 0, 0),
(849, 40, -9193.95, -2190.23, 64.0551, 100, 0, 0),
(849, 41, -9203.56, -2177.41, 64.0584, 100, 0, 0),
(849, 42, -9204.96, -2176.53, 64.0584, 100, 0, 0),
(849, 43, -9212.17, -2174.02, 64.0584, 100, 0, 0),
(849, 44, -9213.79, -2174.03, 64.0584, 100, 0, 0),
(849, 45, -9221.38, -2174.06, 64.0584, 100, 0, 0),
(849, 46, -9231.65, -2174.3, 64.0558, 100, 0, 0),
(849, 47, -9233.2, -2174.36, 64.055, 100, 0, 0),
(849, 48, -9242.85, -2174.74, 64.0504, 100, 0, 0),
(849, 49, -9256.22, -2185.57, 64.0499, 100, 0, 0),
(849, 50, -9257.27, -2186.56, 64.0499, 100, 0, 0),
(849, 51, -9261.97, -2194.93, 64.0508, 100, 0, 0),
(849, 52, -9264.77, -2203.95, 64.0586, 100, 0, 0);

-- add madison waypoints
DELETE FROM creature_spawn_data WHERE guid IN (6150);
INSERT INTO creature_spawn_data (guid, id) VALUES (6150, 1);
DELETE FROM dbscripts_on_creature_movement WHERE id=84801;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(84801, 0, 0, 20, 1, 2, 90000, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Madison - MovementType 1 and Spawndist 2 (90secs)');

UPDATE creature SET position_x=-9327.6, position_y=-2202.14, position_z=61.6543 WHERE id=848;
DELETE FROM creature_movement_template WHERE entry=848;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(848, 1, -9327.6, -2202.14, 61.6543, 2.48597, 180000, 0),
(848, 2, -9288.57, -2207.7, 62.6775, 100, 0, 0),
(848, 3, -9283.07, -2175.61, 59.7877, 100, 0, 0),
(848, 4, -9262.11, -2129.53, 65.7599, 100, 0, 0),
(848, 5, -9251.15, -2120.13, 65.595, 100, 0, 0),
(848, 6, -9246.17, -2106.29, 69.2763, 100, 0, 0),
(848, 7, -9241.55, -2058.98, 76.77, 100, 0, 0),
(848, 8, -9247.91, -2045.51, 77.0013, 100, 0, 0),
(848, 9, -9247.19, -2013.88, 77.0015, 100, 1, 84801),
(848, 10, -9248.24, -2032.96, 76.9804, 100, 0, 0),
(848, 11, -9241.26, -2057.29, 76.8678, 100, 0, 0),
(848, 12, -9241.83, -2094.96, 74.013, 100, 0, 0),
(848, 13, -9254.74, -2138.21, 63.9325, 100, 0, 0),
(848, 14, -9255.15, -2181.33, 64.0119, 100, 0, 0),
(848, 15, -9269.38, -2191.46, 64.0892, 100, 0, 0),
(848, 16, -9280.25, -2210.56, 63.6031, 100, 0, 0),
(848, 17, -9314.18, -2208.45, 61.8981, 100, 0, 0);

-- add amy davenport waypoints
UPDATE creature SET movementtype=2 WHERE id=777;
DELETE FROM creature_movement_template WHERE entry=777;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(777, 1, -9260.416015625, -2203.125, 64.05841827392578125, 3.333578824996948242, 40000, 0),
(777, 2, -9261.72265625, -2199.516845703125, 64.049896240234375, 1.875054836273193359, 40000, 0),
(777, 3, -9262.13, -2204.12, 63.9335, 100, 1000, 0);

-- add matthew hooper waypoints
UPDATE creature SET movementtype=2 WHERE id=1680;
DELETE FROM creature_movement_template WHERE entry=1680;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1680, 1, -9315.3759765625, -2156.69482421875, 63.483245849609375, 4.839018821716308593, 45000, 0),
(1680, 2, -9308.3359375, -2140.874755859375, 63.483245849609375, 1.219633817672729492, 30000, 5),
(1680, 3, -9317.2138671875, -2147.05078125, 63.483245849609375, 2.897246599197387695, 45000, 6);

-- add darcy waypoints
DELETE FROM creature_movement_template WHERE entry=379;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- points without waittime are splines, though they are identical in every cycle
-- this type of moving npc shows the limitations of our current pathfinding, delicate paths need splines added to it so it looks good enough
(379, 1, -9217.708, -2154.544, 64.89365, 100, 0, 0),
(379, 2, -9223.95, -2154.9316, 63.933426, 100, 12000, 0), -- 17-29
(379, 3, -9231.986, -2154.684, 64.8954, 100, 0, 0),
(379, 4, -9236.021, -2158.9368, 64.357376, 100, 27000, 0), -- 24-30
(379, 5, -9232.719, -2154.959, 64.857376, 100, 0, 0),
(379, 6, -9232.916, -2147.9814, 64.357376, 100, 32000, 0), -- 17-47
(379, 7, -9232.986, -2146.807, 64.8954, 100, 0, 0),
(379, 8, -9232.986, -2155.057, 64.8954, 100, 0, 0),
(379, 9, -9227.986, -2154.807, 64.3954, 100, 0, 0),
(379, 10, -9226.486, -2157.557, 64.3954, 100, 0, 0),
(379, 11, -9227.057, -2159.6323, 63.933426, 100, 24000, 0), -- 18-30
(379, 12, -9227.262, -2160.1443, 64.39365, 100, 0, 0),
(379, 13, -9223.512, -2155.3943, 64.39365, 100, 0, 0),
(379, 14, -9218.762, -2154.8943, 64.89365, 100, 0, 0),
(379, 15, -9216.012, -2151.1443, 64.89365, 100, 0, 0),
(379, 16, -9216.466, -2148.6562, 64.35387, 100, 26000, 0); -- 24-28

-- add alma jainrose waypoints
UPDATE creature SET movementtype=2 WHERE id=812;
DELETE FROM creature_movement_template WHERE entry=812;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(812, 1, -9237.7841796875, -2041.6495361328125, 78.16776275634765625, 4.648890972137451171, 45000, 0),
(812, 2, -9234.2802734375, -2033.733154296875, 78.18109893798828125, 3.96189737319946289, 35000, 0);

-- various npc's should roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (6158, 6717, 6721);