-- Correcting Camp Table position

UPDATE `gameobject` SET `position_x`= 1639.589966, `position_y`= 233.817993, `position_z`= 62.592602, `orientation`= 4.24288 WHERE `guid`= 55042;

-- Correcting camp crates positions

UPDATE `gameobject` SET `position_x`= 1636.339966, `position_y`= 242.705002, `position_z`= 62.591599, `orientation`= 0.218625 WHERE `guid`= 55045;

UPDATE `gameobject` SET `position_x`= 1636.130005, `position_y`= 244.139999, `position_z`= 62.591599, `orientation`= 0.206842 WHERE `guid`= 55046;

UPDATE `gameobject` SET `position_x`= 1636.160034, `position_y`= 243.669006, `position_z`= 63.834702, `orientation`= 2.79635 WHERE `guid`= 55047;

-- Adding damage trap for flame

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55250, 181376, 0, 1642.060059, 239.867004, 62.591579, 0.0009408, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55250, 1);