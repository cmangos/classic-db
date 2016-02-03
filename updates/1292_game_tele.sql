-- Added teleport to Chillwind Camp in Western Plaguelands
DELETE FROM `game_tele` WHERE `id` = 419;
INSERT INTO `game_tele` VALUES
(419, 952.3, -1426.74, 64.64, 0.074, 0, 'Chillwind Camp');
