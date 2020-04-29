
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('11479', '4149', '0', '-7438.17529296875', '-2317.32128906250', '237.0408325195312500', '5.602506637573242187', '0', '0', '-0.33380699157714843', '0.942641437053680419', '300', '300', '100', '1'), -- Dustbelch Grotto (exists)
('11482', '4149', '0', '-7311.24316406250', '-2277.51806640625', '245.9141387939453125', '0.558503925800323486', '0', '0', '0.275636672973632812', '0.961261868476867675', '300', '300', '100', '1'), -- Dustbelch Grotto
('11483', '4149', '0', '-7483.70996093750', '-2268.19628906250', '233.7161254882812500', '0.069811686873435974', '0', '0', '0.034898757934570312', '0.999390840530395507', '300', '300', '100', '1'), -- Dustbelch Grotto
('11485', '4149', '0', '-7387.18750000000', '-2237.20458984375', '233.9271392822265625', '3.857182979583740234', '0', '0', '-0.93667125701904296', '0.350209832191467285', '300', '300', '100', '1'); -- Dustbelch Grotto

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('39946', '1', 'Badlands (Dustbelch Grotto) - Chest Pool');

REPLACE INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
('39946', '39923', '0', 'Badlands (Dustbelch Grotto) - Chest Pool');

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('11479', '39946', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('11482', '39946', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('11483', '39946', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('11485', '39946', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)');
