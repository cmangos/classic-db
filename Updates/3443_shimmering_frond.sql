-- Use wotlk-db Script for q.931 The Shimmering Frond
UPDATE gameobject_template SET size=0.4 WHERE entry=7510;
DELETE FROM gameobject WHERE id=7510;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(30276, 7510, 1, 9504.34, 721.465, 1255.94, 5.87713, 0, 0, 0.201636, -0.979461, -600, -600, 100, 1),
(30277, 7510, 1, 9502.75, 718.022, 1255.94, 5.99887, 0, 0, 0.141679, -0.989913, -600, -600, 100, 1),
(30278, 7510, 1, 9503.46, 720.08, 1255.94, 5.68628, 0, 0, 0.294042, -0.955793, -600, -600, 100, 1);

DELETE FROM dbscripts_on_quest_end WHERE id=931;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(931, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 2000010010, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(931, 4000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9508.02, 715.749, 1255.89, 1.03055, 0, ''),
(931, 5000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9507.66, 718.009, 1255.89, 1.80417, 0, ''),
(931, 6000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9505.56, 719.088, 1256.2, 2.65632, 0, ''),
(931, 8000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(931, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 2000010011, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(931, 9000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Denalan 2080 - Stop Emote'),
(931, 11000, 0, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 9506.92, 713.766, 1255.89, 0.257643, 0, ''),
(931, 13000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.279253, 0, ''),
(931, 14000, 0, 9, 30276, 30, 0, 0, 0, 0, 0, 0, 0, 0, 9504.34, 721.465, 1255.94, 5.87713, 0, ''),
(931, 14000, 0, 9, 30277, 30, 0, 0, 0, 0, 0, 0, 0, 0, 9502.75, 718.022, 1255.94, 5.99887, 0, ''),
(931, 14000, 0, 9, 30278, 30, 0, 0, 0, 0, 0, 0, 0, 0, 9503.46, 720.08, 1255.94, 5.68628, 0, '');

DELETE FROM dbscript_string WHERE entry IN (2000010010,2000010011);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000010010, '% hurries to his planter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 1159, NULL),
(2000010011, 'I hope this frond takes root...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1160, NULL);
