-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Eastern Kingdoms
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Remove duplicate chest objects in Elwynn Forest
DELETE FROM gameobject WHERE guid=26886;
DELETE FROM pool_gameobject WHERE guid=26886;

DELETE FROM gameobject WHERE guid=26974;
DELETE FROM pool_gameobject WHERE guid=26974;

DELETE FROM gameobject WHERE guid=30934;
DELETE FROM pool_gameobject WHERE guid=30934;

DELETE FROM gameobject WHERE guid=32466;
DELETE FROM pool_gameobject WHERE guid=32466;

-- Remove duplicate chest objects in Elwynn Forest that were manually spawned
DELETE FROM gameobject WHERE guid=1090079;
DELETE FROM pool_gameobject WHERE guid=1090079;
DELETE FROM pool_template WHERE entry=40178;
DELETE FROM pool_pool WHERE pool_id=40178;

-- Remove duplicate chest objects in Eastern Plaguelands
DELETE FROM gameobject WHERE guid=190339;
DELETE FROM pool_gameobject WHERE guid=190339;

DELETE FROM gameobject WHERE guid=190340;
DELETE FROM pool_gameobject WHERE guid=190340;

-- Remove duplicate chest objects in Tirisfal Glades that were manually spawned
DELETE FROM gameobject WHERE guid=1090055;
DELETE FROM pool_gameobject WHERE guid=1090055;
DELETE FROM pool_template WHERE entry=40203;
DELETE FROM pool_pool WHERE pool_id=40203;

DELETE FROM gameobject WHERE guid=1090058;
DELETE FROM pool_gameobject WHERE guid=1090058;
DELETE FROM gameobject WHERE guid=1090061;
DELETE FROM pool_gameobject WHERE guid=1090061;
DELETE FROM pool_template WHERE entry=40198;
DELETE FROM pool_pool WHERE pool_id=40198;

-- Fix number of possible spawned chests in Badlands
UPDATE pool_template SET max_limit=7 WHERE entry=39923; 


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Kalimdor
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Remove duplicate chest objects in Teldrassil that were manually spawned
DELETE FROM gameobject WHERE guid=1090069;
DELETE FROM pool_gameobject WHERE guid=1090069;
DELETE FROM pool_template WHERE entry=40207;
DELETE FROM pool_pool WHERE pool_id=40207;

-- Add missing chests in Stonetalon Mountains
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300198, 2849, 1, 998.705, -333.697, 0.770707, 4.72984, 0.0, 0.0, -0.700909, 0.713251, 300, 900),
(300210, 2849, 1, 1262.87, -5.11133, -5.45986, 4.31097, 0.0, 0.0, -0.833885, 0.551938, 300, 900);
INSERT INTO pool_gameobject VALUES
(300198, 31151, 0.0, 'Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)'),
(300210, 31340, 0.0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)');

-- Fix pools for chests in Stonetalon Mountains
UPDATE pool_gameobject SET description='Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)' WHERE guid=40708;
UPDATE pool_gameobject SET description='Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)' WHERE guid=40709;
UPDATE pool_gameobject SET pool_entry=31340, description='Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)' WHERE guid=40711;

-- Update rotations and spawntime of chests in Stonetalon Mountains
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40708;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40709;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40711;

-- Fix spawntime of chest in Dustwallow March
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300050;

-- Remove duplicate chest objects in Winterspring that were manually spawned
DELETE FROM gameobject WHERE guid=190344;
DELETE FROM pool_gameobject WHERE guid=190344;
DELETE FROM pool_template WHERE entry=40075;
DELETE FROM pool_pool WHERE pool_id=40075;


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Add missing pool templates and pool pools
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

INSERT INTO pool_template (entry, max_limit, description) VALUES
(31000, 1, 'Tirisfal Glades (Deathknell) - Chest Pool'),
(31001, 1, 'Tirisfal Glades (Night Web''s Hollow) - Chest Pool'),
(31002, 1, 'Dun Morogh (Coldridge Valley Cave) - Chest Pool'),
(31003, 1, 'Dun Morogh (Coldridge Valley) - Chest Pool'),
(31004, 1, 'Teldrassil (Shadowthread Cave) - Chest Pool'),
(31005, 1, 'Teldrassil (Shadowglen) - Chest Pool'),
(31006, 1, 'Elwynn Forest (Echo Ridge Mine) - Chest Pool'),
(31007, 1, 'Elwynn Forest (Northshire Vineyards) - Chest Pool'),
(31012, 1, 'Badlands (Hammertoe''s Digsite) - Chest Pool'),
(31013, 1, 'Badlands (Angor Fortress) - Chest Pool'),
(31014, 1, 'Badlands (Agmond''s End) - Chest Pool'),
(31015, 1, 'Badlands (Camp Wurg) - Chest Pool'),
(31016, 1, 'Badlands (Camp Boff) - Chest Pool'),
(31017, 1, 'Badlands (Camp Cagg) - Chest Pool'),
(31018, 1, 'Badlands (Dustbelch Grotto) - Chest Pool'),
(31052, 1, 'Dustwallow Marsh (The Dragonmurk) - Chest Pool'),
(31053, 1, 'Dustwallow Marsh (Dustwallow Bay) - Chest Pool'),
(31063, 1, 'Azshara (Haldarr Encampment) - Chest Pool'),
(31073, 1, 'Stranglethorn Vale - Chest Pool'),
(31340, 1, 'Stonetalon Mountains (Windshear Crag) - Chest Pool'),
(31151, 1, 'Stonetalon Mountains (Windshear Mine) - Chest Pool'),
(31181, 1, 'Silverpine Forest (Fenris Keep) - Chest Pool'),
(31244, 1, 'Elwynn Forest - Chest Pool'),
(31245, 1, 'Elwynn Forest (Northshire Valley) - Chest Pool'),
(31246, 1, 'Elwynn Forest (Crystal Lake) - Chest Pool'),
(31247, 1, 'Elwynn Forest (Forest''s Edge) - Chest Pool'),
(31248, 1, 'Elwynn Forest (Jerod''s Landing) - Chest Pool'),
(31249, 1, 'Elwynn Forest (Brackwell Pumpkin Patch) - Chest Pool'),
(31250, 1, 'Elwynn Forest (Stone Cairn Lake) - Chest Pool'),
(31251, 1, 'Elwynn Forest (Heroes'' Vigil) - Chest Pool'),
(31252, 1, 'Elwynn Forest (Jasperlode Mine) - Chest Pool'),
(31253, 1, 'Elwynn Forest (Fargodeep Mine) - Chest Pool'),
(31330, 1, 'Dun Morogh (Shimmer Ridge) - Chest Pool'),
(31331, 1, 'The Barrens (The Tidus Stair) - Chest Pool'),
(31332, 1, 'Silverpine Forest (Beren''s Peril) - Chest Pool'),
(31333, 1, 'Stonetalon Mountains (Camp Aparaje) - Chest Pool'),
(31334, 1, 'Stonetalon Mountains (Cragpool Lake) - Chest Pool'),
(31335, 1, 'Tirisfal Glades (Solliden Farmstead) - Chest Pool'),
(31336, 1, 'Azshara (The Shattered Strand) - Chest Pool'),
(31337, 1, 'Azshara (Thalassian Base Camp) - Chest Pool'),
(31338, 1, 'Darkshore (Twilight Shore) - Chest Pool'),
(31339, 1, 'Darkshore (The Long Wash) - Chest Pool'),
(31341, 1, 'The Barrens (The Crossroads & Ratchet) - Chest Pool');


INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES 
(31000, 39905, 0, 'Tirisfal Glades (Deathknell) - Chest Pool'),
(31001, 39905, 0, 'Tirisfal Glades (Night Web''s Hollow) - Chest Pool'),
(31002, 39900, 0, 'Dun Morogh (Coldridge Valley Cave) - Chest Pool'),
(31003, 39900, 0, 'Dun Morogh (Coldridge Valley) - Chest Pool'),
(31004, 39904, 0, 'Teldrassil (Shadowthread Cave) - Chest Pool'),
(31005, 39904, 0, 'Teldrassil (Shadowglen) - Chest Pool'),
(31006, 39902, 0, 'Elwynn Forest (Echo Ridge Mine) - Chest Pool'),
(31007, 39902, 0, 'Elwynn Forest (Northshire) - Chest Pool'),
(31012, 39923, 0, 'Badlands (Hammertoe''s Digsite) - Chest Pool'),
(31013, 39923, 0, 'Badlands (Angor Fortress) - Chest Pool'),
(31014, 39923, 0, 'Badlands (Agmond''s End) - Chest Pool'),
(31015, 39923, 0, 'Badlands (Camp Wurg) - Chest Pool'),
(31016, 39923, 0, 'Badlands (Camp Boff) - Chest Pool'),
(31017, 39923, 0, 'Badlands (Camp Cagg) - Chest Pool'),
(31018, 39923, 0, 'Badlands (Dustbelch Grotto) - Chest Pool'),
(31052, 39922, 0, 'Dustwallow Marsh (The Dragonmurk) - Chest Pool'),
(31053, 39922, 0, 'Dustwallow Marsh (Dustwallow Bay) - Chest Pool'),
(31063, 39929, 0, 'Azshara (Haldarr Encampment) - Chest Pool'),
(31073, 39921, 0, 'Stranglethorn Vale - Chest Pool'),
(31340, 39912, 0, 'Stonetalon Mountains (Windshear Crag)'),
(31151, 39912, 0, 'Stonetalon Mountains (Windshear Mine)'),
(31181, 39908, 0, 'Silverpine Forest (Fenris Isle) - Chest Pool'),
(31244, 39902, 0, 'Elwynn Forest - Chest Pool'),
(31245, 39902, 0, 'Elwynn Forest (Northshire Valley) - Chest Pool'),
(31246, 39902, 0, 'Elwynn Forest (Crystal Lake) - Chest Pool'),
(31247, 39902, 0, 'Elwynn Forest (Forest''s Edge) - Chest Pool'),
(31248, 39902, 0, 'Elwynn Forest (Jerod''s Landing) - Chest Pool'),
(31249, 39902, 0, 'Elwynn Forest (Brackwell Pumpkin Patch) - Chest Pool'),
(31250, 39902, 0, 'Elwynn Forest (Stone Cairn Lake) - Chest Pool'),
(31251, 39902, 0, 'Elwynn Forest (Heroes'' Vigil) - Chest Pool'),
(31252, 39902, 0, 'Elwynn Forest (Jasperlode Mine) - Chest Pool'),
(31253, 39902, 0, 'Elwynn Forest (Fargodeep Mine) - Chest Pool'),
(31330, 39900, 0, 'Dun Morogh (Shimmer Ridge) - Chest Pool'),
(31331, 39910, 0, 'The Barrens (The Tidus Stair) - Chest Pool'),
(31332, 39908, 0, 'Silverpine Forest (Beren''s Peril) - Chest Pool'),
(31333, 39912, 0, 'Stonetalon Mountains (Camp Aparaje) - Chest Pool'),
(31334, 39912, 0, 'Stonetalon Mountains (Cragpool Lake) - Chest Pool'),
(31335, 39905, 0, 'Tirisfal Glades (Solliden Farmstead) - Chest Pool'),
(31336, 39929, 0, 'Azshara (The Shattered Strand) - Chest Pool'),
(31337, 39929, 0, 'Azshara (Thalassian Base Camp) - Chest Pool'),
(31338, 39906, 0, 'Darkshore (Twilight Shore) - Chest Pool'),
(31339, 39906, 0, 'Darkshore (The Long Wash) - Chest Pool'),
(31341, 39910, 0, 'The Barrens (The Crossroads & Ratchet) - Chest Pool');
