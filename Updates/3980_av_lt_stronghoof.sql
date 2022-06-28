
DELETE FROM `creature` WHERE (`guid` IN ('53107'));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('53107', '0', '30', '1', '0', '0', '-610.15557861328125', '-404.24383544921875', '60.28270721435546875', '2.984513044357299804', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('53107', '13143');
