
UPDATE `creature` SET `modelid`='0', `position_x`='3096.716', `position_y`='-3292.511', `position_z`='294.5972', `orientation`='5.602507', `MovementType`='0' WHERE `guid`='88270';
UPDATE `creature` SET `modelid`='0', `position_x`='3149.040', `position_y`='-3345.118', `position_z`='294.5925', `orientation`='2.460914', `MovementType`='0' WHERE `guid`='88272';

DELETE FROM `creature_movement` WHERE `id` IN ('88270', '88272');
