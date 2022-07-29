-- q.3906 'Disharmony of Flame'
DELETE FROM dbscripts_on_quest_end WHERE id = 3906;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3906,1,31,9078,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 9078'),
(3906,10,0,0,0,0,9078,100,0,4717,0,0,0,0,0,0,0,''),
(3906,4000,31,9081,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 9081'),
(3906,4100,0,0,0,0,9081,100,0,4718,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 3906 WHERE entry = 3906;
-- texts corrected
UPDATE `broadcast_text` SET `ChatTypeID` = 4 WHERE `Id` IN (4717,4718); -- whisper

