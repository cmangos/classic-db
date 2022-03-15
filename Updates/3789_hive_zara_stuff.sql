
DELETE FROM `creature` WHERE (`guid` = '88658');
DELETE FROM `creature` WHERE (`guid` = '88665');
DELETE FROM `creature` WHERE (`guid` = '88657');
DELETE FROM `creature` WHERE (`guid` = '88664');
DELETE FROM `creature` WHERE (`guid` = '88644');
DELETE FROM `creature` WHERE (`guid` = '88643');
DELETE FROM `creature` WHERE (`guid` = '88651');
DELETE FROM `creature` WHERE (`guid` = '88650');

DELETE FROM `pool_creature` WHERE (`guid` = '88641');
DELETE FROM `pool_creature` WHERE (`guid` = '88642');
DELETE FROM `pool_creature` WHERE (`guid` = '88643');
DELETE FROM `pool_creature` WHERE (`guid` = '88644');
DELETE FROM `pool_creature` WHERE (`guid` = '88648');
DELETE FROM `pool_creature` WHERE (`guid` = '88649');
DELETE FROM `pool_creature` WHERE (`guid` = '88650');
DELETE FROM `pool_creature` WHERE (`guid` = '88651');
DELETE FROM `pool_creature` WHERE (`guid` = '88655');
DELETE FROM `pool_creature` WHERE (`guid` = '88656');
DELETE FROM `pool_creature` WHERE (`guid` = '88657');
DELETE FROM `pool_creature` WHERE (`guid` = '88658');
DELETE FROM `pool_creature` WHERE (`guid` = '88662');
DELETE FROM `pool_creature` WHERE (`guid` = '88663');
DELETE FROM `pool_creature` WHERE (`guid` = '88664');
DELETE FROM `pool_creature` WHERE (`guid` = '88665');

DELETE FROM `pool_template` WHERE (`entry` = '25444');
DELETE FROM `pool_template` WHERE (`entry` = '25445');
DELETE FROM `pool_template` WHERE (`entry` = '25446');
DELETE FROM `pool_template` WHERE (`entry` = '25447');
DELETE FROM `pool_template` WHERE (`entry` = '25448');
DELETE FROM `pool_template` WHERE (`entry` = '25449');
DELETE FROM `pool_template` WHERE (`entry` = '25450');
DELETE FROM `pool_template` WHERE (`entry` = '25451');

DELETE FROM `creature_linking` WHERE (`guid` = '88643');
DELETE FROM `creature_linking` WHERE (`guid` = '88644');
DELETE FROM `creature_linking` WHERE (`guid` = '88650');
DELETE FROM `creature_linking` WHERE (`guid` = '88651');
DELETE FROM `creature_linking` WHERE (`guid` = '88657');
DELETE FROM `creature_linking` WHERE (`guid` = '88658');
DELETE FROM `creature_linking` WHERE (`guid` = '88664');
DELETE FROM `creature_linking` WHERE (`guid` = '88665');

UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88641');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88642');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88648');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88649');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88655');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88656');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88662');
UPDATE `creature` SET `id` = '0' WHERE (`guid` = '88663');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('88641', '15325'), ('88641', '15327'),
('88642', '15325'), ('88642', '15327'),
('88648', '15325'), ('88648', '15327'),
('88649', '15325'), ('88649', '15327'),
('88655', '15325'), ('88655', '15327'),
('88656', '15325'), ('88656', '15327'),
('88662', '15325'), ('88662', '15327'),
('88663', '15325'), ('88663', '15327');
