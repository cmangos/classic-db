-- switch some Scarlet npcs outside to random movement instead of idle
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid IN (41918,45162,45200,30041,41920,45089,45196,45198);

-- Pathing for Scarlet Preserver Entry: 4280 'UDB FORMAT'
UPDATE creature SET spawndist=0,MovementType=2,position_x=2917.538,position_y=-757.6511,position_z=154.0364 WHERE guid=44787;

DELETE FROM creature_movement WHERE id=44787;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(44787, 1, 2917.538, -757.6511, 154.0364, 100, 5000, 428003);

DELETE FROM creature_movement_template WHERE entry=4280;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(4280, 1, 1, 2917.538, -757.6511, 154.0364, 100, 0, 0),
(4280, 1, 2, 2926.139, -756.5061, 154.0364, 100, 0, 0),
(4280, 1, 3, 2931.919, -748.6917, 154.0364, 100, 0, 0),
(4280, 1, 4, 2929.177, -737.8387, 154.0364, 100, 0, 0),
(4280, 1, 5, 2939.169, -708.852, 150.1202, 100, 0, 0),
(4280, 1, 6, 2938.556, -697.869, 148.528, 100, 0, 0),
(4280, 1, 7, 2934.009, -688.5115, 146.5598, 100, 0, 0),
(4280, 1, 8, 2919.102, -675.6259, 141.1447, 100, 0, 0),
(4280, 1, 9, 2904.789, -672.3676, 138.5521, 100, 0, 0),
(4280, 1, 10, 2884.406, -675.4329, 137.2587, 100, 45000, 428001),

(4280, 2, 1, 2894.031, -672.6747, 137.48, 100, 0, 0),
(4280, 2, 2, 2905.711, -672.4293, 138.6627, 100, 0, 0),
(4280, 2, 3, 2919.877, -676.5753, 141.4354, 100, 0, 0),
(4280, 2, 4, 2929.72, -683.9516, 144.6962, 100, 0, 0),
(4280, 2, 5, 2937.951, -696.4594, 148.4555, 100, 0, 0),
(4280, 2, 6, 2938.846, -709.7908, 150.2202, 100, 0, 0),
(4280, 2, 7, 2930.11, -733.709, 153.9683, 100, 0, 0),
(4280, 2, 8, 2925.064, -736.4466, 154.0364, 100, 0, 0),
(4280, 2, 9, 2915.663, -736.6107, 154.0364, 100, 0, 0),
(4280, 2, 10, 2908.848, -744.1404, 154.0364, 100, 0, 0),
(4280, 2, 11, 2907.685, -747.8382, 154.0364, 100, 0, 0),
(4280, 2, 12, 2907.685, -747.8382, 154.0364, 3.490659, 45000, 428002);
-- 0x2044F00000042E00000032000045775D .go xyz 2917.538 -757.6511 154.0364

DELETE FROM dbscripts_on_creature_movement WHERE id IN (428001,428002,428003);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(428001, 0, 0, 20, 1, 5, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Preserver - Change Movement to Random Around Point'),
(428001, 45000, 0, 20, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Preserver - Change Movement to Waypoint (Path 2)'),

(428002, 0, 0, 20, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Preserver - Change Movement to Idle'),
(428002, 45000, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Preserver - Change Movement to Waypoint (Path 1)'),

(428003, 0, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Preserver - Change Movement to Waypoint (Path 1)');
