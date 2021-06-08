-- Skullsplitter Axe Thrower 696
-- missing added (1242 - duplicate - reused)
DELETE FROM creature WHERE guid IN (1242,2606, 2724, 2725);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(1242,696,0,0,0,-12841.8,-813.187,55.7517,4.11767,300,300,3,0,1678,0,0,1),
(2724,696,0,0,0,-12475.3,-789.743,40.2949,4.92495,300,300,10,0,1678,0,0,1),
(2606,696,0,0,0,-12781.5,-554.275,41.1535,2.72973,300,300,10,0,1678,0,0,1),
(2725,696,0,0,0,-12875.1,-827.561,54.6184,5.75208,300,300,3,0,1678,0,0,1);
-- updates
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (1683,2035,2036,2037,2039,2542,2543,2546);
UPDATE creature SET position_x = -12615.012695, position_y = -592.291992, position_z = 38.873669, spawndist = 10, MovementType = 1 WHERE guid = 2552;

-- Skullsplitter Warrior 667 &Skullsplitter Axe Thrower 696 & Skullsplitter Mystic 780
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (667,696,780);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature WHERE id in (667)
union
SELECT guid,696 FROM creature WHERE id in (667)
union
SELECT guid,780 FROM creature WHERE id in (667)
union
SELECT guid,id FROM creature WHERE id in (696)
union
SELECT guid,667 FROM creature WHERE id in (696)
union
SELECT guid,780 FROM creature WHERE id in (696)
union
SELECT guid,id FROM creature WHERE id in (780)
union
SELECT guid,696 FROM creature WHERE id in (780)
union
SELECT guid,667 FROM creature WHERE id in (780);

UPDATE creature SET id = 0 WHERE id IN (667,696,780);
