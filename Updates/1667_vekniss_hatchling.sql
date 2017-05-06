
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('26630', '531', '-8043.6', '1254.1', '-84.21667', '0'),
('26631', '531', '-8003.0', '1222.9', '-82.01666', '0'),
('26632', '531', '-8022.3', '1149.0', '-89.01666', '0'),
('720',   '531', '-8043.6', '1254.1', '-84.3', '0'),
('731',   '531', '-8003.0', '1222.9', '-82.1', '0'),
('1121',  '531', '-8022.3', '1149.0', '-89.1', '0');

UPDATE `creature_template` SET `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9' WHERE `Entry`='15962';
