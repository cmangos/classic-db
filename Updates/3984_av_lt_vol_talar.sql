
DELETE FROM `creature` WHERE (`guid` IN ('53108'));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('53108', '0', '30', '1', '0', '0', '-498.9283447265625', '-195.038253784179687', '57.54837417602539062', '6.143558979034423828', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('53108', '13144');
