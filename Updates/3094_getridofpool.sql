
DELETE FROM `creature` WHERE (`guid` IN  ('135520', '135525', '135530', '135535', '135540', '135545'));

DELETE FROM `pool_creature` WHERE (`guid` IN ('135519', '135520', '135524', '135525', '135529', '135530', '135534', '135535', '135539', '135540', '135544', '135545'));

DELETE FROM `pool_template` WHERE (`entry` IN ('25453', '25454', '25455', '25456', '25457', '25458'));

UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135519');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135524');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135529');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135534');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135539');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '135544');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('135519', '15236'), ('135519', '15249'),
('135524', '15236'), ('135524', '15249'),
('135529', '15236'), ('135529', '15249'),
('135534', '15236'), ('135534', '15249'),
('135539', '15236'), ('135539', '15249'),
('135544', '15236'), ('135544', '15249');
