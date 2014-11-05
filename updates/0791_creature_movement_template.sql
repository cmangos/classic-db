
SET @TURNER := '6175'; -- John Turner

SET @TEXT := '2000000349';

-- -------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@TURNER);
SET @NAME := (SELECT `name` FROM `creature_template` WHERE `entry`=@TURNER);
SET @POINT := '0';

UPDATE `creature` SET `position_x`='-4895.609', `position_y`='-898.0984', `position_z`='501.7426', `orientation`='2.286381', `MovementType`='2' WHERE `id`=@TURNER;

DELETE FROM `creature_movement` WHERE `id`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@TURNER;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN (CONCAT(@GUID, '01')) AND (CONCAT(@GUID, '03'));
DELETE FROM `db_script_string` WHERE `entry` BETWEEN (@TEXT + 00) AND (@TEXT + 03);

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@TURNER, (@POINT := @POINT + 1), '-4895.609', '-898.0984', '501.6593', '4000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '2.286381', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4859.858', '-887.9218', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4842.476', '-885.5647', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4842.476', '-885.5647', '501.6594', '0000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '1.884956', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4875.518', '-889.0638', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4895.693', '-897.8222', '501.6593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4895.693', '-897.8222', '501.6593', '4000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '2.251475', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4927.132', '-915.4280', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4951.839', '-934.9794', '501.6593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4981.382', '-966.5792', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4983.741', '-969.7697', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4983.741', '-969.7697', '501.6595', '4000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '2.443461', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-5002.574', '-1008.675', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-5007.885', '-1022.321', '501.6549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-5012.979', '-1052.933', '501.7099', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-5012.979', '-1052.933', '501.7099', '4000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '2.967060', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-5006.932', '-1021.700', '501.6555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4992.735', '-985.8944', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4981.066', '-962.5291', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4944.819', '-930.4164', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4906.594', '-901.6618', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@TURNER, (@POINT := @POINT + 1), '-4895.609', '-898.0984', '501.6593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
((CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', (@TEXT + 00), (@TEXT + 01), (@TEXT + 02), (@TEXT + 03), '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 1, 2, 3 or 4')));

INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
((@TEXT + 00), 'Give to the charities who seek to help the victims of these hard times! Please.', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 1'))),
((@TEXT + 01), 'Don\'t forget the orphans of Stormwind!', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 2'))),
((@TEXT + 02), 'Give of your hearts and your purses! Give to the children of Stormwind who have lost their parents.', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 3'))),
((@TEXT + 03), 'Help the children of Stormwind... victims of the war and plague!', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 4')));
