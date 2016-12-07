-- q.524 'Elixir of Agony'
DELETE FROM dbscripts_on_quest_end WHERE id = 524;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(524,0,9,30031,120,0,0,0,0,0,0,0,0,0,0,0,'Respawn Tainted Keg'),
(524,1,31,2284,30,0,0,0,0,0,0,0,0,0,0,0,'search for 2284'), -- in case if any other player did this quest before 
(524,3,0,0,0,2284,15892,7 | 0x10,2000001033,0,0,0,0,0,0,0,''),
(524,4,0,0,0,2284,15891,7 | 0x10,2000001034,0,0,0,0,0,0,0,''),
(524,4,3,0,700,2284,15892,7 | 0x10,0,0,0,0,-0.954329,-942.685,61.938,6.23103,''),
(524,4,3,0,700,2284,15893,7 | 0x10,0,0,0,0,0.542607,-941.692,61.9395,4.71364,''),
(524,4,1,16,0,2284,15891,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,6,1,16,0,2284,15892,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,6,1,16,0,2284,15893,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,8,1,7,0,2284,15891,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,9,1,7,0,2284,15892,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,9,1,7,0,2284,15893,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,12,9,94065,110,0,0,0,0,0,0,0,0,0,0,0,'Respawn Tainted Keg Smoke'),
(524,12,15,5,0,2284,15891,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,14,15,5,0,2284,15892,7 | 0x10,0,0,0,0,0,0,0,0,''),
(524,14,15,5,0,2284,15893,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 524 WHERE entry = 524;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001033 AND 2000001034;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001033, 'Finally they show mercy!  They\'ve given us something to drink!', 0, 0, 0, 0, NULL),
(2000001034, 'And Shindigger Stout too!  Thank the Light!  I was parched!', 0, 0, 0, 0, NULL);

-- Captured Farmer
UPDATE creature SET spawntimesecs = 90 WHERE id = 2284;
-- Tainted Keg - respawntime updated
UPDATE gameobject SET spawntimesecs = -120 WHERE guid = 30031;
-- Tainted Keg Smoke - missing added - WoTLKDB free guid reused 
DELETE FROM gameobject WHERE guid = 94065;
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(94065, 1730, 0, 0.437117, -942.794, 61.9384, -2.54818, 0, 0, 0, 0, -110, 100, 1);