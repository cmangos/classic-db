
SET @BEHEMOTH := '3755'; -- 1 creature needed
SET @RESPAWNBEHEMOTH := '43200';

-- --------------

UPDATE `creature` SET `position_x`='-7291.86', `position_y`='-890.557', `position_z`='165.617', `orientation`='0.139794', `spawndist`='0' WHERE `id`='9026';

DELETE FROM `creature` WHERE `id`='8924';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@BEHEMOTH + 00, '8924', '0', '8390', '0', '-7435.554', '-892.563', '172.306', '6.180234', @RESPAWNBEHEMOTH, '0', '0', '11042', '0', '0', '2');
