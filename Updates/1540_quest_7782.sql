-- q.7782 'The Lord of Blackrock' -- Alliance
-- https://www.youtube.com/watch?v=WAILIKadW9w
DELETE FROM dbscripts_on_quest_end WHERE id = 7782;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7782,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(7782,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(7782,6,0,0,0,0,0,0,2000001037,0,0,0,0,0,0,0,''),
(7782,14,0,0,0,0,0,0,2000001038,0,0,0,0,0,0,0,''),
(7782,17,9,40151,21600,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(7782,23,15,22888,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7782,24,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(7782,25,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 7782 WHERE entry = 7782;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001037 AND 2000001038;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001037, 'Citizens of the Alliance, the Lord of Blackrock is slain! Nefarian has been subdued by the combined might of $n and $g his:her; allies!', 0, 6, 0, 22, NULL),
(2000001038, 'Let your spirits rise! Rally around your champion, bask in $g his:her; glory! Revel in the rallying cry of the dragon slayer!', 0, 6, 0, 22, NULL);
DELETE FROM gameobject WHERE guid = 40151;
DELETE FROM game_event_gameobject WHERE guid = 40151;
DELETE FROM gameobject_battleground WHERE guid = 40151;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(40151, 179882, 0, -8925.57, 496.042, 103.767, 2.42801, 0, 0, 0.937022, 0.34927, -21600, 255, 1);
