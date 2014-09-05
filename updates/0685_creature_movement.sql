
SET @PYRON := '4593';
SET @BEHEMOTH := '3755';

-- ----------------------------

-- GUIDs in ClassicDB
DELETE FROM `creature_movement` WHERE `id`=@PYRON + 00;
DELETE FROM `creature_movement` WHERE `id`=@BEHEMOTH + 00;
