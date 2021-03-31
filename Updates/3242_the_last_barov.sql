-- q.5344 'The Last Barov'
DELETE FROM dbscripts_on_quest_start WHERE id = 5344;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5344,0,0,0,0,0,0,0,0x04,2000003288,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 5344 WHERE entry = 5344;
DELETE FROM dbscript_string WHERE entry = 2000003288;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003288,'The fortune is mine, Alexi! Your end comes soon!',0,0,0,22,NULL);
