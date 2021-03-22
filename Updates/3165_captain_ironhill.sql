
UPDATE `creature` SET `position_x` = '-1302.0343017578125', `position_y` = '-1220.4333496093750', `position_z` = '23.04082870483398437', `orientation` = '4.276056766510009765' WHERE (`guid` = '15850');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('15938', '2304', '0', '0', '0', '-1299.1328125000000', '-1254.1907958984375', '32.20761871337890625', '3.019419670104980468', '300', '300', '0', '0', '3171', '0', '0', '0'),
('16192', '2304', '0', '0', '0', '-1307.1950683593750', '-1255.8428955078125', '49.98796463012695312', '5.131268024444580078', '300', '300', '0', '0', '3171', '0', '0', '0');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1204', '1', 'Captain Ironhill (2304)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('2304', '1204', '0', 'Captain Ironhill (2304)');
