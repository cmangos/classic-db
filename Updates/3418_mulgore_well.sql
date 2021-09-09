
DELETE FROM `creature_movement` WHERE (`id` IN ('26516', '26423'));

UPDATE `creature` SET `position_x` = '-734.7483', `position_y` = '-134.9887', `position_z` = '-25.97544', `orientation` = '0.8601550', `spawndist` = '5', `MovementType` = '1' WHERE (`guid` = '26422');
UPDATE `creature` SET `position_x` = '-757.6068', `position_y` = '-143.1159', `position_z` = '-29.35502', `orientation` = '5.5152400', `spawndist` = '0', `MovementType` = '0' WHERE (`guid` = '26515');
UPDATE `creature` SET `position_x` = '-746.2691', `position_y` = '-155.2419', `position_z` = '-28.10064', `orientation` = '3.6651910', `spawndist` = '0', `MovementType` = '0' WHERE (`guid` = '26516');
UPDATE `creature` SET `position_x` = '-765.4142', `position_y` = '-133.7712', `position_z` = '-28.00575', `orientation` = '0.3821697', `spawndist` = '5', `MovementType` = '1' WHERE (`guid` = '26423');
UPDATE `creature` SET `position_x` = '-736.1991', `position_y` = '-163.4565', `position_z` = '-27.02930', `orientation` = '1.2042770', `spawndist` = '5', `MovementType` = '1' WHERE (`guid` = '26424');
UPDATE `creature` SET `position_x` = '-765.1107', `position_y` = '-165.6086', `position_z` = '-24.32659', `orientation` = '2.1256020', `spawndist` = '5', `MovementType` = '1' WHERE (`guid` = '26489');
UPDATE `creature` SET `position_x` = '-738.9998', `position_y` = '-144.0654', `position_z` = '-27.46979', `orientation` = '0.4202285', `spawndist` = '0', `MovementType` = '2' WHERE (`guid` = '26488');
UPDATE `creature` SET `position_x` = '-760.6789', `position_y` = '-153.5571', `position_z` = '-27.72813', `orientation` = '5.1364850', `spawndist` = '0', `MovementType` = '2' WHERE (`guid` = '26490');

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
('26488', '1', '-744.9912', '-135.3902', '-28.39794', '0', '0', '100'),
('26488', '2', '-756.1299', '-135.9466', '-29.10131', '0', '0', '100'),
('26488', '3', '-764.3948', '-143.2082', '-28.81274', '0', '0', '100'),
('26488', '4', '-764.1376', '-157.0794', '-26.50781', '0', '0', '100'),
('26488', '5', '-755.0914', '-163.7832', '-26.33496', '0', '0', '100'),
('26488', '6', '-744.8245', '-163.8245', '-27.25366', '0', '0', '100'),
('26488', '7', '-737.6420', '-155.2205', '-27.25927', '0', '0', '100'),
('26488', '8', '-737.6517', '-143.4630', '-27.13671', '0', '0', '100'),
('26490', '1', '-757.0906', '-161.5079', '-26.55004', '0', '0', '100'),
('26490', '2', '-745.8962', '-161.7594', '-27.37646', '0', '0', '100'),
('26490', '3', '-738.5626', '-155.1565', '-27.54003', '0', '0', '100'),
('26490', '4', '-738.8869', '-143.7204', '-27.43310', '0', '0', '100'),
('26490', '5', '-745.2669', '-135.9274', '-28.46435', '0', '0', '100'),
('26490', '6', '-756.5900', '-136.0905', '-29.11840', '0', '0', '100'),
('26490', '7', '-765.0123', '-143.9803', '-28.73608', '0', '0', '100'),
('26490', '8', '-764.9141', '-153.9805', '-27.10009', '0', '0', '100');
