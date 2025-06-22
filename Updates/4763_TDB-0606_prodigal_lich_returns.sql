UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 5666;
DELETE FROM `creature_movement_template` WHERE `entry` = 5666;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(5666, 0, 1, 1766.56, 60.4418, -46.3214, 1.93141, 0, 0, NULL),
(5666, 0, 2, 1766.39, 65.0166, -46.3214, 1.51672, 20000, 566601, NULL);
UPDATE `creature_movement_template` SET `ScriptId`=0 WHERE `entry`=5666 AND `ScriptId`=566601;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=566601;

