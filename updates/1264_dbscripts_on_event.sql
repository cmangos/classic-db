-- Added missing visual events for quest Krastinov, The Butcher in Scholomance

SET @GUID := 10228;

DELETE FROM `gameobject` WHERE `guid` IN (@GUID + 1, @GUID + 2);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + 1, 176546, 289, 196.871, -73.8801, 85.2284, 2.46091, 0, 0, 0.942641, 0.333807, -30, 100, 1),
(@GUID + 2, 176547, 289, 165.317, -81.145, 85.2284, 3.00197, 0, 0, 0.997564, 0.069757, -30, 100, 1);

DELETE FROM `dbscripts_on_event` WHERE `id` IN (5438, 5439);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(5439, 1, 9, @GUID + 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject'),
(5438, 1, 9, @GUID + 2, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');
