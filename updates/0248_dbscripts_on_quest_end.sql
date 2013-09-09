-- Improves end script for quest 963 (For Love Eternal) to make creature 3466 (Cerellean Whiteclaw) stand and kneel
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 963 AND `command` = 28;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(963, 2, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stands'),
(963, 55, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kneel');

-- Fixes text emote for buddy 3843 (Anaya)
UPDATE `db_script_string` SET `content_default` = '\'s soft voice trails away into the mists. "Know that I love you always..."' WHERE `entry` = 2000005344;
