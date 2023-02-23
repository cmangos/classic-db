-- Elly Langston 1328
UPDATE creature SET position_x = -8609.9, position_y = 387.955, position_z = 102.926 WHERE id = 1328;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19958 AND 19964;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 19958
(19958,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19958,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19958,1101,0,27,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: random text'),
(19958,1102,1,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote'),
(19958,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19959
(19959,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19959,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19959,1101,1,14,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 14'),
(19959,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19960
(19960,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19960,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19960,1101,1,24,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 24'),
(19960,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19961
(19961,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19961,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19961,1101,1,2,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 2'),
(19961,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19962
(19962,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19962,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19962,1101,1,17,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 17'),
(19962,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19963
(19963,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19963,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19963,1101,1,11,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 11'),
(19963,4000,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp'),
-- 19964
(19964,0,32,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: pause wp'),
(19964,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: face Player'),
(19964,1101,1,10,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 10'),
(19964,30000,1,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: emote = 0'),
(19964,30100,32,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Elly Langston 1328 EAI: unpause wp');

DELETE FROM `dbscript_random_templates` WHERE `id`=27;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(27, 0, 1529, 0, 'Elly Langston - Random Text 1'),
(27, 0, 1530, 0, 'Elly Langston - Random Text 2'),
(27, 0, 1531, 0, 'Elly Langston - Random Text 3'),
(27, 0, 1532, 0, 'Elly Langston - Random Text 4'),
(27, 0, 1533, 0, 'Elly Langston - Random Text 5'),
(27, 0, 1534, 0, 'Elly Langston - Random Text 6'),
(27, 0, 1535, 0, 'Elly Langston - Random Text 7'),
(27, 0, 1536, 0, 'Elly Langston - Random Text 8');

