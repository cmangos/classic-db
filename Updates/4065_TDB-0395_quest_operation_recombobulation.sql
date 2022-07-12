-- Operation Recombobulation end script
DELETE FROM `dbscripts_on_quest_end` WHERE id = '412';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(412,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Set Active'),
(412,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove QuestFlags'),
(412,0,3,29,2,0,0,1268,5,0,0,0,0,0,0,0,0,0,0,0,0,'Ozzie Togglevolt - Remove QuestFlags'),
(412,0,4,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Emote Talk'),
(412,0,5,0,0,0,0,0,0,0,1883,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(412,0,6,20,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Change Movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (126901, 126902, 126903);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(126901,1000,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add EmoteState'),
(126901,9000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove EmoteState'),
(126901,9000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Emote Talk'),
(126901,9000,2,0,0,0,0,0,0,0,1884,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(126902,1000,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add EmoteState'),
(126902,1000,1,0,0,0,0,0,0,0,1885,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(126902,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove EmoteState'),
(126902,4000,1,13,0,0,0,26449,15,9,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Activate Gameobject'),
(126902,5000,0,45,5568,0,0,5568,15,7,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Start Relay Script'),
(126903,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Change Movement'),
(126903,2000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add QuestFlags'),
(126903,2000,1,29,2,1,0,1268,5,0,0,0,0,0,0,0,0,0,0,0,0,'Ozzie Togglevolt - Add QuestFlags'),
(126903,2000,3,0,0,0,0,1268,15,0,1887,1888,1889,1890,0,0,0,0,0,0,0,'Ozzie Togglevolt - Say RND Text'),
(126903,4000,2,0,0,0,0,0,0,0,1891,1892,1893,1894,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say RND Text'),
(126903,4000,3,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove Active');

DELETE FROM `dbscripts_on_relay` WHERE id = 5568;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5568,1000,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Set Active'),
(5568,1000,0,0,0,0,0,0,0,0,1886,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Say Text'),
(5568,19000,0,15,7344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Cast Spell'),
(5568,20000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Set Run'),
(5568,27000,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Change Movement');

UPDATE `quest_template` SET `CompleteScript`='412' WHERE `entry`='412';

-- Razzle Sprysprocket Waypoints
SET @PATH := 1269;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,-5496.711,-455.32004,395.43747,0.81,10000,126901),
(@PATH,1,2,-5499.78,-454.44302,395.43747,1.137,6000,126902),
(@PATH,1,3,-5497.935,-455.8348,395.3923,100,1000,126903);

-- Captured Leper Gnome Waypoints
SET @PATH := 5568;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES 
(@PATH,1,1,-5492.2705,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,2,-5493.5205,-456.8594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,3,-5493.5205,-458.1094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,4,-5493.0205,-459.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,5,-5493.0205,-460.8594,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,6,-5494.5205,-461.6094,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,7,-5496.2705,-460.3594,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,8,-5496.7705,-458.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,9,-5497.2705,-457.1094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,10,-5496.0205,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,11,-5494.5205,-455.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,12,-5493.0205,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,13,-5491.5205,-457.8594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,14,-5490.2705,-458.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,15,-5487.5205,-459.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,16,-5485.2705,-460.1094,397.09845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,17,-5482.7705,-460.3594,398.09845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,18,-5481.2705,-461.1094,398.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,20,-5473.5205, -463.8594,398.34845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,21,-5469.482,-466.7084,397.67603,100,0,0,''),
(@PATH,1,22,-5455.209,-465.07974,398.12848,100,0,0,''),
(@PATH,1,23,-5445.134,-448.56778,396.6922,100,0,0,''),
(@PATH,1,24,-5446.2266,-440.6647,396.50348,100,0,0,''),
(@PATH,1,25,-5452.378,-427.95706,399.07904,100,0,0,''),
(@PATH,1,26,-5458.4814,-423.00104,399.98138,100,1000,1,'');

-- Update respawn timer to 5 seconds
UPDATE `creature` SET `spawntimesecsmin`='5', `spawntimesecsmax`='5' WHERE (`guid`='186' and id = 5568);
