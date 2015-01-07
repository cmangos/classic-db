
SET @GUID := '138677';

-- ---------------------------------------------

SET @REAVER := '11450';
SET @MAP := '429';
SET @RESPAWN := '2' * '60' * '60';
SET @COUNT := '15';

DELETE FROM `creature` WHERE `guid`='134876'; -- Gordok Captain being replaced by Reaver. Should be pooled properly, but addition to the system are needed.

DELETE FROM `creature` WHERE `id`=@REAVER AND `guid` BETWEEN (@GUID + '00') AND (@GUID + @COUNT - '1');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + '00', @REAVER, @MAP, '0', '0', '387.4085', '462.7724', '-7.148942', '2.6878070', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '01', @REAVER, @MAP, '0', '0', '419.0150', '538.2688', '-18.26003', '0.4886922', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '02', @REAVER, @MAP, '0', '0', '530.1689', '580.4394', '-25.31940', '1.4137170', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '03', @REAVER, @MAP, '0', '0', '530.2059', '600.8753', '-25.31940', '4.8694690', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '04', @REAVER, @MAP, '0', '0', '593.2279', '565.1199', '-4.671438', '3.1066860', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '05', @REAVER, @MAP, '0', '0', '484.1014', '523.8082', '27.997650', '1.4486230', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '06', @REAVER, @MAP, '0', '0', '497.7333', '523.8073', '27.998240', '1.6406100', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '07', @REAVER, @MAP, '0', '0', '480.2641', '558.1676', '27.995270', '1.8500490', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '08', @REAVER, @MAP, '0', '0', '485.1412', '564.9458', '27.995090', '3.2114060', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '09', @REAVER, @MAP, '0', '0', '565.9363', '486.7255', '29.547450', '4.2586040', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '10', @REAVER, @MAP, '0', '0', '559.2202', '477.3137', '29.547450', '0.8552113', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '11', @REAVER, @MAP, '0', '0', '688.4595', '505.9162', '29.552950', '2.3038350', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '12', @REAVER, @MAP, '0', '0', '541.6950', '582.7410', '-4.671440', '5.6723200', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '13', @REAVER, @MAP, '0', '0', '522.9580', '554.5040', '28.000600', '2.1991100', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0'),
(@GUID + '14', @REAVER, @MAP, '0', '0', '748.4830', '433.1610', '28.266480', '3.5604720', @RESPAWN, '0', '0', (SELECT `MaxLevelHealth` FROM `creature_template` WHERE `Entry`=@REAVER), (SELECT `MaxLevelMana` FROM `creature_template` WHERE `Entry`=@REAVER), '0', '0');
