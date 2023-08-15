DELETE FROM `dbscripts_on_relay` WHERE `id` IN (30598,30511,30504,30505);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(30598, 0, 0, 25, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Run Mode On'), -- 30599 GENERIC - set Idle
(30511, 0, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Set Active Object Off'), -- 30510 GENERIC - active Self
(30504, 0, 0, 35, 10, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 10 (E) to Self'), -- 30502 GENERIC - Send AI Event 8 (C) to Self
(30505, 0, 0, 35, 11, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 11 (F) to Self'); -- 30503 GENERIC - Send AI Event 9 (D) to Self

