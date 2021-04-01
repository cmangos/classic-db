-- q.2381 'Plundering the Plunderers'
DELETE FROM dbscripts_on_quest_start WHERE id = 2381;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2381,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2381,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.782,'move'),
(2381,500,0,0,0,0,0,0,0,2000003310,0,0,0,0,0,0,0,''),
(2381,600,0,0,0,0,0,0,0,2000003311,0,0,0,0,0,0,0,''),
(2381,2000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.089,'move'),
(2381,2001,31,7166,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2381,2010,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,2110,0,0,0,0,7166,40,7,2000003312,0,0,0,0,0,0,0,'buddy: say'),
(2381,4000,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,7010,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,9000,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,9100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 2381 WHERE entry = 2381;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003310 AND 2000003312;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003310,'Make sure to visit the Gizmotronic Apparatus to grab a lockpick and an E.C.A.C. You will definitely need both to complete your mission!',0,0,0,0,NULL),
(2000003311,'%s points you to the Gizmotronic Apparatus.',0,2,0,0,NULL),
(2000003312,'%s explodes, lighting the sky up in a brilliant fireworks display! It seems to be beckoning to you, rogue.',0,2,0,0,NULL);

DELETE FROM gossip_menu_option WHERE menu_id IN(524,20011);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(524,0,0,'Press the yellow button labeled \'Thieves\' Tools.\'',1,1,-1,0,52402,0,0,NULL,218),
(524,1,0,'Press the red button labeled \'E.C.A.C.\'',1,1,-1,0,52401,0,0,NULL,218);
UPDATE dbscripts_on_gossip SET id=52401 WHERE id=50041;
UPDATE dbscripts_on_gossip SET id=52402 WHERE id=524;
-- spells must be casted everytime Player req. (no cooldown)
UPDATE dbscripts_on_gossip SET datalong2=1 WHERE id=52401;
UPDATE dbscripts_on_gossip SET datalong2=1 WHERE id=52402;
