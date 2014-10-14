
SET @HELENA := '5669'; -- Helena Atwood

-- -------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@HELENA);
SET @NAME := (SELECT `name` FROM `creature_template` WHERE `entry`=@HELENA);
SET @POINT := '0';

UPDATE `creature` SET `position_x`='1717.100', `position_y`='290.1810', `position_z`='-62.10680', `orientation`='5.026550', `MovementType`='2' WHERE `id`=@HELENA;

DELETE FROM `creature_movement` WHERE `id`=@GUID;

DELETE FROM `creature_movement_template` WHERE `entry`=@HELENA;

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@HELENA, (@POINT := @POINT + 1), '1717.100', '290.1810', '-62.10680', '6000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '5.026550', '0', '0');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=(CONCAT(@GUID, '01'));

INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
((CONCAT(@GUID, '01')), '0', '15', '9008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Shoot')));
