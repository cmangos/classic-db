-- q.689 'A King's Tribute'
DELETE FROM dbscripts_on_quest_end WHERE id = 689;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(689,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(689,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(689,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(689,100,0,0,0,0,0,0,0,2000003216,0,0,0,0,0,0,0,''),
(689,1000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path = 1'),
(689,30000,0,0,0,0,0,0,0,2000003218,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 689 WHERE entry = 689;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003216 AND 2000003218;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003216,'I\'ll get to work right away, $n!',0,0,0,0,NULL),
(2000003217,'There you have it! The King should be quite pleased, if I do say so myself.',0,0,0,0,NULL),
(2000003218,'The King\'s guards should be along shortly to pick up the Memorial. In the meantime, come join me upstairs and let\'s finish our little chat, $n.',0,0,0,1,NULL);

-- Grand Mason Marblesten 2790
UPDATE creature_template_addon SET emote = 0 WHERE entry = 2790;
DELETE FROM creature_movement_template WHERE entry = 2790;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2790,0,1,-5033.81,-1022.23,508.876,3.86128,30000,279003),
(2790,0,2,-5031.04,-1019.72,508.876,6.07218,0,0),
(2790,0,3,-5028.21,-1020.5,508.876,5.89547,30000,279003),
(2790,0,4,-5028.75,-1022.3,508.876,4.39929,30000,279003),
(2790,0,5,-5031.95,-1021.62,508.876,3.63745,0,0),
(2790,1,1,-5032.05,-1014.75,509.04242,100,0,0),
(2790,1,2,-5030.37,-1009.28,505.265,100,0,0),
(2790,1,3,-5028.67,-1007.62,505.264,100,0,0),
(2790,1,4,-5023.85,-1009.02,502.209,100,0,0),
(2790,1,5,-5022.68,-1009.96,502.209,100,0,0),
(2790,1,6,-5027.2866,-1018.768,502.2091,4.34651,26000,279001),
(2790,1,7,-5022.68,-1009.96,502.209,100,0,0),
(2790,1,8,-5023.85,-1009.02,502.209,100,0,0),
(2790,1,9,-5028.67,-1007.62,505.264,100,0,0),
(2790,1,10,-5030.37,-1009.28,505.265,100,0,0),
(2790,1,11,-5032.05,-1014.75,509.04242,100,20,279002);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (279001,279002,279003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(279001,0,13,0,0,0,139852,20,1,0,0,0,0,0,0,0,0,'activate object'),
(279001,2000,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,7950,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,8000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,8200,0,0,0,0,0,0,0x04,2000003217,0,0,0,0,0,0,0,''),
(279001,10000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.26,''),
(279001,16000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279002,0,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path = 0'),
(279002,10,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(279002,15,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(279003,2000,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279003,28000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
