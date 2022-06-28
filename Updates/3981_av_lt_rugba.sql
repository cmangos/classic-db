
DELETE FROM `creature` WHERE (`guid` IN ('53086'));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('53086', '0', '30', '1', '0', '0', '-637.59930419921875', '-373.805572509765625', '61.1605682373046875', '5.829399585723876953', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('53086', '13137');
