-- Added missing emote on completion script of quests 166 (The Defias Brotherhood) and 283 (A Dark Threat Looms)
-- Thanks Zingzah for pointing and fixing. This closes #544 
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(166, 1, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gryan Shout Emote on Completion'), 
(283, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hinderwier VII Emote on Completion');
