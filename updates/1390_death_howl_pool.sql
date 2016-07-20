
DELETE FROM `pool_creature_template` WHERE `id`='14339';
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('14339', '25507', '0', 'Felwood - Death Howl');

DELETE FROM `pool_template` WHERE `entry`='25507';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('25507', '1', 'Felwood - Death Howl');
