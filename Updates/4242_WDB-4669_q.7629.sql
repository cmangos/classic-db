-- q.7629 'Imp Delivery' -- Fix
-- Event
DELETE FROM dbscripts_on_event WHERE id = 8438;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8438,1,10,14500,180000,0,0,0,0,0,0,0,0,38.4345,156.93,83.545,1.40746,'summon 9467'),
(8438,1000,0,0,0,0,14500,50,0,9769,0,0,0,0,0,0,0,'J\'eevee say 1'),
(8438,3000,20,2,0,0,14500,50,7,0,0,0,0,0,0,0,0,'J\'eevee - Waypoints'),
(8438,26000,36,0,0,0,14500,50,3,0,0,0,0,0,0,0,0,'J\'eevee - face player'),
(8438,26001,8,14500,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest Credit');
DELETE FROM `creature_movement_template` WHERE Entry = 14500;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(14500,0,1,38.784,160.639,83.545,100,0,0),
(14500,0,2,36.804,160.705,83.545,100,3000,1450001),
(14500,0,3,39.287,160.044,83.545,100,0,0),
(14500,0,4,41.666,154.591,83.545,100,0,0),
(14500,0,5,45.255,155.014,83.545,100,0,0),
(14500,0,6,44.93,161.186,83.545,100,0,0),
(14500,0,7,44.347,161.12,83.545,100,4000,1450002),
(14500,0,8,46.758,157.877,83.545,100,0,0),
(14500,0,9,44.64,154.405,83.545,100,0,0),
(14500,0,10,33.498,156.046,83.545,100,0,0),
(14500,0,11,28.269,160.792,83.545,100,1,6),
(14500,0,12,33.294,160.895,83.545,100,10000,1450003),
(14500,1,1,-37.9392,812.805,-29.4525,4.8171,8000,1450004),
(14500,1,2,-27.001,813.741,-29.5358,100,7000,1450005),
(14500,1,3,-45.8222,821.969,-29.5358,100,7000,1450006),
(14500,1,4,-43.6275,802.103,-29.5358,100,7000,1450007),
(14500,1,5,-38.7195,812.015,-29.5358,100,30000,1450008);
DELETE FROM `dbscripts_on_creature_movement` WHERE id BETWEEN 1450001 AND 1450003;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1450001,1000,1,36,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee - emote (Scholomance)'),
(1450001,2000,0,0,0,0,0,0,0,9770,0,0,0,0,0,0,0,'J\eevee say 2 (Scholomance)'),
(1450002,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee - RUN ON (Scholomance)'),
(1450002,1000,1,36,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee - emote (Scholomance)'),
(1450002,2000,1,36,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee - emote (Scholomance)'),
(1450002,3000,0,0,0,0,0,0,0,9771,0,0,0,0,0,0,0,'J\eevee say 3 (Scholomance)'),
(1450003,1000,1,36,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee - emote (Scholomance)'),
(1450003,2000,0,0,0,0,0,0,0,9742,0,0,0,0,0,0,0,'J\eevee say 4 (Scholomance)'),
(1450003,7000,15,41232,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee cast teleport (Scholomance)'),
(1450003,7001,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee idle (Scholomance)'),
(1450003,8000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J\eevee despawn self (Scholomance)');
