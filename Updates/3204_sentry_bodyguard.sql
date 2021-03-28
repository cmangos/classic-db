
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('39486', '7135'), ('39486', '7136'),
('39716', '7135'), ('39716', '7136'),
('40176', '7135'), ('40176', '7136'),
('40370', '7135'), ('40370', '7136');

UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '39486');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '39716');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '40176');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '40370');

UPDATE `creature_template` SET `SpeedWalk` = '1' WHERE (`Entry` = '7135');
