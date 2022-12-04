
UPDATE `creature_template` SET `SpeedWalk` = 5.0 / 2.5, `SpeedRun` = 10.0 / 7.0 WHERE (`Entry` IN (8716, 8717, 8718, 12396));

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE (`guid` IN (2738, 2887, 2995));

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(3220, 8716, 0, 1, 0, 0, -12193.0361328125, -2755.400390625, 22.2587890625, 2.286381244659423828, 900, 900, 0, 0, 51800, 0, 0, 0);
