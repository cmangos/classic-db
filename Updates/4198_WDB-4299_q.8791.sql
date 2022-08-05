-- q.8791 'The Fall of Ossirian'
DELETE FROM dbscripts_on_quest_end WHERE id IN (8791);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8791,1,1,22,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8791,100,0,0,0,0,0,0,0,11355,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8791 WHERE entry = 8791;
UPDATE broadcast_text SET ChatTypeID = 1 WHERE `Id` = 11355;

