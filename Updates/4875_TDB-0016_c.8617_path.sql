-- Add path for Zalashji 8617
-- no data on rp event, can be mistaken for his default model animation, nagas like to hiss alot
-- https://github.com/cmangos/issues/issues/4225
UPDATE `creature` SET `MovementType` = 4 WHERE `id` = 8617; -- LINEAR_WP_MOTION_TYPE
DELETE FROM `creature_movement_template` WHERE `entry` = 8617; -- 2008-06-25 12-38-22
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(8617, 0, 1, -7355.517, -4891.354, 0.2560511, 4.256499, 60000, 0, NULL),
(8617, 0, 2, -7353.977, -4889.37, 0.7560511, 100, 0, 0, NULL),
(8617, 0, 3, -7352.705, -4880.027, 3.131051, 100, 0, 0, NULL),
(8617, 0, 4, -7349.75, -4866.566, 4.042449, 100, 0, 0, NULL),
(8617, 0, 5, -7344.878, -4844.468, 2.656825, 100, 0, 0, NULL),
(8617, 0, 6, -7346.977, -4840.537, 2.714211, 4.974188, 60000, 0, NULL);

