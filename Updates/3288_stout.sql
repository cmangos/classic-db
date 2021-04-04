
UPDATE `gameobject` SET `position_x` = '-1327.418701171875', `position_y` = '-1223.4053955078125', `position_z` = '38.79104995727539062', `orientation` = '4.607671737670898437', `rotation2` = '-0.74314403533935546', `rotation3` = '0.669131457805633544' WHERE (`guid` = '30028');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('30029', '1727', '0', '-1309.9664306640625', '-1225.2359619140625', '22.95736122131347656', '2.094393253326416015', '0', '0', '0.866024971008300781', '0.50000077486038208', '2', '2', '100', '1'),
('30030', '1727', '0', '-1331.35595703125', '-1238.0267333984375', '32.1243743896484375', '1.972219824790954589', '0', '0', '0.83388519287109375', '0.55193793773651123', '2', '2', '100', '1'),
('30034', '1727', '0', '-1325.471435546875', '-1222.341064453125', '32.12459182739257812', '5.532694816589355468', '0', '0', '-0.3665008544921875', '0.93041771650314331', '2', '2', '100', '1'),
('30035', '1727', '0', '-1308.4083251953125', '-1259.481689453125', '38.79087448120117187', '3.926995515823364257', '0', '0', '-0.92387866973876953', '0.38268551230430603', '2', '2', '100', '1');

INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('1727', '1264', '0', 'Hillsbrad Foothills - Dun Garok - Keg of Shindigger Stout (1727)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1264', '1', 'Hillsbrad Foothills - Dun Garok - Keg of Shindigger Stout (1727)');
