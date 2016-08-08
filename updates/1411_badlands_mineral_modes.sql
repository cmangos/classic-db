
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN '71300' AND '71304';
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('71300', '3026', '0', 'Iron Deposit - Badlands - multinodes subzone 2'),
('71301', '3026', '0', 'Mithril Deposit - Badlands - multinodes subzone 2'),
('71302', '3026', '0', 'Gold Vein - Badlands - multinodes subzone 2'),
('71303', '3026', '0', 'Silver Vein - Badlands - multinodes subzone 2'),
('71304', '3026', '0', 'Truesilver Deposit - Badlands - multinodes subzone 2');

DELETE FROM `pool_template` WHERE `entry`='3026';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('3026', '1', 'Mineral nodes - Badlands - multinodes subzone 2');
