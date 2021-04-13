
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('90784', '14275', '0', '0', '0', '-1329.939453125', '-1277.459228515625', '49.98560333251953125', '2.301288127899169921', '18000', '28800', '3', '0', '2196', '756', '0', '1'),
('90786', '14275', '0', '0', '0', '-1356.63818359375', '-1247.211669921875', '49.98707962036132812', '3.446519136428833007', '18000', '28800', '3', '0', '2196', '756', '0', '1');

UPDATE `creature` SET `position_x` = '-1265.12255859375', `position_y` = '-1195.08447265625', `position_z` = '40.0485687255859375', `orientation` = '3.393389225006103515', `spawndist` = '3', `MovementType` = '1' WHERE (`guid` = '90783');

UPDATE `creature_template` SET `SpeedWalk` = '1' WHERE (`Entry` = '14275');
