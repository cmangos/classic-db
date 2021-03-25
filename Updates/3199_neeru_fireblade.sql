-- q.829 'Neeru Fireblade'
DELETE FROM dbscripts_on_quest_end WHERE id = 829;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(829,0,0,0,0,0,0,0,0x04,2000003236,0,0,0,0,0,0,0,''), -- 13:42:06.750
(829,3000,0,0,0,0,0,0,0,2000003237,0,0,0,0,0,0,0,''); -- 13:42:09.594
UPDATE quest_template SET CompleteScript = 829 WHERE entry = 829;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003236 AND 2000003237;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003236,'%s inspects the Searing Collar...',0,2,0,0,NULL),
(2000003237,'The collar is indeed infused with demonic power, $N.  This bodes ill for our people.',0,0,1,0,NULL);
