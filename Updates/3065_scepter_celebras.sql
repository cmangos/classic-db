
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1371601, 1371602, 1371603, 1371604);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1371601, 3000, 0, 0, 0, 0, 0, 0, 0, 2000005649, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),
(1371601, 4000, 9, 3490062, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - summon book'),
(1371601, 5000, 15, 21916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - cast Celebras Waiting'),
(1371601, 6000, 0, 0, 0, 0, 0, 0, 0, 2000005650, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),
(1371601, 7000, 0, 0, 0, 0, 0, 0, 0, 2000005651, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),

(1371602, 1000, 15, 21950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - cast Recite Words of Celebras'),
(1371602, 7000, 0, 0, 0, 0, 0, 0, 0, 2000005653, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),

(1371603, 1000, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Add flags Gossip Quest'),
(1371603, 1000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Stop WP movement'),
(1371603, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06689, 'Celebras the Redeemed - correct orient');

DELETE FROM dbscripts_on_go_template_use WHERE id=178965;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(178965, 0, 47, 3, 0, 0, 13716, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Incantation of Celebras - Celebras interrupt channeled spell (Celebras Waiting 21916)'),
(178965, 0, 9, 3490061, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Incantation of Celebras - summon Celebras Blue Aura'),
(178965, 1000, 0, 0, 0, 0, 0, 0, 0, 2000005652, 0, 0, 0, 0, 0, 0, 0, 'Incantation of Celebras - force Player to say'),
(178965, 3000, 0, 0, 0, 0, 13716, 50, 7, 2000005652, 0, 0, 0, 0, 0, 0, 0, 'Incantation of Celebras - Celebras Say'),
(178965, 3500, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Incantation of Celebras - Despawn Self on Use'); -- Not working at the moment, possibly requires core update

DELETE FROM dbscripts_on_spell WHERE id=21917;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21917, 25000, 7, 7046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras Stone Trap - Give quest completion');

DELETE FROM dbscripts_on_quest_start WHERE id=7046;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7046, 0, 0, 0, 0, 0, 0, 0, 0, 2000005646, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),
(7046, 1000, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Remove flags Quest Gossip'),
(7046, 2000, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Set Run'),
(7046, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 654.905, 87.382, -86.8597, 5.06689, 'Celebras the Redeemed - move'),
(7046, 14000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06689, 'Celebras the Redeemed - correct orient'),
(7046, 15000, 0, 0, 0, 0, 0, 0, 0, 2000005647, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say'),
(7046, 16000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Set Walk'),
(7046, 17000, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - movement changed to 2:waypoint'),
(7046, 23000, 0, 0, 0, 0, 0, 0, 0, 2000005648, 0, 0, 0, 0, 0, 0, 0, 'Celebras the Redeemed - Say');

DELETE FROM creature_movement_template WHERE entry =13716;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(13716, 0, 1, 654.905, 87.382, -86.8597, 5.06689, 0, 0), 
(13716, 0, 2, 657.207, 80.8004, -86.8318, 5.14543, 0, 0),
(13716, 0, 3, 656.58, 73.1467, -86.8285, 2.94396, 6000, 1371601),
(13716, 0, 4, 653.284, 73.888, -85.8574, 3.03758, 5000, 1371602),
(13716, 0, 5, 656.595, 73.5683, -86.8284, 6.10283, 0, 0),
(13716, 0, 6, 655.724, 67.3549, -86.828, 4.45585, 0, 0),
(13716, 0, 7, 650.08, 65.0115, -86.7745, 1.21372, 4000, 0),
(13716, 0, 8, 655.445, 67.6601, -86.8283, 1.17524, 0, 0),
(13716, 0, 9, 657.399, 78.0873, -86.8283, 2.10044, 0, 0),
(13716, 0, 10, 654.905, 87.382, -86.8597, 5.06689, 4000, 1371603);
