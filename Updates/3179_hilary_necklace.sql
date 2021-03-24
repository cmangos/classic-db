-- q.3741 'Hilary's Necklace'
DELETE FROM dbscripts_on_quest_end WHERE id = 3741;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3741,0,31,8963,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 8963'), -- 09:08:08.000
(3741,100,0,0,0,0,8963,30,7,2000003214,0,0,0,0,0,0,0,'buddy - text'), --  09:08:11.000
(3741,3000,0,0,0,0,0,0,0,2000003215,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 3741 WHERE entry = 3741;
DELETE FROM dbscript_string WHERE entry IN (2000003214,2000003215);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003214,'Meow!',0,0,0,0,NULL), 
(2000003215,'I know how to speak kitty, and Effsee said thank you.',0,0,0,0,NULL);
-- Object
-- Glinting Mud 154357
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 154357;
