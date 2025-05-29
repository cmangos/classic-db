-- Generic
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 200 AND 202;
INSERT INTO creature_spawn_data_template (entry, SpawnFlags, RelayId, name) VALUES
(200,1,30631,'GENERIC - SPAWN FLAG RUN, RelayId 30631 (path1 type3)'),
(201,1,30632,'GENERIC - SPAWN FLAG RUN, RelayId 30632 (path2 type3)'),
(202,1,30633,'GENERIC - SPAWN FLAG RUN, RelayId 30633 (path3 type3)');

DELETE FROM dbscript_random_templates WHERE `id` = 20378;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20378,1,30000,0,'Generic Talk #3 - emote 1'),
(20378,1,30001,0,'Generic Talk #3 - emote 5'),
(20378,1,30002,0,'Generic Talk #3 - emote 6'),
(20378,1,30025,0,'Generic Talk #3 - emote 25'),
(20378,1,30005,0,'Generic Talk #3 - emote 273'),
(20378,1,30006,0,'Generic Talk #3 - emote 274');

DELETE FROM dbscripts_on_relay WHERE id IN (30025,30631,30632,30633);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30025,0,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 25'),
(30631,1,20,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path1'),
(30632,1,20,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path2'),
(30633,1,20,3,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path3');

DELETE FROM `dbscript_random_templates` WHERE `id` = 20053;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20053, 1, 30000, 0, '24081 - Random Scripts'),
(20053, 1, 30001, 0, '24081 - Random Scripts'),
(20053, 1, 30002, 0, '24081 - Random Scripts'),
(20053, 1, 30003, 0, '24081 - Random Scripts'),
(20053, 1, 30004, 0, '24081 - Random Scripts'),
(20053, 1, 30005, 0, '24081 - Random Scripts'),
(20053, 1, 30006, 0, '24081 - Random Scripts');

-- Generic Talk #1
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 1' WHERE `id` = 20053 AND target_id = 30000;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 5' WHERE `id` = 20053 AND target_id = 30001;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 6' WHERE `id` = 20053 AND target_id = 30002;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 11' WHERE `id` = 20053 AND target_id = 30003;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 18' WHERE `id` = 20053 AND target_id = 30004;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 273' WHERE `id` = 20053 AND target_id = 30005;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 274' WHERE `id` = 20053 AND target_id = 30006;

DELETE FROM `dbscript_random_templates` WHERE `id` = 20055;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20055, 1, 30000, 0, '23674 - Random Scripts'),
(20055, 1, 30001, 0, '23674 - Random Scripts'),
(20055, 1, 30002, 0, '23674 - Random Scripts'),
(20055, 1, 30005, 0, '23674 - Random Scripts'),
(20055, 1, 30006, 0, '23674 - Random Scripts');

-- Generic Talk #2
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 1' WHERE `id` = 20055 AND target_id = 30000;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 5' WHERE `id` = 20055 AND target_id = 30001;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 6' WHERE `id` = 20055 AND target_id = 30002;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 11' WHERE `id` = 20055 AND target_id = 30003;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 18' WHERE `id` = 20055 AND target_id = 30004;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 273' WHERE `id` = 20055 AND target_id = 30005;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 274' WHERE `id` = 20055 AND target_id = 30006;

