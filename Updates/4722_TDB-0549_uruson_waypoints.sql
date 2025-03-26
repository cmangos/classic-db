-- Uroson spawnpoint and waypoints based on sniffs

DELETE FROM creature WHERE id = 14428;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(46350, 14428, 1, 1, 9907.52246, 393.75543, 1309.78125, 5.8294, 3600, 7200, 0, 2);

DELETE FROM `creature_movement_template` WHERE entry = 14428;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
(14428, 0, 1, 9901.3955,397.1808,1309.5454, 100, 0, 0),
(14428, 0, 2, 9896.847,403.3893,1308.1709, 100, 0, 0),
(14428, 0, 3, 9879.391,406.52887,1307.1951, 100, 0, 0),
(14428, 0, 4, 9853.393,404.44684,1306.3469, 100, 0, 0),
(14428, 0, 5, 9833.638,389.0966,1307.5676, 100, 0, 0),
(14428, 0, 6, 9806.589,370.3251,1308.1271, 100, 0, 0);

-- UpdateType: CreateObject2
-- Object Guid: Full: 0x20566000200E170000009E0000498861 Creature/0 R5528/S158 Map: 1 Entry: 14428 Low: 4819041
-- WalkSpeed: 1.666669964790344238
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = 1.666669964790344238/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry = 14428;

