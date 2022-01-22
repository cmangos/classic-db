DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1066601);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
-- entry Example
(1066601, 0, 0, 31, 175566, 40, 0, 0, 0, 1024+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Terminate Script if go.entry 175566 not found in 40 range'), -- works now as intended
(1066601, 0, 1, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Set Pause Waypoints'),
(1066601, 0, 2, 36, 0, 0, 0, 175566, 40, 1024+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Face go.entry 175566'),
(1066601, 1000, 0, 16, 6273, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Play Sound'),
(1066601, 2000, 0, 37, 0, 0, 0, 175566, 40, 1024+1, 2, 0, 0, 0, 0, 0, 0, 3, 0, 'Gordo - Run to Gloom Weed go.entry 175566'), -- dataint enum ForcedMovement
(1066601, 7000, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - EMOTE_ONESHOT_ATTACK1H'),
(1066601, 7000, 1, 0, 0, 0, 0, 0, 0, 0, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Text'),
(1066601, 7000, 2, 40, 0, 0, 0, 175566, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn Gloom Weed'),
(1066601, 9000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Set Unpause Waypoints');

