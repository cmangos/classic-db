-- q.1371 'Gizmo for Warug'
DELETE FROM dbscripts_on_quest_end WHERE id = 1371;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1371,1,31,5723,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 5723 - only one available'),
(1371,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1371,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.4279,''),
(1371,300,0,0,0,0,0,0,0,2000003254,0,0,0,0,0,0,0,''),
(1371,700,10,5723,20000,0,0,0,0x08,0,132,0,0,-1587.3715,857.94293,112.21583,2.042,'summon: Warug\'s Target Dummy'), -- has faction 132
(1371,10000,0,0,0,0,0,0,0,2000003255,0,0,0,0,0,0,0,''),
(1371,14000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1371,15000,15,8329,0,0,5723,30,7,0,0,0,0,0,0,0,0,''),
(1371,15300,0,0,0,0,0,0,0,2000003256,0,0,0,0,0,0,0,''),
(1371,16000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.8726,''),
(1371,16500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1371 WHERE entry = 1371;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003254 AND 2000003256;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003254,'Hah!  Let us see the wooden human wave!',0,0,0,0,NULL),
(2000003255,'%s laughs.',0,2,0,11,NULL),
(2000003256,'Hahah!  That was funny!  Funny wooden human!',0,0,0,0,NULL);
DELETE FROM creature_template_addon WHERE entry = 5723;
INSERT INTO creature_template_addon VALUES
(5723,0,0,1,0,0,0,'4048');
