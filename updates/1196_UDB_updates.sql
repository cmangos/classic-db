-- Slim's Friend
-- part of q.1249 'The Missing Diplomat' Part:11
DELETE FROM dbscripts_on_creature_death WHERE id = 4971;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4971,1,0,0,0,0,0,0,2000000602,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000602;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000602,'Whoa! This is way more than what I bargained for, you\'re on your own, Slim!',0,0,0,0,NULL);

-- Scarlet Hound - should be only spawned as Scarlet Hunters Pet
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature WHERE id = 10979;
