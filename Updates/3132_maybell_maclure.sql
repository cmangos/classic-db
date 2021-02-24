-- q.114 'The Escape' - update
DELETE FROM dbscripts_on_quest_end WHERE id = 114;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(114,2000,0,0,0,0,0,0,0,2000000167,0,0,0,0,0,0,0,'Maybell Maclure - First Say'),
(114,3000,42,0,0,0,0,0,0x04,3699,0,0,0,0,0,0,0,'Maybell Maclure - equip'),
(114,4000,1,92,0,0,0,0,0,0,0,0,0,0,0,0,0,'Maybell Maclure - Emote OneShotEatNoSheathe'),
(114,7950,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Maybell Maclure - reset equip'),
(114,8000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Maybell Maclure - Despawn');
