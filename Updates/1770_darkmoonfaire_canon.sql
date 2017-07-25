/* Adding missing canon and NPC at mulgore */
/* Canon */
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (12764, 180452, 1, -1324.64, 82.852, 129.707, 3.50977, 0, 0, 0.983104, -0.183051, 25, 25, 100, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (12764, 5);
/* target */
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (12783, 180573, 1, -2199.4, -228.335, -14, 3.46558, 0, 0, 0.986908, -0.161286, 25, 25, 100, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (12783, 5);
/* NPC */
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52413, 15303, 1, 0, 15303, -1319.09, 79.5933, 129.62, 0.196173, 25, 25, 0, 0, 2016, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (52413, 5);
/* we need to correct ModelID of the mob used in the spell */
UPDATE `mangos`.`creature_template` SET `ModelId1`='6908' WHERE  `Entry`=15214;
/* Setting up the spells */
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180515, 0, 15, 24730, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - elwynn - tp');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180515, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - elwynn - stun');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180515, 3, 15, 24731, 0, 0, 0, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - elwynn - shoot');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180452, 3, 15, 24731, 0, 0, 0, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - mulgore - shoot');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180452, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - mulgore - stun');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (180452, 0, 15, 24831, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon faer canon - mulgore - tp');
/* Correcting the spell used by the canon and stting up a better autoclose time */
UPDATE `mangos`.`gameobject_template` SET `data10`='24743', `data3`='327680' WHERE  `entry`=180515;
UPDATE `mangos`.`gameobject_template` SET `data10`='24832', `data3`='327680' WHERE  `entry`=180452;
/* Spell Target position for the TP used */
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (24730, 0, -9571.3, -21, 64, 4.90124);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (24831, 0, -1324.64, 83.5, 130.5, 4.90124);
/* See Core */
