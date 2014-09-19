
SET @PROPHET := '600000';

-- -------------------

DELETE FROM `creature_linking` WHERE `master_guid`=@PROPHET + 00 OR `master_guid`=@PROPHET + 03;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@PROPHET + 01, @PROPHET + 00, '1667'),
(@PROPHET + 02, @PROPHET + 00, '1667'),
(@PROPHET + 04, @PROPHET + 03, '1667'),
(@PROPHET + 05, @PROPHET + 03, '1667');
