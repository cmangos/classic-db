
SET @ENTRY := 10509;
UPDATE `creature` SET `position_x`='144.5834', `position_y`='-257.865', `position_z`='110.9154', `orientation`='4.260417', `spawndist`='0', `currentwaypoint`='0', `MovementType`='2' WHERE `id`=@ENTRY;
SET @POINT := 0;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + 1, '142.2257', '-262.7214', '110.8876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '139.3248', '-272.9814', '110.9475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '139.0638', '-292.4112', '110.9653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '138.3658', '-304.5617', '110.9759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '140.2021', '-318.1903', '110.9563', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '141.5601', '-328.3477', '110.9527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '145.8668', '-339.1750', '110.9529', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '151.9865', '-343.3810', '110.9541', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '156.7343', '-340.5743', '110.9514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '161.2848', '-330.0849', '110.9461', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '164.3489', '-321.4368', '110.9378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '164.0665', '-307.8952', '110.9261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '161.9310', '-295.2541', '110.9342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '161.5403', '-286.8429', '110.9380', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '161.6263', '-276.1597', '110.9417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '162.6190', '-260.4803', '110.9217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '160.8826', '-251.0738', '110.9040', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '153.3330', '-254.2386', '110.8410', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '147.9330', '-256.8740', '110.8503', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + 1, '144.4096', '-258.0888', '110.8518', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 160129;
UPDATE `creature` SET `position_x`='144.5834', `position_y`='-257.865', `position_z`='110.9154', `orientation`='4.260417', `spawndist`='0', `currentwaypoint`='0', `MovementType`='2' WHERE `guid`=@GUID;
SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '142.2257', '-262.7214', '110.8876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '139.3248', '-272.9814', '110.9475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '139.0638', '-292.4112', '110.9653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '138.3658', '-304.5617', '110.9759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '140.2021', '-318.1903', '110.9563', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '141.5601', '-328.3477', '110.9527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '145.8668', '-339.1750', '110.9529', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '151.9865', '-343.3810', '110.9541', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '156.7343', '-340.5743', '110.9514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '161.2848', '-330.0849', '110.9461', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '164.3489', '-321.4368', '110.9378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '164.0665', '-307.8952', '110.9261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '161.9310', '-295.2541', '110.9342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '161.5403', '-286.8429', '110.9380', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '161.6263', '-276.1597', '110.9417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '162.6190', '-260.4803', '110.9217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '160.8826', '-251.0738', '110.9040', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '153.3330', '-254.2386', '110.8410', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '147.9330', '-256.8740', '110.8503', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '144.4096', '-258.0888', '110.8518', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 160124;
UPDATE `creature` SET `position_x`='151.8256', `position_y`='-337.4779', `position_z`='110.9506', `orientation`='1.610053', `spawndist`='0', `currentwaypoint`='0', `MovementType`='2' WHERE `guid`=@GUID;
SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '151.4298', '-299.8476', '110.6553', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '151.4830', '-266.6037', '110.9407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '151.4298', '-299.8476', '110.6553', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '151.8256', '-337.4779', '110.9506', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 40515;
UPDATE `creature` SET `id`='10083', `position_x`='113.6814', `position_y`='-366.2272', `position_z`='116.8478', `orientation`='0.01385177', `spawndist`='0', `currentwaypoint`='0', `MovementType`='2' WHERE `guid`=@GUID;
SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '134.3140', '-365.8533', '116.8400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '159.6903', '-366.0655', '116.8424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '164.6735', '-366.1374', '116.8424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '159.6903', '-366.0655', '116.8424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '134.3140', '-365.8533', '116.8400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '113.6814', '-366.2272', '116.8478', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := '160127';
DELETE FROM `creature` WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;

UPDATE `creature` SET `position_x`='81.00639', `position_y`='-284.3529', `position_z`='91.53317', `orientation`='5.951573', `spawndist`='1', `MovementType`='1' WHERE `guid`='160200';
UPDATE `creature` SET `position_x`='74.99681', `position_y`='-316.2664', `position_z`='91.52034', `orientation`='1.443440', `spawndist`='1', `MovementType`='1' WHERE `guid`='160201';
UPDATE `creature` SET `position_x`='102.8018', `position_y`='-332.1205', `position_z`='106.5189', `orientation`='2.216568' WHERE `guid`='160202';
UPDATE `creature` SET `position_x`='163.3878', `position_y`='-345.2617', `position_z`='111.0348', `orientation`='1.850049' WHERE `guid`='160195';
UPDATE `creature` SET `position_x`='141.6982', `position_y`='-394.8291', `position_z`='122.0586', `orientation`='4.869469' WHERE `guid`='160197';
UPDATE `creature` SET `position_x`='94.51865', `position_y`='-256.7027', `position_z`='91.53693', `orientation`='6.265732', `spawndist`='0', `MovementType`='0' WHERE `guid`='160110';
UPDATE `creature` SET `position_x`='96.17891', `position_y`='-268.5404', `position_z`='91.53113', `orientation`='1.378810', `spawndist`='0', `MovementType`='0' WHERE `guid`='160112';
UPDATE `creature` SET `position_x`='101.6780', `position_y`='-237.6665', `position_z`='106.5189', `orientation`='3.543018', `spawndist`='0', `MovementType`='0' WHERE `guid`='160111';
UPDATE `creature` SET `position_x`='100.7426', `position_y`='-246.0053', `position_z`='106.5189', `orientation`='2.652900', `spawndist`='0', `MovementType`='0' WHERE `guid`='160109';

SET @GUID := 160108;
UPDATE `creature` SET `position_x`='102.1643', `position_y`='-253.7978', `position_z`='106.5170', `orientation`='4.7232010', `spawndist`='0', `currentwaypoint`='0', `MovementType`='2' WHERE `guid`=@GUID;
SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '102.4917', '-284.0798', '106.4356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '103.3879', '-312.5006', '106.4356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '102.4917', '-284.0798', '106.4356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '102.1113', '-255.0355', '106.4356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

UPDATE `creature` SET `position_x`='128.2937', `position_y`='-309.3793', `position_z`='111.0322', `orientation`='3.3510320', `spawndist`='0', `MovementType`='0' WHERE `guid`='160199';
UPDATE `creature` SET `position_x`='105.1754', `position_y`='-327.1109', `position_z`='106.5189', `orientation`='2.5307270', `spawndist`='0', `MovementType`='0' WHERE `guid`='40502';
UPDATE `creature` SET `position_x`='128.0204', `position_y`='-315.2900', `position_z`='111.0291', `orientation`='2.9845130', `spawndist`='0', `MovementType`='0' WHERE `guid`='160122';
UPDATE `creature` SET `position_x`='97.91753', `position_y`='-333.6807', `position_z`='106.5189', `orientation`='1.9373150', `spawndist`='0', `MovementType`='0' WHERE `guid`='160126';
UPDATE `creature` SET `position_x`='137.1202', `position_y`='-338.7841', `position_z`='111.0449', `orientation`='0.6457718', `spawndist`='0', `MovementType`='0' WHERE `guid`='160123';
UPDATE `creature` SET `position_x`='140.7590', `position_y`='-342.7958', `position_z`='111.0497', `orientation`='1.3962630', `spawndist`='0', `MovementType`='0' WHERE `guid`='160196';
UPDATE `creature` SET `position_x`='167.3571', `position_y`='-340.5710', `position_z`='111.0342', `orientation`='2.7925270', `spawndist`='0', `MovementType`='0' WHERE `guid`='160119';
UPDATE `creature` SET `position_x`='138.3156', `position_y`='-395.0861', `position_z`='122.0586', `orientation`='4.7647490', `spawndist`='0', `MovementType`='0' WHERE `guid`='160121';
UPDATE `creature` SET `position_x`='92.24497', `position_y`='-427.6355', `position_z`='111.0061', `orientation`='3.1590460', `spawndist`='0', `MovementType`='0' WHERE `guid`='160125';
UPDATE `creature` SET `position_x`='87.50004', `position_y`='-426.6208', `position_z`='111.0061', `orientation`='5.9166660', `spawndist`='0', `MovementType`='0' WHERE `guid`='41723';
UPDATE `creature` SET `position_x`='71.63250', `position_y`='-421.3461', `position_z`='110.7948', `orientation`='2.6878070', `spawndist`='0', `MovementType`='0' WHERE `guid`='41781';
UPDATE `creature` SET `position_x`='71.74594', `position_y`='-419.1056', `position_z`='111.1442', `orientation`='3.7524580', `spawndist`='0', `MovementType`='0' WHERE `guid`='41783';
UPDATE `creature` SET `position_x`='70.54358', `position_y`='-420.4425', `position_z`='110.8466', `orientation`='0.7504916', `spawndist`='0', `MovementType`='0' WHERE `guid`='41790';

SET @GUID := '160171';
UPDATE `creature` SET `id`='9818', `position_x`='87.17487', `position_y`='-363.0850', `position_z`='117.7963', `orientation`='4.7298420', `spawndist`='0', `MovementType`='0' WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
