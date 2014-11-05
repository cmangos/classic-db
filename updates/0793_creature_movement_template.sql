
SET @FROSTBEARD := '1692'; -- Golorn Frostbeard

-- -------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@FROSTBEARD);
SET @NAME := (SELECT `name` FROM `creature_template` WHERE `entry`=@FROSTBEARD);
SET @POINT := '0';

UPDATE `creature` SET `position_x`='-5633.440', `position_y`='-496.4770', `position_z`='396.8753', `orientation`='2.539195', `MovementType`='2' WHERE `id`=@FROSTBEARD;

DELETE FROM `creature_movement` WHERE `id`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@FROSTBEARD;

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID, (@POINT := @POINT + 1), '-5636.061', '-495.8329', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5641.399', '-498.8961', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5640.832', '-501.3918', '396.7937', '20000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.936115', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5641.399', '-498.8961', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5640.068', '-496.7379', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5636.061', '-495.8329', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5633.440', '-496.4770', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, (@POINT := @POINT + 1), '-5633.440', '-496.4770', '396.7780', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.199115', '0', '0');
