
SET @GUID := 9000110;

-- Set same respawn time of 5 min for all involved GOs
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=300 WHERE id IN (19600, 20899, 19590, 19591, 19547);

-- Add missing GO_NG_5_EXPLOSIVES
DELETE FROM gameobject WHERE guid IN (@GUID, @GUID + 1);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GUID, 19592, 1, 1049.0312, -442.09897, 4.80105, 5.1487226, 0, 0, -0.53729916, 0.8433917, -300, -300),
(@GUID + 1, 19601, 1, 1168.32, 50.7767, 0.041739, 4.97862, 0, 0, 0.607002, -0.794701, -300, -300);

-- Script event when placing explosive charges (blue/red)
DELETE FROM dbscripts_on_event WHERE id IN (693, 694);
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(693, 0, 0, 9, @GUID, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set NG-5 Charge (Red) - Respawn GO NG5 Explosive (Red)'),
(694, 0, 0, 9, @GUID + 1, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set NG-5 Charge (Blue) - Respawn GO NG5 Explosive (Blue)');

-- Script event when detonative explosive charges (blue/red)
DELETE FROM dbscripts_on_event WHERE id IN (691, 692);
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(691, 0, 0, 40, 0, 0, 0, 19592, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Red) - Despawn NG5 Explosive (Red)'),
(691, 0, 0, 40, 0, 0, 0, 19600, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Red) - Despawn Spell Focus (Red)'),
(691, 0, 0, 13, 0, 0, 0, 20899, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Red) - Activate Venture Co. Wagon (Red)'),
(691, 0, 0, 13, 0, 0, 0, 19590, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Red) - Activate Venture Co. Wagon Trap'),

(692, 0, 0, 40, 0, 0, 0, 19601, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Blue) - Despawn NG5 Explosive (Blue)'),
(692, 0, 0, 40, 0, 0, 0, 19591, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Blue) - Despawn Spell Focus (Blue)'),
(692, 0, 0, 13, 0, 0, 0, 19547, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Blue) - Activate Venture Co. Wagon (Blue)'),
(692, 0, 0, 13, 0, 0, 0, 19590, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remote Detonate GO NG5 Explosive (Blue) - Activate Venture Co. Wagon Trap');
