
SET @SCRIPTID := '5';

UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5') WHERE `entry` IN ('10408', '10409', '10809');
UPDATE `creature_template` SET `SpeedRun`=('8' / '7') WHERE `entry` IN ('10409');
UPDATE `creature_template` SET `SpeedRun`=('10' / '7') WHERE `entry` IN ('10408', '10809');

UPDATE `creature_movement` SET `script_id`=@SCRIPTID WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN ('10408', '10409', '10809') AND `point`='1');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=@SCRIPTID;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(@SCRIPTID, '0', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stratholme - Gargoyles - RUN ON');
