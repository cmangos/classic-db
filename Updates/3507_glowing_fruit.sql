-- Port Script for q.930 "The Glowing Fruit" from wotlk-db
-- .go c id 2080
-- .q add 930
-- npcs spawned by dbscript should utilize CreatureFamilyAssistanceDelay (or anything as short as about 1sec) instead of CreatureRespawnAggroDelay (WiP)
DELETE FROM `dbscripts_on_quest_end` WHERE id = 930;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(930, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 2000003337, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(930, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 2000003338, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(930, 4000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9508.02, 715.749, 1255.89, 1.03055, 0, ''),
(930, 5000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9507.66, 718.009, 1255.89, 1.80417, 0, ''),
(930, 6000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9505.56, 719.088, 1256.2, 2.65632, 0, ''),
(930, 8000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(930, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 2000003339, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(930, 11000, 0, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 9506.92, 713.766, 1255.89, 0.257643, 0, ''),
(930, 13000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.279253, 0, ''),
(930, 14000, 0, 10, 3569, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 9504.09, 720.294, 1255.94, 1.00709, 0, ''),
(930, 14000, 0, 10, 3569, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 9505.13, 722.011, 1255.94, 0.0244875, 0, ''),
(930, 14000, 0, 10, 3569, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 9504.13, 721.459, 1255.94, 6.24727, 0, ''),
(930, 14000, 0, 0, 0, 0, 0, 0, 0, 0, 2000003340, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(930, 15000, 0, 26, 0, 0, 0, 0, 0, 0, 2000003340, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000003337 AND 2000003340;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES
(2000003337, 'Denalan removes the seeds from the Glowing Fruit...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 0, NULL), -- 2000000086
(2000003338, 'Let\'s see how these seeds grow in my prepared soil...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL), -- 2000000087
(2000003339, 'Denalan plants fruit seeds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 0, NULL), -- 2000000088
(2000003340, 'Bogling rises from the soil!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 0, NULL); -- 2000000089
