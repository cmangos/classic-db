
UPDATE `gameobject_template` SET `size`='1.5' WHERE `entry` IN (179547, 179548);

SET @GUID := 30236;

DELETE FROM `gameobject` WHERE `id` IN (179547, 179548);
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID + 9;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID := @GUID + 0, '179548', '429', '836.3329',  '493.3791',  '37.3182',   '0.2967052', '0', '0', '0.147809',  '0.9890159',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '512.7841',  '588.0363',  '-25.40232', '3.281239', '0', '0', '-0.9975634', '0.06976615', '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '288.2057',  '341.1553',  '2.852959',  '5.497789', '0', '0', '-0.3826828', '0.9238798',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '-144.4642', '742.0172',  '-24.58036', '3.857183', '0', '0', '-0.9366713', '0.3502098',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '-86.39826', '569.308',   '28.60788',  '1.780234', '0', '0', '0.7771454',  '0.6293211',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '285.1641',  '-431.0629', '-119.9618', '4.694937', '0', '0', '-0.7132502', '0.7009096',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '-10.1152',  '-353.7714', '-54.04335', '3.787367', '0', '0', '-0.9483232', '0.3173059',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '118.0176',  '-261.4722', '-4.14639',  '0.087266', '0', '0', '0.04361916', '0.9990482',  '7200', '0', '1'),
(@GUID := @GUID + 1, '179548', '429', '4.497807',  '-437.5673', '16.41252',  '4.136433', '0', '0', '-0.8788166', '0.4771597',  '7200', '0', '1');

DELETE FROM `pool_gameobject_template` WHERE `id`=179548 OR `pool_entry`=25505;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('179548', '25505', '0', 'DM - Dusty Tome (179548)');

DELETE FROM `pool_template` WHERE `entry`=25505;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('25505', '1', 'DM - Dusty Tome');
