
DELETE FROM `creature` WHERE (`guid` IN ('53111'));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('53111', '0', '30', '1', '0', '0', '-491.384490966796875', '-176.360183715820312', '57.53523635864257812', '5.969026088714599609', '604800', '604800', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('53111', '13147');
