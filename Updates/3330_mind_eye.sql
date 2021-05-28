-- q.591 'The Mind's Eye'
DELETE FROM dbscripts_on_quest_end WHERE id = 591;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(591,100,0,0,0,0,0,0,0x04,2000003328,0,0,0,0,0,0,0,''),
(591,3000,15,3660,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(591,10000,0,0,0,0,0,0,0,2000003329,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 591 WHERE entry = 591;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003328 AND 2000003329;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003328,'%s presents the Mind\'s Eye and the Singing Crystals before him...',0,2,0,0,NULL),
(2000003329,'I have fashioned Yenniku\'s Soul Gem, $N...',0,0,0,0,NULL);
