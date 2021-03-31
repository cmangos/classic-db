-- q.4961 'Cleansing of the Orb of Orahil'
DELETE FROM dbscripts_on_quest_start WHERE id = 4961;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4961,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4961,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4961,100,0,0,0,0,0,0,0,2000000032,0,0,0,0,0,0,0,''),
(4961,100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'waypoints');
UPDATE quest_template SET StartScript = 4961 WHERE entry = 4961;

-- Tabetha 6546
UPDATE creature_template SET MovementType = 0 WHERE entry = 6546;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 6546;
DELETE FROM creature_movement_template WHERE entry = 6546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(6546,1,-4035.4854,-3384.7908,38.98468,100,0,0),
(6546,2,-4037.8967,-3379.5305,37.762386,100,0,0),
(6546,3,-4037.5156,-3378.611,37.69769,100,0,0),
(6546,4,-4034.8137,-3376.969,38.02606,100,0,0),
(6546,5,-4028.1155,-3377.3867,38.25469,100,0,0),
(6546,6,-4024.8733,-3379.4058,38.25469,100,0,0),
(6546,7,-4020.3528,-3381.6677,38.25469,100,10000,654601),
(6546,8,-4038.0925,-3378.3247,37.594173,100,0,0),
(6546,9,-4031.5637,-3392.9675,38.99676,100,0,0),
(6546,10,-4031.56,-3392.97,38.9974,100,0,0),
(6546,11,-4031.56,-3392.97,38.9974,2.129,2000,654602);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (654601,654602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(654601,100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(654601,2000,15,9097,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Summon Demon of the Orb'),
(654602,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(654602,10,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(654602,50,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(654602,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Demon of the Orb 6549
UPDATE creature_template SET Faction = 14 WHERE entry = 6549;
