
DELETE FROM `creature` WHERE `guid` = '53089';

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
('53089', '0', '30', '1', '0', '0', '-571.0814208984375', '-263.750823974609375', '75.092010498046875', '5.410520553588867187', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('53089', '13140');
