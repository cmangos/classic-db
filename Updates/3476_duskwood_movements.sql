INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(12, 0, -93, 0, 'Madame Eva 265 - Random OOC Texts'),
(12, 0, -94, 0, 'Madame Eva 265 - Random OOC Texts'),
(12, 0, -95, 0, 'Madame Eva 265 - Random OOC Texts'),
(12, 0, -96, 0, 'Madame Eva 265 - Random OOC Texts');

-- npc's should roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (4248, 4181, 4064, 4245, 4180); -- 3

-- npc's should roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (4242, 4198, 4196, 4197, 4081, 4175, 4195, 4205, 4083, 4210, 4188, 4189, 4190); -- 0.5

-- npc's should roam
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid IN (5960, 4179, 4182, 4244, 4194, 4252, 4251);

-- watcher keefer should roam not pathfind
DELETE FROM creature_movement_template WHERE entry=495; -- Watcher Keefer
UPDATE creature_template SET MovementType=1 WHERE Entry=495;
UPDATE creature SET movementtype=1, spawndist=1 WHERE guid=5965; -- confirmed 1 rather then 4

-- watcher backus correct path
UPDATE creature SET position_x=-10512.7, position_y=-1187.08, position_z=28.1543 WHERE guid=4230;
DELETE FROM creature_movement_template WHERE entry=840;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(840, 1, -10512.7, -1187.08, 28.1543, 100, 0, 0),
(840, 2, -10474.4, -1181.57, 27.6911, 100, 0, 0),
(840, 3, -10456.4, -1179.36, 27.2816, 100, 0, 0),
(840, 4, -10434.5, -1166.99, 27.9583, 100, 0, 0),
(840, 5, -10421.5, -1146.45, 26.1002, 100, 0, 0),
(840, 6, -10414.9, -1137.21, 24.2593, 100, 0, 0),
(840, 7, -10407.2, -1125.88, 23.0746, 100, 0, 0),
(840, 8, -10391.5, -1118.01, 22.4382, 100, 0, 0),
(840, 9, -10387.2, -1117.89, 22.001, 100, 0, 0),
(840, 10, -10357.7, -1117.04, 21.3006, 100, 0, 0),
(840, 11, -10355.9, -1116.97, 21.3518, 100, 0, 0),
(840, 12, -10351.8, -1116.86, 21.4269, 100, 0, 0),
(840, 13, -10322.7, -1125.09, 21.6912, 100, 0, 0),
(840, 14, -10302.2, -1146.36, 22.7224, 100, 0, 0),
(840, 15, -10302.2, -1146.36, 22.7224, 100, 0, 0),
(840, 16, -10322.7, -1125.09, 21.6912, 100, 0, 0),
(840, 17, -10351.8, -1116.86, 21.4269, 100, 0, 0),
(840, 18, -10355.9, -1116.97, 21.3518, 100, 0, 0),
(840, 19, -10357.7, -1117.04, 21.3006, 100, 0, 0),
(840, 20, -10387.2, -1117.89, 22.001, 100, 0, 0),
(840, 21, -10391.5, -1118.01, 22.4382, 100, 0, 0),
(840, 22, -10406.2, -1124.49, 22.9748, 100, 0, 0),
(840, 23, -10414.9, -1137.21, 24.2593, 100, 0, 0),
(840, 24, -10421.5, -1146.45, 26.1002, 100, 0, 0),
(840, 25, -10434.5, -1166.99, 27.9583, 100, 0, 0),
(840, 26, -10456.4, -1179.36, 27.2816, 100, 0, 0),
(840, 27, -10474.4, -1181.57, 27.6911, 100, 0, 0),
(840, 28, -10512.7, -1187.08, 28.1543, 100, 0, 0);

-- farrin daris scripts
UPDATE creature SET movementtype=2 WHERE guid=4062;
DELETE FROM creature_movement_template WHERE entry=2112;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2112, 1, -10514.7, -1156.19, 34.9574, 4.06662, 150000, 0), -- 150000
(2112, 2, -10499, -1154.68, 34.9574, 3.19395, 93000, 211201), -- 93000
(2112, 3, -10514.7, -1156.19, 34.9574, 4.06662, 106000, 0), -- 106000
(2112, 4, -10499, -1154.68, 34.9574, 3.19395, 84000, 211202 ); -- 84000

DELETE FROM dbscripts_on_creature_movement WHERE id IN (211201,211202);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(211201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000009108, 2000009109, 2000009110, 0, 0, 0, 0, 0, 0, 'Farrin Daris 2112 - Say #1'),
(211202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000009111, 2000009112, 2000009113, 0, 0, 0, 0, 0, 0, 'Farrin Daris 2112 - Say #2');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000009108 AND 2000009113;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000009108, 'When will someone do something about the undead?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 961, 'Farrin Daris 2112'),
(2000009109, 'Where is everyone?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 962, 'Farrin Daris 2112'),
(2000009110, 'I can''t even visit my father''s grave in peace anymore.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 963, 'Farrin Daris 2112'),
(2000009111, 'Why haven''t the Stormwind guards come?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 964, 'Farrin Daris 2112'),
(2000009112, 'I fear something dark is coming.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 965, 'Farrin Daris 2112'),
(2000009113, 'The light appears to have forsaken us.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 966, 'Farrin Daris 2112');

-- watcher jordan correct path
-- https://classic.wowhead.com/npc=887/watcher-jordan#map
-- was only patrolling inside the town before
DELETE FROM creature_movement_template WHERE entry=887;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(887, 1, -10624.6, -1185.56, 28.8704, 100, 0, 0),
(887, 2, -10646, -1191.34, 28.4968, 100, 0, 0),
(887, 3, -10648.6, -1192.04, 28.5482, 100, 0, 0),
(887, 4, -10672, -1192.85, 27.5826, 100, 0, 0),
(887, 5, -10681.3, -1193.18, 27.4885, 100, 0, 0),
(887, 6, -10681.9, -1193.2, 27.479, 100, 0, 0),
(887, 7, -10706.1, -1178.47, 26.3841, 100, 0, 0),
(887, 8, -10707.5, -1177.55, 26.4133, 100, 0, 0),
(887, 9, -10709.5, -1176.32, 26.4714, 100, 0, 0),
(887, 10, -10712.2, -1174.63, 26.3535, 100, 0, 0),
(887, 11, -10737.8, -1158.28, 26.4736, 100, 0, 0),
(887, 12, -10751.9, -1147.21, 26.8814, 100, 0, 0),
(887, 13, -10758.7, -1140.81, 26.9629, 100, 0, 0),
(887, 14, -10766.6, -1131.98, 27.4404, 100, 0, 0),
(887, 15, -10768.8, -1129.47, 27.8191, 100, 0, 0),
(887, 16, -10770.8, -1126, 28.4115, 100, 0, 0),
(887, 17, -10777.8, -1114.15, 30.155, 100, 0, 0),
(887, 18, -10779, -1112.08, 30.5697, 100, 0, 0),
(887, 19, -10780, -1110.32, 30.821, 100, 0, 0),
(887, 20, -10781.3, -1107.08, 31.4511, 100, 0, 0),
(887, 21, -10783.4, -1102.08, 32.5869, 100, 0, 0),
(887, 22, -10787.1, -1079.96, 36.5552, 100, 0, 0),
(887, 23, -10783.4, -1102.08, 32.5869, 100, 0, 0),
(887, 24, -10781.3, -1107.08, 31.4511, 100, 0, 0),
(887, 25, -10780, -1110.32, 30.821, 100, 0, 0),
(887, 26, -10779, -1112.08, 30.5697, 100, 0, 0),
(887, 27, -10777.8, -1114.15, 30.155, 100, 0, 0),
(887, 28, -10770.8, -1126, 28.4115, 100, 0, 0),
(887, 29, -10768.8, -1129.47, 27.8191, 100, 0, 0),
(887, 30, -10766.6, -1131.98, 27.4404, 100, 0, 0),
(887, 31, -10758.7, -1140.81, 26.9629, 100, 0, 0),
(887, 32, -10751.9, -1147.21, 26.8814, 100, 0, 0),
(887, 33, -10737.8, -1158.28, 26.4736, 100, 0, 0),
(887, 34, -10712.2, -1174.63, 26.3535, 100, 0, 0),
(887, 35, -10709.5, -1176.32, 26.4714, 100, 0, 0),
(887, 36, -10707.5, -1177.55, 26.4133, 100, 0, 0),
(887, 37, -10706.1, -1178.47, 26.3841, 100, 0, 0),
(887, 38, -10681.9, -1193.2, 27.479, 100, 0, 0),
(887, 39, -10681.3, -1193.18, 27.4885, 100, 0, 0),
(887, 40, -10672, -1192.85, 27.5826, 100, 0, 0),
(887, 41, -10648.6, -1192.04, 28.5482, 100, 0, 0),
(887, 42, -10646, -1191.34, 28.4968, 100, 0, 0);

-- blind mary correct path
UPDATE creature SET movementtype=2 WHERE guid=4255;
DELETE FROM creature_movement_template WHERE entry=302;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(302, 1, -10785.4, -1374.49, 39.7132, 100, 30000, 0),
(302, 2, -10780.2, -1380.28, 39.7193, 100, 30000, 0),
(302, 3, -10786, -1381, 39.7193, 0.006667, 30000, 0);

