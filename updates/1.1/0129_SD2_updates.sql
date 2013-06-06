-- Removes Sapphiron creature as it is spawned by GO now - SD2 update z2668
-- https://github.com/scriptdev2/scriptdev2/commit/3503313f36e745182e0ff72cb7a55a2025f107f3
DELETE FROM `creature` WHERE `id`=15989;

-- Pyramid event for Zul'Farrak - SD2 update z2673
-- https://github.com/scriptdev2/scriptdev2/commit/797d2126992288afa13e9a1b0c392d0ad714ae44

-- ZF pyramid
UPDATE creature SET MovementType=2 WHERE id IN (7607, 7604, 7605, 7606, 7608);
UPDATE creature_template SET MovementType=0 WHERE entry IN (8877,8876,7275,7796);

DELETE FROM creature_movement_template WHERE entry IN (7607, 7604, 7605, 7606, 7608);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Weegli Blastfuse
(7607,1,1881.05, 1297.36, 48.419, 1000, 760701, 5.41),          -- workaround in order to pause the default wp movement. This is needed to avoid evade complications
(7607,2,1881.741, 1295.994, 48.323, 1000, 760702, 5.41),
(7607,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7607,4,1880.210, 1290.434, 45.970, 0, 0, 0),                   -- workaround in order to force move maps to do the right move path
(7607,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7607,6,1891.080, 1284.610, 43.580, 1000, 760706, 4.71),
(7607,7,1883.285, 1263.755, 41.576, 2000, 760707, 4.71),
(7607,8,1889.486, 1271.971, 41.626, 1000, 760701, 4.71),
(7607,9,1895.356, 1227.598, 9.521, 0, 0, 0),
(7607,10,1893.277, 1206.289, 8.877, 1000, 760701, 4.61),
-- blowing the door
(7607,11,1891.670, 1181.687, 8.877, 0, 0, 0),
(7607,12,1876.005, 1161.771, 9.653, 0, 0, 0),
(7607,13,1857.490, 1145.531, 15.119, 1000, 760713, 3.86),
-- run away
(7607,14,1877.107, 1148.825, 10.316, 0, 0, 0),
(7607,15,1886.306, 1137.952, 9.352, 0, 0, 0),
(7607,16,1869.976, 1092.893, 8.876, 0, 1, 0),
-- Sergeant Bly
(7604,1,1882.89, 1299.27, 48.3843, 1000, 760401, 4.83),
(7604,2,1883.395, 1297.178, 48.293, 1000, 760402, 4.83),
(7604,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7604,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,6,1886.896, 1264.077, 41.494, 1000, 760401, 4.71),
(7604,7,1886.703, 1227.956, 9.9242, 0, 0, 0),
(7604,8,1884.289, 1202.936, 8.8781, 60000, 0, 4.61),
(7604,9,1884.289, 1202.936, 8.8781, 15000, 760409, 4.61),
-- Raven
(7605,1,1886.64, 1299.11, 48.3146, 1000, 760501, 4.36),
(7605,2,1886.123, 1297.247, 48.241, 1000, 760502, 4.36),
(7605,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7605,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,6,1890.223, 1264.296, 41.420, 1000, 760501, 4.71),
(7605,7,1895.356, 1227.598, 9.521, 0, 0, 0),
(7605,8,1889.008, 1201.978, 8.878, 60000, 0, 4.54),
(7605,9,1889.008, 1201.978, 8.878, 15000, 760509, 4.54),
-- Oro Eyegouge
(7606,1,1889.62, 1298.01, 48.2581, 1000, 760601, 3.94),
(7606,2,1888.196, 1296.756, 48.203, 1000, 760602, 3.94),
(7606,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7606,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,6,1883.209, 1271.997, 41.850, 1000, 760601, 4.71),
(7606,7,1879.247, 1227.145, 9.276, 0, 0, 0),
(7606,8,1876.139, 1207.258, 8.877, 60000, 0, 4.64),
(7606,9,1876.139, 1207.258, 8.877, 15000, 760609, 4.64),
-- Murta Grimgut
(7608,1,1891.07, 1294.78, 48.2347, 1000, 760801, 3.31),
(7608,2,1889.018, 1294.428, 48.189, 1000, 760802, 3.31),
(7608,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7608,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,6,1886.345, 1271.890, 41.735, 1000, 760801, 4.71),
(7608,7,1886.703, 1227.956, 9.924, 0, 0, 0),
(7608,8,1884.856, 1208.976, 8.878, 60000, 0, 4.61),
(7608,9,1884.856, 1208.976, 8.878, 15000, 760809, 4.61);

-- texts
DELETE FROM db_script_string WHERE entry IN (2000005547,2000005548,2000005549,2000005550,2000005551,2000005552,2000005553);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005547,'Oh no! Here they come!',0,0,0,0,'Weegli Blastfuse - say event start'),
(2000005548,'Ok, here I go!',0,0,0,0,'Weegli Blastfuse - say blow door normal'),
(2000005549,'What? How dare you say that to me?!?',0,0,0,6,'Sergeant Bly - say faction change 1'),
(2000005550,'After all we\'ve been through? Well, I didn\'t like you anyway!!',0,0,0,5,'Sergeant Bly - say faction change 2'),
(2000005551,'I\'m out of here!',0,0,0,0,'Weegli Blastfuse - say blow door forced'),
(2000005552,'Who dares step into my domain! Come! Come, and be consumed!',0,6,0,0,'Ukorz Sandscalp - say after door blown'),
(2000005553,'Let\'s move forward!',0,0,0,0,'Sergeant Bly - move downstairs');

-- creature move scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760702,760402,760502,760602,760802,760706,760707,760701,760401,760501,760601,760801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, dataint, comments) VALUES
(760701, 0, 32, 1, 0, 'Weegli Blastfuse - stop movement'),
(760401, 0, 32, 1, 0, 'Sergeant Bly - stop movement'),
(760501, 0, 32, 1, 0, 'Raven - stop movement'),
(760601, 0, 32, 1, 0, 'Oro Eyegouge - stop movement'),
(760801, 0, 32, 1, 0, 'Murta Grimgut - stop movement'),
(760702, 0, 1, 71, 0, 'Sergeant Bly - emote cheer'),
(760402, 0, 1, 71, 0, 'Raven - emote cheer'),
(760502, 0, 1, 71, 0, 'Oro Eyegouge - emote cheer'),
(760602, 0, 1, 71, 0, 'Weegli Blastfuse - emote cheer'),
(760802, 0, 1, 71, 0, 'Murta Grimgut - emote cheer'),
(760702, 0, 22, 495, 0, 'Weegli Blastfuse - update faction'),
(760402, 0, 22, 495, 0, 'Sergeant Bly - update faction'),
(760502, 0, 22, 495, 0, 'Raven - update faction'),
(760602, 0, 22, 495, 0, 'Oro Eyegouge - update faction'),
(760802, 0, 22, 495, 0, 'Murta Grimgut - update faction'),
(760706, 0, 25, 1, 0, 'Weegli Blastfuse - set run on'),
(760707, 0, 0, 0, 2000005547, 'Weegli Blastfuse - say event begin');

-- despawn self
DELETE FROM dbscripts_on_spell WHERE id = 11365;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(11365, 18, 1000, 'despawn self');
-- party escape and door is blown
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760713,760409,760809,760609,760509);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(760713, 0, 15, 10772, 0, 0, 0, 0, 0, 'Weegli Blastfuse - cast Create Weegli\'s Barrel'),
(760713, 2, 13, 0, 0, 141612, 20, 1, 0, 'Weegli Blastfuse - use Weegli\'s Barrel'),
(760713, 5, 0, 6, 0, 7267, 200, 0, 2000005552, 'Ukorz Sandscalp - yell intro'),
(760409, 0, 15, 11365, 0, 0, 0, 0, 0, 'Sergeant Bly - cast Bly\'s Band\'s Escape'),
(760409, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - remove gossip flag'),
(760809, 0, 15, 11365, 0, 0, 0, 0, 0, 'Raven - cast Bly\'s Band\'s Escape'),
(760609, 0, 15, 11365, 0, 0, 0, 0, 0, 'Oro Eyegouge - cast Bly\'s Band\'s Escape'),
(760509, 0, 15, 11365, 0, 0, 0, 0, 0, 'Murta Grimgut - cast Bly\'s Band\'s Escape');

-- gossip conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 383 AND 390;
INSERT INTO conditions VALUES
(383, 33, 2, 1), -- wp >= 2
(384, 33, 8, 0), -- wp == 8
(385, 33, 8, 2), -- wp < 8
(386, 33, 10, 2), -- wp < 10
(387, -1, 383, 386), -- wp between 1 and 9
(388, -1, 383, 385), -- wp between 1 and 7
(389, 33, 1, 0), -- wp == 1
(390, 33, 10, 0); -- wp == 10

-- gossips
DELETE FROM gossip_menu WHERE entry IN (940,941);
INSERT INTO gossip_menu VALUES
-- weegli
(940, 1511, 0, 389),
(940, 1513, 0, 387),
(940, 1514, 0, 390),
-- bly
(941, 1515, 0, 389),
(941, 1516, 0, 388),
(941, 1517, 0, 384);

DELETE FROM gossip_menu_option WHERE menu_id IN (940, 941);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(940, 0, 0, 'Will you blow up that door now?', 1, 1, 94001, 390),
(941, 0, 0, 'Hey Bly!  Bilgewizzle wants his divino-matic rod back!', 1, 1, 0, 384),  -- Note: we are not sure what should be the action of this one - maybe similar to the one below
(941, 1, 0, 'That\'s it!  I\'m tired of helping you out.  It\'s time we settled things on the battlefield!', 1, 1, 94101, 384);

DELETE FROM dbscripts_on_gossip WHERE id IN (94001,94101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(94001, 0, 0, 0, 0, 0, 0, 0, 2000005548,'Weegli Blastfuse - say start door bombing'),
(94001, 0, 29, 1, 2, 0, 0, 0, 0, 'Weegli Blastfuse - remove gossip flag'),
(94001, 0, 22, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - update faction to default'),
(94001, 0, 25, 1, 0, 0, 0, 0, 0, 'Weegli Blastfuse - set run on'),
(94001, 0, 32, 0, 0, 0, 0, 0, 0,'Weegli Blastfuse - start WP movement'),
(94101, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - remove gossip flag'),
(94101, 0, 0, 0, 0, 0, 0, 0, 2000005549, 'Sergeant Bly - say start combat 1'),
(94101, 3, 0, 0, 0, 0, 0, 0, 2000005550, 'Sergeant Bly - say start combat 2'),
(94101, 6, 22, 14, 0, 0, 0, 0, 0, 'Sergeant Bly - update faction to hostile'),
(94101, 6, 22, 14, 0, 7608, 30, 4, 0, 'Murta Grimgut - update faction'),
(94101, 6, 22, 14, 0, 7606, 30, 4, 0, 'Oro Eyegouge - update faction'),
(94101, 6, 22, 14, 0, 7605, 30, 4, 0, 'Raven - update faction'),
(94101, 6, 0, 0, 0, 7607, 30, 4, 2000005551,'Weegli Blastfuse - say start door bombing'),
(94101, 6, 29, 1, 2, 7607, 30, 4, 0, 'Weegli Blastfuse - remove gossip flag'),
(94101, 6, 22, 0, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - update faction to default'),
(94101, 0, 25, 1, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - set run on'),
(94101, 6, 32, 0, 0, 7607, 30, 4, 0,'Weegli Blastfuse - start WP movement');

-- Summon event
DELETE FROM dbscripts_on_event WHERE id=2609;
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- Open cages
(2609, 0, 11, 27089, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27090, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27091, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27092, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27093, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
-- Start movement
(2609, 2, 32, 0, 0, 7604, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP movement'),
(2609, 2, 32, 0, 0, 7605, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP movement'),
(2609, 2, 32, 0, 0, 7606, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP movement'),
(2609, 2, 32, 0, 0, 7607, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP movement'),
(2609, 2, 32, 0, 0, 7608, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP movement'),
-- Spawn first troll wave; there are around 38 - 40 trolls per wave. (slave and drudge). Note: some coords are guessword
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'spawn Sandfury Drudge'),
-- Spawn second troll wave after 100 sec (slave, drudge and about 8 cretins)
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'spawn Sandfury Cretin'),
-- npcs start to move downstairs when boss spawn
(2609, 250, 25, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - set run off'),
(2609, 250, 32, 0, 0, 7604, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP movement'),
(2609, 250, 0, 0, 0, 7604, 150, 4, 2000005553, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - yell at movement start'),
(2609, 250, 32, 0, 0, 7605, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP movement'),
(2609, 250, 32, 0, 0, 7606, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP movement'),
(2609, 250, 32, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP movement'),
(2609, 250, 32, 0, 0, 7608, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP movement'),
-- boss spawns after 4 min and 10 sec after the first wave (250 sec) (acolytes and zealots + 2 bosses)
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.552, 1199.941, 8.96, 4.46, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1888.446, 1200.169, 8.96, 1.11, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1876.983, 1199.938, 8.96, 2.19, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.311, 1197.546, 8.96, 4.60, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1895.159, 1198.047, 8.96, 1.51, 'spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.941, 1200.573, 8.96, 2.60, 'spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.741, 1199.029, 8.96, 2.53, 'spawn Sandfury Zealot'),
(2609, 250, 10, 7275, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.983, 1201.655, 8.96, 1.71, 'spawn Shadowpriest Sezz\'ziz'),
(2609, 250, 10, 7796, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.324, 1201.454, 8.96, 6.05, 'spawn Nekrum Gutchewer');