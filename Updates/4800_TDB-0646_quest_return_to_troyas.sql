-- QuestEnd script Return to Troyas
-- Quest ID: 2943

-- Old script had wrong spawn position and waypoint position, also target for 2nd text was wrong
-- slightly adjust timers to sniffed ones
-- Delete OLD script
DELETE FROM dbscripts_on_quest_end WHERE id = 2943;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2943, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Set Activeobject'),
(2943, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4476.618, 3230.472, 13.844942, 0, 'Troyas Moonbreeze - Move Point'), -- 11:36:51.459
(2943, 0, 2, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Remove NpcFlags'), -- 11:36:51.611
(2943, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4039, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Say Text'), --  11:36:51.625
(2943, 3000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.235987, 'Troyas Moonbreeze - Change Orientation'), -- 11:36:54.434
(2943, 3000, 1, 0, 0, 0, 0, 0, 0, 0, 4040, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Say Text'), -- 11:36:54.574
(2943, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 4041, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Say Text'), -- 11:36:57.773
(2943, 9000, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Move to SpawnPosition'), -- 11:37:00.894
(2943, 11000, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Add NpcFlags'), -- 11:37:02.504
(2943, 11000, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troyas Moonbreeze - Remove Activeobject');

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 4040;

-- Correct spawn position.
UPDATE creature SET position_x = -4474.757, position_y = 3233.0852, position_z = 13.812845, orientation = 0.994837 WHERE guid = 50079 AND id = 7764;

