-- q.7784 'The Lord of Blackrock' - Horde
DELETE FROM dbscripts_on_quest_end WHERE id = 7784;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7784,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(7784,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(7784,3,3,0,0,0,0,0,0,0,0,0,1544,-4425.87,10.9056,3.323,''),
(7784,17,3,0,0,0,0,0,0,0,0,0,0,0,0,0.6367,''),
(7784,20,0,0,0,0,0,0,2000001035,0,0,0,0,0,0,0,''),
(7784,37,0,0,0,0,0,0,2000001036,0,0,0,0,0,0,0,''),
(7784,40,9,40150,21600,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(7784,45,13,0,0,179881,100,1,0,0,0,0,0,0,0,0,'activate gobject'),
(7784,50,15,22888,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7784,60,3,0,0,0,0,0,0,0,0,0,1568,-4405.87,8.13371,0.3434,''),
(7784,75,3,0,0,0,0,0,0,0,0,0,0,0,0,3.31613,''),
(7784,76,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(7784,77,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 7784 WHERE entry = 7784;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001035 AND 2000001036;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001035, 'NEFARIAN IS SLAIN! People of Orgrimmar, bow down before the might of $n and $g his:her; allies for they have laid a blow against the Black Dragonflight that is sure to stir the Aspects from their malaise! This defeat shall surely be felt by the father of the Black Flight: Deathwing reels in pain and anguish this day!', 0, 6, 0, 22, NULL),
(2000001036, 'Be lifted by $n\'s accomplishment! Revel in $g his:her; rallying cry!', 0, 6, 0, 22, NULL);
DELETE FROM gameobject WHERE guid = 40150;
DELETE FROM game_event_gameobject WHERE guid = 40150;
DELETE FROM gameobject_battleground WHERE guid = 40150;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(40150, 179881, 1, 1540.28, -4422.19, 7.0051, 5.22833, 0, 0, 0.503313, -0.864104, -21600, 255, 1);
