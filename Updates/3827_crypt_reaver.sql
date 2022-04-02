
DELETE FROM `pool_creature` WHERE (`guid` = '88541');
DELETE FROM `pool_creature` WHERE (`guid` = '88542');
DELETE FROM `pool_creature` WHERE (`guid` = '88543');
DELETE FROM `pool_creature` WHERE (`guid` = '88544');

DELETE FROM `pool_template` WHERE (`entry` = '47301');
DELETE FROM `pool_template` WHERE (`entry` = '47300');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
('5330011', 'Naxxramas - Crypt Reaver (1) Standing 000', '1', '1', '0', '0'),
('5330012', 'Naxxramas - Crypt Reaver (1) Standing 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
('5330011', '88541', '0'),
('5330011', '88542', '1'),
('5330012', '88543', '0'),
('5330012', '88544', '1');

UPDATE `creature` SET `id` = '0' WHERE (`guid` IN ('88541', '88542', '88543', '88544'));

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('88541', '15978'),
('88542', '15978'),
('88543', '15978'),
('88544', '15978');
