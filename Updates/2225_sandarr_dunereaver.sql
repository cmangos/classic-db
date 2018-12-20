-- Add missing rare loot for Sandarr Dunereaver 10080 - https://www.wowhead.com/npc=10080/sandarr-dunereaver#drops
DELETE FROM creature_loot_template WHERE entry = 10080 AND item IN (862,2040,5616,6440,9480,9481,9482,9483,9484,9511,9512);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES
(10080, 862, 7, 1, 1, 1),
(10080, 2040, 7, 1, 1, 1),
(10080, 5616, 11, 1, 1, 1),
(10080, 6440, 10, 1, 1, 1),
(10080, 9480, 7, 1, 1, 1),
(10080, 9481, 9, 1, 1, 1),
(10080, 9482, 10, 1, 1, 1),
(10080, 9483, 10, 1, 1, 1),
(10080, 9484, 9, 1, 1, 1),
(10080, 9511, 9, 1, 1, 1),
(10080, 9512, 11, 1, 1, 1);

SET @GUID := 54860;
DELETE FROM creature WHERE id=10080 AND guid IN (@GUID, 155621);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(155621, 10080, 209, 1518.592, 984.9248, 9.126776, 5.252151, 43200, 86400, 0, 0, 0, 2), -- Sandarr Dunereaver
(@GUID, 10080, 209, 1661.51, 900.463, 8.91101, 3.54889, 43200, 86400, 0, 0, 0, 0); -- Sandarr Dunereaver

DELETE FROM creature_movement WHERE id=@GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(@GUID, 1, 1534.288, 966.3132, 9.251768, 100, 0, 0),
(@GUID, 2, 1551.104, 978.8848, 9.751776, 100, 0, 0),
(@GUID, 3, 1558.765, 992.5928, 9.376776, 100, 0, 0),
(@GUID, 4, 1548.029, 999.1307, 9.001776, 100, 0, 0),
(@GUID, 5, 1551.857, 994.3583, 9.001776, 100, 0, 0),
(@GUID, 6, 1559.434, 997.0353, 9.001776, 100, 0, 0),
(@GUID, 7, 1561.864, 1008.586, 9.001776, 100, 0, 0),
(@GUID, 8, 1554.342, 1013.426, 9.001776, 100, 0, 0),
(@GUID, 9, 1546.021, 1007.769, 9.001776, 100, 0, 0),
(@GUID, 10, 1549.344, 1021.266, 9.001776, 100, 0, 0),
(@GUID, 11, 1538.99, 1027.237, 9.626776, 100, 0, 0),
(@GUID, 12, 1519.63, 1010.74, 10.48, 100, 0, 0); -- last point guessed to complete circle

SET @POOL := 1216;

UPDATE pool_creature SET pool_entry=@POOL+1 WHERE pool_entry=1208;

DELETE FROM pool_pool WHERE pool_id BETWEEN @POOL + 1 AND @POOL + 2;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@POOL+1, 1208, 0, 'Zul''Farrak - Sandarr Dunereaver / Placeholder #1'),
(@POOL+2, 1208, 0, 'Zul''Farrak - Sandarr Dunereaver / Placeholder #2');

DELETE FROM pool_template WHERE entry BETWEEN @POOL + 1 AND @POOL + 2;
INSERT INTO pool_template VALUES
(@POOL+1, 1, 'Zul''Farrak - Sandarr Dunereaver / Placeholder #1'),
(@POOL+2, 1, 'Zul''Farrak - Sandarr Dunereaver / Placeholder #2');

DELETE FROM pool_creature WHERE guid IN (@GUID, 44162);
INSERT INTO pool_creature VALUES
(44162, @POOL+2, 0, 'Zul''Farrak - Sandarr Dunereaver Placeholder #2'),
(@GUID, @POOL+2, 10, 'Zul''Farrak - Sandarr Dunereaver (10080) #2');
