-- q.1667 'Dead-tooth Jack'
DELETE FROM dbscripts_on_quest_end WHERE id IN (1667);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1667,1,0,0,0,0,0,0,0,0,2305,0,0,0,0,0,0,0,'Say'),
(1667,1,1,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
UPDATE quest_template SET CompleteScript = 1667 WHERE entry = 1667;

