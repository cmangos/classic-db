DELETE FROM dbscript_random_templates WHERE id=900;
INSERT INTO dbscript_random_templates VALUES
(900, 0, -23, 0, 'Hargin Mundar 1476 - Random OOC Texts'),
(900, 0, -24, 0, 'Hargin Mundar 1476 - Random OOC Texts'),
(900, 0, -25, 0, 'Hargin Mundar 1476 - Random OOC Texts'),
(900, 0, -26, 0, 'Hargin Mundar 1476 - Random OOC Texts');

UPDATE `creature` SET `MovementType`=2 WHERE `id`=1476;
DELETE FROM `creature_movement_template` WHERE `entry`=1476;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(1476, 0, 1, -3816.047, -829.3711, 9.467402, 100, 0, 0),
(1476, 0, 2, -3822.219, -828.9729, 10.09057, 100, 0, 0),
(1476, 0, 3, -3826.953, -833.8444, 10.09057, 100, 200000, 0),
(1476, 0, 4, -3822.219, -828.9729, 10.09057, 100, 0, 0),
(1476, 0, 5, -3816.047, -829.3711, 9.467402, 100, 0, 0),
(1476, 0, 6, -3816.05, -831.4018, 9.467402, 100, 0, 0),
(1476, 0, 7, -3816.299, -830.7716, 9.467402, 100, 100000, 0),
(1476, 0, 8, -3814.731, -820.4886, 9.467402, 100, 0, 0),
(1476, 0, 9, -3814.968, -821.9145, 9.467402, 100, 200000, 0),
(1476, 0, 10, -3817.188, -829.3235, 9.467402, 100, 0, 0),
(1476, 0, 11, -3810.635, -829.2547, 10.094112, 100, 0, 0),
(1476, 0, 12, -3804.453, -828.7764, 10.094112, 100, 0, 0),
(1476, 0, 13, -3804.221, -835.3276, 10.079483, 100, 0, 0),
(1476, 0, 14, -3795.113, -835.7486, 10.077483, 100, 10000, 147601),
(1476, 0, 15, -3804.221, -835.3276, 10.079483, 100, 0, 0),
(1476, 0, 16, -3804.453, -828.7764, 10.094112, 100, 0, 0),
(1476, 0, 17, -3810.635, -829.2547, 10.094112, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=147601;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(147601, 2, 0, 0, 0, 0, 0, 0, 0, 2000001617, 0, 0, 0, 0, 0, 0, 0, 'Hargin Mundar - Say Text');

DELETE FROM `dbscript_string` WHERE `entry`=2000001617;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000001617, 'Huuup...Huuup...Bleeeeehh!', 0, 0, 0, 0, 'Hargin Mundar');

