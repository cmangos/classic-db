-- q.1452 'Rhapsody's Kalimdor Kocktail'
DELETE FROM dbscripts_on_quest_end WHERE id = 1452;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1452,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1452,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1452,100,0,0,0,0,0,0,0,2000003289,0,0,0,0,0,0,0,''),
(1452,4000,3,0,0,0,0,0,0x04,0,0,0,0,219.01102,-2614.0579,160.5317,100,'move'),
(1452,6000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,12000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,12500,0,0,0,0,0,0,0,2000003290,0,0,0,0,0,0,0,''),
(1452,13000,3,0,0,0,0,0,0x04,0,0,0,0,221.79509,-2613.766,160.41942,100,'move'),
(1452,15000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,15700,0,0,0,0,0,0,0,2000003291,0,0,0,0,0,0,0,''),
(1452,19000,3,0,0,0,0,0,0x04,0,0,0,0,223.71512,-2609.9314,160.19234,100,'move'),
(1452,19000,1,93,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,21900,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,22000,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1452,22100,0,0,0,0,0,0,0,2000003292,0,0,0,0,0,0,0,''),
(1452,22200,0,0,0,0,0,0,0,2000003293,0,0,0,0,0,0,0,''),
(1452,27000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1452,27100,1,93,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,29000,3,0,0,0,0,0,0x04,0,0,0,0,219.59831,-2612.208,160.44882,100,'move'),
(1452,32000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.152,'move'),
(1452,34000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,34100,0,0,0,0,0,0,0,2000003294,0,0,0,0,0,0,0,''),
(1452,38000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1452,38100,0,0,0,0,0,0,0,2000003295,0,0,0,0,0,0,0,''),
(1452,39000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,40000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1452 WHERE entry = 1452;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003289 AND 2000003295;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003289,'Time to brew up a Kalimdor Kocktail! Hiccup!',0,0,7,0,NULL),
(2000003290,'That should do it! Hiccup!',0,0,7,0,NULL),
(2000003291,'%s chugs his drink.',0,2,0,0,NULL),
(2000003292,'Hiccup!',0,0,7,0,NULL),
(2000003293,'Ok, who pushed me down? Was it you, $n? Someone turn the lights back on. Hiccup!',0,0,7,0,NULL),
(2000003294,'One more sip of the ol\' fire water and I\'ll be ready to talk. Hiccup! Cheers!',0,0,7,0,NULL),
(2000003295,'So, $n, I\'m ready to tell you what happened in the Swamp of Sorrows. Hiccup!',0,0,7,0,NULL);
