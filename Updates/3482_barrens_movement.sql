-- Fix movement for some creatures
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid IN (13820, 14418, 19791);
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid IN (51814, 14033);
UPDATE creature SET spawndist=25, MovementType=1 WHERE guid IN (51815);

-- Fix position for some creatures
UPDATE creature SET position_x=-912.213, position_y=-2217.01, position_z=93.6255, spawndist=20, MovementType=1 WHERE guid=20567; -- waypoints probably
UPDATE creature SET position_x=-107.326, position_y=-1851.97, position_z=92.4291, spawndist=8, MovementType=1 WHERE guid=19473;
UPDATE creature SET position_x=-53.9019, position_y=-1633.82, position_z=91.6667, orientation=4.1112 WHERE guid=20635;

-- Add emotes for some creatures
REPLACE INTO creature_addon (guid, bytes1, b2_0_sheath, b2_1_flags) VALUES
(14200, 3, 1, 16),
(14253, 3, 1, 16),
(14195, 3, 1, 16),
(14215, 3, 1, 16);
