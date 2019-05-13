-- "AQWar" Gameobjects should only be active with Event 22 "AQ War Effort"
-- Also add missing AQWar gos in Orgrimmar
UPDATE gameobject SET rotation2=0.909961, rotation3=0.414693 WHERE guid=29294 AND id=180598;
UPDATE gameobject SET rotation2=0.906308, rotation3=0.422618 WHERE guid=29299 AND id=180681;
UPDATE gameobject SET rotation2=0.902585, rotation3=0.430511 WHERE guid=29300 AND id=180680;
UPDATE gameobject SET rotation2=0.906308, rotation3=0.422618 WHERE guid=29301 AND id=180679;
DELETE FROM gameobject WHERE guid BETWEEN 632441 AND 632445;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(632441, 180826, 1, 1579.35, -4109.25, 34.5417, -2.53073, 0, 0, 0.953717, -0.300706, 180, 180, 100, 1),
(632442, 180832, 1, 1619.83, -4092.43, 34.5107, -2.58309, 0, 0, 0.961262, -0.275637, 180, 180, 100, 1),
(632443, 180838, 1, 1683.11, -4134.35, 39.5419, -2.56563, 0, 0, 0.95882, -0.284015, 180, 180, 100, 1),
(632444, 180818, 1, 1637.11, -4147.21, 36.0414, -2.54818, 0, 0, 0.956305, -0.292372, 180, 180, 100, 1),
(632445, 180812, 1, 1590.82, -4155.33, 36.2926, -2.58309, 0, 0, 0.961262, -0.275637, 180, 180, 100, 1);

DELETE FROM game_event_gameobject WHERE guid IN (29294,29299,29300,29301,632441,632442,632443,632444,632445);
INSERT INTO game_event_gameobject (guid,event) VALUES
(29294, 22),
(29299, 22),
(29300, 22),
(29301, 22),
(632441, 22),
(632442, 22),
(632443, 22),
(632444, 22),
(632445, 22);
