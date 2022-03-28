
SET @CREATURE_0 := '6840';
SET @CREATURE_1 := '6250'; -- duplicate

DELETE FROM `creature` WHERE `guid` IN (@CREATURE_0, @CREATURE_1);
DELETE FROM `creature_movement` WHERE `id` IN (@CREATURE_0, @CREATURE_1);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6962.7119140625', '-1494.5653076171875', '242.0191192626953125', '0.0', '300', '300', '0', '0', '1', '0', '0', '2');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CREATURE_0, '01', '-6954.58007812500', '-1488.5749511718750', '238.2298431396484375', '100', '0', '0'),
(@CREATURE_0, '02', '-6947.81933593750', '-1483.7824707031250', '236.2841796875000000', '100', '0', '0'),
(@CREATURE_0, '03', '-6940.63037109375', '-1479.1329345703125', '235.8613891601562500', '100', '0', '0'),
(@CREATURE_0, '04', '-6933.63720703125', '-1473.9357910156250', '236.9278259277343750', '100', '0', '0'),
(@CREATURE_0, '05', '-6928.18164062500', '-1469.9781494140625', '238.8227844238281250', '100', '0', '0'),
(@CREATURE_0, '06', '-6924.58203125000', '-1467.4487304687500', '239.2131195068359375', '100', '0', '0'),
(@CREATURE_0, '07', '-6933.63720703125', '-1473.9357910156250', '236.9278259277343750', '100', '0', '0'),
(@CREATURE_0, '08', '-6940.63037109375', '-1479.1329345703125', '235.8613891601562500', '100', '0', '0'),
(@CREATURE_0, '09', '-6947.81933593750', '-1483.7824707031250', '236.2841796875000000', '100', '0', '0'),
(@CREATURE_0, '10', '-6954.58007812500', '-1488.5749511718750', '238.2298431396484375', '100', '0', '0'),
(@CREATURE_0, '11', '-6960.09423828125', '-1492.4879150390625', '240.8669738769531250', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '8566');

-- ------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := '6829';
SET @CREATURE_1 := '6764'; -- duplicate

DELETE FROM `creature` WHERE `guid` IN (@CREATURE_0, @CREATURE_1);
DELETE FROM `creature_movement` WHERE `id` IN (@CREATURE_0, @CREATURE_1);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6932.49462890625', '-1433.6392822265625', '240.0967559814453125', '0.0', '300', '300', '0', '0', '1', '0', '0', '4');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CREATURE_0, '01', '-6928.42822265625', '-1443.6177978515625', '240.0134277343750000', '100', '0', '0'),
(@CREATURE_0, '02', '-6925.45898437500', '-1453.9801025390625', '238.3757324218750000', '100', '0', '0'),
(@CREATURE_0, '03', '-6922.87207031250', '-1466.0000000000000', '239.1289062500000000', '100', '0', '0'),
(@CREATURE_0, '04', '-6920.85791015625', '-1471.5681152343750', '238.0312347412109375', '100', '0', '0'),
(@CREATURE_0, '05', '-6917.24804687500', '-1476.3613281250000', '234.4631195068359375', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '8566');
