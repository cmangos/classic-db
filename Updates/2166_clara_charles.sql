-- EVENT
/*
Source: allakhazam
dragonphire Posted: Sep 28th 2007 8:05am
This guy spawns whenever Clara Charles walks to the well. I've watched and he doesn't do anything but run out and then run away. Clara makes no reaction. 
*/
-- Fixed
-- Acid Script removed

-- Clara Charles
UPDATE creature_template SET MovementType = 2 WHERE Entry = 5917;
DELETE FROM creature_movement WHERE id = 79881;
DELETE FROM creature_movement_template WHERE entry = 5917;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(5917,1,-9266.12,354.4,76.6919,60000,0,2.2945),
(5917,2,-9265.77,353.952,76.692,0,0,5.37954),
(5917,3,-9259.54,346.55,75.7548,0,0,5.44709),
(5917,4,-9240.37,343.05,74.8524,0,0,0.194343),
(5917,5,-9225.87,355.227,73.4195,0,0,0.68129),
(5917,6,-9215.68,363.51,72.1801,30000,591701,1.00959),
(5917,7,-9223.65,358.136,72.7038,0,0,3.73649),
(5917,8,-9251.11,339.555,75.0156,0,0,3.73649),
(5917,9,-9259.98,347.165,75.7808,0,0,2.28743),
(5917,10,-9265.62,353.631,76.6927,0,0,2.28743),
(5917,11,-9266.12,354.4,76.6919,180000,0,2.2945);
DELETE FROM dbscripts_on_creature_movement WHERE id = 591701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(591701,1,10,583,180000,0,0,0,0x08,1,0,0,0,-9232.11,342.473,74.4399,4.31658,'summon - Defias Ambusher');

-- Defias Ambusher
UPDATE creature_template SET MovementType = 2 WHERE Entry = 583;
DELETE FROM creature_movement_template WHERE entry = 583;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(583,1,-9232.11,342.473,74.4399,0,0,0.96364),
(583,2,-9227.82,341.992,73.9688,0,0,0.0957739),
(583,3,-9221.57,347.109,73.9924,0,0,0.908661),
(583,4,-9216.57,357.231,72.8203,0,0,1.28094),
(583,5,-9216.18,362.686,72.1863,7000,0,1.72548),
(583,6,-9219.08,353.811,73.1801,0,0,4.38798),
(583,7,-9222.54,341.161,73.8594,0,0,4.54113),
(583,8,-9224.02,326.395,73.0095,0,0,4.62359),
(583,9,-9226.26,316.182,74.112,0,0,4.32122),
(583,10,-9231.02,306.332,74.406,0,0,3.84998),
(583,11,-9239.83,305.172,74.2633,2000,1,3.02924);
