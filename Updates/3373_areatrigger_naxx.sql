INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (11005, 8, 9121, 0, 0, 0, 0, '(Quest ID 9121 Rewarded)');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (11006, 8, 9122, 0, 0, 0, 0, '(Quest ID 9122 Rewarded)');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (11007, 8, 9123, 0, 0, 0, 0, '(Quest ID 9123 Rewarded)');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (11008, -2, 11005, 11006, 11007, 0, 0, '(Quest ID 9121 Rewarded OR Quest ID 9122 Rewarded OR Quest ID 9123 Rewarded)');
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `status_failed_text`, `condition_id`) VALUES (4055, 'Naxxramas (Exit)', 51, 0, 0, 0, 533, 3005.87, -3435.01, 293.882, 0, 'You must be level 51+, in a Raid group, and be attuned to Naxxramas to enter.', 11008);
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `status_failed_text`, `condition_id`) VALUES (4156, 'Naxxramas (Entrance)', 51, 0, 0, 0, 533, 3498.28, -5349.9, 144.968, 1.31324, NULL, 11008);