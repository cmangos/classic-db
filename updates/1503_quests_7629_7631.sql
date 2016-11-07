-- ########################################
-- # Quest: Dreadsteed of Xoroth (7631)
-- ########################################

-- Cleanup for portals and Lord spawns

DELETE FROM gameobject WHERE guid=99783;

-- Spawn correct portals
DELETE FROM gameobject WHERE guid IN (22269,22271,22272,22273,22286,22288,40145,89081,89082,89631,89632,89634,89635,92635,92636,92637,92638,93939,93940);
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(22269, 179681, 429,-39.3283, 812.609, -29.5358, -2.87979, 0, 0, 0, 0, -900, 0, 0),
(22271, 179681, 429,-82.9582, 866.112, -28.6244, -0.872664, 0, 0, 0, 0, -900, 0, 0),
(22272, 179681, 429,-15.0206, 878.409, -28.5044, -1.91986 , 0, 0, 0, 0, -900, 0, 0),
(22273, 179681, 429,-97.5622, 848.091, -28.6988, -0.523598, 0, 0, 0, 0, -900, 0, 0),
(22286, 179681, 429,-98.1468, 778.083, -28.3443, 0.541051, 0, 0, 0, 0, -900, 0, 0),
(22288, 179681, 429,-105.782, 826.821, -28.5458, -0.191985, 0, 0, 0, 0, -900, 0, 0),
(40145, 179681, 429,20.9339 , 848.326, -28.517, -2.61799, 0, 0, 0, 0, -900, 0, 0),
(89081, 179681, 429,-14.4863, 747.953, -28.8277, 1.91986, 0, 0, 0, 0, -900, 0, 0),
(89082, 179681, 429,5.8428  , 865.497, -28.7417, -2.28638, 0, 0, 0, 0, -900, 0, 0),
(89631, 179681, 429,-62.4677, 878.058, -28.8368, -1.20428, 0, 0, 0, 0, -900, 0, 0),
(89632, 179681, 429,29.2777 , 824.413, -28.4003, -2.9845, 0, 0, 0, 0, -900, 0, 0),
(89634, 179681, 429,-37.7177, 743.281, -28.7158, 1.5708, 0, 0, 0, 0, -900, 0, 0),
(89635, 179681, 429,-61.2501, 747.296, -28.4663, 1.23918, 0, 0, 0, 0, -900, 0, 0),
(92635, 179681, 429,21.162  , 778.232, -28.4788, 2.60054, 0, 0, 0, 0, -900, 0, 0),
(92636, 179681, 429,29.5943 , 801.049, -28.4482, 2.96704, 0, 0, 0, 0, -900, 0, 0),
(92637, 179681, 429,5.62079 , 759.756, -28.3198, 2.25147, 0, 0, 0, 0, -900, 0, 0),
(92638, 179681, 429,-106.235, 800.934, -28.6321, 0.174532, 0, 0, 0, 0, -900, 0, 0),
(93939, 179681, 429,-39.7076, 882.205, -28.8242, -1.53589, 0, 0, 0, 0, -900, 0, 0),
(93940, 179681, 429,-82.6964, 759.662, -28.6398, 0.890117, 0, 0, 0, 0, -900, 0, 0);

-- Fix Warlock Ritual Symbols and Warlock Mount Ritual Circle
DELETE FROM gameobject WHERE guid IN (99782,99779,99776,99781,99778,99775,99780,99777,99774,99784);
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(99782, 179669, 429, -57.1792, 812.96, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99779, 179669, 429, -28.8647, 828.021, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99776, 179669, 429, -25.8848, 798.921, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99781, 179670, 429, -50.8857, 826.376, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99778, 179670, 429, -21.8534, 820.043, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99775, 179670, 429, -37.3899, 793.225, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99780, 179671, 429, -38.9241, 831.486, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99777, 179671, 429, -20.693, 807.962, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99774, 179671, 429, -53.5593, 801.216, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99784, 179668, 429, -38.5911, 812.632, -29.5358, 0.401425, 0, 0, 0, 0, -900, 0, 1);

-- Bell of Dethmoora
UPDATE gameobject SET position_x=-26.4932, position_y=814.841, position_z=-29.5358, orientation=0.59341 WHERE id=179674;
-- Doomsday Candle
UPDATE gameobject SET position_x=-43.4643, position_y=800.206, position_z=-29.5358, orientation=0.698132 WHERE id=179673;
-- Wheel of the Black March
UPDATE gameobject SET position_x=-46.7888, position_y=822.351, position_z=-29.5358, orientation=-0.855211 WHERE id=179672;
-- Fix rotations
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=SIN(orientation*0.5), rotation3=COS(orientation*0.5) WHERE id IN (179674,179673,179672);

-- Change Warlock Mount Ritual Circle to type door so animation works properly
UPDATE gameobject_template SET size=3.6 WHERE entry=179668;
-- Warlock Mount Quest Symbols should be larger
UPDATE gameobject_template SET size=1.8 WHERE entry IN (179669, 179670, 179671);

-- Fix factions and flags (needs confirmation)
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35, UnitFlags=768 WHERE entry=14500; 
UPDATE creature_template SET UnitFlags=33554432, ModelId1=11686 WHERE entry=14501; -- Guesswork;
UPDATE creature_template SET UnitFlags=768 WHERE entry=14504;

-- texts
DELETE FROM db_script_string WHERE entry IN (2000005024, 2000005038, 2000005050, 2000005350, 2000005351);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005024, 'Ah, freedom! Although brief, so sweet it is...', 0, 1, 0, 0, 'J\'eevee yell on spawn'),
(2000005038, 'Well duties call, yes? First, the bell... to give you vigor!', 0, 0, 0, 0, 'J\'eevee say 1'),
(2000005050, 'Next, I\'ll place the wheel... to protect you from harm.', 0, 0, 0, 0, 'J\'eevee say 2'),
(2000005350, 'And finally the candle... to burn those who would thwart you!', 0, 0, 0, 0, 'J\'eevee say 3'),
(2000005351, '$N, my duties are complete and I shall now take my leave. Luck to you my fellow, and remember to keep the Bell, Wheel and Candle working!', 0, 0, 0, 0, 'J\'eevee say 4');

DELETE FROM creature_movement_template WHERE entry IN (14500);
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- Scholomance movement
(14500, 1, 38.784, 160.639, 83.545, 0, 0, 0), 
(14500, 2, 36.804, 160.705, 83.545, 3000, 1450002, 3.249),
(14500, 3, 39.287, 160.044, 83.545, 0, 0, 0), 
(14500, 4, 41.666, 154.591, 83.545, 0, 0, 0), 
(14500, 5, 45.255, 155.014, 83.545, 0, 0, 0), 
(14500, 6, 44.930, 161.186, 83.545, 0, 0, 0), 
(14500, 7, 44.347, 161.120, 83.545, 4000, 1450007, 2.707),
(14500, 8, 46.758, 157.877, 83.545, 0, 0, 0),
(14500, 9, 44.640, 154.405, 83.545, 0, 0, 0), 
(14500, 10, 33.498, 156.046, 83.545, 0, 0, 0), 
(14500, 11, 28.269, 160.792, 83.545, 2000, 0, 1.541),
(14500, 12, 33.294, 160.895, 83.545, 60000, 1450012, 0.040),
-- Dire Maul movement
(14500, 13, -37.9392, 812.805, -29.4525, 3000, 1450013, 4.81711),
(14500, 14, -27.001, 813.741, -29.5358, 3000, 1450014, 0.0039),
(14500, 15, -45.8222, 821.969, -29.5358, 3000, 1450015, 2.3954),
(14500, 16, -43.6275, 802.103, -29.5358, 3000, 1450016, 4.9165),
(14500, 17, -38.7195, 812.015, -29.5358, 60000, 1450017, 0);

-- Main event script (safety check in SD2)
DELETE FROM dbscripts_on_event WHERE id=8420;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(8420, 0, 31, 14501, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'terminate script if Warlock Mount Ritual Mob Type 3 is not found'),
(8420, 23, 0, 0, 0, 14500, 50, 3, 2000005351, 0, 0, 0, 0, 'J\'eevee say 4'),
(8420, 23, 36, 0, 0, 14500, 50, 3, 0, 0, 0, 0, 0, 'J\'eevee face player'),
-- Spawn portals
(8420, 30, 9, 99784, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Warlock Mount Ritual Circle'),
(8420, 30, 9, 22271, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 22272, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 22273, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 22286, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 22288, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 40145, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89081, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89082, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89631, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89632, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89634, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 89635, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 92635, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 92636, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 92637, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 92638, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 93939, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
(8420, 30, 9, 93940, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal'),
-- respawn symbols
(8420, 70, 9, 99782, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn first Symbol'),
(8420, 110, 9, 99781, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn second Symbol'),
(8420, 150, 9, 99780, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn third Symbol'),
(8420, 190, 9, 99779, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn fourth Symbol'),
(8420, 230, 9, 99778, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn fifth Symbol'),
(8420, 270, 9, 99777, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn sixth Symbol'),
(8420, 310, 9, 99776, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn seventh Symbol'),
(8420, 350, 9, 99775, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn eight Symbol'),
(8420, 390, 9, 99774, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn nineth Symbol'),
-- spawn first wave
(8420, 31, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 31, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 31, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 31, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 31, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 40, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 40, 10, 14482, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Xorothian Imp'),
(8420, 40, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 40, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 40, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 50, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 50, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 50, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 50, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 50, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 60, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 60, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 60, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 60, 10, 14482, 0, 0, 0, 0, 0, -14.4863, 747.953, -27.1958, 1.91986, 'spawn Xorothian Imp'),
(8420, 60, 10, 14483, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.5708, 'spawn Dread Guard'),
-- second wave
(8420, 70, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 70, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 70, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 70, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 70, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 80, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 80, 10, 14482, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Xorothian Imp'),
(8420, 80, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 80, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 80, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 90, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 90, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 90, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 90, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 90, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 100, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 100, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 100, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 100, 10, 14482, 0, 0, 0, 0, 0, -14.4863, 747.953, -27.1958, 1.91986, 'spawn Xorothian Imp'),
(8420, 100, 10, 14483, 0, 0, 0, 0, 0,  21.162, 778.232, -27.2357, 2.60054, 'spawn Dread Guard'),
-- third wave
(8420, 110, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 110, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 110, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 110, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 110, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 120, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 120, 10, 14483, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Dread Guard'),
(8420, 120, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 120, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 120, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 130, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 130, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 130, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 130, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 130, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 140, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 140, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 140, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 140, 10, 14483, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Dread Guard'),
(8420, 140, 10, 14482, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Xorothian Imp'),
-- forth wave
(8420, 150, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 150, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 150, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 150, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 150, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 160, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 160, 10, 14483, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Dread Guard'),
(8420, 160, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 160, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 160, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 170, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 170, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 170, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 170, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 170, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 180, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 180, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 180, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 180, 10, 14483, 0, 0, 0, 0, 0,  5.8428, 865.497, -27.2486, 3.9968, 'spawn Dread Guard'),
(8420, 180, 10, 14482, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Xorothian Imp'),
-- fifth wave
(8420, 190, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 190, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 190, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 190, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 190, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 200, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 200, 10, 14483, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.5708, 'spawn Dread Guard'),
(8420, 200, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 200, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 200, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 210, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 210, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 210, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 210, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 210, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 220, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 220, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 220, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 220, 10, 14483, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Dread Guard'),
(8420, 220, 10, 14482, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Xorothian Imp'),
-- sixth wave
(8420, 230, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 230, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 230, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 230, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 230, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 240, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 240, 10, 14483, 0, 0, 0, 0, 0, -62.4677, 878.058, -27.1771, 5.07891, 'spawn Dread Guard'),
(8420, 240, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 240, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 240, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 250, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 250, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 250, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 250, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 250, 10, 14483, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Dread Guard'),
(8420, 260, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 260, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 260, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 260, 10, 14483, 0, 0, 0, 0, 0, -97.5622, 848.091, -27.3099, 5.75959, 'spawn Dread Guard'),
(8420, 260, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
-- seventh wave
(8420, 270, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 270, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 270, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 270, 10, 14483, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Dread Guard'),
(8420, 270, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 280, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 280, 10, 14483, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Dread Guard'),
(8420, 280, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 280, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 280, 10, 14482, 0, 0, 0, 0, 0, -37.7177, 743.281, -27.0769, 1.57088, 'spawn Xorothian Imp'),
(8420, 290, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 290, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 290, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 290, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 290, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 300, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 300, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 300, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 300, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 300, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
-- eight wave
(8420, 310, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 310, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 310, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 310, 10, 14483, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Dread Guard'),
(8420, 310, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 320, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 320, 10, 14483, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Dread Guard'),
(8420, 320, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 320, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 320, 10, 14483, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Dread Guard'),
(8420, 330, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 330, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 330, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 330, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 330, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 340, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 340, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 340, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 340, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 340, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
-- nineth wave
(8420, 350, 10, 14482, 0, 0, 0, 0, 0,  5.84280, 865.497, -27.2486, 3.9968, 'spawn Xorothian Imp'),
(8420, 350, 10, 14482, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Xorothian Imp'),
(8420, 350, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 350, 10, 14483, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Dread Guard'),
(8420, 350, 10, 14482, 0, 0, 0, 0, 0, -82.6964, 759.662, -27.1815, 0.890118, 'spawn Xorothian Imp'),
(8420, 360, 10, 14482, 0, 0, 0, 0, 0, -39.7076, 882.205, -27.1575, 4.7473, 'spawn Xorothian Imp'),
(8420, 360, 10, 14483, 0, 0, 0, 0, 0, -106.235, 800.934, -27.3196, 0.174533, 'spawn Dread Guard'),
(8420, 360, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 360, 10, 14482, 0, 0, 0, 0, 0, -61.2501, 747.296, -27.1260, 1.23918, 'spawn Xorothian Imp'),
(8420, 360, 10, 14483, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Dread Guard'),
(8420, 370, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp'),
(8420, 370, 10, 14482, 0, 0, 0, 0, 0,  29.5943, 801.049, -27.1773, 2.96706, 'spawn Xorothian Imp'),
(8420, 370, 10, 14482, 0, 0, 0, 0, 0,  20.9339, 848.326, -27.1628, 3.66519, 'spawn Xorothian Imp'),
(8420, 370, 10, 14482, 0, 0, 0, 0, 0,  5.62079, 759.756, -27.1948, 2.25147, 'spawn Xorothian Imp'),
(8420, 370, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 380, 10, 14482, 0, 0, 0, 0, 0,  21.1620, 778.232, -27.2357, 2.60054, 'spawn Xorothian Imp'),
(8420, 380, 10, 14482, 0, 0, 0, 0, 0, -98.1468, 778.083, -27.2540, 0.541052, 'spawn Xorothian Imp'),
(8420, 380, 10, 14482, 0, 0, 0, 0, 0, -82.9582, 866.112, -27.2077, 5.41052, 'spawn Xorothian Imp'),
(8420, 380, 10, 14483, 0, 0, 0, 0, 0, -105.782, 826.821, -27.2819, 6.0912, 'spawn Dread Guard'),
(8420, 380, 10, 14482, 0, 0, 0, 0, 0, -15.0206, 878.409, -27.0947, 4.36332, 'spawn Xorothian Imp');


-- Intro script for J'eevees
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1450013,1450014,1450015,1450016,1450017);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(1450013, 0, 0, 0, 0, 0, 0, 0, 2000005024,'J\'eevee yell on spawn'),
(1450013, 0, 25, 1, 0, 0, 0, 0, 0, 'J\'eevee set run on'),
(1450013, 3, 0, 0, 0, 0, 0, 0, 2000005038, 'J\'eevee say 1'),
(1450014, 0, 15, 23140, 0, 0, 0, 0, 0, 'J\'eevee cast summon object'),
(1450014, 3, 0, 0, 0, 0, 0, 0, 2000005050, 'J\'eevee say 2'),
(1450014, 3, 9, 99787, 3600, 0, 0, 0, 0, 'J\'eevee Respawn Bell of Dethmoora'),
(1450015, 0, 15, 23140, 0, 0, 0, 0, 0, 'J\'eevee cast summon object'),
(1450015, 3, 0, 0, 0, 0, 0, 0, 2000005350, 'J\'eevee say 3'),
(1450015, 3, 9, 99786, 3600, 0, 0, 0, 0, 'J\'eevee Respawn Wheel of the Black March'),
(1450016, 0, 15, 23140, 0, 0, 0, 0, 0, 'J\'eevee cast summon object'),
(1450016, 3, 9, 99785, 3600, 0, 0, 0, 0, 'J\'eevee Respawn Doomsday Candle'),
(1450017, 4, 15, 12980, 0, 0, 0, 0, 0, 'J\'eevee cast teleport'),
(1450017, 6, 18, 0, 0, 0, 0, 0, 0, 'J\'eevee despawn');

-- Final Steed script (safety handled in SD2)
DELETE FROM dbscripts_on_event WHERE id=8428;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
(8428, 0, 9, 22269, 10, 0, 0, 0, 0, 0, 0, 0, 'Respawn Dreadsteed Portal for 10 sec'),
(8428, 10, 10, 14502, 0, 0, 0, 0, -32.2687, 808.172, -29.4525, -0.718391, 'spawn Xorothian Dreadsteed');

-- Link imps and guards to the controller
DELETE FROM creature_linking_template WHERE entry IN (14482,14483);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(14482, 429, 14501, 8192, 0),
(14483, 429, 14501, 8192, 0);

-- Allow attacking Dread Guards and Xorothian Imps to run down stairs
UPDATE creature_template SET MovementType=2 WHERE entry IN (14483, 14482);

-- Attackers should run to the middle after spawning
DELETE FROM creature_movement_template WHERE entry IN (14483, 14482);
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(14483, 0, -38.48, 812.93, -29.535, 0, 0, 0),
(14482, 0, -38.48, 812.93, -29.535, 0, 0, 0);

-- Helper spells script
-- Main event script (safety check in SD2)
DELETE FROM dbscripts_on_go_template_use WHERE id IN (179674, 179673, 179672);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, comments) VALUES
(179674, 0, 15, 23117, 0, 14501, 40, 4, 'Cast Ritual Bell Aura on Warlock Mount Ritual Mob Type 3'),
(179674, 30, 43, 0, 0, 0, 0, 0, 'reset Bell of Dethmoora'),
(179674, 31, 9, 99787, 3600, 0, 0, 0, 'respawn Bell of Dethmoora'),
(179672, 0, 15, 23120, 0, 14501, 40, 4, 'Cast Black March Blessing on Warlock Mount Ritual Mob Type 3'),
(179672, 30, 43, 0, 0, 0, 0, 0, 'reset Wheel of the Black March'),
(179672, 31, 9, 99786, 3600, 0, 0, 0, 'respawn Wheel of the Black March'),
(179673, 0, 15, 23226, 0, 14501, 40, 4, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 30, 43, 0, 0, 0, 0, 0, 'reset Doomsday Candle'),
(179673, 31, 9, 99785, 3600, 0, 0, 0, 'respawn Doomsday Candle');

########################################
# Quest: Ulathek the Traitor (7624)
########################################

UPDATE `creature_template` SET `FactionAlliance`=1434, `FactionHorde`=1434, `GossipMenuId`= 56000 WHERE `entry` = 14523;

DELETE FROM `conditions` WHERE `condition_entry` = 115;
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`) VALUES
(115,9,7624,0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (56000,56001,56002);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`,`condition_id`) VALUES 
(56000,0,0,'Dreadlords? Perhaps you mean Lord Banehollow. He sends his regards, and has a message for you...',1,1,56001,0,0,0,0,NULL,115),
(56001,0,0,'No, Ulathek. He knows your secret. He knows you plot with Lord Hel\'nurath of Xoroth.',1,1,56002,0,0,0,0,NULL,0),
(56002,0,0,'It\'s no lie, traitor. Banehollow wants your heart, and I\'m going to get it for him.',1,1,0,0,56002,0,0,NULL,0);

DELETE FROM `gossip_menu` WHERE `entry` IN (56000,56001,56002) AND `text_id` IN (7038,7039,7040);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(56000,7038),
(56001,7039),
(56002,7040);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 56002;
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(56002,0,14,23179,0,0,0,2,0,0,0,0,0,0,0,0,'Remove Taint of Shadow from player'),
(56002,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ulathek attack player');

########################################
# Quest: Imp Delivery (7629)
########################################

-- Event script
DELETE FROM dbscripts_on_event WHERE id=8438;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(8438, 0, 10, 14500, 180000, 0, 0, 0, 0, 38.4345, 156.9295, 83.545, 1.407458, 'Spawn J\'eevee'),
(8438, 1, 0, 0, 0, 14500, 40, 0, 2000005352, 0, 0, 0, 0, 'J\'eevee say 1'),
(8438, 3, 20, 2, 0, 14500, 40, 0, 0, 0, 0, 0, 0, 'J\'eevee set waypoint movement'),
(8438, 36, 8, 14500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J\'eevee give quest credit');

-- Movement script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1450002, 1450007, 1450012);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(1450002, 3, 0, 0, 0, 0, 0, 0, 2000005353, 'J\'eevee say 2 on reach wp 2'),
(1450007, 4, 0, 0, 0, 0, 0, 0, 2000005178, 'J\'eevee say 3 on reach wp 7'),
(1450012, 4, 0, 0, 0, 0, 0, 0, 2000005179,  'J\'eevee say 4 on reach wp 12'),
(1450012, 7, 15, 12980, 0, 0, 0, 0, 0, 'J\'eevee cast teleport on reach wp 12'),
(1450012, 8, 18, 0, 0, 0, 0, 0, 0, 'J\'eevee despawn self on reach wp 12');

-- Texts
DELETE FROM db_script_string WHERE entry IN (2000005352,2000005353,2000005178,2000005179);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005352, 'Ah, here we are! Well let\'s get to work, shall we...?', 0, 0, 0, 0, 'J\'eevee say 1 (Scholomance)'),
(2000005353, 'Oh, right! Over here now...', 0, 0, 0, 0, 'J\'eevee say 2 (Scholomance)'),
(2000005178, 'And now... the final step!', 0, 0, 0, 0, 'J\'eevee say 3 (Scholomance)'),
(2000005179, 'I\'m finished. The parchment is made. Now, return to Gorzeeki...', 0, 0, 0, 0, 'J\'eevee say 4 (Scholomance)');