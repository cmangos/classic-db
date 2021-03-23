
UPDATE `creature` SET `position_x` = '-254.435760498046875', `position_y` = '-5094.49462890625', `position_z` = '41.23545074462890625', `orientation` = '6.230825424194335937' WHERE (`guid` = '51807');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('51857', '5809', '1', '0', '0', '-272.182525634765625', '-5131.390625', '24.23000526428222656', '1.029744267463684082', '18000', '28800', '0', '0', '176', '0', '0', '0');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1256', '1', 'Watch Commander Zalaphil (5809)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5809', '1256', '0', 'Watch Commander Zalaphil (5809)');
