-- q.5342 'The Last Barov'
-- Script was wrongly set in prev quest
DELETE FROM dbscripts_on_quest_end WHERE id = 5341;
DELETE FROM dbscripts_on_quest_start WHERE id = 5342;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5342,0,0,0,0,0,0,0,0,2000000130,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 5342 WHERE entry = 5342;
UPDATE quest_template SET CompleteScript = 0 WHERE entry = 5341;
UPDATE dbscript_string SET emote = 22 WHERE entry = 2000000130;
