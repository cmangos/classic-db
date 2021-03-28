
UPDATE `gameobject` SET `position_x` = '-4125.6328125', `position_y` = '-2222.273681640625', `position_z` = '50.18312454223632812', `orientation` = '0.139624491333961486', `rotation2` = '0.06975555419921875', `rotation3` = '0.997564136981964111', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE (`guid` = '13303');
UPDATE `gameobject` SET `position_x` = '-4075.1455078125', `position_y` = '-2302.6455078125', `position_z` = '125.64111328125', `orientation` = '0.680676698684692382', `rotation2` = '0.333806037902832031', `rotation3` = '0.942641794681549072', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE (`guid` = '13304');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('13316', '19020', '1', '-4071.552490234375', '-2166.918701171875', '50.63791275024414062', '3.281238555908203125', '0', '0', '-0.99756336212158203', '0.069766148924827575', '300', '300', '100', '1'),
('13328', '19020', '1', '-4187.0634765625', '-2192.492431640625', '50.18516921997070312', '2.72271275520324707', '0', '0', '0.978147506713867187', '0.207912087440490722', '300', '300', '100', '1'),
('13329', '19020', '1', '-4168.89306640625', '-2187.915771484375', '50.22942352294921875', '0.174532130360603332', '0', '0', '0.087155342102050781', '0.996194720268249511', '300', '300', '100', '1'),
('13330', '19020', '1', '-4144.5654296875', '-2178.26611328125', '50.40427780151367187', '4.747295856475830078', '0', '0', '-0.69465827941894531', '0.719339847564697265', '300', '300', '100', '1'),
('13331', '19020', '1', '-4111.560546875', '-2305.057861328125', '125.4644622802734375', '4.904376029968261718', '0', '0', '-0.636077880859375', '0.771624863147735595', '300', '300', '100', '1'),
('13332', '19020', '1', '-4163.625', '-2197.7861328125', '50.18310546875', '3.263772249221801757', '0', '0', '-0.99813461303710937', '0.061051756143569946', '300', '300', '100', '1');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('40208', '2', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('13303', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13304', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13316', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13328', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13329', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13330', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13331', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool'),
('13332', '40208', '0', 'The Barrens (Bael Modan) - Box of Assorted Parts Pool');
