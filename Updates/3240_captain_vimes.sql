-- q.1220 'Captain Vimes'
DELETE FROM dbscripts_on_quest_end WHERE id = 1220;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220,0,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.1118,''),
(1220,300,0,0,0,0,0,0,0x04,2000003285,0,0,0,0,0,0,0,''),
(1220,500,9,40,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1220,3000,0,0,0,0,0,0,0x04,2000003286,0,0,0,0,0,0,0,''),
(1220,3200,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1220,6000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Face Player'),
(1220,6500,0,0,0,0,0,0,0,2000003287,0,0,0,0,0,0,0,''),
(1220,9000,15,6245,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Force Target - Salute'),
(1220,12200,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1220,16000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.1519,'');
UPDATE quest_template SET CompleteScript = 1220 WHERE entry = 1220;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003285 AND 2000003287;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003285,'%s places the scroll on the table, and reads...',0,2,0,0,NULL),
(2000003286,'By the Light!  This cursed spy was a good one!  I\'m glad he\'s dead.',0,0,7,0,NULL),
(2000003287,'Thank you for this report, $N.  It is now clear that we must tighten our patrols near Theramore.',0,0,7,0,NULL);

-- Orc Spy Report 21128
-- missing spawn added
DELETE FROM gameobject WHERE guid = 40;
DELETE FROM game_event_gameobject WHERE guid = 40;
DELETE FROM gameobject_battleground WHERE guid = 40;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(40,21128,1,-3735.523,-4554.6035,28.552734,0.4712385,0,0,0.23344517,0.97236997,-20,-20,255,1);
