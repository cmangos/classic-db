
SET @STONEHAMMER := '5637'; -- Roetten Stonehammer

-- ----------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@STONEHAMMER);
SET @POINT := '0';

UPDATE `creature` SET `position_x`='-4681.394', `position_y`='-1266.606', `position_z`='503.4648', `orientation`='1.963985', `MovementType`='2' WHERE `id`=@STONEHAMMER;

DELETE FROM `creature_movement` WHERE `id`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@STONEHAMMER;

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@STONEHAMMER, (@POINT := @POINT + 1), '-4686.149', '-1255.140', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4675.921', '-1244.380', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4667.503', '-1245.781', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4661.595', '-1250.517', '503.3816', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4661.595', '-1250.517', '503.3816', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.356194', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4670.109', '-1243.077', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4681.147', '-1244.796', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4686.531', '-1252.014', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4685.416', '-1262.677', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4681.394', '-1266.606', '503.3816', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@STONEHAMMER, (@POINT := @POINT + 1), '-4681.394', '-1266.606', '503.3816', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.605703', '0', '0');

