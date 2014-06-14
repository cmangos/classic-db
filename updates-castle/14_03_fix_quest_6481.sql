-- Fixed quest 6481 ('Enchanted Resonite Crystal' summoned Goggeroc 2 times)
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 178145;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(178145, 0, 10, 11920, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
