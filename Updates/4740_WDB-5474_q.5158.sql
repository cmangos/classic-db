-- q.5158 'Seeking Spiritual Aid'
-- reconstructed
DELETE FROM creature_movement_template WHERE Entry = 5901;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(5901,1,-1345.1189,-4047.6067,6.0486555,4.34587,100,590101),
(5901,2,-1343.4883,-4051.8325,5.7608337,100,0,0),
(5901,3,-1342.7383,-4054.5825,4.2608337,100,0,0),
(5901,4,-1343.2383,-4059.3325,1.510834,100,0,0),
(5901,5,-1343.7383,-4062.3325,0.26083398,100,0,0),
(5901,6,-1343.9883,-4064.3325,0.010833979,100,0,0),
(5901,7,-1344.1324,-4065.494,-0.6527605,100,28000,590102),
(5901,8,-1342.6777,-4054.6719,3.7815657,100,0,0),
(5901,9,-1343.9987,-4047.967,5.870921,100,0,0),
(5901,10,-1345.1189,-4047.6067,6.0486555,100,0,0),
(5901,11,-1345.1189,-4047.6067,6.0486555,4.34587,100,590103);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 590101 AND 590103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(590101,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(590101,2,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags Removed'),
(590102,100,0,0,0,0,0,0,0x04,6586,0,0,0,0,0,0,0,'Say'),
(590102,200,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_KNEEL'), -- 16:15:50.891
(590102,9000,9,50658,10,0,0,0,0,0,0,0,0,0,0,0,0,'Respawn object'),
(590102,11000,10,11256,14000,0,0,0x08,0,0,0,0,0,-1344.7212,-4071.927,-0.8289547,1.5009,'Islen summon'), -- 16:16:01.438 - 16:16:15.610
(590102,14000,0,0,0,0,11256,20,7,6607,0,0,0,0,0,0,0,'buddy say'),
(590102,18000,15,18113,0,0,11256,20,7,0,0,0,0,0,0,0,0,'buddy cast 18113'),
(590102,25000,0,0,0,0,0,0,0x04,6599,0,0,0,0,0,0,0,'Say'), -- thanks -- 16:16:15.344
(590102,27000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_STAND'),
(590103,1,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags added'),
(590103,2,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(590103,3,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Manifestation of Water 11256
UPDATE creature_template SET Faction = 35, UnitClass = 2, UnitFlags = 832 WHERE Entry IN (11256);

-- Water Manifestation Effect 106528
DELETE FROM `gameobject` WHERE `guid` = 55795; -- align with wotlk
DELETE FROM `game_event_gameobject` WHERE `guid` = 50658; -- remove bad data due to overwrite below
REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES (44062, 1),(44062, 8); -- replaces 50658 for both events
DELETE FROM `gameobject` WHERE `guid` = 50658;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(50658, 106528, 1, 1, -1344.84997558593750000000, -4072.30004882812500000000, -0.92216300964355470000, -1.81514000892639160000, 0.00000000000000000000, 0.00000000000000000000, -0.78801000118255620000, 0.61566197872161870000, -10, -10);
