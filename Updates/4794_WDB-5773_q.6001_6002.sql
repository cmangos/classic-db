-- q.6001 'Body and Heart' - A
-- corrected
DELETE FROM dbscripts_on_event WHERE id IN (5991);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5991,1,31,12138,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 12138 - terminate if found'),
(5991,100,9,99,120,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp object'),
(5991,101,10,12138,300000,0,0,0,0x04,0,0,0,88,6366.3354,140.38214,24.258726,3.682644605636596679,'summon 12138');
-- Lunaclaw 12138
-- path1
DELETE FROM creature_movement_template WHERE Entry = 12138 AND PathId = 1;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(12138,1,1,6366.3354,140.38214,24.258726,3.68264,1000,1213801),
(12138,1,2,6345.934,123.011215,22.50773,100,0,0),
(12138,1,3,6339.264,113.514366,21.169043,100,0,0),
(12138,1,4,6332.87,103.766785,21.61715,100,0,0),
(12138,1,5,6325.0444,94.15114,21.901892,100,100,20);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1213801);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1213801,0,15,10389,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1213801,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'run ON');
-- missing object added
-- Moonkin Stone Aura 177644
DELETE FROM game_event_gameobject WHERE guid IN (99);
DELETE FROM gameobject_battleground WHERE guid IN (99);
DELETE FROM gameobject WHERE guid IN (99);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(99,177644,1,1,6326.0117,92.700714,21.957666,-2.19911456108093261,0,0,-0.89100647,0.45399064,-120,-120);

-- q.6002 'Body and Heart' - H
-- corrected
DELETE FROM dbscripts_on_event WHERE id IN (6028);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6028,1,31,12138,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 12138 - terminate if found'),
(6028,100,9,15727,120,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp object'),
(6028,101,10,12138,300000,0,0,0,0x04,0,0,0,102,-2445.599,-1646.0189,92.855286,1.117010712623596191,'summon 12138');
-- Lunaclaw 12138
-- path1
DELETE FROM creature_movement_template WHERE Entry = 12138 AND PathId = 2;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(12138,2,1,-2445.599,-1646.0189,92.855286,1.117010,1000,1213801),
(12138,2,2,-2452.8245,-1625.3053,92.02587,100,0,0),
(12138,2,3,-2498.009,-1631.7184,91.79168,100,100,20);

-- update for Moonkin Stone Aura 177644
UPDATE gameobject SET spawntimesecsmin = -120, spawntimesecsmax = -120 WHERE guid = 15727;
