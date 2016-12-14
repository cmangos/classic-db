-- q.1147 'The Swarm Grows'
-- Source: Wowhead
-- The Invaders seem to share a spawn with the Hive Drones in the cave here. If you can't find any invaders, wipe out the whole cave and hopefully some should appear on the respawn :-)

-- Silithid Invader & Silithid Hive Drone - missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_addon WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_movement WHERE id IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM game_event_creature WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM game_event_creature_data WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_battleground WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_linking WHERE guid IN (129214,129215,129218,129219,129235,129236,129245)
 OR master_guid IN (129214,129215,129218,129219,129235,129236,129245);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Silithid Invader
(129214,4131,1,0,0,-6509.99,-3307.85,-94.9981,2.69453,120,2,0,1279,0,0,1),
(129215,4131,1,0,0,-6489.48,-3323.94,-94.6707,6.08744,120,2,0,1279,0,0,1),
(129218,4131,1,0,0,-6463.43,-3299.89,-104.906,1.15121,120,2,0,1279,0,0,1),
(129219,4131,1,0,0,-6484.77,-3254.36,-113.617,2.9647,120,2,0,1279,0,0,1),
(129235,4131,1,0,0,-6495.73,-3244.02,-113.403,0.167894,120,2,0,1342,0,0,1),
(129236,4131,1,0,0,-6485.35,-3229.54,-112.43,4.8528,120,2,0,1279,0,0,1),
(129245,4131,1,0,0,-6473.03,-3243.65,-113.289,2.96785,120,2,0,1342,0,0,1),
(129251,4131,1,0,0,-6447.72,-3289.73,-105.453,3.86051,120,2,0,1342,0,0,1),
-- Silithid Hive Drone
(129255,4133,1,0,0,-6447.95,-3290.05,-105.558,0.0576163,120,2,0,1279,0,0,1);
-- Silithid Invader & Silithid Hive Drone
UPDATE creature SET spawntimesecs = 120 WHERE guid IN (21314,21317,21318,21323,21324,21325,21327,21301,21330);

-- pools
SET @POOL := 25598;
-- Pool Templates -- Pool 1
DELETE FROM pool_template WHERE entry = @POOL + 1;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 1, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 1;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(21301, @POOL + 1, 0, 'Thousand Needles - Silithid Invader'),
(21327, @POOL + 1, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 2
DELETE FROM pool_template WHERE entry = @POOL + 2;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 2, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 2;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129214, @POOL + 2, 0, 'Thousand Needles - Silithid Invader'),
(21330, @POOL + 2, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 3
DELETE FROM pool_template WHERE entry = @POOL + 3;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 3, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 3');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 3;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129215, @POOL + 3, 0, 'Thousand Needles - Silithid Invader'),
(21325, @POOL + 3, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 4
DELETE FROM pool_template WHERE entry = @POOL + 4;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 4, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 4');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 4;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129218, @POOL + 4, 0, 'Thousand Needles - Silithid Invader'),
(21323, @POOL + 4, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 5
DELETE FROM pool_template WHERE entry = @POOL + 5;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 5, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 5');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 5;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129219, @POOL + 5, 0, 'Thousand Needles - Silithid Invader'),
(21324, @POOL + 5, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 6
DELETE FROM pool_template WHERE entry = @POOL + 6;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 6, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 6');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 6;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129235, @POOL + 6, 0, 'Thousand Needles - Silithid Invader'),
(21318, @POOL + 6, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 7
DELETE FROM pool_template WHERE entry = @POOL + 7;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 7, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 7');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 7;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129236, @POOL + 7, 0, 'Thousand Needles - Silithid Invader'),
(21314, @POOL + 7, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 8
DELETE FROM pool_template WHERE entry = @POOL + 8;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 8, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 8');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 8;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129245, @POOL + 8, 0, 'Thousand Needles - Silithid Invader'),
(21317, @POOL + 8, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 9
DELETE FROM pool_template WHERE entry = @POOL + 9;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@POOL + 9, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 9');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = @POOL + 9;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129251, @POOL + 9, 0, 'Thousand Needles - Silithid Invader'),
(129255, @POOL + 9, 0, 'Thousand Needles - Silithid Hive Drone');
