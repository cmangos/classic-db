-- Set to rare rank of creature 7354 (Ragglesnout) in Razorfen Downs
-- Source: http://old.wowhead.com/npc=7354#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 7354;

SET @GUID := 31774;
SET @ALTERNATE_GUID := 87199;

-- Added missing creature 7354
-- Source: YTDB
DELETE FROM `creature` WHERE `id` = 7354;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, 7354, 129, 0, 0, 2364.75, 904.524, 28.7671, 0.304753, 7200, 5, 0, 8872, 3191, 0, 1);

-- Put creature 7354 (Ragglesnout) in pool as he is a rare creature and should not spawn all the time
DELETE FROM `pool_creature` WHERE `guid` IN (@GUID, @ALTERNATE_GUID);
INSERT INTO `pool_creature` VALUES
(@GUID, 1181, 30, 'Ragglesnout (7354) Razorfen Downs'),
(@ALTERNATE_GUID, 1181, 70, 'Alternate creature to Ragglesnout (7354) Razorfen Downs');

DELETE FROM `pool_template` WHERE `entry` = 1181;
INSERT INTO `pool_template` VALUES
(1181, 1, 'Ragglesnout (7354) Razorfen Downs');
