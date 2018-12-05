-- q.1147 'The Swarm Grows'
-- Source: Wowhead
-- The Invaders seem to share a spawn with the Hive Drones in the cave here. If you can't find any invaders, wipe out the whole cave and hopefully some should appear on the respawn :-)
DELETE FROM creature WHERE guid IN (191137, 191138);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Silithid Invader
(191137,4131,1,0,0,-6447.72,-3289.73,-105.453,3.86051,120,120,2,0,0,0,0,1),
-- Silithid Hive Drone
(191138,4133,1,0,0,-6447.95,-3290.05,-105.558,0.0576163,120,120,2,0,0,0,0,1);

-- Pool Templates -- Pool 10
DELETE FROM pool_template WHERE entry = 21326;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(21326, 1, 'The Rustmaul Dig Site - Silithid Invader/Silithid Hive Drone - Pool 10');

-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 21326;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(191137, 21326, 0, 'Silithid Invader 10'),
(191138, 21326, 0, 'Silithid Hive Drone 10');

-- Silithid Invader & Silithid Hive Drone
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id IN (4131,4133);
