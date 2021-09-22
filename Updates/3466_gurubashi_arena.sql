-- Short John Mithril 14508
-- https://github.com/cmangos/mangos-tbc/commit/6a4e3c51aa9a54dfdf67b804f410241df58ace41 "Reimplement Gurubashi arena with simple c++ safety script "
UPDATE creature SET modelid=0, position_x=-13184.48, position_y=332.67175, position_z=40.331055, orientation=4.415682792663574218, MovementType=0 WHERE guid=636 AND id=14508;
DELETE FROM creature_addon WHERE guid=636; -- UNIT_FIELD_BYTES_0: 0/1/0/1
DELETE FROM npc_gossip WHERE npc_guid IN (636); -- GossipMenu 5921
UPDATE game_event_time SET start_time='2007-08-04 14:58:23' WHERE entry= 16; -- trip takes 97 for us and 47 in sniff? Adjust start_time if movement is changed
UPDATE game_event SET length=3 WHERE entry= 16;
DELETE FROM game_event_creature WHERE guid=636;

-- Arena Treasure Chest 179697 -s.23176
UPDATE gameobject SET position_x=-13202.887, position_y=276.757, position_z=21.85707, orientation=2.775068521499633789, rotation2=0.98325443, rotation3=0.18223801 WHERE guid=12029 AND id=179697;
UPDATE gameobject_template SET Faction=94 WHERE entry=179697;
DELETE FROM gameobject WHERE guid=12029 AND id=179697;
DELETE FROM game_event_gameobject WHERE guid=12029;

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1450801 AND 1450810;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(1450801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000005783, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - "Arrr, Me Hearties!"'),
(1450801, 0, 0, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Remove UNIT_NPC_FLAG_GOSSIP + UNIT_NPC_FLAG_QUESTGIVER'),
(1450802, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Run On'),
(1450802, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 2000005784, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - "Let the Bloodletting Begin!"'),
(1450802, 4000, 0, 15, 23176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Cast Summon Pirate Booty (DND)'),
(1450803, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Run Off'),
(1450803, 0, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - Add UNIT_NPC_FLAG_GOSSIP'),
(1450803, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Short John Mithril - MovementType 0');

DELETE FROM creature_movement_template WHERE entry=14508;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(14508, 0, 1, -13184.48, 332.67175, 40.331055, 100, 0, 1450801, 'Short John Mithril - Remove UNIT_NPC_FLAG_GOSSIP + UNIT_NPC_FLAG_QUESTGIVER, Yell 1'),
(14508, 0, 2, -13188.292, 320.0762, 33.23245, 100, 0, 0, NULL),
(14508, 0, 3, -13215.96, 322.76013, 33.237198, 100, 0, 0, NULL),
(14508, 0, 4, -13233.884, 314.27533, 33.222992, 100, 0, 0, NULL),
(14508, 0, 5, -13248.911, 298.44604, 33.24138, 100, 0, 0, NULL),
(14508, 0, 6, -13255.286, 282.62775, 33.242878, 100, 0, 0, NULL),
(14508, 0, 7, -13255.246, 264.03906, 33.2372, 100, 0, 0, NULL),
(14508, 0, 8, -13250.132, 249.0726, 33.232872, 100, 0, 0, NULL),
(14508, 0, 9, -13241.162, 235.3221, 33.25688, 100, 0, 0, NULL),
(14508, 0, 10, -13237.547, 232.77611, 33.24159, 100, 0, 0, NULL),
(14508, 0, 11, -13233.844, 234.07092, 33.23136, 100, 0, 0, NULL),
(14508, 0, 12, -13233.624, 238.16022, 33.324505, 100, 0, 0, NULL),
(14508, 0, 13, -13239.028, 245.37144, 29.237274, 100, 0, 0, NULL),
(14508, 0, 14, -13243.419, 254.91138, 23.886831, 100, 0, 0, NULL),
(14508, 0, 15, -13241.24, 261.3496, 21.932966, 100, 0, 0, NULL),
(14508, 0, 16, -13204.083, 277.1676, 21.98207, 100, 5000, 1450802, 'Short John Mithril - Run On, Spawn Arena Treasure Chest 179697 (guid 12029), Yell 2'),
(14508, 0, 17, -13219.237, 275.45132, 21.98207, 100, 0, 0, NULL),
(14508, 0, 18, -13240.614, 268.92096, 21.932976, 100, 0, 0, NULL),
(14508, 0, 19, -13244.044, 261.8775, 21.932966, 100, 0, 0, NULL),
(14508, 0, 20, -13243.419, 254.91138, 23.886831, 100, 0, 0, NULL),
(14508, 0, 21, -13239.028, 245.37144, 29.237274, 100, 0, 0, NULL),
(14508, 0, 22, -13233.624, 238.16022, 33.324505, 100, 0, 0, NULL),
(14508, 0, 23, -13233.844, 234.07092, 33.23136, 100, 0, 0, NULL),
(14508, 0, 24, -13237.547, 232.77611, 33.24159, 100, 0, 0, NULL),
(14508, 0, 25, -13241.162, 235.3221, 33.25688, 100, 0, 0, NULL),
(14508, 0, 26, -13250.132, 249.0726, 33.232872, 100, 0, 0, NULL),
(14508, 0, 27, -13255.246, 264.03906, 33.2372, 100, 0, 0, NULL),
(14508, 0, 28, -13255.286, 282.62775, 33.242878, 100, 0, 0, NULL),
(14508, 0, 29, -13248.911, 298.44604, 33.24138, 100, 0, 0, NULL),
(14508, 0, 30, -13233.884, 314.27533, 33.222992, 100, 0, 0, NULL),
(14508, 0, 31, -13215.96, 322.76013, 33.237198, 100, 0, 0, NULL),
(14508, 0, 32, -13199.613, 323.39047, 33.242554, 100, 0, 0, NULL),
(14508, 0, 33, -13188.292, 320.0762, 33.23245, 100, 0, 0, NULL),
(14508, 0, 34, -13184.816, 329.8859, 37.955925, 100, 0, 0, NULL),
(14508, 0, 35, -13184.48, 332.67175, 40.331055, 4.415682792663574218, 1000, 1450803, 'Short John Mithril - Run Off, Add UNIT_NPC_FLAG_GOSSIP, MovementType 0');

