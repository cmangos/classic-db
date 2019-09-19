-- Kogan Forgestone 1245 and Tognus Flintfire 1241
-- add missing emotes
UPDATE `creature_movement_template` SET `waittime`=18000, `script_id`=124501 WHERE `entry` IN (1245,1241) AND `point`=2;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (124501);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`x`,`y`,`z`,`o`,`comments`) VALUES
(124501, 6, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kogan Forgestone/Tognus Flintfire - Emote 233'),
(124501, 17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kogan Forgestone/Tognus Flintfire - Emote 0');
