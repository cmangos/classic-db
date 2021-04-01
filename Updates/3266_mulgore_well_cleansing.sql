-- Add missing event on quests 466, 467 & 468 completion: Mulgore wells cleansing
-- Backported from TBC-DB
DELETE FROM dbscripts_on_event WHERE id IN (466, 467, 468);
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(466, 0, 0, 9, 46424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 754'),
(467, 0, 0, 9, 46425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 758'),
(468, 0, 0, 9, 46429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 760');

DELETE FROM gameobject WHERE guid IN (46424, 46425, 46429);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(46424, 2904, 1, -2544.54, -712.088, -9.232, 0.767944, 0, 0, 0.374606, 0.927184, -180, -180, 0, 0),
(46425, 2904, 1, -1823.85, -237.555, -9.42485, 0.069812, 0, 0, 0.0348989, 0.999391, -180, -180, 0, 0),
(46429, 2904, 1, -753.256, -149.158, -29.0568, 3.08918, 0, 0, 0.999657, 0.0262033, -180, -180, 0, 0);
