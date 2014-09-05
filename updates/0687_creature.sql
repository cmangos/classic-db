
SET @PANZOR := '47642';
SET @MWGOLEM := '47777';

-- ----------------------------

DELETE FROM `creature` WHERE `guid`=@PANZOR;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@PANZOR, '8923', '230', '8270', '0', '1173.753', '-187.816', '-65.455', '3.908627', '604800', '0', '0', '14837', '0', '0', '2');

UPDATE `creature` SET `position_x`='1173.753', `position_y`='-187.816', `position_z`='-65.455', `orientation`='3.908627', `spawndist`='0', `MovementType`='2' WHERE `guid`=@MWGOLEM;
