
DELETE FROM `pool_creature` WHERE `pool_entry`='1601';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('16445', '1601', '70', 'Tormented Officer'),
('99291', '1601', '30', 'Deathsworn Captain');

DELETE FROM `creature` WHERE `guid`='134517';
