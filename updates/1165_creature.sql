
UPDATE `creature` SET `modelid`='0', `position_x`='3086.039', `position_y`='-3386.805', `position_z`='298.4013', `orientation`='3.1764990' WHERE `guid`='88261';
UPDATE `creature` SET `modelid`='0', `position_x`='3054.923', `position_y`='-3356.802', `position_z`='298.4012', `orientation`='4.7298420' WHERE `guid`='88262';
UPDATE `creature` SET `modelid`='0', `position_x`='3087.452', `position_y`='-3367.567', `position_z`='298.4010', `orientation`='3.8920840' WHERE `guid`='88263';
UPDATE `creature` SET `modelid`='0', `position_x`='3074.640', `position_y`='-3353.271', `position_z`='298.4011', `orientation`='4.0666170' WHERE `guid`='88264';
UPDATE `creature` SET `modelid`='0', `position_x`='3136.614', `position_y`='-3353.291', `position_z`='294.0508', `orientation`='2.4609140' WHERE `guid`='88267';
UPDATE `creature` SET `modelid`='0', `position_x`='3088.140', `position_y`='-3305.500', `position_z`='294.0250', `orientation`='5.5676000' WHERE `guid`='88268';
UPDATE `creature` SET `modelid`='0', `position_x`='3157.593', `position_y`='-3332.373', `position_z`='294.0485', `orientation`='2.5481810' WHERE `guid`='88278';
UPDATE `creature` SET `modelid`='0', `position_x`='3109.138', `position_y`='-3284.198', `position_z`='294.0352', `orientation`='5.6374140' WHERE `guid`='88279';
UPDATE `creature` SET `modelid`='0', `position_x`='3174.143', `position_y`='-3291.926', `position_z`='294.7139', `orientation`='3.8048180' WHERE `guid`='88280';
UPDATE `creature` SET `modelid`='0', `position_x`='3149.682', `position_y`='-3265.699', `position_z`='294.5758', `orientation`='4.2236970' WHERE `guid`='88281';
UPDATE `creature` SET `modelid`='0', `position_x`='3168.316', `position_y`='-3280.821', `position_z`='294.9196', `orientation`='4.0666170' WHERE `guid`='88724';
UPDATE `creature` SET `modelid`='0', `position_x`='3159.187', `position_y`='-3270.790', `position_z`='294.8397', `orientation`='3.9793510' WHERE `guid`='88725';
UPDATE `creature` SET `modelid`='0', `position_x`='3011.567', `position_y`='-3189.042', `position_z`='294.1461', `orientation`='0.1047198', `spawndist`='1', `MovementType`='1' WHERE `guid`='88726';
UPDATE `creature` SET `modelid`='0', `position_x`='3023.057', `position_y`='-3187.803', `position_z`='294.1461', `orientation`='3.0543260', `spawndist`='1', `MovementType`='1' WHERE `guid`='88727';

DELETE FROM `creature` WHERE `guid` IN('88484', '88485');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('88484', '16017', '533', '0', '0', '3009.262', '-3178.272', '294.1461', '3.366432', '3520', '1', '0', '88032', '0', '0', '1'),
('88485', '16017', '533', '0', '0', '3020.173', '-3177.851', '294.1461', '6.056293', '3520', '1', '0', '88032', '0', '0', '1');
