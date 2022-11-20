-- Remove some creature_ai_summons as they are unsafe (No Terminate Condition on Spawn already Active)
DELETE FROM `dbscripts_on_relay` WHERE `id` IN (9005);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9005, 0, 0, 31, 3395, 100000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if Verog the Dervish 3395 IS found alife in range'),
(9005, 0, 1, 10, 3395, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -1210.59, -2725.84, 106.783, 4.95674, 0, 0, 'Summon Verog the Dervish 3395');

