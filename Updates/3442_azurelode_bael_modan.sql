-- -------------------
-- Azurelode Mine
-- -------------------

-- Initial clean-up

DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (71444, 71445, 71440, 71441, 71452, 71453, 105306, 105307, 71450, 71451, 71448, 71449, 71446, 71447, 75316, 75315, 75314, 71438, 71439, 71442, 71443, 71446, 71447, 75343, 75342, 75341));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (71444, 71445, 71440, 71441, 71452, 71453, 105306, 105307, 71450, 71451, 71448, 71449, 71446, 71447, 75316, 75315, 75314, 71438, 71439, 71442, 71443, 71446, 71447, 75343, 75342, 75341));
DELETE FROM pool_gameobject WHERE guid IN (71444, 71445, 71440, 71441, 71452, 71453, 105306, 105307, 71450, 71451, 71448, 71449, 71446, 71447, 75316, 75315, 75314, 71438, 71439, 71442, 71443, 71446, 71447, 75343, 75342, 75341);
DELETE FROM gameobject WHERE guid IN (71444, 71445, 71440, 71441, 71452, 71453, 105306, 105307, 71450, 71451, 71448, 71449, 71446, 71447, 75316, 75315, 75314, 71438, 71439, 71442, 71443, 71446, 71447, 75343, 75342, 75341);

UPDATE pool_template SET entry=6510 WHERE entry=2016;
UPDATE pool_gameobject SET pool_entry=6510 WHERE pool_entry=2016;
UPDATE pool_pool SET pool_id=6510 WHERE pool_id=2016;
UPDATE pool_pool SET mother_pool=6510 WHERE mother_pool=2016;

-- Correct Faction & Size for Silver Vein 105569
UPDATE gameobject_template SET faction=102, size=0.5 WHERE entry=105569; -- Silver Vein

SET @OGUID:= 101392;
SET @PGUID:= 9161;

-- Azurelode Mine - Tin & Silver
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID + 000, 103711, 0, -816.580078125, 164.147430419921875, 4.457478046417236328, -1.9722222089767456, 0, 0, 0.833885848522186279, -0.55193692445755004, 300, 300, 255, 1), -- xyz makes it appear in wall even if sniff, was bad befor too
(@OGUID + 001, 105569, 0, -816.580078125, 164.147430419921875, 4.457478046417236328, -1.9722222089767456, 0, 0, 0.833885848522186279, -0.55193692445755004, 300, 300, 255, 1),
(@OGUID + 002, 103711, 0, -819.40618896484375, 157.6405487060546875, 17.93774795532226562, 1.3962632417678833, 0, 0, 0.642787575721740722, 0.766044437885284423, 300, 300, 255, 1),
(@OGUID + 003, 105569, 0, -819.40618896484375, 157.6405487060546875, 17.93774795532226562, 1.3962632417678833, 0, 0, 0.642787575721740722, 0.766044437885284423, 300, 300, 255, 1),
(@OGUID + 004, 103711, 0, -835.033, 202.398, 7.71369, -0.558505, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 005, 105569, 0, -835.033, 202.398, 7.71369, -0.558505, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 006, 103711, 0, -731.496, 92.5911, 14.9298, -0.2618, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 007, 105569, 0, -731.496, 92.5911, 14.9298, -0.2618, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 008, 103711, 0, -701.806, 50.6085, 14.2192, 3.00197, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 009, 105569, 0, -701.806, 50.6085, 14.2192, 3.00197, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 010, 103711, 0, -736.823, 43.7604, 12.0023, 0.453785, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 011, 105569, 0, -736.823, 43.7604, 12.0023, 0.453785, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 012, 103711, 0, -837.585, 81.8425, 3.4292, -1.39626, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 013, 105569, 0, -837.585, 81.8425, 3.4292, -1.39626, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 014, 103711, 0, -845, 86.353, 3.217, -1, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 015, 105569, 0, -845, 86.353, 3.217, -1, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 016, 103711, 0, -688.96417236328125, 168.780029296875, 18.36804771423339843, 3.054326057434082031, 0, 0, 0.999048233032226562, 0.043619453907012939, 300, 300, 255, 1),
(@OGUID + 017, 105569, 0, -688.96417236328125, 168.780029296875, 18.36804771423339843, 3.054326057434082031, 0, 0, 0.999048233032226562, 0.043619453907012939, 300, 300, 255, 1);

UPDATE gameobject SET position_x=-816.8454, position_y=164.2608, position_z=4.1459 WHERE guid IN (@OGUID + 000,@OGUID + 001); -- sniff xyz corrupted, we cant start putting all corrupted spawns in custom file, we'll go mad
UPDATE gameobject SET position_x=-689.1495, position_y=168.6702, position_z=18.0989 WHERE guid IN (@OGUID + 016,@OGUID + 017); -- sniff xyz corrupted, we cant start putting all corrupted spawns in custom file, we'll go mad

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID + 000, @PGUID + 00, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 001, @PGUID + 00, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 002, @PGUID + 01, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 003, @PGUID + 01, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 004, @PGUID + 02, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 005, @PGUID + 02, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 006, @PGUID + 03, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 007, @PGUID + 03, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 008, @PGUID + 04, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 009, @PGUID + 04, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 010, @PGUID + 05, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 011, @PGUID + 05, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 012, @PGUID + 06, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 013, @PGUID + 06, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 014, @PGUID + 07, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 015, @PGUID + 07, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)'),
(@OGUID + 016, @PGUID + 08, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tin (103711)'),
(@OGUID + 017, @PGUID + 08, 10, 'Hillsbrad Foothills (Azurelode Mine) - Silver (105569)');

-- 2016	4	Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY
INSERT INTO pool_template (entry, max_limit, description) VALUES (2016, 2, 'Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine)');
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID + 00, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 01, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 02, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 03, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 04, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 05, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 06, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 07, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 08, 1, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node');

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID + 00, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 01, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 02, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 03, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 04, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 05, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 06, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 07, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node'),
(@PGUID + 08, 2016, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node');


-- -------------------
-- Bael Modan
-- -------------------

-- Initial clean-up

DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (120181, 120552, 120180, 13060, 13059, 13067));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (120181, 120552, 120180, 13060, 13059, 13067));
DELETE FROM pool_gameobject WHERE guid IN (120181, 120552, 120180, 13060, 13059, 13067);
DELETE FROM gameobject WHERE guid IN (120181, 120552, 120180, 13060, 13059, 13067);

UPDATE pool_template SET entry=6511 WHERE entry=2053;
UPDATE pool_gameobject SET pool_entry=6511 WHERE pool_entry=2053;
UPDATE pool_pool SET pool_id=6511 WHERE pool_id=2053;
UPDATE pool_pool SET mother_pool=6511 WHERE mother_pool=2053;

-- Bael Modan - Copper, Tin & Silver
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID + 018, 103713, 1, -4154.6, -2156.53, 52.776, -1.69297, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 019, 103711, 1, -4154.6, -2156.53, 52.776, -1.69297, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 020, 105569, 1, -4154.6, -2156.53, 52.776, -1.69297, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 021, 103713, 1, -4076.08, -2193.39, 53.0868, -1.5708, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 022, 103711, 1, -4076.08, -2193.39, 53.0868, -1.5708, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 023, 105569, 1, -4076.08, -2193.39, 53.0868, -1.5708, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 024, 103713, 1, -4146.65, -2297.34, 105.493, 0.296705, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 025, 103711, 1, -4146.65, -2297.34, 105.493, 0.296705, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 026, 105569, 1, -4146.65, -2297.34, 105.493, 0.296705, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 027, 103713, 1, -4093.84814453125, -2122.36474609375, 55.93648529052734375, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 300, 300, 255, 1),
(@OGUID + 028, 103711, 1, -4093.84814453125, -2122.36474609375, 55.93648529052734375, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 300, 300, 255, 1),
(@OGUID + 029, 105569, 1, -4093.84814453125, -2122.36474609375, 55.93648529052734375, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 300, 300, 255, 1),
(@OGUID + 030, 103713, 1, -4330.23, -2315.79, 106.214, 1.50098, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 031, 103711, 1, -4330.23, -2315.79, 106.214, 1.50098, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 032, 105569, 1, -4330.23, -2315.79, 106.214, 1.50098, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 033, 103713, 1, -4126.86767578125, -2243.224365234375, 51.53517532348632812, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 300, 300, 255, 1),
(@OGUID + 034, 103711, 1, -4126.86767578125, -2243.224365234375, 51.53517532348632812, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 300, 300, 255, 1),
(@OGUID + 035, 105569, 1, -4126.86767578125, -2243.224365234375, 51.53517532348632812, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 300, 300, 255, 1),
(@OGUID + 036, 103713, 1, -4115, -2231.679931640625, 52.2902374267578125, 0.820304811000823974, 0, 0, 0.398749083280563354, 0.917060077190399169, 300, 300, 255, 1),
(@OGUID + 037, 103711, 1, -4115, -2231.679931640625, 52.2902374267578125, 0.820304811000823974, 0, 0, 0.398749083280563354, 0.917060077190399169, 300, 300, 255, 1),
(@OGUID + 038, 105569, 1, -4115, -2231.679931640625, 52.2902374267578125, 0.820304811000823974, 0, 0, 0.398749083280563354, 0.917060077190399169, 300, 300, 255, 1),
(@OGUID + 039, 103713, 1, -4133.86, -2145.77, 51.8004, 2.25147, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 040, 103711, 1, -4133.86, -2145.77, 51.8004, 2.25147, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 041, 105569, 1, -4133.86, -2145.77, 51.8004, 2.25147, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 042, 103713, 1, -4060.03, -2183.86, 54.3944, 2.32129, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 043, 103711, 1, -4060.03, -2183.86, 54.3944, 2.32129, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 044, 105569, 1, -4060.03, -2183.86, 54.3944, 2.32129, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 045, 103713, 1, -4064.47, -2151.67, 50.9367, -2.74016, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 046, 103711, 1, -4064.47, -2151.67, 50.9367, -2.74016, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 047, 105569, 1, -4064.47, -2151.67, 50.9367, -2.74016, 0, 0, 0, 0, 300, 300, 255, 1),
(@OGUID + 048, 103713, 1, -4203.78125, -2233.75244140625, 55.38373947143554687, 0.209439516067504882, 0, 0, 0.104528464376926422, 0.994521915912628173, 300, 300, 255, 1),
(@OGUID + 049, 103711, 1, -4203.78125, -2233.75244140625, 55.38373947143554687, 0.209439516067504882, 0, 0, 0.104528464376926422, 0.994521915912628173, 300, 300, 255, 1),
(@OGUID + 050, 105569, 1, -4203.78125, -2233.75244140625, 55.38373947143554687, 0.209439516067504882, 0, 0, 0.104528464376926422, 0.994521915912628173, 300, 300, 255, 1),
(@OGUID + 051, 103713, 1, -4189.49072265625, -2169.268798828125, 56.5967864990234375, -2.12930178642272949, 0, 0, 0.874619722366333007, -0.48480954766273498, 300, 300, 255, 1),
(@OGUID + 052, 103711, 1, -4189.49072265625, -2169.268798828125, 56.5967864990234375, -2.12930178642272949, 0, 0, 0.874619722366333007, -0.48480954766273498, 300, 300, 255, 1),
(@OGUID + 053, 105569, 1, -4189.49072265625, -2169.268798828125, 56.5967864990234375, -2.12930178642272949, 0, 0, 0.874619722366333007, -0.48480954766273498, 300, 300, 255, 1),
(@OGUID + 054, 103713, 1, -4193.71044921875, -2187.78857421875, 52.5115814208984375, -2.46091413497924804, 0, 0, 0.942641496658325195, -0.33380687236785888, 300, 300, 255, 1),
(@OGUID + 055, 103711, 1, -4193.71044921875, -2187.78857421875, 52.5115814208984375, -2.46091413497924804, 0, 0, 0.942641496658325195, -0.33380687236785888, 300, 300, 255, 1),
(@OGUID + 056, 105569, 1, -4193.71044921875, -2187.78857421875, 52.5115814208984375, -2.46091413497924804, 0, 0, 0.942641496658325195, -0.33380687236785888, 300, 300, 255, 1),
(@OGUID + 057, 103713, 1, -4207.56, -2290.02, 57.1232, 3.38594, 0, 0, -0.992546, 0.12187, 300, 300, 255, 1),
(@OGUID + 058, 103711, 1, -4207.56, -2290.02, 57.1232, 3.38594, 0, 0, -0.992546, 0.12187, 300, 300, 255, 1),
(@OGUID + 059, 105569, 1, -4207.56, -2290.02, 57.1232, 3.38594, 0, 0, -0.992546, 0.12187, 300, 300, 255, 1);

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID + 018, @PGUID + 09, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 019, @PGUID + 09, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 020, @PGUID + 09, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 021, @PGUID + 10, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 022, @PGUID + 10, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 023, @PGUID + 10, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 024, @PGUID + 11, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 025, @PGUID + 11, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 026, @PGUID + 11, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 027, @PGUID + 12, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 028, @PGUID + 12, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 029, @PGUID + 12, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 030, @PGUID + 13, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 031, @PGUID + 13, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 032, @PGUID + 13, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 033, @PGUID + 14, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 034, @PGUID + 14, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 035, @PGUID + 14, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 036, @PGUID + 15, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 037, @PGUID + 15, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 038, @PGUID + 15, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 039, @PGUID + 16, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 040, @PGUID + 16, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 041, @PGUID + 16, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 042, @PGUID + 17, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 043, @PGUID + 17, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 044, @PGUID + 17, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 045, @PGUID + 18, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 046, @PGUID + 18, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 047, @PGUID + 18, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 048, @PGUID + 19, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 049, @PGUID + 19, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 050, @PGUID + 19, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 051, @PGUID + 20, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 052, @PGUID + 20, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 053, @PGUID + 20, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 054, @PGUID + 21, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 055, @PGUID + 21, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 056, @PGUID + 21, 5, 'The Barrens (Bael Modan) - Silver (105569)'),
(@OGUID + 057, @PGUID + 22, 0, 'The Barrens (Bael Modan) - Copper (103713)'),
(@OGUID + 058, @PGUID + 22, 35, 'The Barrens (Bael Modan) - Tin (103711)'),
(@OGUID + 059, @PGUID + 22, 5, 'The Barrens (Bael Modan) - Silver (105569)');

-- 2053	4	Master Mineral Pool - The Barrens (Bael Modan)
INSERT INTO pool_template (entry, max_limit, description) VALUES (2053, 4, 'Master Mineral Pool - The Barrens (Bael Modan)');
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID + 09, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 10, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 11, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 12, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 13, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 14, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 15, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 16, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 17, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 18, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 19, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 20, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 21, 1, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 22, 1, 'The Barrens (Bael Modan) - Mineral Node');

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID + 09, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 10, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 11, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 12, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 13, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 14, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 15, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 16, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 17, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 18, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 19, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 20, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 21, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node'),
(@PGUID + 22, 2053, 0, 'The Barrens (Bael Modan) - Mineral Node');