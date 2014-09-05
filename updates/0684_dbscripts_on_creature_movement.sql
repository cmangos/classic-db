
SET @SURGER := '56839';

-- ----------------------------

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=(CONCAT(@SURGER, '01'));
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(CONCAT(@SURGER, '01'), '0', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lava Surger - Run');
