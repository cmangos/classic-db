-- Adding Dungeon Flames

-- Flame of Stratholme + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55000, 181348, 329, 3685.874756, -3163.117686, 126.721336, 3.79137, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55000, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55001, 181376, 329, 3685.874756, -3163.117686, 126.721336, 3.79137, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55001, 1);

-- Flame of Scholomance + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55002, 181349, 289, 95.805183, 65.143349, 97.732285, 0.462622, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55002, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55003, 181376, 289, 95.805183, 65.143349, 97.732285, 0.462622, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55003, 1);

-- Flame of Dire Maul + trap

-- Correcting typo

UPDATE `gameobject_template` SET `displayId`= 6756 WHERE `entry`= 181346;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55004, 181346, 429, 536.585938, 602.549683, -4.754742, 5.746147, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55004, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55005, 181376, 429, 536.585938, 602.549683, -4.754742, 5.746147, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55005, 1);

-- Flame of Blackrock Spire + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55006, 181347, 229, -15.528411, -364.131348, 49.609948, 6.234912, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55006, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55007, 181376, 229, -15.528411, -364.131348, 49.609948, 6.234912, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55007, 1);