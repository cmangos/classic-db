-- @@@@@@@@@@@@@@@@@@@@@@@@
--  OPEN WORLD CHESTS POOLS
-- @@@@@@@@@@@@@@@@@@@@@@@@



-- #######################
--  Stonetalon Mountains
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55944;
DELETE FROM game_event_gameobject WHERE guid=55944;
DELETE FROM gameobject_battleground WHERE guid=55944;
DELETE FROM pool_gameobject WHERE guid=55944;
DELETE FROM gameobject_addon WHERE guid=55944;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55944, 2849, 1, 5.11241, -692.71, -19.1304, 3.03684, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=40707;
DELETE FROM pool_gameobject WHERE guid=40708;
DELETE FROM pool_gameobject WHERE guid=40709;
DELETE FROM pool_gameobject WHERE guid=40711;
DELETE FROM pool_gameobject WHERE guid=40710;
INSERT INTO pool_gameobject VALUES
(40707, 40078, 0, 'Stonetalon Mountains (Greatwood Vale) - Battered Chest (2849)'),
(55944, 40078, 0, 'Stonetalon Mountains (Greatwood Vale) - Battered Chest (2849)'),
(40708, 40079, 0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)'),
(40709, 40079, 0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)'),
(40711, 40079, 0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)'),
(40710, 40080, 0, 'Stonetalon Mountains (Mirkfallon Lake) - Battered Chest (2849)'),
(40712, 40081, 0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(40713, 40081, 0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40078, 1, 'Stonetalon Mountains (Greatwood Vale) - Chest Pool'),
(40079, 1, 'Stonetalon Mountains (Windshear Crag) - Chest Pool'),
(40080, 1, 'Stonetalon Mountains (Mirkfallon Lake) - Chest Pool'),
(40081, 1, 'Stonetalon Mountains (The Charred Vale) - Chest Pool');
UPDATE pool_template SET max_limit=2 WHERE entry=39912;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40078, 39912, 0, 'Stonetalon Mountains (Greatwood Vale) - Chest Pool'),
(40079, 39912, 0, 'Stonetalon Mountains (Windshear Crag) - Chest Pool'),
(40080, 39912, 0, 'Stonetalon Mountains (Mirkfallon Lake) - Chest Pool'),
(40081, 39912, 0, 'Stonetalon Mountains (The Charred Vale) - Chest Pool');


-- #######################
--  Ashenvale
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=105316;
DELETE FROM game_event_gameobject WHERE guid=105316;
DELETE FROM gameobject_battleground WHERE guid=105316;
DELETE FROM pool_gameobject WHERE guid=105316;
DELETE FROM gameobject_addon WHERE guid=105316;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105316, 2852, 1, 2747.48, -2982.93, 140.794, -1.16937, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=47813;
DELETE FROM pool_gameobject WHERE guid=47814;
INSERT INTO pool_gameobject VALUES
(47813, 40082, 0, 'Ashenvale (The Zoram Strand) - Battered Chest (2849)'),
(47814, 40083, 0, 'Ashenvale - Battered Chest (2849)'),
(170080, 40083, 0, 'Ashenvale - Battered Chest (2849)'),
(47818, 40083, 0, 'Ashenvale - Solid Chest (2850)'),
(47816, 40084, 0, 'Ashenvale (Mystral Lake) - Solid Chest (2850)'),
(47817, 40085, 0, 'Ashenvale (Thistlefur Village) - Solid Chest (2850)'),
(47819, 40086, 0, 'Ashenvale (Greenpaw Village) - Solid Chest (2850)'),
(47820, 40087, 0, 'Ashenvale (The Ruins of Stardust) - Solid Chest (2850)'),
(47824, 40088, 0, 'Ashenvale (Night Run) - Solid Chest (2852)'),
(47825, 40089, 0, 'Ashenvale (Xavian) - Solid Chest (2852)'),
(47826, 40090, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Solid Chest (2852)'),
(47827, 40091, 0, 'Ashenvale (Satyrnaar) - Solid Chest (2852)'),
(105316, 40091, 0, 'Ashenvale (Satyrnaar) - Solid Chest (2852)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40082, 1, 'Ashenvale (The Zoram Strand) - Chest Pool'),
(40083, 1, 'Ashenvale - Chest Pool'),
(40084, 1, 'Ashenvale (Mystral Lake) - Chest Pool'),
(40085, 1, 'Ashenvale (Thistlefur Village) - Chest Pool'),
(40086, 1, 'Ashenvale (Greenpaw Village) - Chest Pool'),
(40087, 1, 'Ashenvale (The Ruins of Stardust) - Chest Pool'),
(40088, 1, 'Ashenvale (Night Run) - Chest Pool'),
(40089, 1, 'Ashenvale (Xavian) - Chest Pool'),
(40090, 1, 'Ashenvale (The Dor\'Danil Barrow Den) - Chest Pool'),
(40091, 1, 'Ashenvale (Satyrnaar) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39913;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40082, 39913, 0, 'Ashenvale (The Zoram Strand) - Chest Pool'),
(40083, 39913, 0, 'Ashenvale - Chest Pool'),
(40084, 39913, 0, 'Ashenvale (Mystral Lake) - Chest Pool'),
(40085, 39913, 0, 'Ashenvale (Thistlefur Village) - Chest Pool'),
(40086, 39913, 0, 'Ashenvale (Greenpaw Village) - Chest Pool'),
(40087, 39913, 0, 'Ashenvale (The Ruins of Stardust) - Chest Pool'),
(40088, 39913, 0, 'Ashenvale (Night Run) - Chest Pool'),
(40089, 39913, 0, 'Ashenvale (Xavian) - Chest Pool'),
(40090, 39913, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Chest Pool'),
(40091, 39913, 0, 'Ashenvale (Satyrnaar) - Chest Pool');


-- #######################
--  Mulgore
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=105317;
DELETE FROM game_event_gameobject WHERE guid=105317;
DELETE FROM gameobject_battleground WHERE guid=105317;
DELETE FROM pool_gameobject WHERE guid=105317;
DELETE FROM gameobject_addon WHERE guid=105317;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105317, 106318, 1, -1912.49, -712.583, 3.57394, 0.174532, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=18442;
DELETE FROM pool_gameobject WHERE guid=18444;
DELETE FROM pool_gameobject WHERE guid=18445;
DELETE FROM pool_gameobject WHERE guid=18449;
DELETE FROM pool_gameobject WHERE guid=18450;
DELETE FROM pool_gameobject WHERE guid=18451;
DELETE FROM pool_gameobject WHERE guid=18454;
DELETE FROM pool_gameobject WHERE guid=18443;
DELETE FROM pool_gameobject WHERE guid=18446;
DELETE FROM pool_gameobject WHERE guid=18448;
DELETE FROM pool_gameobject WHERE guid=18452;
DELETE FROM pool_gameobject WHERE guid=18453;
DELETE FROM pool_gameobject WHERE guid=18455;
INSERT INTO pool_gameobject VALUES
(18442, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18444, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18445, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18449, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18450, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18451, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18454, 40092, 0, 'Mulgore - Battered Chest (106318)'),
(18443, 40093, 0, 'Mulgore (The Golden Plains) - Battered Chest (106318)'),
(18446, 40094, 0, 'Mulgore (Bael\'dun Digsite) - Battered Chest (106318)'),
(18448, 40095, 0, 'Mulgore (Palemane Rock) - Battered Chest (106318)'),
(18452, 40096, 0, 'Mulgore (Ravaged Caravan) - Battered Chest (106318)'),
(105317, 40096, 0, 'Mulgore (Ravaged Caravan) - Battered Chest (106318)'),
(18453, 40097, 0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(18455, 40098, 0, 'Mulgore (The Rolling Plains) - Battered Chest (106318)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40092, 1, 'Mulgore - Chest Pool'),
(40093, 1, 'Mulgore (The Golden Plains) - Chest Pool'),
(40094, 1, 'Mulgore (Bael\'dun Digsite) - Chest Pool'),
(40095, 1, 'Mulgore (Palemane Rock) - Chest Pool'),
(40096, 1, 'Mulgore (Ravaged Caravan) - Chest Pool'),
(40097, 1, 'Mulgore (The Venture Co. Mine) - Chest Pool'),
(40098, 1, 'Mulgore (The Rolling Plains) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39903;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40092, 39903, 0, 'Mulgore - Chest Pool'),
(40093, 39903, 0, 'Mulgore (The Golden Plains) - Chest Pool'),
(40094, 39903, 0, 'Mulgore (Bael\'dun Digsite) - Chest Pool'),
(40095, 39903, 0, 'Mulgore (Palemane Rock) - Chest Pool'),
(40096, 39903, 0, 'Mulgore (Ravaged Caravan) - Chest Pool'),
(40097, 39903, 0, 'Mulgore (The Venture Co. Mine) - Chest Pool'),
(40098, 39903, 0, 'Mulgore (The Rolling Plains) - Chest Pool');


-- #######################
--  Darkshore
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=105317;
DELETE FROM game_event_gameobject WHERE guid=105317;
DELETE FROM gameobject_battleground WHERE guid=105317;
DELETE FROM pool_gameobject WHERE guid=105317;
DELETE FROM gameobject_addon WHERE guid=105317;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105317, 2849, 1, 7357.42, -1019.19, 32.0403, 1.81514, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=105318;
DELETE FROM game_event_gameobject WHERE guid=105318;
DELETE FROM gameobject_battleground WHERE guid=105318;
DELETE FROM pool_gameobject WHERE guid=105318;
DELETE FROM gameobject_addon WHERE guid=105318;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105318, 2849, 1, 4547.06, 153.554, 59.6614, 1.81514, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55942;
DELETE FROM game_event_gameobject WHERE guid=55942;
DELETE FROM gameobject_battleground WHERE guid=55942;
DELETE FROM pool_gameobject WHERE guid=55942;
DELETE FROM gameobject_addon WHERE guid=55942;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55942, 2849, 1, 7194.43, -718.407, 94.1232, -1.51844, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55945;
DELETE FROM game_event_gameobject WHERE guid=55945;
DELETE FROM gameobject_battleground WHERE guid=55945;
DELETE FROM pool_gameobject WHERE guid=55945;
DELETE FROM gameobject_addon WHERE guid=55945;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55945, 2849, 1, 7186.1, -746.374, 69.9667, -0.296705, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55952;
DELETE FROM game_event_gameobject WHERE guid=55952;
DELETE FROM gameobject_battleground WHERE guid=55952;
DELETE FROM pool_gameobject WHERE guid=55952;
DELETE FROM gameobject_addon WHERE guid=55952;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55952, 106319, 1, 7214.85, -386.905, -3.55927, 0.506145, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=48492;
DELETE FROM pool_gameobject WHERE guid=48537;
DELETE FROM pool_gameobject WHERE guid=48531;
DELETE FROM pool_gameobject WHERE guid=48727;
DELETE FROM pool_gameobject WHERE guid=48756;
DELETE FROM pool_gameobject WHERE guid=48602;
DELETE FROM pool_gameobject WHERE guid=48623;
DELETE FROM pool_gameobject WHERE guid=48695;
INSERT INTO pool_gameobject VALUES
(48492, 40099, 0, 'Darkshore (Twilight Vale) - Battered Chest (2849)'),
(48537, 40099, 0, 'Darkshore (Twilight Vale) - Battered Chest (106319)'),
(105318, 40099, 0, 'Darkshore (Twilight Vale) - Battered Chest (2849)'),
(48531, 40100, 0, 'Darkshore (The Master\'s Glaive) - Battered Chest (2849)'),
(48727, 40101, 0, 'Darkshore (Tower of Althalaxx) - Battered Chest (2849)'),
(55942, 40101, 0, 'Darkshore (Tower of Althalaxx) - Battered Chest (2849)'),
(55945, 40101, 0, 'Darkshore (Tower of Althalaxx) - Battered Chest (2849)'),
(48756, 40102, 0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(105317, 40102, 0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(48602, 40103, 0, 'Darkshore (Ameth\'Aran) - Battered Chest (106319)'),
(48623, 40104, 0, 'Darkshore (Bashal\'Aran) - Battered Chest (106319)'),
(48695, 40105, 0, 'Darkshore - Battered Chest (106319)'),
(55952, 40106, 0, 'Darkshore (Cliffspring River) - Battered Chest (106319)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40099, 1, 'Darkshore (Twilight Vale) - Chest Pool'),
(40100, 1, 'Darkshore (The Master\'s Glaive) - Chest Pool'),
(40101, 1, 'Darkshore (Tower of Althalaxx) - Chest Pool'),
(40102, 1, 'Darkshore (Ruins of Mathystra) - Chest Pool'),
(40103, 1, 'Darkshore (Ameth\'Aran) - Chest Pool'),
(40104, 1, 'Darkshore (Bashal\'Aran) - Chest Pool'),
(40105, 1, 'Darkshore - Chest Pool'),
(40106, 1, 'Darkshore (Cliffspring River) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39906;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40099, 39906, 0, 'Darkshore (Twilight Vale) - Chest Pool'),
(40100, 39906, 0, 'Darkshore (The Master\'s Glaive) - Chest Pool'),
(40101, 39906, 0, 'Darkshore (Tower of Althalaxx) - Chest Pool'),
(40102, 39906, 0, 'Darkshore (Ruins of Mathystra) - Chest Pool'),
(40103, 39906, 0, 'Darkshore (Ameth\'Aran) - Chest Pool'),
(40104, 39906, 0, 'Darkshore (Bashal\'Aran) - Chest Pool'),
(40105, 39906, 0, 'Darkshore - Chest Pool'),
(40106, 39906, 0, 'Darkshore (Cliffspring River) - Chest Pool');


-- #######################
--  Silverpine Forest
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55461;
DELETE FROM game_event_gameobject WHERE guid=55461;
DELETE FROM gameobject_battleground WHERE guid=55461;
DELETE FROM pool_gameobject WHERE guid=55461;
DELETE FROM gameobject_addon WHERE guid=55461;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55461, 2849, 0, 805.334, 165.878, 33.9496, 1.85005, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55784;
DELETE FROM game_event_gameobject WHERE guid=55784;
DELETE FROM gameobject_battleground WHERE guid=55784;
DELETE FROM pool_gameobject WHERE guid=55784;
DELETE FROM gameobject_addon WHERE guid=55784;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55784, 106319, 0, -437.124, 1549.46, 18.5211, -2.05949, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=35436;
DELETE FROM pool_gameobject WHERE guid=35447;
DELETE FROM pool_gameobject WHERE guid=35484;
DELETE FROM pool_gameobject WHERE guid=35487;
DELETE FROM pool_gameobject WHERE guid=35483;
DELETE FROM pool_gameobject WHERE guid=35569;
DELETE FROM pool_gameobject WHERE guid=42067;
DELETE FROM pool_gameobject WHERE guid=42068;
DELETE FROM pool_gameobject WHERE guid=42077;
DELETE FROM pool_gameobject WHERE guid=42069;
DELETE FROM pool_gameobject WHERE guid=42957;
INSERT INTO pool_gameobject VALUES
(35436, 40110, 0, 'Silverpine Forest (The Dawning Isles) - Battered Chest (2849)'),
(55461, 40110, 0, 'Silverpine Forest (The Dawning Isles) - Battered Chest (2849)'),
(35447, 40111, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35484, 40112, 0, 'Silverpine Forest (Fenris Isle) - Battered Chest (2849)'),
(35487, 40112, 0, 'Silverpine Forest (Fenris Isle) - Battered Chest (2849)'),
(35483, 40113, 0, 'Silverpine Forest (Pyrewood Village) - Battered Chest (106319)'),
(55784, 40113, 0, 'Silverpine Forest (Pyrewood Village) - Battered Chest (106319)'),
(35569, 40114, 0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(42067, 40115, 0, 'Silverpine Forest (North Tide\'s Hollow) - Battered Chest (106319)'),
(42068, 40116, 0, 'Silverpine Forest (Valgan\'s Field) - Battered Chest (106319)'),
(42077, 40116, 0, 'Silverpine Forest (Valgan\'s Field) - Battered Chest (106319)'),
(42069, 40117, 0, 'Silverpine Forest (The Dead Field) - Battered Chest (106319)'),
(42957, 40118, 0, 'Silverpine Forest (Olsen\'s Farthing) - Battered Chest (106319)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40110, 1, 'Silverpine Forest (The Dawning Isles) - Chest Pool'),
(40111, 1, 'Silverpine Forest - Chest Pool'),
(40112, 1, 'Silverpine Forest (Fenris Isle) - Chest Pool'),
(40113, 1, 'Silverpine Forest (Pyrewood Village) - Chest Pool'),
(40114, 1, 'Silverpine Forest (The Shining Strand) - Chest Pool'),
(40115, 1, 'Silverpine Forest (North Tide\'s Hollow) - Chest Pool'),
(40116, 1, 'Silverpine Forest (Valgan\'s Field) - Chest Pool'),
(40117, 1, 'Silverpine Forest (The Dead Field) - Chest Pool'),
(40118, 1, 'Silverpine Forest (Olsen\'s Farthing) - Chest Pool');
UPDATE pool_template SET max_limit=5 WHERE entry=39908;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40110, 39908, 0, 'Silverpine Forest (The Dawning Isles) - Chest Pool'),
(40111, 39908, 0, 'Silverpine Forest - Chest Pool'),
(40112, 39908, 0, 'Silverpine Forest (Fenris Isle) - Chest Pool'),
(40113, 39908, 0, 'Silverpine Forest (Pyrewood Village) - Chest Pool'),
(40114, 39908, 0, 'Silverpine Forest (The Shining Strand) - Chest Pool'),
(40115, 39908, 0, 'Silverpine Forest (North Tide\'s Hollow) - Chest Pool'),
(40116, 39908, 0, 'Silverpine Forest (Valgan\'s Field) - Chest Pool'),
(40117, 39908, 0, 'Silverpine Forest (The Dead Field) - Chest Pool'),
(40118, 39908, 0, 'Silverpine Forest (Olsen\'s Farthing) - Chest Pool');


-- #######################
--  Burning Steppes
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=85898;
DELETE FROM game_event_gameobject WHERE guid=85898;
DELETE FROM gameobject_battleground WHERE guid=85898;
DELETE FROM pool_gameobject WHERE guid=85898;
DELETE FROM gameobject_addon WHERE guid=85898;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85898, 153453, 0, -8122.53, -2498.15, 139.938, 2.42601, 0.0, 0.0, 0.936672, 0.350207, 7200, 7200);
DELETE FROM gameobject WHERE guid=85897;
DELETE FROM game_event_gameobject WHERE guid=85897;
DELETE FROM gameobject_battleground WHERE guid=85897;
DELETE FROM pool_gameobject WHERE guid=85897;
DELETE FROM gameobject_addon WHERE guid=85897;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85897, 153453, 0, -7702.62, -1460.46, 140.932, 1.29154, 0.0, 0.0, 0.601814, 0.798637, 7200, 7200);
DELETE FROM gameobject WHERE guid=85794;
DELETE FROM game_event_gameobject WHERE guid=85794;
DELETE FROM gameobject_battleground WHERE guid=85794;
DELETE FROM pool_gameobject WHERE guid=85794;
DELETE FROM gameobject_addon WHERE guid=85794;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85794, 153453, 0, -8068.42, -1762.72, 138.351, 1.88495, 0.0, 0.0, 0.809015, 0.587788, 7200, 7200);
DELETE FROM gameobject WHERE guid=45500;
DELETE FROM game_event_gameobject WHERE guid=45500;
DELETE FROM gameobject_battleground WHERE guid=45500;
DELETE FROM pool_gameobject WHERE guid=45500;
DELETE FROM gameobject_addon WHERE guid=45500;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(45500, 153453, 0, -7932.06, -2693.91, 146.367, 3.10665, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=45499;
DELETE FROM game_event_gameobject WHERE guid=45499;
DELETE FROM gameobject_battleground WHERE guid=45499;
DELETE FROM pool_gameobject WHERE guid=45499;
DELETE FROM gameobject_addon WHERE guid=45499;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(45499, 153453, 0, -7769.91, -2852.65, 133.439, -0.209439, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=85790;
DELETE FROM game_event_gameobject WHERE guid=85790;
DELETE FROM gameobject_battleground WHERE guid=85790;
DELETE FROM pool_gameobject WHERE guid=85790;
DELETE FROM gameobject_addon WHERE guid=85790;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85790, 153453, 0, -7985.18, -2630.35, 166.192, 1.309, 0.0, 0.0, 0.608763, 0.793352, 7200, 7200);
DELETE FROM gameobject WHERE guid=55774;
DELETE FROM game_event_gameobject WHERE guid=55774;
DELETE FROM gameobject_battleground WHERE guid=55774;
DELETE FROM pool_gameobject WHERE guid=55774;
DELETE FROM gameobject_addon WHERE guid=55774;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55774, 153453, 0, -8080.28, -1891.26, 147.863, -1.53589, 0.0, 0.0, -0.694658, 0.71934, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(6835, 40119, 0, 'Burning Steppes - Solid Chest (153453)'),
(6868, 40119, 0, 'Burning Steppes - Solid Chest (153453)'),
(6871, 40119, 0, 'Burning Steppes - Solid Chest (153453)'),
(85898, 40119, 0, 'Burning Steppes - Solid Chest (153453)'),
(6827, 40120, 0, 'Burning Steppes (Blackrock Stronghold) - Solid Chest (153453)'),
(85897, 40120, 0, 'Burning Steppes (Blackrock Stronghold) - Solid Chest (153453)'),
(6837, 40121, 0, 'Burning Steppes (Dreadmaul Rock) - Solid Chest (153453)'),
(45500, 40121, 0, 'Burning Steppes (Dreadmaul Rock) - Solid Chest (153453)'),
(85790, 40121, 0, 'Burning Steppes (Dreadmaul Rock) - Solid Chest (153453)'),
(170024, 40122, 0, 'Burning Steppes (Blackrock Mountain) - Solid Chest (153453)'),
(85794, 40123, 0, 'Burning Steppes (The Pillar of Ash) - Solid Chest (153453)'),
(55774, 40123, 0, 'Burning Steppes (The Pillar of Ash) - Solid Chest (153453)'),
(45499, 40124, 0, 'Burning Steppes (Terror Wing Path) - Solid Chest (153453)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40119, 1, 'Burning Steppes - Chest Pool'),
(40120, 1, 'Burning Steppes (Blackrock Stronghold) - Chest Pool'),
(40121, 1, 'Burning Steppes (Dreadmaul Rock) - Chest Pool'),
(40122, 1, 'Burning Steppes (Blackrock Mountain) - Chest Pool'),
(40123, 1, 'Burning Steppes (The Pillar of Ash) - Chest Pool'),
(40124, 1, 'Burning Steppes (Terror Wing Path) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39933;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40119, 39933, 0, 'Burning Steppes - Chest Pool'),
(40120, 39933, 0, 'Burning Steppes (Blackrock Stronghold) - Chest Pool'),
(40121, 39933, 0, 'Burning Steppes (Dreadmaul Rock) - Chest Pool'),
(40122, 39933, 0, 'Burning Steppes (Blackrock Mountain) - Chest Pool'),
(40123, 39933, 0, 'Burning Steppes (The Pillar of Ash) - Chest Pool'),
(40124, 39933, 0, 'Burning Steppes (Terror Wing Path) - Chest Pool');


-- #######################
--  Redridge Mountains
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55463;
DELETE FROM game_event_gameobject WHERE guid=55463;
DELETE FROM gameobject_battleground WHERE guid=55463;
DELETE FROM pool_gameobject WHERE guid=55463;
DELETE FROM gameobject_addon WHERE guid=55463;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55463, 2849, 0, -9602.7, -2524.01, 60.5327, 0.610864, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55465;
DELETE FROM game_event_gameobject WHERE guid=55465;
DELETE FROM gameobject_battleground WHERE guid=55465;
DELETE FROM pool_gameobject WHERE guid=55465;
DELETE FROM gameobject_addon WHERE guid=55465;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55465, 2849, 0, -8966.25, -2076.49, 132.444, -0.890117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55778;
DELETE FROM game_event_gameobject WHERE guid=55778;
DELETE FROM gameobject_battleground WHERE guid=55778;
DELETE FROM pool_gameobject WHERE guid=55778;
DELETE FROM gameobject_addon WHERE guid=55778;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55778, 2849, 0, -8985.03, -2179.1, 132.621, -0.942477, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55779;
DELETE FROM game_event_gameobject WHERE guid=55779;
DELETE FROM gameobject_battleground WHERE guid=55779;
DELETE FROM pool_gameobject WHERE guid=55779;
DELETE FROM gameobject_addon WHERE guid=55779;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55779, 2849, 0, -9799.3, -2215.58, 58.6601, -0.645772, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55469;
DELETE FROM game_event_gameobject WHERE guid=55469;
DELETE FROM gameobject_battleground WHERE guid=55469;
DELETE FROM pool_gameobject WHERE guid=55469;
DELETE FROM gameobject_addon WHERE guid=55469;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55469, 2850, 0, -9324.92, -2830.86, 69.0098, -1.25664, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55470;
DELETE FROM game_event_gameobject WHERE guid=55470;
DELETE FROM gameobject_battleground WHERE guid=55470;
DELETE FROM pool_gameobject WHERE guid=55470;
DELETE FROM gameobject_addon WHERE guid=55470;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55470, 2850, 0, -9302.46, -3193.25, 103.914, -0.191985, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55471;
DELETE FROM game_event_gameobject WHERE guid=55471;
DELETE FROM gameobject_battleground WHERE guid=55471;
DELETE FROM pool_gameobject WHERE guid=55471;
DELETE FROM gameobject_addon WHERE guid=55471;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55471, 2850, 0, -8792.6, -2175.8, 146.436, 1.01229, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55472;
DELETE FROM game_event_gameobject WHERE guid=55472;
DELETE FROM gameobject_battleground WHERE guid=55472;
DELETE FROM pool_gameobject WHERE guid=55472;
DELETE FROM gameobject_addon WHERE guid=55472;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55472, 2850, 0, -9261.14, -3212.76, 101.674, -1.44862, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55473;
DELETE FROM game_event_gameobject WHERE guid=55473;
DELETE FROM gameobject_battleground WHERE guid=55473;
DELETE FROM pool_gameobject WHERE guid=55473;
DELETE FROM gameobject_addon WHERE guid=55473;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55473, 2850, 0, -9373.04, -3079.24, 158.072, -2.49582, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55474;
DELETE FROM game_event_gameobject WHERE guid=55474;
DELETE FROM gameobject_battleground WHERE guid=55474;
DELETE FROM pool_gameobject WHERE guid=55474;
DELETE FROM gameobject_addon WHERE guid=55474;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55474, 2850, 0, -8831.21, -2198.59, 139.95, 1.88495, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55476;
DELETE FROM game_event_gameobject WHERE guid=55476;
DELETE FROM gameobject_battleground WHERE guid=55476;
DELETE FROM pool_gameobject WHERE guid=55476;
DELETE FROM gameobject_addon WHERE guid=55476;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55476, 2850, 0, -9406.75, -3008.83, 136.687, 0.087266, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55477;
DELETE FROM game_event_gameobject WHERE guid=55477;
DELETE FROM gameobject_battleground WHERE guid=55477;
DELETE FROM pool_gameobject WHERE guid=55477;
DELETE FROM gameobject_addon WHERE guid=55477;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55477, 2850, 0, -9246.9, -3418.03, 109.538, -2.26892, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55484;
DELETE FROM game_event_gameobject WHERE guid=55484;
DELETE FROM gameobject_battleground WHERE guid=55484;
DELETE FROM pool_gameobject WHERE guid=55484;
DELETE FROM gameobject_addon WHERE guid=55484;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55484, 2850, 0, -8694.73, -2143.48, 158.255, -1.51844, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55485;
DELETE FROM game_event_gameobject WHERE guid=55485;
DELETE FROM gameobject_battleground WHERE guid=55485;
DELETE FROM pool_gameobject WHERE guid=55485;
DELETE FROM gameobject_addon WHERE guid=55485;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55485, 2850, 0, -8686.61, -2301.04, 156.814, -1.90241, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55775;
DELETE FROM game_event_gameobject WHERE guid=55775;
DELETE FROM gameobject_battleground WHERE guid=55775;
DELETE FROM pool_gameobject WHERE guid=55775;
DELETE FROM gameobject_addon WHERE guid=55775;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55775, 2850, 0, -9417.32, -3387.52, 88.857, 0.034906, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55776;
DELETE FROM game_event_gameobject WHERE guid=55776;
DELETE FROM gameobject_battleground WHERE guid=55776;
DELETE FROM pool_gameobject WHERE guid=55776;
DELETE FROM gameobject_addon WHERE guid=55776;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55776, 2850, 0, -9117.6, -3225.17, 100.786, -2.60053, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55780;
DELETE FROM game_event_gameobject WHERE guid=55780;
DELETE FROM gameobject_battleground WHERE guid=55780;
DELETE FROM pool_gameobject WHERE guid=55780;
DELETE FROM gameobject_addon WHERE guid=55780;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55780, 2850, 0, -9740.88, -3174.88, 58.6088, -0.191985, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=20651;
DELETE FROM pool_gameobject WHERE guid=20798;
DELETE FROM pool_gameobject WHERE guid=28632;
DELETE FROM pool_gameobject WHERE guid=31130;
DELETE FROM pool_gameobject WHERE guid=31122;
DELETE FROM pool_gameobject WHERE guid=31127;
INSERT INTO pool_gameobject VALUES
(20651, 40125, 0, 'Redridge Mountains (Lake Everstill) - Battered Chest (2849)'),
(55469, 40125, 0, 'Redridge Mountains (Lake Everstill) - Solid Chest (2850)'),
(20798, 40126, 0, 'Redridge Mountains (Lakeridge Highway) - Battered Chest (2849)'),
(55463, 40126, 0, 'Redridge Mountains (Lakeridge Highway) - Battered Chest (2849)'),
(55779, 40126, 0, 'Redridge Mountains (Lakeridge Highway) - Battered Chest (2849)'),
(28632, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(31130, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(55465, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(55778, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(55471, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Solid Chest (2850)'),
(55474, 40127, 0, 'Redridge Mountains (Redridge Canyons) - Solid Chest (2850)'),
(31122, 40128, 0, 'Redridge Mountains - Battered Chest (2849)'),
(20793, 40128, 0, 'Redridge Mountains - Solid Chest (2850)'),
(55484, 40128, 0, 'Redridge Mountains - Solid Chest (2850)'),
(31127, 40129, 0, 'Redridge Mountains (Three Corners) - Battered Chest (2849)'),
(18583, 40130, 0, 'Redridge Mountains (Stonewatch Falls) - Solid Chest (2850)'),
(42621, 40130, 0, 'Redridge Mountains (Stonewatch Falls) - Solid Chest (2850)'),
(55775, 40130, 0, 'Redridge Mountains (Stonewatch Falls) - Solid Chest (2850)'),
(18917, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(20765, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(55470, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(55472, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(55477, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(55776, 40131, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(20771, 40132, 0, 'Redridge Mountains (Stonewatch) - Solid Chest (2850)'),
(55473, 40132, 0, 'Redridge Mountains (Stonewatch) - Solid Chest (2850)'),
(55476, 40132, 0, 'Redridge Mountains (Stonewatch) - Solid Chest (2850)'),
(29240, 40133, 0, 'Redridge Mountains (Render\'s Camp) - Solid Chest (2850)'),
(31132, 40134, 0, 'Redridge Mountains (Stonewatch Tower) - Solid Chest (2850)'),
(55485, 40135, 0, 'Redridge Mountains (Render\'s Rock) - Solid Chest (2850)'),
(55780, 40136, 0, 'Redridge Mountains (Render\'s Valley) - Solid Chest (2850)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40125, 1, 'Redridge Mountains (Lake Everstill) - Chest Pool'),
(40126, 1, 'Redridge Mountains (Lakeridge Highway) - Chest Pool'),
(40127, 1, 'Redridge Mountains (Redridge Canyons) - Chest Pool'),
(40128, 1, 'Redridge Mountains - Chest Pool'),
(40129, 1, 'Redridge Mountains (Three Corners) - Chest Pool'),
(40130, 1, 'Redridge Mountains (Stonewatch Falls) - Chest Pool'),
(40131, 1, 'Redridge Mountains (Galardell Valley) - Chest Pool'),
(40132, 1, 'Redridge Mountains (Stonewatch) - Chest Pool'),
(40133, 1, 'Redridge Mountains (Render\'s Camp) - Chest Pool'),
(40134, 1, 'Redridge Mountains (Stonewatch Tower) - Chest Pool'),
(40135, 1, 'Redridge Mountains (Render\'s Rock) - Chest Pool'),
(40136, 1, 'Redridge Mountains (Render\'s Valley) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39911;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40125, 39911, 0, 'Redridge Mountains (Lake Everstill) - Chest Pool'),
(40126, 39911, 0, 'Redridge Mountains (Lakeridge Highway) - Chest Pool'),
(40127, 39911, 0, 'Redridge Mountains (Redridge Canyons) - Chest Pool'),
(40128, 39911, 0, 'Redridge Mountains - Chest Pool'),
(40129, 39911, 0, 'Redridge Mountains (Three Corners) - Chest Pool'),
(40130, 39911, 0, 'Redridge Mountains (Stonewatch Falls) - Chest Pool'),
(40131, 39911, 0, 'Redridge Mountains (Galardell Valley) - Chest Pool'),
(40132, 39911, 0, 'Redridge Mountains (Stonewatch) - Chest Pool'),
(40133, 39911, 0, 'Redridge Mountains (Render\'s Camp) - Chest Pool'),
(40134, 39911, 0, 'Redridge Mountains (Stonewatch Tower) - Chest Pool'),
(40135, 39911, 0, 'Redridge Mountains (Render\'s Rock) - Chest Pool'),
(40136, 39911, 0, 'Redridge Mountains (Render\'s Valley) - Chest Pool');


-- #######################
--  Loch Modan
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55467;
DELETE FROM game_event_gameobject WHERE guid=55467;
DELETE FROM gameobject_battleground WHERE guid=55467;
DELETE FROM pool_gameobject WHERE guid=55467;
DELETE FROM gameobject_addon WHERE guid=55467;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55467, 2849, 0, -4734.88, -3626.14, 305.354, -2.89724, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55468;
DELETE FROM game_event_gameobject WHERE guid=55468;
DELETE FROM gameobject_battleground WHERE guid=55468;
DELETE FROM pool_gameobject WHERE guid=55468;
DELETE FROM gameobject_addon WHERE guid=55468;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55468, 2849, 0, -4826.65, -3878.17, 303.603, 3.08918, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55547;
DELETE FROM game_event_gameobject WHERE guid=55547;
DELETE FROM gameobject_battleground WHERE guid=55547;
DELETE FROM pool_gameobject WHERE guid=55547;
DELETE FROM gameobject_addon WHERE guid=55547;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55547, 106319, 0, -5545.99, -2735.77, 366.15, 0.523598, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55556;
DELETE FROM game_event_gameobject WHERE guid=55556;
DELETE FROM gameobject_battleground WHERE guid=55556;
DELETE FROM pool_gameobject WHERE guid=55556;
DELETE FROM gameobject_addon WHERE guid=55556;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55556, 106319, 0, -5395.51, -2709.64, 366.297, -0.837757, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55557;
DELETE FROM game_event_gameobject WHERE guid=55557;
DELETE FROM gameobject_battleground WHERE guid=55557;
DELETE FROM pool_gameobject WHERE guid=55557;
DELETE FROM gameobject_addon WHERE guid=55557;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55557, 106319, 0, -6213.57, -2992.94, 386.369, -1.13446, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55558;
DELETE FROM game_event_gameobject WHERE guid=55558;
DELETE FROM gameobject_battleground WHERE guid=55558;
DELETE FROM pool_gameobject WHERE guid=55558;
DELETE FROM gameobject_addon WHERE guid=55558;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55558, 106319, 0, -6075.44, -3031.93, 401.729, 2.14675, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55559;
DELETE FROM game_event_gameobject WHERE guid=55559;
DELETE FROM gameobject_battleground WHERE guid=55559;
DELETE FROM pool_gameobject WHERE guid=55559;
DELETE FROM gameobject_addon WHERE guid=55559;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55559, 106319, 0, -4868.91, -3318.01, 305.733, 0.925024, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55560;
DELETE FROM game_event_gameobject WHERE guid=55560;
DELETE FROM gameobject_battleground WHERE guid=55560;
DELETE FROM pool_gameobject WHERE guid=55560;
DELETE FROM gameobject_addon WHERE guid=55560;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55560, 106319, 0, -5876.54, -2857.96, 366.134, -1.01229, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=12909;
DELETE FROM pool_gameobject WHERE guid=12926;
DELETE FROM pool_gameobject WHERE guid=13197;
DELETE FROM pool_gameobject WHERE guid=13437;
DELETE FROM pool_gameobject WHERE guid=12796;
DELETE FROM pool_gameobject WHERE guid=12998;
DELETE FROM pool_gameobject WHERE guid=13209;
DELETE FROM pool_gameobject WHERE guid=12877;
DELETE FROM pool_gameobject WHERE guid=13246;
DELETE FROM pool_gameobject WHERE guid=13248;
DELETE FROM pool_gameobject WHERE guid=13426;
INSERT INTO pool_gameobject VALUES
(12909, 40137, 0, 'Loch Modan (The Loch) - Battered Chest (2849)'),
(12926, 40138, 0, 'Loch Modan (Ironband\'s Excavation Site) - Battered Chest (2849)'),
(13197, 40139, 0, 'Loch Modan (Mo\'grosh Stronghold) - Battered Chest (2849)'),
(13437, 40139, 0, 'Loch Modan (Mo\'grosh Stronghold) - Battered Chest (2849)'),
(55468, 40139, 0, 'Loch Modan (Mo\'grosh Stronghold) - Battered Chest (2849)'),
(12796, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(12998, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(13209, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(55557, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(55558, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(55560, 40140, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(12877, 40141, 0, 'Loch Modan - Battered Chest (106319)'),
(13246, 40141, 0, 'Loch Modan - Battered Chest (106319)'),
(55467, 40141, 0, 'Loch Modan - Battered Chest (2849)'),
(55547, 40141, 0, 'Loch Modan - Battered Chest (106319)'),
(55556, 40141, 0, 'Loch Modan - Battered Chest (106319)'),
(55559, 40141, 0, 'Loch Modan - Battered Chest (106319)'),
(13248, 40142, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(13426, 40142, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40137, 1, 'Loch Modan (The Loch) - Chest Pool'),
(40138, 1, 'Loch Modan (Ironband\'s Excavation Site) - Chest Pool'),
(40139, 1, 'Loch Modan (Mo\'grosh Stronghold) - Chest Pool'),
(40140, 1, 'Loch Modan (Stonesplinter Valley) - Chest Pool'),
(40141, 1, 'Loch Modan - Chest Pool'),
(40142, 1, 'Loch Modan (Silver Stream Mine) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39907;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40137, 39907, 0, 'Loch Modan (The Loch) - Chest Pool'),
(40138, 39907, 0, 'Loch Modan (Ironband\'s Excavation Site) - Chest Pool'),
(40139, 39907, 0, 'Loch Modan (Mo\'grosh Stronghold) - Chest Pool'),
(40140, 39907, 0, 'Loch Modan (Stonesplinter Valley) - Chest Pool'),
(40141, 39907, 0, 'Loch Modan - Chest Pool'),
(40142, 39907, 0, 'Loch Modan (Silver Stream Mine) - Chest Pool');


-- #######################
--  The Barrens
-- #######################


-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55943;
DELETE FROM game_event_gameobject WHERE guid=55943;
DELETE FROM gameobject_battleground WHERE guid=55943;
DELETE FROM pool_gameobject WHERE guid=55943;
DELETE FROM gameobject_addon WHERE guid=55943;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55943, 2849, 1, -2035.27, -2811.45, 91.6679, -0.244346, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55946;
DELETE FROM game_event_gameobject WHERE guid=55946;
DELETE FROM gameobject_battleground WHERE guid=55946;
DELETE FROM pool_gameobject WHERE guid=55946;
DELETE FROM gameobject_addon WHERE guid=55946;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55946, 2849, 1, -2270.67, -2549.13, 91.8283, 2.94959, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=105317;
DELETE FROM game_event_gameobject WHERE guid=105317;
DELETE FROM gameobject_battleground WHERE guid=105317;
DELETE FROM pool_gameobject WHERE guid=105317;
DELETE FROM gameobject_addon WHERE guid=105317;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105317, 2857, 1, -2817.19, -2582.32, 33.2436, -0.488691, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55953;
DELETE FROM game_event_gameobject WHERE guid=55953;
DELETE FROM gameobject_battleground WHERE guid=55953;
DELETE FROM pool_gameobject WHERE guid=55953;
DELETE FROM gameobject_addon WHERE guid=55953;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55953, 106319, 1, -1485.27, -3045.18, 91.6731, 1.58825, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=13066;
DELETE FROM pool_gameobject WHERE guid=13068;
DELETE FROM pool_gameobject WHERE guid=13071;
DELETE FROM pool_gameobject WHERE guid=13073;
DELETE FROM pool_gameobject WHERE guid=13074;
DELETE FROM pool_gameobject WHERE guid=13327;
DELETE FROM pool_gameobject WHERE guid=13338;
DELETE FROM pool_gameobject WHERE guid=13339;
DELETE FROM pool_gameobject WHERE guid=13346;
DELETE FROM pool_gameobject WHERE guid=13345;
DELETE FROM pool_gameobject WHERE guid=13347;
DELETE FROM pool_gameobject WHERE guid=13348;
DELETE FROM pool_gameobject WHERE guid=13349;
INSERT INTO pool_gameobject VALUES
(13066, 40143, 0, 'The Barrens (The Dry Hills) - Battered Chest (2849)'),
(13068, 40144, 0, 'The Barrens (Agama\'gor) - Battered Chest (2849)'),
(13071, 40144, 0, 'The Barrens (Agama\'gor) - Battered Chest (2849)'),
(13073, 40145, 0, 'The Barrens (Bramblescar) - Battered Chest (2849)'),
(55943, 40145, 0, 'The Barrens (Bramblescar) - Battered Chest (2849)'),
(55946, 40145, 0, 'The Barrens (Bramblescar) - Battered Chest (2849)'),
(13074, 40146, 0, 'The Barrens (Boulder Lode Mine) - Battered Chest (2849)'),
(13079, 40147, 0, 'The Barrens (Blackthorn Ridge) - Solid Chest (2850)'),
(16720, 40148, 0, 'The Barrens (Razorfen Downs) - Solid Chest (2852)'),
(14618, 40149, 0, 'The Barrens (Southern Barrens) - Solid Chest (2857)'),
(105317, 40149, 0, 'The Barrens (Southern Barrens) - Solid Chest (2857)'),
(13327, 40150, 0, 'The Barrens (Dreadmist Peak) - Battered Chest (106319)'),
(13338, 40151, 0, 'The Barrens (The Stagnant Oasis) - Battered Chest (106319)'),
(13339, 40152, 0, 'The Barrens - Battered Chest (106319)'),
(13346, 40152, 0, 'The Barrens - Battered Chest (106319)'),
(55953, 40152, 0, 'The Barrens - Battered Chest (106319)'),
(13345, 40153, 0, 'The Barrens (Lushwater Oasis) - Battered Chest (106319)'),
(13347, 40154, 0, 'The Barrens (The Forgotten Pools) - Battered Chest (106319)'),
(13348, 40155, 0, 'The Barrens (Thorn Hill) - Battered Chest (106319)'),
(13349, 40156, 0, 'The Barrens (The Merchant Coast) - Battered Chest (106319)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40143, 1, 'The Barrens (The Dry Hills) - Chest Pool'),
(40144, 1, 'The Barrens (Agama\'gor) - Chest Pool'),
(40145, 1, 'The Barrens (Bramblescar) - Chest Pool'),
(40146, 1, 'The Barrens (Boulder Lode Mine) - Chest Pool'),
(40147, 1, 'The Barrens (Blackthorn Ridge) - Chest Pool'),
(40148, 1, 'The Barrens (Razorfen Downs) - Chest Pool'),
(40149, 1, 'The Barrens (Southern Barrens) - Chest Pool'),
(40150, 1, 'The Barrens (Dreadmist Peak) - Chest Pool'),
(40151, 1, 'The Barrens (The Stagnant Oasis) - Chest Pool'),
(40152, 1, 'The Barrens - Chest Pool'),
(40153, 1, 'The Barrens (Lushwater Oasis) - Chest Pool'),
(40154, 1, 'The Barrens (The Forgotten Pools) - Chest Pool'),
(40155, 1, 'The Barrens (Thorn Hill) - Chest Pool'),
(40156, 1, 'The Barrens (The Merchant Coast) - Chest Pool');
UPDATE pool_template SET max_limit=7 WHERE entry=39910;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40143, 39910, 0, 'The Barrens (The Dry Hills) - Chest Pool'),
(40144, 39910, 0, 'The Barrens (Agama\'gor) - Chest Pool'),
(40145, 39910, 0, 'The Barrens (Bramblescar) - Chest Pool'),
(40146, 39910, 0, 'The Barrens (Boulder Lode Mine) - Chest Pool'),
(40147, 39910, 0, 'The Barrens (Blackthorn Ridge) - Chest Pool'),
(40148, 39910, 0, 'The Barrens (Razorfen Downs) - Chest Pool'),
(40149, 39910, 0, 'The Barrens (Southern Barrens) - Chest Pool'),
(40150, 39910, 0, 'The Barrens (Dreadmist Peak) - Chest Pool'),
(40151, 39910, 0, 'The Barrens (The Stagnant Oasis) - Chest Pool'),
(40152, 39910, 0, 'The Barrens - Chest Pool'),
(40153, 39910, 0, 'The Barrens (Lushwater Oasis) - Chest Pool'),
(40154, 39910, 0, 'The Barrens (The Forgotten Pools) - Chest Pool'),
(40155, 39910, 0, 'The Barrens (Thorn Hill) - Chest Pool'),
(40156, 39910, 0, 'The Barrens (The Merchant Coast) - Chest Pool');


-- #######################
--  Durotar
-- #######################


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=12396;
DELETE FROM pool_gameobject WHERE guid=12499;
DELETE FROM pool_gameobject WHERE guid=12552;
DELETE FROM pool_gameobject WHERE guid=12500;
DELETE FROM pool_gameobject WHERE guid=12503;
DELETE FROM pool_gameobject WHERE guid=12504;
DELETE FROM pool_gameobject WHERE guid=12546;
DELETE FROM pool_gameobject WHERE guid=12547;
DELETE FROM pool_gameobject WHERE guid=12600;
DELETE FROM pool_gameobject WHERE guid=12603;
DELETE FROM pool_gameobject WHERE guid=12548;
DELETE FROM pool_gameobject WHERE guid=12611;
DELETE FROM pool_gameobject WHERE guid=12637;
INSERT INTO pool_gameobject VALUES
(12396, 40157, 0, 'Durotar (Razorwind Canyon) - Battered Chest (106318)'),
(12499, 40158, 0, 'Durotar (Razormane Grounds) - Battered Chest (106318)'),
(12552, 40158, 0, 'Durotar (Razormane Grounds) - Battered Chest (106318)'),
(12500, 40159, 0, 'Durotar (Kolkar Crag) - Battered Chest (106318)'),
(12503, 40160, 0, 'Durotar (Thunder Ridge) - Battered Chest (106318)'),
(12504, 40161, 0, 'Durotar - Battered Chest (106318)'),
(12546, 40162, 0, 'Durotar (Scuttle Coast) - Battered Chest (106318)'),
(12547, 40163, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(12600, 40163, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(12603, 40163, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(12548, 40164, 0, 'Durotar (Skull Rock) - Battered Chest (106318)'),
(12611, 40165, 0, 'Durotar (Tiragarde Keep) - Battered Chest (106318)'),
(12637, 40166, 0, 'Durotar (Echo Isles) - Battered Chest (106318)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40157, 1, 'Durotar (Razorwind Canyon) - Chest Pool'),
(40158, 1, 'Durotar (Razormane Grounds) - Chest Pool'),
(40159, 1, 'Durotar (Kolkar Crag) - Chest Pool'),
(40160, 1, 'Durotar (Thunder Ridge) - Chest Pool'),
(40161, 1, 'Durotar - Chest Pool'),
(40162, 1, 'Durotar (Scuttle Coast) - Chest Pool'),
(40163, 1, 'Durotar (Drygulch Ravine) - Chest Pool'),
(40164, 1, 'Durotar (Skull Rock) - Chest Pool'),
(40165, 1, 'Durotar (Tiragarde Keep) - Chest Pool'),
(40166, 1, 'Durotar (Echo Isles) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39901;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40157, 39901, 0, 'Durotar (Razorwind Canyon) - Chest Pool'),
(40158, 39901, 0, 'Durotar (Razormane Grounds) - Chest Pool'),
(40159, 39901, 0, 'Durotar (Kolkar Crag) - Chest Pool'),
(40160, 39901, 0, 'Durotar (Thunder Ridge) - Chest Pool'),
(40161, 39901, 0, 'Durotar - Chest Pool'),
(40162, 39901, 0, 'Durotar (Scuttle Coast) - Chest Pool'),
(40163, 39901, 0, 'Durotar (Drygulch Ravine) - Chest Pool'),
(40164, 39901, 0, 'Durotar (Skull Rock) - Chest Pool'),
(40165, 39901, 0, 'Durotar (Tiragarde Keep) - Chest Pool'),
(40166, 39901, 0, 'Durotar (Echo Isles) - Chest Pool');


-- #######################
--  Dun Morogh
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55542;
DELETE FROM game_event_gameobject WHERE guid=55542;
DELETE FROM gameobject_battleground WHERE guid=55542;
DELETE FROM pool_gameobject WHERE guid=55542;
DELETE FROM gameobject_addon WHERE guid=55542;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55542, 106318, 0, -5786.93, -1941.07, 402.297, -1.53589, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55543;
DELETE FROM game_event_gameobject WHERE guid=55543;
DELETE FROM gameobject_battleground WHERE guid=55543;
DELETE FROM pool_gameobject WHERE guid=55543;
DELETE FROM gameobject_addon WHERE guid=55543;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55543, 106318, 0, -5825.66, -1594.93, 361.824, -3.10665, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55544;
DELETE FROM game_event_gameobject WHERE guid=55544;
DELETE FROM gameobject_battleground WHERE guid=55544;
DELETE FROM pool_gameobject WHERE guid=55544;
DELETE FROM gameobject_addon WHERE guid=55544;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55544, 106318, 0, -5533.53, -1703.44, 342.487, -2.04204, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55772;
DELETE FROM game_event_gameobject WHERE guid=55772;
DELETE FROM gameobject_battleground WHERE guid=55772;
DELETE FROM pool_gameobject WHERE guid=55772;
DELETE FROM gameobject_addon WHERE guid=55772;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55772, 106318, 0, -5867.88, -1521.54, 379.035, -1.95477, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55773;
DELETE FROM game_event_gameobject WHERE guid=55773;
DELETE FROM gameobject_battleground WHERE guid=55773;
DELETE FROM pool_gameobject WHERE guid=55773;
DELETE FROM gameobject_addon WHERE guid=55773;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55773, 106318, 0, -5632.21, -1793.37, 358.769, 1.309, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=1090081;
DELETE FROM pool_gameobject WHERE guid=1090082;
DELETE FROM pool_gameobject WHERE guid=1090064;
DELETE FROM pool_gameobject WHERE guid=1090063;
DELETE FROM pool_gameobject WHERE guid=1090065;
DELETE FROM pool_gameobject WHERE guid=1090062;
DELETE FROM pool_gameobject WHERE guid=1090066;
DELETE FROM pool_gameobject WHERE guid=1090067;
DELETE FROM pool_gameobject WHERE guid=9477;
DELETE FROM pool_gameobject WHERE guid=32370;
DELETE FROM pool_gameobject WHERE guid=9932;
DELETE FROM pool_gameobject WHERE guid=9940;
DELETE FROM pool_gameobject WHERE guid=10856;
DELETE FROM pool_gameobject WHERE guid=29334;
DELETE FROM pool_gameobject WHERE guid=29343;
DELETE FROM pool_gameobject WHERE guid=10048;
DELETE FROM pool_gameobject WHERE guid=29633;
DELETE FROM pool_gameobject WHERE guid=10850;
DELETE FROM pool_gameobject WHERE guid=10870;
DELETE FROM pool_gameobject WHERE guid=10891;
DELETE FROM pool_gameobject WHERE guid=29638;
INSERT INTO pool_gameobject VALUES
(1090081, 40167, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(1090065, 40167, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(1090066, 40167, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(1090067, 40167, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(9477, 40168, 0, 'Dun Morogh (Gnomeregan) - Battered Chest (106318)'),
(32370, 40168, 0, 'Dun Morogh (Gnomeregan) - Battered Chest (106318)'),
(9932, 40169, 0, 'Dun Morogh (Frostmane Hold) - Battered Chest (106318)'),
(9940, 40170, 0, 'Dun Morogh - Battered Chest (106318)'),
(10856, 40170, 0, 'Dun Morogh - Battered Chest (106318)'),
(29334, 40170, 0, 'Dun Morogh - Battered Chest (106318)'),
(29343, 40170, 0, 'Dun Morogh - Battered Chest (106318)'),
(55544, 40170, 0, 'Dun Morogh - Battered Chest (106318)'),
(10048, 40171, 0, 'Dun Morogh (Chill Breeze Valley) - Battered Chest (106318)'),
(29633, 40171, 0, 'Dun Morogh (Chill Breeze Valley) - Battered Chest (106318)'),
(10850, 40172, 0, 'Dun Morogh (Gol\'Bolar Quarry) - Battered Chest (106318)'),
(55543, 40172, 0, 'Dun Morogh (Gol\'Bolar Quarry) - Battered Chest (106318)'),
(55772, 40172, 0, 'Dun Morogh (Gol\'Bolar Quarry) - Battered Chest (106318)'),
(10870, 40173, 0, 'Dun Morogh (Helm\'s Bed Lake) - Battered Chest (106318)'),
(55542, 40173, 0, 'Dun Morogh (Helm\'s Bed Lake) - Battered Chest (106318)'),
(55773, 40173, 0, 'Dun Morogh (Helm\'s Bed Lake) - Battered Chest (106318)'),
(10891, 40174, 0, 'Dun Morogh (Ironband\'s Compound) - Battered Chest (106318)'),
(29638, 40175, 0, 'Dun Morogh (Iceflow Lake) - Battered Chest (106318)'),
(1090082, 40176, 0, 'Dun Morogh (Coldridge Valley - Cave) - Battered Chest (2843)'),
(1090064, 40176, 0, 'Dun Morogh (Coldridge Valley - Cave) - Battered Chest (2843)'),
(1090063, 40176, 0, 'Dun Morogh (Coldridge Valley - Cave) - Battered Chest (2843)'),
(1090062, 40176, 0, 'Dun Morogh (Coldridge Valley - Cave) - Battered Chest (2843)');


-- Create pool templates
DELETE FROM pool_template WHERE entry IN (45808, 45809);
INSERT INTO pool_template VALUES
(39900, 5, 'Dun Morogh - Master Chest Pool'),
(40167, 1, 'Dun Morogh (Coldridge Valley) - Chest Pool'),
(40168, 1, 'Dun Morogh (Gnomeregan) - Chest Pool'),
(40169, 1, 'Dun Morogh (Frostmane Hold) - Chest Pool'),
(40170, 1, 'Dun Morogh - Chest Pool'),
(40171, 1, 'Dun Morogh (Chill Breeze Valley) - Chest Pool'),
(40172, 1, 'Dun Morogh (Gol\'Bolar Quarry) - Chest Pool'),
(40173, 1, 'Dun Morogh (Helm\'s Bed Lake) - Chest Pool'),
(40174, 1, 'Dun Morogh (Ironband\'s Compound) - Chest Pool'),
(40175, 1, 'Dun Morogh (Iceflow Lake) - Chest Pool'),
(40176, 1, 'Dun Morogh (Coldridge Valley - Cave) - Chest Pool');


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40167, 39900, 0, 'Dun Morogh (Coldridge Valley) - Chest Pool'),
(40168, 39900, 0, 'Dun Morogh (Gnomeregan) - Chest Pool'),
(40169, 39900, 0, 'Dun Morogh (Frostmane Hold) - Chest Pool'),
(40170, 39900, 0, 'Dun Morogh - Chest Pool'),
(40171, 39900, 0, 'Dun Morogh (Chill Breeze Valley) - Chest Pool'),
(40172, 39900, 0, 'Dun Morogh (Gol\'Bolar Quarry) - Chest Pool'),
(40173, 39900, 0, 'Dun Morogh (Helm\'s Bed Lake) - Chest Pool'),
(40174, 39900, 0, 'Dun Morogh (Ironband\'s Compound) - Chest Pool'),
(40175, 39900, 0, 'Dun Morogh (Iceflow Lake) - Chest Pool'),
(40176, 39900, 0, 'Dun Morogh (Coldridge Valley - Cave) - Chest Pool');


-- #######################
--  Elwynn Forest
-- #######################


-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=83089;
DELETE FROM game_event_gameobject WHERE guid=83089;
DELETE FROM gameobject_battleground WHERE guid=83089;
DELETE FROM pool_gameobject WHERE guid=83089;
DELETE FROM gameobject_addon WHERE guid=83089;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(83089, 106318, 0, -9304.96, 708.616, 130.919, -0.541051, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=83088;
DELETE FROM game_event_gameobject WHERE guid=83088;
DELETE FROM gameobject_battleground WHERE guid=83088;
DELETE FROM pool_gameobject WHERE guid=83088;
DELETE FROM gameobject_addon WHERE guid=83088;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(83088, 106318, 0, -9021.75, -606.646, 56.4091, 2.61799, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=1090075;
DELETE FROM pool_gameobject WHERE guid=1090077;
DELETE FROM pool_gameobject WHERE guid=1090078;
DELETE FROM pool_gameobject WHERE guid=1090079;
DELETE FROM pool_gameobject WHERE guid=1090080;
DELETE FROM pool_gameobject WHERE guid=1090084;
DELETE FROM pool_gameobject WHERE guid=1090076;
INSERT INTO pool_gameobject VALUES
(26716, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(26814, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(26886, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(26974, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(27006, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(30934, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(32466, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(33492, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(83088, 40177, 0, 'Elwynn Forest - Battered Chest (106318)'),
(1090077, 40178, 0, 'Elwynn Forest (Northshire Vineyards) - Battered Chest (2843)'),
(1090078, 40178, 0, 'Elwynn Forest (Northshire Vineyards) - Battered Chest (2843)'),
(1090079, 40178, 0, 'Elwynn Forest (Northshire Vineyards) - Battered Chest (2843)'),
(1090080, 40179, 0, 'Elwynn Forest (Northshire Valley) - Battered Chest (2843)'),
(1090084, 40180, 0, 'Elwynn Forest (Echo Ridge Mine) - Battered Chest (2843)'),
(1090075, 40180, 0, 'Elwynn Forest (Echo Ridge Mine) - Battered Chest (2843)'),
(1090076, 40180, 0, 'Elwynn Forest (Echo Ridge Mine) - Battered Chest (2843)'),
(26234, 40181, 0, 'Elwynn Forest (Crystal Lake) - Battered Chest (106318)'),
(26978, 40181, 0, 'Elwynn Forest (Crystal Lake) - Battered Chest (106318)'),
(33616, 40181, 0, 'Elwynn Forest (Crystal Lake) - Battered Chest (106318)'),
(26865, 40182, 0, 'Elwynn Forest (Forest\'s Edge) - Battered Chest (106318)'),
(34032, 40182, 0, 'Elwynn Forest (Forest\'s Edge) - Battered Chest (106318)'),
(26895, 40183, 0, 'Elwynn Forest (Jerod\'s Landing) - Battered Chest (106318)'),
(26916, 40184, 0, 'Elwynn Forest (Brackwell Pumpkin Patch) - Battered Chest (106318)'),
(26995, 40185, 0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)'),
(30714, 40185, 0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)'),
(33421, 40185, 0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)'),
(27000, 40186, 0, 'Elwynn Forest (Heroes\' Vigil) - Battered Chest (106318)'),
(30704, 40187, 0, 'Elwynn Forest (Jasperlode Mine) - Battered Chest (106318)'),
(30782, 40187, 0, 'Elwynn Forest (Jasperlode Mine) - Battered Chest (106318)'),
(30950, 40188, 0, 'Elwynn Forest (Fargodeep Mine) - Battered Chest (106318)'),
(83089, 40189, 0, 'Elwynn Forest (Thunder Falls) - Battered Chest (106318)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40177, 1, 'Elwynn Forest - Chest Pool'),
(40178, 1, 'Elwynn Forest (Northshire Vineyards) - Chest Pool'),
(40179, 1, 'Elwynn Forest (Northshire Valley) - Chest Pool'),
(40180, 1, 'Elwynn Forest (Echo Ridge Mine) - Chest Pool'),
(40181, 1, 'Elwynn Forest (Crystal Lake) - Chest Pool'),
(40182, 1, 'Elwynn Forest (Forest\'s Edge) - Chest Pool'),
(40183, 1, 'Elwynn Forest (Jerod\'s Landing) - Chest Pool'),
(40184, 1, 'Elwynn Forest (Brackwell Pumpkin Patch) - Chest Pool'),
(40185, 1, 'Elwynn Forest (Stone Cairn Lake) - Chest Pool'),
(40186, 1, 'Elwynn Forest (Heroes\' Vigil) - Chest Pool'),
(40187, 1, 'Elwynn Forest (Jasperlode Mine) - Chest Pool'),
(40188, 1, 'Elwynn Forest (Fargodeep Mine) - Chest Pool'),
(40189, 1, 'Elwynn Forest (Thunder Falls) - Chest Pool');
UPDATE pool_template SET max_limit=5 WHERE entry=39912;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40177, 39902, 0, 'Elwynn Forest - Chest Pool'),
(40178, 39902, 0, 'Elwynn Forest (Northshire Vineyards) - Chest Pool'),
(40179, 39902, 0, 'Elwynn Forest (Northshire Valley) - Chest Pool'),
(40180, 39902, 0, 'Elwynn Forest (Echo Ridge Mine) - Chest Pool'),
(40181, 39902, 0, 'Elwynn Forest (Crystal Lake) - Chest Pool'),
(40182, 39902, 0, 'Elwynn Forest (Forest\'s Edge) - Chest Pool'),
(40183, 39902, 0, 'Elwynn Forest (Jerod\'s Landing) - Chest Pool'),
(40184, 39902, 0, 'Elwynn Forest (Brackwell Pumpkin Patch) - Chest Pool'),
(40185, 39902, 0, 'Elwynn Forest (Stone Cairn Lake) - Chest Pool'),
(40186, 39902, 0, 'Elwynn Forest (Heroes\' Vigil) - Chest Pool'),
(40187, 39902, 0, 'Elwynn Forest (Jasperlode Mine) - Chest Pool'),
(40188, 39902, 0, 'Elwynn Forest (Fargodeep Mine) - Chest Pool'),
(40189, 39902, 0, 'Elwynn Forest (Thunder Falls) - Chest Pool');


-- #######################
--  Western Plaguelands
-- #######################


-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=85789;
DELETE FROM game_event_gameobject WHERE guid=85789;
DELETE FROM gameobject_battleground WHERE guid=85789;
DELETE FROM pool_gameobject WHERE guid=85789;
DELETE FROM gameobject_addon WHERE guid=85789;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85789, 153453, 0, 1497.01, -1522.51, 56.3196, 2.07694, 0.0, 0.0, 0.861629, 0.507539, 7200, 7200);
DELETE FROM gameobject WHERE guid=85900;
DELETE FROM game_event_gameobject WHERE guid=85900;
DELETE FROM gameobject_battleground WHERE guid=85900;
DELETE FROM pool_gameobject WHERE guid=85900;
DELETE FROM gameobject_addon WHERE guid=85900;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85900, 153453, 0, 1877.16, -1337.25, 60.108, -2.80997, 0.0, 0.0, -0.986285, 0.16505, 7200, 7200);
DELETE FROM gameobject WHERE guid=85899;
DELETE FROM game_event_gameobject WHERE guid=85899;
DELETE FROM gameobject_battleground WHERE guid=85899;
DELETE FROM pool_gameobject WHERE guid=85899;
DELETE FROM gameobject_addon WHERE guid=85899;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85899, 153453, 0, 2389.44, -1526.34, 102.669, 1.27409, 0.0, 0.0, 0.594822, 0.803857, 7200, 7200);
DELETE FROM gameobject WHERE guid=45498;
DELETE FROM game_event_gameobject WHERE guid=45498;
DELETE FROM gameobject_battleground WHERE guid=45498;
DELETE FROM pool_gameobject WHERE guid=45498;
DELETE FROM gameobject_addon WHERE guid=45498;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(45498, 153453, 0, 1501.24, -1896.6, 60.9601, 2.35619, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55573;
DELETE FROM game_event_gameobject WHERE guid=55573;
DELETE FROM gameobject_battleground WHERE guid=55573;
DELETE FROM pool_gameobject WHERE guid=55573;
DELETE FROM gameobject_addon WHERE guid=55573;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55573, 153453, 0, 1271.73, -1386.66, 49.8822, -2.79252, 0.0, 0.0, -0.984807, 0.173652, 7200, 7200);
DELETE FROM gameobject WHERE guid=55574;
DELETE FROM game_event_gameobject WHERE guid=55574;
DELETE FROM gameobject_battleground WHERE guid=55574;
DELETE FROM pool_gameobject WHERE guid=55574;
DELETE FROM gameobject_addon WHERE guid=55574;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55574, 153453, 0, 1425.59, -1697.22, 69.0792, 0.820303, 0.0, 0.0, 0.398748, 0.91706, 7200, 7200);
DELETE FROM gameobject WHERE guid=55575;
DELETE FROM game_event_gameobject WHERE guid=55575;
DELETE FROM gameobject_battleground WHERE guid=55575;
DELETE FROM pool_gameobject WHERE guid=55575;
DELETE FROM gameobject_addon WHERE guid=55575;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55575, 153453, 0, 1808.6, -1214.38, 60.3427, -2.32129, 0.0, 0.0, -0.91706, 0.398748, 7200, 7200);
DELETE FROM gameobject WHERE guid=55577;
DELETE FROM game_event_gameobject WHERE guid=55577;
DELETE FROM gameobject_battleground WHERE guid=55577;
DELETE FROM pool_gameobject WHERE guid=55577;
DELETE FROM gameobject_addon WHERE guid=55577;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55577, 153453, 0, 1459.34, -1589.07, 67.8359, 3.10669, 0.0, 0.0, 0.999847, 0.0174693, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=1270;
DELETE FROM pool_gameobject WHERE guid=1268;
DELETE FROM pool_gameobject WHERE guid=1272;
DELETE FROM pool_gameobject WHERE guid=1269;
DELETE FROM pool_gameobject WHERE guid=1271;
DELETE FROM pool_gameobject WHERE guid=1273;
INSERT INTO pool_gameobject VALUES
(45484, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(45492, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(85789, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(55573, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(55574, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(55577, 40190, 0, 'Western Plaguelands (Ruins of Andorhal) - Solid Chest (153453)'),
(45485, 40191, 0, 'Western Plaguelands (Gahrron\'s Withering) - Solid Chest (153453)'),
(45488, 40192, 0, 'Western Plaguelands (Dalson\'s Tears) - Solid Chest (153453)'),
(45548, 40193, 0, 'Western Plaguelands - Solid Chest (153453)'),
(1270, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463)'),
(1268, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463)'),
(1272, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463)'),
(1269, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Mithril Bound Chest (153468)'),
(1271, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Mithril Bound Chest (153468)'),
(1273, 40194, 0, 'Western Plaguelands (Hearthglen) - Large Mithril Bound Chest (153468)'),
(85900, 40195, 0, 'Western Plaguelands (Felstone Field) - Solid Chest (153453)'),
(55575, 40195, 0, 'Western Plaguelands (Felstone Field) - Solid Chest (153453)'),
(85899, 40196, 0, 'Western Plaguelands (Northridge Lumber Camp) - Solid Chest (153453)'),
(45498, 40197, 0, 'Western Plaguelands (The Writhing Haunt) - Solid Chest (153453)');


-- Create pool templates
DELETE FROM pool_template WHERE entry IN (39801, 39802, 39803);
INSERT INTO pool_template VALUES
(39934, 3, 'Western Plaguelands - Master Chest Pool'),
(40190, 1, 'Western Plaguelands (Ruins of Andorhal) - Chest Pool'),
(40191, 1, 'Western Plaguelands (Gahrron\'s Withering) - Chest Pool'),
(40192, 1, 'Western Plaguelands (Dalson\'s Tears) - Chest Pool'),
(40193, 1, 'Western Plaguelands - Chest Pool'),
(40194, 1, 'Western Plaguelands (Hearthglen) - Chest Pool'),
(40195, 1, 'Western Plaguelands (Felstone Field) - Chest Pool'),
(40196, 1, 'Western Plaguelands (Northridge Lumber Camp) - Chest Pool'),
(40197, 1, 'Western Plaguelands (The Writhing Haunt) - Chest Pool');


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40190, 39934, 0, 'Western Plaguelands (Ruins of Andorhal) - Chest Pool'),
(40191, 39934, 0, 'Western Plaguelands (Gahrron\'s Withering) - Chest Pool'),
(40192, 39934, 0, 'Western Plaguelands (Dalson\'s Tears) - Chest Pool'),
(40193, 39934, 0, 'Western Plaguelands - Chest Pool'),
(40194, 39934, 0, 'Western Plaguelands (Hearthglen) - Chest Pool'),
(40195, 39934, 0, 'Western Plaguelands (Felstone Field) - Chest Pool'),
(40196, 39934, 0, 'Western Plaguelands (Northridge Lumber Camp) - Chest Pool'),
(40197, 39934, 0, 'Western Plaguelands (The Writhing Haunt) - Chest Pool');


-- #######################
--  Tirisfal Glades
-- #######################


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=1090060;
DELETE FROM pool_gameobject WHERE guid=1090061;
DELETE FROM pool_gameobject WHERE guid=1090059;
DELETE FROM pool_gameobject WHERE guid=1090058;
DELETE FROM pool_gameobject WHERE guid=1090056;
DELETE FROM pool_gameobject WHERE guid=1090057;
DELETE FROM pool_gameobject WHERE guid=45240;
DELETE FROM pool_gameobject WHERE guid=45251;
DELETE FROM pool_gameobject WHERE guid=45060;
DELETE FROM pool_gameobject WHERE guid=45244;
DELETE FROM pool_gameobject WHERE guid=45257;
DELETE FROM pool_gameobject WHERE guid=1090055;
INSERT INTO pool_gameobject VALUES
(1090060, 40198, 0, 'Tirisfal Glades (Deathknell) - Battered Chest (2843)'),
(1090061, 40198, 0, 'Tirisfal Glades (Deathknell) - Battered Chest (2843)'),
(1090059, 40198, 0, 'Tirisfal Glades (Deathknell) - Battered Chest (2843)'),
(1090058, 40198, 0, 'Tirisfal Glades (Deathknell) - Battered Chest (2843)'),
(45240, 40199, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45251, 40199, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45060, 40200, 0, 'Tirisfal Glades (The North Coast) - Battered Chest (106318)'),
(45244, 40201, 0, 'Tirisfal Glades (Garren\'s Haunt) - Battered Chest (106318)'),
(45257, 40202, 0, 'Tirisfal Glades (Agamand Mills) - Battered Chest (106318)'),
(1090055, 40203, 0, 'Tirisfal Glades (Night Web\'s Hollow) - Battered Chest (2843)'),
(1090056, 40203, 0, 'Tirisfal Glades (Night Web\'s Hollow) - Battered Chest (2843)'),
(1090057, 40203, 0, 'Tirisfal Glades (Night Web\'s Hollow) - Battered Chest (2843)');


-- Create pool templates
DELETE FROM pool_template WHERE entry IN (45806, 45807);
INSERT INTO pool_template VALUES
(40198, 1, 'Tirisfal Glades (Deathknell) - Chest Pool'),
(40199, 1, 'Tirisfal Glades - Chest Pool'),
(40200, 1, 'Tirisfal Glades (The North Coast) - Chest Pool'),
(40201, 1, 'Tirisfal Glades (Garren\'s Haunt) - Chest Pool'),
(40202, 1, 'Tirisfal Glades (Agamand Mills) - Chest Pool'),
(40203, 1, 'Tirisfal Glades (Night Web\'s Hollow) - Chest Pool');


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40198, 39905, 0, 'Tirisfal Glades (Deathknell) - Chest Pool'),
(40199, 39905, 0, 'Tirisfal Glades - Chest Pool'),
(40200, 39905, 0, 'Tirisfal Glades (The North Coast) - Chest Pool'),
(40201, 39905, 0, 'Tirisfal Glades (Garren\'s Haunt) - Chest Pool'),
(40202, 39905, 0, 'Tirisfal Glades (Agamand Mills) - Chest Pool'),
(40203, 39905, 0, 'Tirisfal Glades (Night Web\'s Hollow) - Chest Pool');


-- #######################
--  Teldrassil
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=105317;
DELETE FROM game_event_gameobject WHERE guid=105317;
DELETE FROM gameobject_battleground WHERE guid=105317;
DELETE FROM pool_gameobject WHERE guid=105317;
DELETE FROM gameobject_addon WHERE guid=105317;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(105317, 106318, 1, 9673.75, 454.109, 1309.88, 1.64061, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
DELETE FROM pool_gameobject WHERE guid=1090070;
DELETE FROM pool_gameobject WHERE guid=1090073;
DELETE FROM pool_gameobject WHERE guid=1090074;
DELETE FROM pool_gameobject WHERE guid=1090083;
DELETE FROM pool_gameobject WHERE guid=1090068;
DELETE FROM pool_gameobject WHERE guid=1090069;
DELETE FROM pool_gameobject WHERE guid=1090071;
DELETE FROM pool_gameobject WHERE guid=1090072;
DELETE FROM pool_gameobject WHERE guid=49621;
DELETE FROM pool_gameobject WHERE guid=49623;
DELETE FROM pool_gameobject WHERE guid=49625;
DELETE FROM pool_gameobject WHERE guid=49622;
DELETE FROM pool_gameobject WHERE guid=49624;
DELETE FROM pool_gameobject WHERE guid=49626;
DELETE FROM pool_gameobject WHERE guid=49627;
DELETE FROM pool_gameobject WHERE guid=49628;
INSERT INTO pool_gameobject VALUES
(1090073, 40204, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843)'),
(1090074, 40204, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843)'),
(1090083, 40204, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843)'),
(1090072, 40204, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843)'),
(49621, 40205, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(49623, 40205, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(49625, 40205, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(49622, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(49624, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(49626, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(49627, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(49628, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(105317, 40206, 0, 'Teldrassil - Battered Chest (106318)'),
(1090068, 40207, 0, 'Teldrassil (Shadowthread Cave) - Battered Chest (2843)'),
(1090069, 40207, 0, 'Teldrassil (Shadowthread Cave) - Battered Chest (2843)'),
(1090070, 40207, 0, 'Teldrassil (Shadowthread Cave) - Battered Chest (2843)'),
(1090071, 40207, 0, 'Teldrassil (Shadowthread Cave) - Battered Chest (2843)');


-- Create pool templates
DELETE FROM pool_template WHERE entry IN (45810, 45811);
INSERT INTO pool_template VALUES
(40204, 1, 'Teldrassil (Shadowglen) - Chest Pool'),
(40205, 1, 'Teldrassil (The Oracle Glade) - Chest Pool'),
(40206, 1, 'Teldrassil - Chest Pool'),
(40207, 1, 'Teldrassil (Shadowthread Cave) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39904;

-- Create pools of pools
INSERT INTO pool_pool VALUES
(40204, 39904, 0, 'Teldrassil (Shadowglen) - Chest Pool'),
(40205, 39904, 0, 'Teldrassil (The Oracle Glade) - Chest Pool'),
(40206, 39904, 0, 'Teldrassil - Chest Pool'),
(40207, 39904, 0, 'Teldrassil (Shadowthread Cave) - Chest Pool');