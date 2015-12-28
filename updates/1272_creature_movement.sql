-- Defias Tower Patrollers
-- ... small event between Jill and Raven
-- Small note:
-- Small mmaps issue there - already reported on cmangos. (event still works fine) :)

-- Westfall
-- Defias Tower Patroller correct models.
UPDATE creature_model_info SET bounding_radius = 0.208, combat_reach = 1.5, modelid_other_gender = 0 WHERE modelid = 5809;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 5811;

-- Defias Tower Patroller(Patroller Raven)
UPDATE creature SET spawndist = 0, MovementType = 2, modelid = 5811 WHERE guid = 66991;
DELETE FROM creature_movement WHERE id = 66991;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66991,1,-11151.9,552.766,55.8906, 0, 0,4.95002, 0, 0),
(66991,2,-11150.2,550.355,55.9111, 0, 0,5.71106, 0, 0),
(66991,3,-11141.5,544.132,56.255, 0, 0,4.85341, 0, 0),
(66991,4,-11142.6,542.11,56.0286, 0, 0,4.09943, 0, 0),
(66991,5,-11147.1,534.51,52.4846, 0, 0,4.26829, 0, 0),
(66991,6,-11146.7,532.219,52.4383, 0, 0,5.48094, 0, 0),
(66991,7,-11142.3,531.459,51.4746, 0, 0,6.20821, 0, 0),
(66991,8,-11136.9,532.989,49.7902, 0, 0,0.596542, 0, 0),
(66991,9,-11132.2,537.43,49.2267, 0, 0,1.07406, 0, 0),
(66991,10,-11130.5,542.865,49.2252, 0, 0,1.43299, 0, 0),
(66991,11,-11130.7,547.493,49.7138, 0, 0,1.99691, 0, 0),
(66991,12,-11133.1,552.149,51.2245, 0, 0,2.35191, 0, 0),
(66991,13,-11136.8,555.297,52.7825, 0, 0,2.81843, 0, 0),
(66991,14,-11141.6,556.864,54.3274, 0, 0,3.05877, 0, 0),
(66991,15,-11145.5,556.425,55.3242, 0, 0,3.43576, 0, 0),
(66991,16,-11149.9,554.571,55.8312, 0, 0,3.76955, 0, 0);

-- Defias Tower Patroller(Patroller Jill)
UPDATE creature SET spawndist = 0, MovementType = 2, modelid = 5809 WHERE guid = 66988;
DELETE FROM creature_movement WHERE id = 66988;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66988,1,-11153.5,546.207,40.6269, 0, 0,5.73933, 0, 0),
(66988,2,-11150.8,546.363,40.6269, 0, 0,0.682932, 0, 0),
(66988,3,-11147.8,550.575,42.432, 0, 0,0.532921, 0, 0),
(66988,4,-11144.3,551.318,44.3101, 0, 0,6.14145, 0, 0),
(66988,5,-11142.6,551.21,45.1275, 0, 0,5.88229, 0, 0),
(66988,6,-11141.7,550.748,45.6448, 0, 0,5.88229, 0, 0),
(66988,7,-11139.3,548.253,46.4923, 0, 0,4.29027, 0, 0),
(66988,8,-11141.2,545.493,46.5627, 26000, 705201,4.10334, 0, 0),
(66988,9,-11145.8,540.158,45.2584, 0, 0,4.13162, 0, 0),
(66988,10,-11148.1,535.534,43.4048, 0, 0,4.29969, 0, 0),
(66988,11,-11148,532.609,43.4048, 0, 0,5.42281, 0, 0),
(66988,12,-11143.1,531.239,43.4048, 0, 0,6.27575, 0, 0),
(66988,13,-11136,533.194,41.2813, 0, 0,0.720626, 0, 0),
(66988,14,-11131.8,538.019,39.0006, 0, 0,1.22351, 0, 0),
(66988,15,-11130.3,545.517,36.2797, 0, 0,1.69003, 0, 0),
(66988,16,-11133.6,550.188,35.9606, 0, 0,2.44402, 0, 0),
(66988,17,-11139.5,554.752,35.9606, 0, 0,2.68356, 0, 0),
(66988,18,-11143.9,556.573,36.4455, 0, 0,3.20035, 0, 0),
(66988,19,-11148.6,555.284,38.2665, 0, 0,3.5475, 0, 0),
(66988,20,-11151.9,553.449,39.5563, 0, 0,4.03052, 0, 0),
(66988,21,-11153.8,550.489,40.6271, 0, 0,4.45149, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 705201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(705201,1,31,7052,12,0,0,0,-26000,0,0,0,0,0,0,0,'search for Raven'),
(705201,2,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Jill active'),
(705201,2,21,1,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'Raven active'),
(705201,2,3,0,0,0,0,0,0,0,0,0,0,0,0,5.73848,''),
(705201,3,32,1,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(705201,3,25,1,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(705201,3,0,0,0,0,0,0,2000000791,0,0,0,0,0,0,0,''),
(705201,4,3,0,0,7052,66991,7 | 0x10,0,0,0,0,-11138.8,543.77,47.2145,2.54977,''),
(705201,7,25,0,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(705201,7,36,0,0,7052,66991,3 | 0x10,0,0,0,0,0,0,0,0,'Face Jill'),
(705201,7,0,0,0,7052,66991,7 | 0x10,2000000792,0,0,0,0,0,0,0,''),
(705201,10,0,0,0,0,0,0,2000000793,0,0,0,0,0,0,0,''),
(705201,16,0,0,0,7052,66991,7 | 0x10,2000000794,2000000795,0,0,0,0,0,0,''),
(705201,22,0,0,0,0,0,0,2000000796,0,0,0,0,0,0,0,''),
(705201,25,32,0,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(705201,26,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jill unactive'),
(705201,26,21,0,0,7052,66991,7 | 0x10,0,0,0,0,0,0,0,0,'Raven unactive');

DELETE FROM db_script_string WHERE entry BETWEEN 2000000791 AND 2000000796;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000791,'Hey, Raven...',0,0,0,0,NULL),
(2000000792,'Yea?',0,0,0,0,NULL),
(2000000793,'Can we take a break? My feet are killing me and those ... those things down there are creeping me out.',0,0,0,0,NULL),
(2000000794,'I dunno, Jill. If Klaven comes down while we\'re slacking, we may end up as one of those things!',0,0,0,0,NULL),
(2000000795,'Klaven doesn\'t pay me enough to deal with those zombies, drones or whatever he calls \'em. I don\'t know, Jill. If Klaven comes down while we\'re slacking, we might end up as those things!',0,0,0,0,NULL),
(2000000796,'*Sigh* You\'re probably right, Raven. I\'m going back on patrol....',0,0,0,0,NULL);