-- QuestEnd script In Search of Knowledge
-- Quest ID: 2939

-- Old script only had Text without orientation change and emote
-- Delete OLD script
DELETE FROM dbscripts_on_quest_end WHERE id = 2939;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2939, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Set Activeobject'),
(2939, 0, 1, 36, 0, 0, 0, 142958, 30, 1025, 0, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Face Feralas: A History Object'), -- 09:16:15.937
(2939, 0, 2, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Emote OneShotPoint'), -- 09:16:15.937
(2939, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4042, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Say Text'), -- 09:16:16.099
(2939, 0, 4, 0, 0, 0, 0, 0, 0, 0, 4043, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Say Emoted Text'), -- 09:16:16.099
(2939, 3000, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Reset Facing'), -- 09:16:19.394
(2939, 3000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daryn Lightwind - Remove Activeobject');

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 4043;