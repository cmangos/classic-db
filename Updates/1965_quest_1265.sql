-- q.1265 'The Missing Diplomat' end script

UPDATE quest_template SET CompleteScript=1265 WHERE entry=1265;
DELETE FROM dbscripts_on_quest_end WHERE id=1265;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1265, 0, 15, 7120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Proudmoore''s Defense'),
(1265, 1, 0, 0, 0, 0, 0, 0, 0, 2000006110, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM dbscript_string WHERE entry=2000006110;
INSERT INTO dbscript_string (entry, content_default, sound, type, emote, comment) VALUES
(2000006110,'Go with grace, and may the Lady''s magic protect you.',0,0,0,'Archmage Tervosh (4967)');
