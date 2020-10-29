DELETE FROM gameobject WHERE guid=4290013;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(4290013, 142144, 429, 80.78429412841796875, -420.521392822265625, -4.21279096603393554, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524, 7200, 7200, 255, 1);

DELETE FROM pool_gameobject WHERE guid=4290013;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(4290013, 47285, 0, 'DM East - Ghost Mushroom (142144)');
