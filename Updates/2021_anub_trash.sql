
UPDATE `creature_template` SET `speedwalk`=(2.5 / 2.5), `speedrun`=(10.0 / 7.0), `scale`='0' WHERE `entry`='15974';
UPDATE `creature_template` SET `speedwalk`=(2.5 / 2.5), `speedrun`=(10.0 / 7.0), `scale`='0' WHERE `entry`='15975';
UPDATE `creature_template` SET `speedwalk`=(2.5 / 2.5), `speedrun`=(10.0 / 7.0), `scale`='0' WHERE `entry`='15976';
UPDATE `creature_template` SET `speedwalk`=(2.5 / 2.5), `speedrun`=(10.0 / 7.0), `scale`='0' WHERE `entry`='15977';

UPDATE `creature` SET `position_x`='3187.798', `position_y`='-3471.030', `position_z`='287.1577', `orientation`='4.311844' WHERE `guid`='88345';
UPDATE `creature` SET `position_x`='3188.136', `position_y`='-3477.420', `position_z`='287.1574', `orientation`='5.128573' WHERE `guid`='88349';
UPDATE `creature` SET `position_x`='3187.197', `position_y`='-3484.212', `position_z`='287.1584', `orientation`='4.954122' WHERE `guid`='88350';
UPDATE `creature` SET `position_x`='3193.412', `position_y`='-3472.444', `position_z`='287.1516', `orientation`='3.954010' WHERE `guid`='88351';
UPDATE `creature` SET `position_x`='3193.483', `position_y`='-3477.563', `position_z`='287.1515', `orientation`='3.679136' WHERE `guid`='88352';
UPDATE `creature` SET `position_x`='3192.768', `position_y`='-3483.240', `position_z`='287.1523', `orientation`='4.912806' WHERE `guid`='88353';
UPDATE `creature` SET `position_x`='3195.058', `position_y`='-3477.695', `position_z`='287.0673', `orientation`='3.615518' WHERE `guid`='88354';
UPDATE `creature` SET `position_x`='3182.029', `position_y`='-3484.297', `position_z`='287.1617', `orientation`='3.112650' WHERE `guid`='88355';
UPDATE `creature` SET `position_x`='3181.970', `position_y`='-3470.768', `position_z`='287.1642', `orientation`='4.727794' WHERE `guid`='88356';
UPDATE `creature` SET `position_x`='3182.216', `position_y`='-3477.539', `position_z`='287.1639', `orientation`='5.441139' WHERE `guid`='88357';

SET @CGUID := 88345;
SET @POINT = 0;
DELETE FROM `creature_movement` WHERE `id`=@CGUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `script_id`, `orientation`) VALUES
(@CGUID, @POINT := @POINT + 1, '3161.341', '-3483.698', '287.0821', '5', '100'),
(@CGUID, @POINT := @POINT + 1, '3130.391', '-3511.867', '287.0732', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3144.542', '-3550.574', '287.0813', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3110.395', '-3578.969', '287.0807', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3092.080', '-3571.624', '287.0815', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3121.406', '-3567.562', '287.0834', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3147.136', '-3530.263', '287.0785', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3126.108', '-3505.859', '287.0740', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3101.140', '-3501.363', '287.0772', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3075.951', '-3526.291', '287.0766', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3071.353', '-3554.363', '287.0767', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3076.656', '-3569.062', '287.0679', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3066.351', '-3535.090', '287.0747', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3087.323', '-3514.317', '287.0793', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3107.526', '-3504.981', '287.0764', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3131.471', '-3515.039', '287.0719', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3154.792', '-3490.421', '287.0715', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3169.863', '-3479.741', '287.1156', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3154.792', '-3490.421', '287.0715', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3131.471', '-3515.039', '287.0719', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3107.526', '-3504.981', '287.0764', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3087.323', '-3514.317', '287.0793', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3066.351', '-3535.090', '287.0747', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3076.656', '-3569.062', '287.0679', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3071.353', '-3554.363', '287.0767', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3075.951', '-3526.291', '287.0766', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3101.140', '-3501.363', '287.0772', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3126.108', '-3505.859', '287.0740', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3146.974', '-3530.075', '287.0843', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3121.529', '-3567.382', '287.0810', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3092.080', '-3571.624', '287.0815', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3110.395', '-3578.969', '287.0807', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3144.542', '-3550.574', '287.0813', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3130.391', '-3511.867', '287.0732', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3161.341', '-3483.698', '287.0821', '0', '100'),
(@CGUID, @POINT := @POINT + 1, '3185.406', '-3475.934', '287.0771', '0', '100');

UPDATE `creature_movement` SET `script_id`='5' WHERE `id`='88358' AND `point`='1';
UPDATE `creature_movement` SET `script_id`='5' WHERE `id`='88380' AND `point`='1';

UPDATE `creature` SET `position_x`='3194.840', `position_y`='-3476.157', `position_z`='287.1500', `orientation`='5.550147', `spawndist`='3', `MovementType`='1' WHERE `guid`='88343';
UPDATE `creature` SET `position_x`='3153.259', `position_y`='-3535.795', `position_z`='287.1605', `orientation`='5.899213', `spawndist`='3', `MovementType`='1' WHERE `guid`='88311';
UPDATE `creature` SET `position_x`='3066.257', `position_y`='-3555.308', `position_z`='287.1587', `orientation`='6.073746', `spawndist`='3', `MovementType`='1' WHERE `guid`='88310';

UPDATE `creature` SET `position_x`='3064.909', `position_y`='-3531.212', `position_z`='287.1595', `orientation`='5.986479', `spawndist`='3', `MovementType`='1' WHERE `guid`='88335';
UPDATE `creature` SET `position_x`='3066.175', `position_y`='-3543.944', `position_z`='287.1592', `orientation`='6.038839', `spawndist`='3', `MovementType`='1' WHERE `guid`='88334';
UPDATE `creature` SET `position_x`='3144.307', `position_y`='-3527.796', `position_z`='287.1636', `orientation`='5.881760', `spawndist`='3', `MovementType`='1' WHERE `guid`='88336';
UPDATE `creature` SET `position_x`='3143.682', `position_y`='-3544.068', `position_z`='287.1645', `orientation`='5.951573', `spawndist`='3', `MovementType`='1' WHERE `guid`='88337';
UPDATE `creature` SET `position_x`='3186.273', `position_y`='-3470.939', `position_z`='287.1594', `orientation`='5.567600', `spawndist`='3', `MovementType`='1' WHERE `guid`='88338';
UPDATE `creature` SET `position_x`='3185.437', `position_y`='-3481.438', `position_z`='287.1604', `orientation`='5.602507', `spawndist`='3', `MovementType`='1' WHERE `guid`='88339';

UPDATE `creature` SET `position_x`='3059.949', `position_y`='-3539.525', `position_z`='287.1577', `orientation`='6.021386', `spawndist`='3', `MovementType`='1' WHERE `guid`='88307';
UPDATE `creature` SET `position_x`='3075.536', `position_y`='-3531.966', `position_z`='287.1603', `orientation`='5.986479', `spawndist`='3', `MovementType`='1' WHERE `guid`='88308';
UPDATE `creature` SET `position_x`='3076.986', `position_y`='-3543.548', `position_z`='287.1605', `orientation`='6.021386', `spawndist`='3', `MovementType`='1' WHERE `guid`='88309';
UPDATE `creature` SET `position_x`='3137.102', `position_y`='-3536.802', `position_z`='287.1628', `orientation`='5.916666', `spawndist`='3', `MovementType`='1' WHERE `guid`='88312';
UPDATE `creature` SET `position_x`='3150.056', `position_y`='-3522.120', `position_z`='287.1628', `orientation`='5.846853', `spawndist`='3', `MovementType`='1' WHERE `guid`='88313';
UPDATE `creature` SET `position_x`='3152.213', `position_y`='-3547.467', `position_z`='287.1649', `orientation`='5.951573', `spawndist`='3', `MovementType`='1' WHERE `guid`='88314';
UPDATE `creature` SET `position_x`='3177.762', `position_y`='-3483.317', `position_z`='287.1688', `orientation`='5.637414', `spawndist`='3', `MovementType`='1' WHERE `guid`='88340';
UPDATE `creature` SET `position_x`='3179.288', `position_y`='-3476.390', `position_z`='287.1671', `orientation`='5.602507', `spawndist`='3', `MovementType`='1' WHERE `guid`='88341';
UPDATE `creature` SET `position_x`='3174.877', `position_y`='-3470.711', `position_z`='287.0877', `orientation`='5.602507', `spawndist`='3', `MovementType`='1' WHERE `guid`='88342';

UPDATE `creature` SET `position_x`='3098.566', `position_y`='-3486.642', `position_z`='287.1599', `orientation`='5.811946', `spawndist`='3', `MovementType`='1' WHERE `guid`='88315';
UPDATE `creature` SET `position_x`='3131.474', `position_y`='-3494.231', `position_z`='287.1504', `orientation`='5.777040', `spawndist`='3', `MovementType`='1' WHERE `guid`='88316';
UPDATE `creature` SET `position_x`='3101.777', `position_y`='-3493.039', `position_z`='287.1598', `orientation`='5.829400', `spawndist`='3', `MovementType`='1' WHERE `guid`='88317';
UPDATE `creature` SET `position_x`='3107.021', `position_y`='-3487.885', `position_z`='287.1584', `orientation`='5.794493', `spawndist`='3', `MovementType`='1' WHERE `guid`='88318';
UPDATE `creature` SET `position_x`='3106.104', `position_y`='-3495.433', `position_z`='287.1591', `orientation`='5.829400', `spawndist`='3', `MovementType`='1' WHERE `guid`='88319';
UPDATE `creature` SET `position_x`='3112.024', `position_y`='-3489.449', `position_z`='287.1578', `orientation`='5.794493', `spawndist`='3', `MovementType`='1' WHERE `guid`='88320';
UPDATE `creature` SET `position_x`='3110.767', `position_y`='-3497.281', `position_z`='287.1585', `orientation`='5.829400', `spawndist`='3', `MovementType`='1' WHERE `guid`='88321';
UPDATE `creature` SET `position_x`='3116.012', `position_y`='-3498.698', `position_z`='287.1593', `orientation`='5.811946', `spawndist`='3', `MovementType`='1' WHERE `guid`='88322';
UPDATE `creature` SET `position_x`='3123.069', `position_y`='-3489.328', `position_z`='287.1537', `orientation`='5.777040', `spawndist`='3', `MovementType`='1' WHERE `guid`='88323';
UPDATE `creature` SET `position_x`='3123.978', `position_y`='-3496.283', `position_z`='287.1547', `orientation`='5.794493', `spawndist`='3', `MovementType`='1' WHERE `guid`='88324';

UPDATE `creature` SET `position_x`='3095.997', `position_y`='-3570.250', `position_z`='287.1650', `orientation`='6.108652', `spawndist`='3', `MovementType`='1' WHERE `guid`='88325';
UPDATE `creature` SET `position_x`='3107.898', `position_y`='-3562.923', `position_z`='287.1628', `orientation`='6.056293', `spawndist`='3', `MovementType`='1' WHERE `guid`='88326';
UPDATE `creature` SET `position_x`='3102.620', `position_y`='-3569.701', `position_z`='287.1624', `orientation`='6.091199', `spawndist`='3', `MovementType`='1' WHERE `guid`='88327';
UPDATE `creature` SET `position_x`='3095.397', `position_y`='-3580.164', `position_z`='287.1652', `orientation`='6.143559', `spawndist`='3', `MovementType`='1' WHERE `guid`='88328';
UPDATE `creature` SET `position_x`='3106.254', `position_y`='-3574.223', `position_z`='287.1610', `orientation`='6.108652', `spawndist`='3', `MovementType`='1' WHERE `guid`='88329';
UPDATE `creature` SET `position_x`='3102.285', `position_y`='-3580.110', `position_z`='287.1612', `orientation`='6.126106', `spawndist`='3', `MovementType`='1' WHERE `guid`='88330';
UPDATE `creature` SET `position_x`='3114.279', `position_y`='-3570.235', `position_z`='287.1643', `orientation`='6.091199', `spawndist`='3', `MovementType`='1' WHERE `guid`='88331';
UPDATE `creature` SET `position_x`='3109.648', `position_y`='-3584.535', `position_z`='287.1620', `orientation`='6.143559', `spawndist`='3', `MovementType`='1' WHERE `guid`='88332';
UPDATE `creature` SET `position_x`='3116.036', `position_y`='-3581.537', `position_z`='287.1648', `orientation`='6.126106', `spawndist`='3', `MovementType`='1' WHERE `guid`='88333';
UPDATE `creature` SET `position_x`='3097.775', `position_y`='-3560.323', `position_z`='287.1650', `orientation`='6.056293', `spawndist`='3', `MovementType`='1' WHERE `guid`='88344';
