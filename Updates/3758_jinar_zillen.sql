DELETE FROM `creature_movement_template` WHERE `Entry`=11317;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(11317, 0, 1, -1744.6162, 3230.6023, 5.257385, 100, 0, 0, 'Jinar\'Zillen'),
(11317, 0, 2, -1739.9117, 3223.85, 5.179705, 5.320872306823730468, 34000, 0, 'Jinar\'Zillen');

UPDATE `creature` SET `MovementType`=2 WHERE `id`=11317;

