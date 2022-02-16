
DELETE FROM creature WHERE id=3671;
SET @CGUID := 4300000;
SET @PGUID := 45300;

INSERT INTO creature_movement (id, point, PositionX, PositionY, PositionZ, orientation, waittime, ScriptId) VALUES
(@CGUID+301, 1, -53.984, 271.39, -92.844, 2.41, 1000, 367101), -- Lady Anacondra
(@CGUID+302, 1, 15.3449, 297.176, -87.7016, 2.80998, 1000, 367101), -- Lady Anacondra
(@CGUID+303, 1, -67.783, 122.6, -89.94, 3.09, 1000, 367101), -- Lady Anacondra
(@CGUID+304, 1, 46.4727, 183.984, -89.1516, 4.01967, 1000, 367101); -- Lady Anacondra

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+301, 3671, 43, -53.984, 271.39, -92.844, 2.41, 86400, 86400, 0, 0, 0, 2), -- Lady Anacondra
(@CGUID+302, 3671, 43, 15.3449, 297.176, -87.7016, 2.80998, 86400, 86400, 0, 0, 0, 2), -- Lady Anacondra
(@CGUID+303, 3671, 43, -67.783, 122.6, -89.94, 3.09, 86400, 86400, 0, 0, 0, 2), -- Lady Anacondra
(@CGUID+304, 3671, 43, 46.4727, 183.984, -89.1516, 4.01967, 86400, 86400, 0, 0, 0, 2); -- Lady Anacondra

INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(3671, @PGUID+2, 0, 'Wailing Caverns - Lady Anacondra (3671)');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+2, 1, 'Wailing Caverns - Lady Anacondra (3671)');


SET @CGUID := 4800000; -- creatures
SET @PGUID := 45500; -- pools

DELETE FROM creature WHERE id=12902;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+213, 12902, 48, -455.93, -39.96, -32.5239, 2.5, 86400, 86400, 0, 0, 0, 0), -- Lorgus Jett
(@CGUID+214, 12902, 48, -474.22, -86.95, -39.87, 2.98, 86400, 86400, 0, 0, 0, 0), -- Lorgus Jett
(@CGUID+215, 12902, 48, -622.355, -10.3501, -22.777, 4.90438, 86400, 86400, 0, 0, 0, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 1, 'Blackfathom Deeps - Lorgus Jett (12902)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(12902, @PGUID+1, 0, 'Blackfathom Deeps - Lorgus Jett (12902)');


SET @CGUID := 9000000; -- creatures
SET @PGUID := 45700; -- pools

UPDATE creature SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id IN (6229, 6228, 6235, 7079, 7800);
DELETE FROM creature WHERE id=7850;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+411, 7850, 90, -618.832, 153.15, -199.654, 6.25451, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+412, 7850, 90, -637.053, 101.836, -194.48, 4.76023, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+413, 7850, 90, -639.869, 71.6499, -183.184, 2.47837, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+414, 7850, 90, -621.389, 51.785, -199.647, 0.992438, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+415, 7850, 90, -600.079, 15.9729, -179.679, 5.47311, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+416, 7850, 90, -577.696, 28.5626, -197.735, 2.93043, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+417, 7850, 90, -540.499, 21.528, -179.737, 1.53634, 86400, 86400, 0, 0, 0, 0), -- Kernobee
(@CGUID+418, 7850, 90, -533.081, 34.7292, -199.073, 1.89563, 86400, 86400, 0, 0, 0, 0); -- Kernobee

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+2, 1, 'Gnomeregan - Kernobee (7850)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(7850, @PGUID+2, 0, 'Gnomeregan - Kernobee (7850)');

DELETE FROM pool_creature WHERE pool_entry=25468;
DELETE FROM pool_template WHERE entry=25468;

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(10558, 46810, 0, 'Stratholme - Hearthsinger Forresten (10558)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(46810, 1, 'Stratholme - Hearthsinger Forresten (10558)');
