
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`='5';
INSERT INTO `dbscripts_on_creature_movement` VALUES
('5', '0', '0', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'GENERIC - Run Mode On');

UPDATE `creature_movement` SET `script_id`='5' WHERE `id` IN ('87901', '87902', '87903', '87904', '87905', '87906') AND `point`='1';
