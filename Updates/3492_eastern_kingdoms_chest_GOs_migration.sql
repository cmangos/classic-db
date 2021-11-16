-- ####################################
-- GAMEOBJECTS AND POOLS MIGRATION
-- ####################################


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Dun Morogh
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid=29633;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(29633, 106318, 0, -5480.54, -214.69, 354.253, 3.85718, 0.0, 0.0, -0.936671, 0.35021, 300, 900),
(85816, 2843, 0, -6507.27, 688.761, 387.274, -0.314158, 0.0, 0.0, -0.156434, 0.987688, 300, 900),
(300084, 106318, 0, -5906.34, -1873.73, 404.95, 5.91667, 0.0, 0.0, -0.182235, 0.983255, 300, 900),
(300085, 106318, 0, -5658.51, 657.265, 383.448, 2.63544, 0.0, 0.0, 0.968147, 0.250381, 300, 900),
(300089, 106318, 0, -5454.06, -170.441, 349.799, 2.35619, 0.0, 0.0, 0.92388, 0.382683, 300, 900),
(300090, 106318, 0, -5423.45, -307.859, 358.594, 1.65806, 0.0, 0.0, 0.737277, 0.675591, 300, 900),
(300094, 106318, 0, -5055.85, -264.972, 442.079, 4.04917, 0.0, 0.0, -0.898793, 0.438373, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=9477;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=9932;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10048;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10850;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10856;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10870;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10891;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29334;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29343;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29638;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=32370;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55542;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55543;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55544;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55772;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55773;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85764;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=9940;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85766;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85817;
-- Update GUID of existing GOs that have different GUID in target database
-- 1090062 -> 300007
UPDATE gameobject SET guid=300007, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090062;
UPDATE pool_gameobject SET guid=300007, pool_entry=31002, description='Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)' WHERE guid=1090062;
-- 1090063 -> 300008
UPDATE gameobject SET guid=300008, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090063;
UPDATE pool_gameobject SET guid=300008, pool_entry=31002, description='Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)' WHERE guid=1090063;
-- 1090064 -> 300009
UPDATE gameobject SET guid=300009, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090064;
UPDATE pool_gameobject SET guid=300009, pool_entry=31002, description='Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)' WHERE guid=1090064;
-- 1090065 -> 300010
UPDATE gameobject SET guid=300010, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090065;
UPDATE pool_gameobject SET guid=300010, pool_entry=31003 WHERE guid=1090065;
-- 1090066 -> 300011
UPDATE gameobject SET guid=300011, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090066;
UPDATE pool_gameobject SET guid=300011, pool_entry=31003 WHERE guid=1090066;
-- 1090067 -> 300012
UPDATE gameobject SET guid=300012, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090067;
UPDATE pool_gameobject SET guid=300012, pool_entry=31003 WHERE guid=1090067;
-- 1090081 -> 300026
UPDATE gameobject SET guid=300026, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090081;
UPDATE pool_gameobject SET guid=300026, pool_entry=31003 WHERE guid=1090081;
-- 1090082 -> 300027
UPDATE gameobject SET guid=300027, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090082;
UPDATE pool_gameobject SET guid=300027, pool_entry=31002, description='Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)' WHERE guid=1090082;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 29633 with entry 106318

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(85816, 31003, 0.0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(300084, 31242, 0.0, 'Dun Morogh (Ironband''s Compound) - Battered Chest (106318)'),
(300085, 31237, 0.0, 'Dun Morogh (Frostmane Hold) - Battered Chest (106318)'),
(300089, 31322, 0.0, 'Dun Morogh (The Grizzled Den) - Battered Chest (106318)'),
(300090, 31322, 0.0, 'Dun Morogh (The Grizzled Den) - Battered Chest (106318)'),
(300094, 31330, 0.0, 'Dun Morogh (Shimmer Ridge) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31236 WHERE guid=9477;
UPDATE pool_gameobject SET pool_entry=31237 WHERE guid=9932;
UPDATE pool_gameobject SET pool_entry=31240 WHERE guid=10850;
UPDATE pool_gameobject SET pool_entry=31241 WHERE guid=10870;
UPDATE pool_gameobject SET pool_entry=31242 WHERE guid=10891;
UPDATE pool_gameobject SET pool_entry=31243 WHERE guid=29638;
UPDATE pool_gameobject SET pool_entry=31236 WHERE guid=32370;
UPDATE pool_gameobject SET pool_entry=31241 WHERE guid=55542;
UPDATE pool_gameobject SET pool_entry=31240 WHERE guid=55543;
UPDATE pool_gameobject SET pool_entry=31240 WHERE guid=55772;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31236 WHERE entry=40168;
UPDATE pool_template SET entry=31237 WHERE entry=40169;
UPDATE pool_template SET entry=31240 WHERE entry=40172;
UPDATE pool_template SET entry=31241 WHERE entry=40173;
UPDATE pool_template SET entry=31242 WHERE entry=40174;
UPDATE pool_template SET entry=31243 WHERE entry=40175;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31236 WHERE pool_id=40168;
UPDATE pool_pool SET pool_id=31237 WHERE pool_id=40169;
UPDATE pool_pool SET pool_id=31240 WHERE pool_id=40172;
UPDATE pool_pool SET pool_id=31241 WHERE pool_id=40173;
UPDATE pool_pool SET pool_id=31242 WHERE pool_id=40174;
UPDATE pool_pool SET pool_id=31243 WHERE pool_id=40175;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=13 WHERE entry=39900;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Badlands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update GUID of existing GOs that have different GUID in target database
-- 11440 -> 300031
UPDATE gameobject SET guid=300031, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11440;
UPDATE pool_gameobject SET guid=300031, pool_entry=31012 WHERE guid=11440;
-- 11442 -> 300030
UPDATE gameobject SET guid=300030, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11442;
UPDATE pool_gameobject SET guid=300030, pool_entry=31012 WHERE guid=11442;
-- 11459 -> 300032
UPDATE gameobject SET guid=300032, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11459;
UPDATE pool_gameobject SET guid=300032, pool_entry=31013 WHERE guid=11459;
-- 11462 -> 300033
UPDATE gameobject SET guid=300033, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11462;
UPDATE pool_gameobject SET guid=300033, pool_entry=31013 WHERE guid=11462;
-- 11464 -> 300034
UPDATE gameobject SET guid=300034, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11464;
UPDATE pool_gameobject SET guid=300034, pool_entry=31013 WHERE guid=11464;
-- 11473 -> 300036
UPDATE gameobject SET guid=300036, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11473;
UPDATE pool_gameobject SET guid=300036, pool_entry=31014 WHERE guid=11473;
-- 11478 -> 300037
UPDATE gameobject SET guid=300037, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11478;
UPDATE pool_gameobject SET guid=300037, pool_entry=31015 WHERE guid=11478;
-- 11479 -> 300040
UPDATE gameobject SET guid=300040, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11479;
UPDATE pool_gameobject SET guid=300040, pool_entry=31018 WHERE guid=11479;
-- 11481 -> 300038
UPDATE gameobject SET guid=300038, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11481;
UPDATE pool_gameobject SET guid=300038, pool_entry=31016 WHERE guid=11481;
-- 11482 -> 300041
UPDATE gameobject SET guid=300041, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11482;
UPDATE pool_gameobject SET guid=300041, pool_entry=31018 WHERE guid=11482;
-- 11483 -> 300042
UPDATE gameobject SET guid=300042, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11483;
UPDATE pool_gameobject SET guid=300042, pool_entry=31018 WHERE guid=11483;
-- 11485 -> 300043
UPDATE gameobject SET guid=300043, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11485;
UPDATE pool_gameobject SET guid=300043, pool_entry=31018 WHERE guid=11485;
-- 11501 -> 300035
UPDATE gameobject SET guid=300035, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11501;
UPDATE pool_gameobject SET guid=300035, pool_entry=31013 WHERE guid=11501;
-- 11503 -> 300039
UPDATE gameobject SET guid=300039, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11503;
UPDATE pool_gameobject SET guid=300039, pool_entry=31017 WHERE guid=11503;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Blasted Lands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300058, 153451, 0, -10834.8, -2728.32, 7.77758, 2.09439, 0.0, 0.0, 0.866025, 0.500001, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=32134;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42439;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55563;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55567;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300058, 31021, 0.0, 'Blasted Lands (Dreadmaul Hold) - Solid Chest (153451)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31020 WHERE guid=32134;
UPDATE pool_gameobject SET pool_entry=31021 WHERE guid=42439;
UPDATE pool_gameobject SET pool_entry=31020 WHERE guid=55563;
UPDATE pool_gameobject SET pool_entry=31020 WHERE guid=55567;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31020 WHERE entry=39948;
UPDATE pool_template SET entry=31021 WHERE entry=39949;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31020 WHERE pool_id=39948;
UPDATE pool_pool SET pool_id=31021 WHERE pool_id=39949;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET description="Blasted Lands - Master Chest Pool" WHERE entry=39930;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Swamp of Sorrows
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300056, 4149, 0, -11054.1, -4122.13, 0.538078, 5.5676, 0.0, 0.0, -0.350207, 0.936672, 300, 900),
(300061, 2857, 0, -10143.9, -2490.89, 24.6832, 3.90954, 0.0, 0.0, -0.927183, 0.374608, 300, 900),
(300062, 2857, 0, -9977.39, -3658.88, 21.8357, 1.36136, 0.0, 0.0, 0.62932, 0.777146, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13978;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13979;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30992;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31014;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31016;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31044;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31045;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55508;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55509;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55762;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55763;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55767;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55770;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55771;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=56704;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85707;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85859;
-- Update GUID of existing GOs that have different GUID in target database
-- 190325 -> 55524
UPDATE gameobject SET guid=80000 WHERE guid=55524; -- Cleanup of standalone GO, align its GUID with TBC-DB one
UPDATE gameobject SET guid=55524, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190325;
UPDATE pool_gameobject SET guid=55524 WHERE guid=190325;
-- 190326 -> 55527
UPDATE gameobject SET guid=80003 WHERE guid=55527; -- Cleanup of standalone GO, align its GUID with TBC-DB one
UPDATE gameobject SET guid=55527, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190326;
UPDATE pool_gameobject SET guid=55527, pool_entry=31025 WHERE guid=190326;
-- 190327 -> 55529
UPDATE gameobject SET guid=80004 WHERE guid=55529; -- Cleanup of standalone GO, use free GUID
UPDATE gameobject SET guid=55529, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190327;
UPDATE pool_gameobject SET guid=55529, pool_entry=31025 WHERE guid=190327;
-- 190328 -> 55530
DELETE FROM gameobject WHERE guid=55530; -- Cleanup of duplicate GO
UPDATE gameobject SET guid=150041 WHERE guid=94065; -- Cleanup of standalone GO, align its GUID with TBC-DB one
UPDATE dbscripts_on_quest_end SET datalong=150041 WHERE command IN (9, 11, 12) AND datalong=94065;
UPDATE gameobject SET guid=55530, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190328;
UPDATE pool_gameobject SET guid=55530, pool_entry=31025 WHERE guid=190328;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300056, 31025, 0.0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(300061, 31026, 0.0, 'Swamp of Sorrows (Misty Valley) - Solid Chest (2857)'),
(300062, 31022, 0.0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31024 WHERE guid=13979;
UPDATE pool_gameobject SET pool_entry=31022 WHERE guid=30992;
UPDATE pool_gameobject SET pool_entry=31022 WHERE guid=31014;
UPDATE pool_gameobject SET pool_entry=31023 WHERE guid=31016;
UPDATE pool_gameobject SET pool_entry=31025 WHERE guid=31044;
UPDATE pool_gameobject SET pool_entry=31025 WHERE guid=31045;
UPDATE pool_gameobject SET pool_entry=31024 WHERE guid=55508;
UPDATE pool_gameobject SET pool_entry=31022 WHERE guid=55509;
UPDATE pool_gameobject SET pool_entry=31022 WHERE guid=55762;
UPDATE pool_gameobject SET pool_entry=31026 WHERE guid=55763;
UPDATE pool_gameobject SET pool_entry=31025 WHERE guid=55767;
UPDATE pool_gameobject SET pool_entry=31025 WHERE guid=55770;
UPDATE pool_gameobject SET pool_entry=31025 WHERE guid=55771;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31024 WHERE entry=39952;
UPDATE pool_template SET entry=31022 WHERE entry=39950;
UPDATE pool_template SET entry=31023 WHERE entry=39951;
UPDATE pool_template SET entry=31025 WHERE entry=39953;
UPDATE pool_template SET entry=31026 WHERE entry=39954;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31024 WHERE pool_id=39952;
UPDATE pool_pool SET pool_id=31022 WHERE pool_id=39950;
UPDATE pool_pool SET pool_id=31023 WHERE pool_id=39951;
UPDATE pool_pool SET pool_id=31025 WHERE pool_id=39953;
UPDATE pool_pool SET pool_id=31026 WHERE pool_id=39954;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Swamp of Sorrows - Master Chest Pool" WHERE entry=39924;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Duskwood
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300060, 2852, 0, -10374.7, -1254.46, 35.8818, 6.26573, 0.0, 0.0, -0.00872612, 0.999962, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15672;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16763;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16983;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16989;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17033;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17134;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18547;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18562;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18565;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18572;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18577;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33431;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33434;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33475;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55475;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55483;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55487;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55489;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55491;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55492;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55493;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55494;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55495;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55496;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55498;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55756;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55777;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55782;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85673;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85674;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55488;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55781;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85661;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85662;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85663;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85665;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85666;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85667;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85669;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85671;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85672;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85675;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85807;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85808;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85809;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85810;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85839;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85844;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85845;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85848;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87587;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300060, 31036, 0.0, 'Duskwood (Manor Mistmantle) - Solid Chest (2852)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31031 WHERE guid=16763;
UPDATE pool_gameobject SET pool_entry=31027 WHERE guid=16983;
UPDATE pool_gameobject SET pool_entry=31032 WHERE guid=16989;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=17033;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=17134;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=18547;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=18562;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=18565;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=18572;
UPDATE pool_gameobject SET pool_entry=31029 WHERE guid=18577;
UPDATE pool_gameobject SET pool_entry=31029 WHERE guid=33431;
UPDATE pool_gameobject SET pool_entry=31034 WHERE guid=33434;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=33475;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=55475;
UPDATE pool_gameobject SET pool_entry=31035 WHERE guid=55483;
UPDATE pool_gameobject SET pool_entry=31036 WHERE guid=55487;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=55489;
UPDATE pool_gameobject SET pool_entry=31029 WHERE guid=55491;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=55492;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=55493;
UPDATE pool_gameobject SET pool_entry=31028 WHERE guid=55494;
UPDATE pool_gameobject SET pool_entry=31037 WHERE guid=55495;
UPDATE pool_gameobject SET pool_entry=31032 WHERE guid=55496;
UPDATE pool_gameobject SET pool_entry=31032 WHERE guid=55498;
UPDATE pool_gameobject SET pool_entry=31027 WHERE guid=55756;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=55777;
UPDATE pool_gameobject SET pool_entry=31033 WHERE guid=55782;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31031 WHERE entry=39959;
UPDATE pool_template SET entry=31027 WHERE entry=39955;
UPDATE pool_template SET entry=31032 WHERE entry=39960;
UPDATE pool_template SET entry=31028 WHERE entry=39956;
UPDATE pool_template SET entry=31033 WHERE entry=39961;
UPDATE pool_template SET entry=31029 WHERE entry=39957;
UPDATE pool_template SET entry=31034 WHERE entry=39962;
UPDATE pool_template SET entry=31035 WHERE entry=39963;
UPDATE pool_template SET entry=31036 WHERE entry=39964;
UPDATE pool_template SET entry=31037 WHERE entry=39965;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31031 WHERE pool_id=39959;
UPDATE pool_pool SET pool_id=31027 WHERE pool_id=39955;
UPDATE pool_pool SET pool_id=31032 WHERE pool_id=39960;
UPDATE pool_pool SET pool_id=31028 WHERE pool_id=39956;
UPDATE pool_pool SET pool_id=31033 WHERE pool_id=39961;
UPDATE pool_pool SET pool_id=31029 WHERE pool_id=39957;
UPDATE pool_pool SET pool_id=31034 WHERE pool_id=39962;
UPDATE pool_pool SET pool_id=31035 WHERE pool_id=39963;
UPDATE pool_pool SET pool_id=31036 WHERE pool_id=39964;
UPDATE pool_pool SET pool_id=31037 WHERE pool_id=39965;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=12, description="Duskwood - Master Chest Pool" WHERE entry=39914;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Wetlands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300101, 2850, 0, -4141.16, -2950.04, 11.5826, 5.88176, 0.0, 0.0, -0.199367, 0.979925, 300, 900),
(300105, 2850, 0, -3751.49, -2922.89, 12.0202, 3.73501, 0.0, 0.0, -0.956305, 0.292372, 300, 900),
(300106, 2852, 0, -3656.05, -2609.75, 51.9026, 0.488691, 0.0, 0.0, 0.241921, 0.970296, 300, 900),
(300107, 2852, 0, -3418.88, -2505.52, 27.1158, 3.10665, 0.0, 0.0, 0.999847, 0.0174693, 300, 900),
(300108, 2852, 0, -3321.84, -2279.77, 51.8986, 1.0472, 0.0, 0.0, 0.5, 0.866025, 300, 900),
(300109, 2850, 0, -3107.93, -963.956, 8.52378, 5.13127, 0.0, 0.0, -0.544639, 0.838671, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14653;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14660;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14861;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15050;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15084;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15098;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15142;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15146;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15147;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15149;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15153;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15207;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15212;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15213;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55478;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55479;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55480;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55481;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55482;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55486;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55490;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55497;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55499;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55757;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=56705;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85841;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85824;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85825;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85838;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85840;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85847;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87379;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87380;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=91362;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300101, 31038, 0.0, 'Wetlands - Solid Chest (2850)'),
(300105, 31040, 0.0, 'Wetlands (Mosshide Fen) - Solid Chest (2850)'),
(300106, 31043, 0.0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(300107, 31043, 0.0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(300108, 31043, 0.0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(300109, 31041, 0.0, 'Wetlands (Bluegill Marsh) - Solid Chest (2850)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31043 WHERE guid=14653;
UPDATE pool_gameobject SET pool_entry=31044 WHERE guid=14861;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=15050;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=15084;
UPDATE pool_gameobject SET pool_entry=31045 WHERE guid=15098;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=15142;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=15146;
UPDATE pool_gameobject SET pool_entry=31039 WHERE guid=15147;
UPDATE pool_gameobject SET pool_entry=31040 WHERE guid=15149;
UPDATE pool_gameobject SET pool_entry=31043 WHERE guid=15153;
UPDATE pool_gameobject SET pool_entry=31041 WHERE guid=15207;
UPDATE pool_gameobject SET pool_entry=31042 WHERE guid=15213;
UPDATE pool_gameobject SET pool_entry=31041 WHERE guid=55478;
UPDATE pool_gameobject SET pool_entry=31041 WHERE guid=55479;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=55480;
UPDATE pool_gameobject SET pool_entry=31038 WHERE guid=55481;
UPDATE pool_gameobject SET pool_entry=31047 WHERE guid=55482;
UPDATE pool_gameobject SET pool_entry=31042 WHERE guid=55486;
UPDATE pool_gameobject SET pool_entry=31045 WHERE guid=55490;
UPDATE pool_gameobject SET pool_entry=31043 WHERE guid=55497;
UPDATE pool_gameobject SET pool_entry=31045 WHERE guid=55499;
UPDATE pool_gameobject SET pool_entry=31043 WHERE guid=55757;
UPDATE pool_gameobject SET pool_entry=31046 WHERE guid=56705;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31043 WHERE entry=39971;
UPDATE pool_template SET entry=31044 WHERE entry=39972;
UPDATE pool_template SET entry=31038 WHERE entry=39966;
UPDATE pool_template SET entry=31045 WHERE entry=39973;
UPDATE pool_template SET entry=31039 WHERE entry=39967;
UPDATE pool_template SET entry=31040 WHERE entry=39968;
UPDATE pool_template SET entry=31041 WHERE entry=39969;
UPDATE pool_template SET entry=31042 WHERE entry=39970;
UPDATE pool_template SET entry=31047 WHERE entry=39975;
UPDATE pool_template SET entry=31046 WHERE entry=39974;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31043 WHERE pool_id=39971;
UPDATE pool_pool SET pool_id=31044 WHERE pool_id=39972;
UPDATE pool_pool SET pool_id=31038 WHERE pool_id=39966;
UPDATE pool_pool SET pool_id=31045 WHERE pool_id=39973;
UPDATE pool_pool SET pool_id=31039 WHERE pool_id=39967;
UPDATE pool_pool SET pool_id=31040 WHERE pool_id=39968;
UPDATE pool_pool SET pool_id=31041 WHERE pool_id=39969;
UPDATE pool_pool SET pool_id=31042 WHERE pool_id=39970;
UPDATE pool_pool SET pool_id=31047 WHERE pool_id=39975;
UPDATE pool_pool SET pool_id=31046 WHERE pool_id=39974;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=12, description="Wetlands - Master Chest Pool" WHERE entry=39916;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Elwynn Forest
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(83070, 106318, 0, -9743.79, 81.3121, 13.6848, 2.6529, 0.0, 0.0, 0.0, 0.0, 300, 900),
(83073, 106318, 0, -9051.11, -625.67, 53.4202, 1.36136, 0.0, 0.0, 0.0, 0.0, 300, 900),
(83081, 106318, 0, -9736.54, 120.219, 25.6411, -1.50098, 0.0, 0.0, 0.0, 0.0, 300, 900),
(83083, 106318, 0, -9828.59, 87.2501, 0.875297, -0.471239, 0.0, 0.0, 0.0, 0.0, 300, 900),
(300024, 2843, 0, -9060.95, -463.424, 72.5782, 1.53589, 0.0, 0.0, 0.694658, 0.71934, 300, 900),
(300065, 106318, 0, -8894.47, -717.691, 69.721, 0.296705, 0.0, 0.0, 0.147809, 0.989016, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=83089;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85752;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5433;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=83088;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85745;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85746;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85747;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85751;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85756;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85759;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85761;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85762;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85763;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85770;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85771;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85774;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85879;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85880;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87390;
-- Update GUID of existing GOs that have different GUID in target database
-- 26234 -> 83066
UPDATE gameobject SET guid=83066, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26234;
UPDATE pool_gameobject SET guid=83066, pool_entry=31246 WHERE guid=26234;
-- 26716 -> 83067
UPDATE gameobject SET guid=83067, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26716;
UPDATE pool_gameobject SET guid=83067, pool_entry=31244 WHERE guid=26716;
-- 26814 -> 83068
UPDATE gameobject SET guid=83068, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26814;
UPDATE pool_gameobject SET guid=83068, pool_entry=31244 WHERE guid=26814;
-- 26865 -> 83069
UPDATE gameobject SET guid=83069, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26865;
UPDATE pool_gameobject SET guid=83069, pool_entry=31247 WHERE guid=26865;
-- 26895 -> 83071
UPDATE gameobject SET guid=83071, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26895;
UPDATE pool_gameobject SET guid=83071, pool_entry=31248 WHERE guid=26895;
-- 26916 -> 83072
UPDATE gameobject SET guid=83072, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26916;
UPDATE pool_gameobject SET guid=83072, pool_entry=31249 WHERE guid=26916;
-- 26978 -> 83074
UPDATE gameobject SET guid=83074, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26978;
UPDATE pool_gameobject SET guid=83074, pool_entry=31246 WHERE guid=26978;
-- 26995 -> 83075
UPDATE gameobject SET guid=83075, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=26995;
UPDATE pool_gameobject SET guid=83075, pool_entry=31250 WHERE guid=26995;
-- 27000 -> 83076
UPDATE gameobject SET guid=83076, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=27000;
UPDATE pool_gameobject SET guid=83076, pool_entry=31251 WHERE guid=27000;
-- 27006 -> 83077
UPDATE gameobject SET guid=83077, rotation2=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=27006;
UPDATE pool_gameobject SET guid=83077, pool_entry=31244 WHERE guid=27006;
-- 30704 -> 83078
UPDATE gameobject SET guid=83078, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30704;
UPDATE pool_gameobject SET guid=83078, pool_entry=31252 WHERE guid=30704;
-- 30714 -> 83079
UPDATE gameobject SET guid=83079, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30714;
UPDATE pool_gameobject SET guid=83079, pool_entry=31250 WHERE guid=30714;
-- 30782 -> 83080
UPDATE gameobject SET guid=83080, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30782;
UPDATE pool_gameobject SET guid=83080, pool_entry=31252 WHERE guid=30782;
-- 30950 -> 83082
UPDATE gameobject SET guid=83082, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30950;
UPDATE pool_gameobject SET guid=83082, pool_entry=31253 WHERE guid=30950;
-- 33421 -> 83084
UPDATE gameobject SET guid=83084, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33421;
UPDATE pool_gameobject SET guid=83084, pool_entry=31250 WHERE guid=33421;
-- 33492 -> 83085
UPDATE gameobject SET guid=83085, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33492;
UPDATE pool_gameobject SET guid=83085, pool_entry=31244 WHERE guid=33492;
-- 33616 -> 83086
UPDATE gameobject SET guid=83086, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33616;
UPDATE pool_gameobject SET guid=83086, pool_entry=31246 WHERE guid=33616;
-- 34032 -> 83087
UPDATE gameobject SET guid=83087, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=34032;
UPDATE pool_gameobject SET guid=83087, pool_entry=31247 WHERE guid=34032;
-- 1090075 -> 300020
UPDATE gameobject SET guid=300020, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090075;
UPDATE pool_gameobject SET guid=300020, pool_entry=31006 WHERE guid=1090075;
-- 1090076 -> 300021
UPDATE gameobject SET guid=300021, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090076;
UPDATE pool_gameobject SET guid=300021, pool_entry=31006 WHERE guid=1090076;
-- 1090077 -> 300022
UPDATE gameobject SET guid=300022, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090077;
UPDATE pool_gameobject SET guid=300022, pool_entry=31007 WHERE guid=1090077;
-- 1090078 -> 300023
UPDATE gameobject SET guid=300023, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090078;
UPDATE pool_gameobject SET guid=300023, pool_entry=31007 WHERE guid=1090078;
-- 1090080 -> 300025
UPDATE gameobject SET guid=300025, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090080;
UPDATE pool_gameobject SET guid=300025, pool_entry=31245, description='Elwynn Forest (Northshire) - Battered Chest (2843)' WHERE guid=1090080;
-- 1090084 -> 300029
UPDATE gameobject SET guid=300029, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090084;
UPDATE pool_gameobject SET guid=300029, pool_entry=31006 WHERE guid=1090084;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 1090079 with entry 2843

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(83070, 31253, 0.0, 'Elwynn Forest (Fargodeep Mine) - Battered Chest (106318)'),
(83073, 31252, 0.0, 'Elwynn Forest (Jasperlode Mine) - Battered Chest (106318)'),
(83081, 31253, 0.0, 'Elwynn Forest (Fargodeep Mine) - Battered Chest (106318)'),
(83083, 31253, 0.0, 'Elwynn Forest (Fargodeep Mine) - Battered Chest (106318)'),
(300024, 31007, 0.0, 'Elwynn Forest (Northshire Vineyards) - Battered Chest (2843)'),
(300065, 31250, 0.0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31254 WHERE guid=83089;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31254 WHERE entry=40189;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31254 WHERE pool_id=40189;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=14, description="Elwynn Forest - Master Chest Pool" WHERE entry=39902;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Blackrock Mountain
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170024;

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31191 WHERE guid=170024;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31191 WHERE entry=40122;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31191 WHERE pool_id=40122;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Burning Steppes - Master Chest Pool" WHERE entry=39933;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Western Plaguelands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300225, 153453, 0, 2704.41, -1942.55, 72.15, 3.82227, 0.0, 0.0, -0.942641, 0.333808, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1268;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1269;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1270;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1271;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1272;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1273;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45484;
UPDATE gameobject SET orientation=0.0349062, rotation2=0.0174522, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45485;
UPDATE gameobject SET rotation2=-0.681998, rotation3=0.731354, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45488;
UPDATE gameobject SET orientation=-3.10665, rotation2=-0.999847, rotation3=0.0174693, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45492;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45498;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45548;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55573;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55574;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55575;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55577;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85789;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85899;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85900;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300225, 31258, 0.0, 'Western Plaguelands - Solid Chest (153453)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1268;
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1269;
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1270;
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1271;
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1272;
UPDATE pool_gameobject SET pool_entry=31259 WHERE guid=1273;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=45484;
UPDATE pool_gameobject SET pool_entry=31256 WHERE guid=45485;
UPDATE pool_gameobject SET pool_entry=31257 WHERE guid=45488;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=45492;
UPDATE pool_gameobject SET pool_entry=31262 WHERE guid=45498;
UPDATE pool_gameobject SET pool_entry=31258 WHERE guid=45548;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=55573;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=55574;
UPDATE pool_gameobject SET pool_entry=31260 WHERE guid=55575;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=55577;
UPDATE pool_gameobject SET pool_entry=31255 WHERE guid=85789;
UPDATE pool_gameobject SET pool_entry=31261 WHERE guid=85899;
UPDATE pool_gameobject SET pool_entry=31260 WHERE guid=85900;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31259 WHERE entry=40194;
UPDATE pool_template SET entry=31255 WHERE entry=40190;
UPDATE pool_template SET entry=31256 WHERE entry=40191;
UPDATE pool_template SET entry=31257 WHERE entry=40192;
UPDATE pool_template SET entry=31262 WHERE entry=40197;
UPDATE pool_template SET entry=31258 WHERE entry=40193;
UPDATE pool_template SET entry=31260 WHERE entry=40195;
UPDATE pool_template SET entry=31261 WHERE entry=40196;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31259 WHERE pool_id=40194;
UPDATE pool_pool SET pool_id=31255 WHERE pool_id=40190;
UPDATE pool_pool SET pool_id=31256 WHERE pool_id=40191;
UPDATE pool_pool SET pool_id=31257 WHERE pool_id=40192;
UPDATE pool_pool SET pool_id=31262 WHERE pool_id=40197;
UPDATE pool_pool SET pool_id=31258 WHERE pool_id=40193;
UPDATE pool_pool SET pool_id=31260 WHERE pool_id=40195;
UPDATE pool_pool SET pool_id=31261 WHERE pool_id=40196;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11 WHERE entry=39934;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Stranglethorn Vale
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300051, 4149, 0, -13180.3, -545.589, 4.64249, 3.29869, 0.0, 0.0, -0.996917, 0.0784664, 300, 900),
(300052, 4149, 0, -13062.8, -466.432, 44.7542, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 300, 900),
(300053, 2857, 0, -12479.0, -178.103, 14.1062, 2.04204, 0.0, 0.0, 0.85264, 0.522499, 300, 900),
(300054, 2857, 0, -11401.3, -788.461, 15.1698, 3.52557, 0.0, 0.0, -0.981627, 0.190812, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11651;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11676;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11691;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11693;
UPDATE gameobject SET rotation2=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11704;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11806;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11970;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12048;
UPDATE gameobject SET rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12049;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12054;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12119;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12157;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12169;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12185;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29256;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55502;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55504;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55506;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55507;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55510;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55511;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55513;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55516;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55517;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55531;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55532;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55534;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55540;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55758;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55764;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55765;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55766;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85693;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85694;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85696;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85711;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85723;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85726;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87384;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11695;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55533;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85695;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85708;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85724;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85725;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85730;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85732;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85860;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85873;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85875;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87388;
-- Update GUID of existing GOs that have different GUID in target database
-- 190336 -> 55526
UPDATE gameobject SET guid=80002 WHERE guid=55526; -- Cleanup of standalone GO, align its GUID with TBC-DB one
UPDATE gameobject SET guid=55526, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190336;
UPDATE pool_gameobject SET guid=55526, pool_entry=31069 WHERE guid=190336;
-- 190337 -> 55528
UPDATE gameobject SET guid=80005 WHERE guid=55528; -- Cleanup of standalone GO, use free GUID
UPDATE gameobject SET guid=55528, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190337;
UPDATE pool_gameobject SET guid=55528, pool_entry=31069 WHERE guid=190337;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300051, 31076, 0.0, 'Stranglethorn Vale (Crystalvein Mine) - Solid Chest (4149)'),
(300052, 31073, 0.0, 'Stranglethorn Vale - Solid Chest (4149)'),
(300053, 31078, 0.0, 'Stranglethorn Vale (Mizjah Ruins) - Solid Chest (4149)'),
(300054, 31278, 0.0, 'Stranglethorn Vale (The Stockpile) - Solid Chest (2857)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31070 WHERE guid=11651;
UPDATE pool_gameobject SET pool_entry=31071 WHERE guid=11676;
UPDATE pool_gameobject SET pool_entry=31067 WHERE guid=11691;
UPDATE pool_gameobject SET pool_entry=31072 WHERE guid=11693;
UPDATE pool_gameobject SET pool_entry=31069 WHERE guid=11704;
UPDATE pool_gameobject SET pool_entry=31074 WHERE guid=11806;
UPDATE pool_gameobject SET pool_entry=31065 WHERE guid=11970;
UPDATE pool_gameobject SET pool_entry=31066 WHERE guid=12048;
UPDATE pool_gameobject SET pool_entry=31067 WHERE guid=12054;
UPDATE pool_gameobject SET pool_entry=31068 WHERE guid=12119;
UPDATE pool_gameobject SET pool_entry=31070 WHERE guid=12157;
UPDATE pool_gameobject SET pool_entry=31069 WHERE guid=12169;
UPDATE pool_gameobject SET pool_entry=31075 WHERE guid=12185;
UPDATE pool_gameobject SET pool_entry=31076 WHERE guid=29256;
UPDATE pool_gameobject SET pool_entry=31065 WHERE guid=55502;
UPDATE pool_gameobject SET pool_entry=31066 WHERE guid=55504;
UPDATE pool_gameobject SET pool_entry=31066 WHERE guid=55506;
UPDATE pool_gameobject SET pool_entry=31077 WHERE guid=55507;
UPDATE pool_gameobject SET pool_entry=31067 WHERE guid=55510;
UPDATE pool_gameobject SET pool_entry=31078 WHERE guid=55511;
UPDATE pool_gameobject SET pool_entry=31079 WHERE guid=55517;
UPDATE pool_gameobject SET pool_entry=31071 WHERE guid=55531;
UPDATE pool_gameobject SET pool_entry=31070 WHERE guid=55532;
UPDATE pool_gameobject SET pool_entry=31072 WHERE guid=55534;
UPDATE pool_gameobject SET pool_entry=31070 WHERE guid=55540;
UPDATE pool_gameobject SET pool_entry=31077 WHERE guid=55758;
UPDATE pool_gameobject SET pool_entry=31071 WHERE guid=55764;
UPDATE pool_gameobject SET pool_entry=31070 WHERE guid=55765;
UPDATE pool_gameobject SET pool_entry=31076 WHERE guid=55766;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31070 WHERE entry=39998;
UPDATE pool_template SET entry=31071 WHERE entry=39999;
UPDATE pool_template SET entry=31067 WHERE entry=39995;
UPDATE pool_template SET entry=31072 WHERE entry=40000;
UPDATE pool_template SET entry=31069 WHERE entry=39997;
UPDATE pool_template SET entry=31074 WHERE entry=40002;
UPDATE pool_template SET entry=31065 WHERE entry=39993;
UPDATE pool_template SET entry=31066 WHERE entry=39994;
UPDATE pool_template SET entry=31068 WHERE entry=39996;
UPDATE pool_template SET entry=31075 WHERE entry=40003;
UPDATE pool_template SET entry=31076 WHERE entry=40004;
UPDATE pool_template SET entry=31077 WHERE entry=40005;
UPDATE pool_template SET entry=31078 WHERE entry=40006;
UPDATE pool_template SET entry=31079 WHERE entry=40007;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31070 WHERE pool_id=39998;
UPDATE pool_pool SET pool_id=31071 WHERE pool_id=39999;
UPDATE pool_pool SET pool_id=31067 WHERE pool_id=39995;
UPDATE pool_pool SET pool_id=31072 WHERE pool_id=40000;
UPDATE pool_pool SET pool_id=31069 WHERE pool_id=39997;
UPDATE pool_pool SET pool_id=31074 WHERE pool_id=40002;
UPDATE pool_pool SET pool_id=31065 WHERE pool_id=39993;
UPDATE pool_pool SET pool_id=31066 WHERE pool_id=39994;
UPDATE pool_pool SET pool_id=31068 WHERE pool_id=39996;
UPDATE pool_pool SET pool_id=31075 WHERE pool_id=40003;
UPDATE pool_pool SET pool_id=31076 WHERE pool_id=40004;
UPDATE pool_pool SET pool_id=31077 WHERE pool_id=40005;
UPDATE pool_pool SET pool_id=31078 WHERE pool_id=40006;
UPDATE pool_pool SET pool_id=31079 WHERE pool_id=40007;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=24, description="Stranglethorn Vale - Master Chest Pool" WHERE entry=39921;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Alterac Mountains
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300185, 105579, 0, 96.9252, 367.759, 43.922, 3.97936, 0.0, 0.0, -0.913545, 0.406738, 300, 900),
(300186, 105579, 0, 335.954, 185.797, 42.9273, 4.69494, 0.0, 0.0, -0.71325, 0.70091, 300, 900),
(300188, 105579, 0, 424.828, 221.755, 42.888, 0.663223, 0.0, 0.0, 0.325567, 0.945519, 300, 900),
(300189, 2857, 0, 457.387, -219.749, 152.522, 0.488691, 0.0, 0.0, 0.241921, 0.970296, 300, 900),
(300190, 2855, 0, 511.342, -333.542, 153.674, 0.925024, 0.0, 0.0, 0.446198, 0.894934, 300, 900),
(300193, 2855, 0, 623.352, -295.892, 152.887, 3.85718, 0.0, 0.0, -0.936671, 0.35021, 300, 900),
(300204, 2857, 0, 1108.17, -719.517, 71.5193, 3.99681, 0.0, 0.0, -0.909961, 0.414694, 300, 900),
(300205, 2857, 0, 1115.39, -344.918, 43.6731, 5.51524, 0.0, 0.0, -0.374606, 0.927184, 300, 900),
(300209, 2857, 0, 1215.36, -326.468, 48.3828, 0.942477, 0.0, 0.0, 0.45399, 0.891007, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=32213;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33181;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33193;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33200;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33206;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33207;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33208;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=33304;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55500;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55501;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55512;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55759;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55761;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85779;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300185, 31286, 0.0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(300186, 31286, 0.0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(300188, 31286, 0.0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(300189, 31083, 0.0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(300190, 31083, 0.0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(300193, 31083, 0.0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(300204, 31084, 0.0, 'Alterac Mountains (The Uplands) - Solid Chest (2857)'),
(300205, 31085, 0.0, 'Alterac Mountains (Dandred''s Fold) - Solid Chest (2857)'),
(300209, 31085, 0.0, 'Alterac Mountains (Dandred''s Fold) - Solid Chest (2857)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31084 WHERE guid=33193;
UPDATE pool_gameobject SET pool_entry=31083 WHERE guid=33200;
UPDATE pool_gameobject SET pool_entry=31082 WHERE guid=33206;
UPDATE pool_gameobject SET pool_entry=31082 WHERE guid=33207;
UPDATE pool_gameobject SET pool_entry=31085 WHERE guid=33208;
UPDATE pool_gameobject SET pool_entry=31083 WHERE guid=33304;
UPDATE pool_gameobject SET pool_entry=31082 WHERE guid=55500;
UPDATE pool_gameobject SET pool_entry=31083 WHERE guid=55501;
UPDATE pool_gameobject SET pool_entry=31083 WHERE guid=55512;
UPDATE pool_gameobject SET pool_entry=31082 WHERE guid=55759;
UPDATE pool_gameobject SET pool_entry=31085 WHERE guid=55761;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31084 WHERE entry=40012;
UPDATE pool_template SET entry=31083 WHERE entry=40011;
UPDATE pool_template SET entry=31082 WHERE entry=40010;
UPDATE pool_template SET entry=31085 WHERE entry=40013;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31084 WHERE pool_id=40012;
UPDATE pool_pool SET pool_id=31083 WHERE pool_id=40011;
UPDATE pool_pool SET pool_id=31082 WHERE pool_id=40010;
UPDATE pool_pool SET pool_id=31085 WHERE pool_id=40013;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Alterac Mountains - Master Chest Pool" WHERE entry=39918;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Loch Modan
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300082, 106319, 0, -6094.4, -2773.76, 415.758, 0.0, 0.0, 0.0, 0.0, 1.0, 300, 900),
(300083, 106319, 0, -6043.68, -2985.55, 402.241, 6.26573, 0.0, 0.0, -0.00872612, 0.999962, 300, 900),
(300086, 2849, 0, -5636.4, -3893.67, 329.955, 2.63544, 0.0, 0.0, 0.968147, 0.250381, 300, 900),
(300088, 2849, 0, -5485.15, -3341.43, 261.019, 1.27409, 0.0, 0.0, 0.594822, 0.803857, 300, 900),
(300091, 2849, 0, -5284.79, -3250.98, 235.57, 1.97222, 0.0, 0.0, 0.833885, 0.551938, 300, 900),
(300096, 106319, 0, -4965.29, -3494.63, 305.484, 3.9619, 0.0, 0.0, -0.91706, 0.39875, 300, 900),
(300098, 106319, 0, -4786.32, -2979.21, 323.46, 2.63544, 0.0, 0.0, 0.968147, 0.250381, 300, 900),
(300099, 106319, 0, -4781.68, -3033.98, 301.639, 2.37364, 0.0, 0.0, 0.927183, 0.374608, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12796;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12877;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12909;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12926;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12998;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13197;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13209;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13246;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13248;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13426;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13437;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55467;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55468;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55547;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55556;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55557;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55558;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55559;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55560;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85886;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85833;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85834;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85885;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300082, 31209, 0.0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(300083, 31209, 0.0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(300086, 31207, 0.0, 'Loch Modan (Ironband''s Excavation Site) - Battered Chest (2849)'),
(300088, 31206, 0.0, 'Loch Modan (The Loch) - Battered Chest (2849)'),
(300091, 31206, 0.0, 'Loch Modan (The Loch) - Battered Chest (2849)'),
(300096, 31210, 0.0, 'Loch Modan - Battered Chest (106319)'),
(300098, 31211, 0.0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(300099, 31211, 0.0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=12796;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=12877;
UPDATE pool_gameobject SET pool_entry=31206 WHERE guid=12909;
UPDATE pool_gameobject SET pool_entry=31207 WHERE guid=12926;
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=12998;
UPDATE pool_gameobject SET pool_entry=31208 WHERE guid=13197;
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=13209;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=13246;
UPDATE pool_gameobject SET pool_entry=31211 WHERE guid=13248;
UPDATE pool_gameobject SET pool_entry=31211 WHERE guid=13426;
UPDATE pool_gameobject SET pool_entry=31208 WHERE guid=13437;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=55467;
UPDATE pool_gameobject SET pool_entry=31208 WHERE guid=55468;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=55547;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=55556;
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=55557;
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=55558;
UPDATE pool_gameobject SET pool_entry=31210 WHERE guid=55559;
UPDATE pool_gameobject SET pool_entry=31209 WHERE guid=55560;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31209 WHERE entry=40140;
UPDATE pool_template SET entry=31210 WHERE entry=40141;
UPDATE pool_template SET entry=31206 WHERE entry=40137;
UPDATE pool_template SET entry=31207 WHERE entry=40138;
UPDATE pool_template SET entry=31208 WHERE entry=40139;
UPDATE pool_template SET entry=31211 WHERE entry=40142;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31209 WHERE pool_id=40140;
UPDATE pool_pool SET pool_id=31210 WHERE pool_id=40141;
UPDATE pool_pool SET pool_id=31206 WHERE pool_id=40137;
UPDATE pool_pool SET pool_id=31207 WHERE pool_id=40138;
UPDATE pool_pool SET pool_id=31208 WHERE pool_id=40139;
UPDATE pool_pool SET pool_id=31211 WHERE pool_id=40142;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=7, description="Loch Modan - Master Chest Pool" WHERE entry=39907;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Westfall
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300055, 2849, 0, -11398.6, 1801.28, 7.46052, 0.0, 0.0, 0.0, 0.0, 1.0, 300, 900),
(300057, 106319, 0, -11039.1, 1460.18, 45.3211, 3.7001, 0.0, 0.0, -0.961261, 0.27564, 300, 900),
(300059, 106319, 0, -10504.4, 1980.73, 10.7782, 5.13127, 0.0, 0.0, -0.544639, 0.838671, 300, 900),
(300063, 106319, 0, -9884.88, 1423.31, 39.9257, 3.05433, 0.0, 0.0, 0.999048, 0.0436193, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5432;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42680;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42681;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42684;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42718;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42719;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42734;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42736;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42738;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42739;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42748;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42749;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42788;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55462;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55464;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55466;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55545;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55546;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55548;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55550;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55551;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55552;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55553;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55554;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5418;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5436;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5437;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=5438;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55549;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55555;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85773;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85828;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85887;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85889;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87391;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300055, 31093, 0.0, 'Westfall (Longshore) - Battered Chest (2849)'),
(300057, 31088, 0.0, 'Westfall (Moonbrook) - Battered Chest (106319)'),
(300059, 31089, 0.0, 'Westfall (Gold Coast Quarry) - Battered Chest (106319)'),
(300063, 31090, 0.0, 'Westfall (Jangolode Mine) - Battered Chest (106319)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31089 WHERE guid=42680;
UPDATE pool_gameobject SET pool_entry=31086 WHERE guid=42684;
UPDATE pool_gameobject SET pool_entry=31090 WHERE guid=42718;
UPDATE pool_gameobject SET pool_entry=31091 WHERE guid=42719;
UPDATE pool_gameobject SET pool_entry=31087 WHERE guid=42734;
UPDATE pool_gameobject SET pool_entry=31092 WHERE guid=42736;
UPDATE pool_gameobject SET pool_entry=31088 WHERE guid=42738;
UPDATE pool_gameobject SET pool_entry=31090 WHERE guid=42739;
UPDATE pool_gameobject SET pool_entry=31093 WHERE guid=42749;
UPDATE pool_gameobject SET pool_entry=31091 WHERE guid=42788;
UPDATE pool_gameobject SET pool_entry=31087 WHERE guid=55466;
UPDATE pool_gameobject SET pool_entry=31094 WHERE guid=55545;
UPDATE pool_gameobject SET pool_entry=31091 WHERE guid=55546;
UPDATE pool_gameobject SET pool_entry=31093 WHERE guid=55548;
UPDATE pool_gameobject SET pool_entry=31095 WHERE guid=55550;
UPDATE pool_gameobject SET pool_entry=31090 WHERE guid=55551;
UPDATE pool_gameobject SET pool_entry=31095 WHERE guid=55552;
UPDATE pool_gameobject SET pool_entry=31096 WHERE guid=55553;
UPDATE pool_gameobject SET pool_entry=31088 WHERE guid=55554;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31089 WHERE entry=40017;
UPDATE pool_template SET entry=31086 WHERE entry=40014;
UPDATE pool_template SET entry=31090 WHERE entry=40018;
UPDATE pool_template SET entry=31091 WHERE entry=40019;
UPDATE pool_template SET entry=31087 WHERE entry=40015;
UPDATE pool_template SET entry=31092 WHERE entry=40020;
UPDATE pool_template SET entry=31088 WHERE entry=40016;
UPDATE pool_template SET entry=31093 WHERE entry=40021;
UPDATE pool_template SET entry=31094 WHERE entry=40022;
UPDATE pool_template SET entry=31095 WHERE entry=40023;
UPDATE pool_template SET entry=31096 WHERE entry=40024;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31089 WHERE pool_id=40017;
UPDATE pool_pool SET pool_id=31086 WHERE pool_id=40014;
UPDATE pool_pool SET pool_id=31090 WHERE pool_id=40018;
UPDATE pool_pool SET pool_id=31091 WHERE pool_id=40019;
UPDATE pool_pool SET pool_id=31087 WHERE pool_id=40015;
UPDATE pool_pool SET pool_id=31092 WHERE pool_id=40020;
UPDATE pool_pool SET pool_id=31088 WHERE pool_id=40016;
UPDATE pool_pool SET pool_id=31093 WHERE pool_id=40021;
UPDATE pool_pool SET pool_id=31094 WHERE pool_id=40022;
UPDATE pool_pool SET pool_id=31095 WHERE pool_id=40023;
UPDATE pool_pool SET pool_id=31096 WHERE pool_id=40024;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=13, description="Westfall - Master Chest Pool" WHERE entry=39909;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Deadwind Pass
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Redridge Mountains
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300064, 2850, 0, -9223.85, -3300.4, 101.32, 6.26573, 0.0, 0.0, -0.00872612, 0.999962, 300, 900),
(300066, 2849, 0, -8884.3, -2160.68, 132.445, 6.23083, 0.0, 0.0, -0.0261765, 0.999657, 300, 900),
(300067, 2849, 0, -8883.47, -2002.71, 134.528, 2.07694, 0.0, 0.0, 0.861628, 0.507539, 300, 900),
(300068, 2850, 0, -8720.19, -2338.02, 155.916, 5.63741, 0.0, 0.0, -0.317305, 0.948324, 300, 900),
(300258, 2850, 0, -9373.07, -3168.83, 83.5116, 1.79769, 0.0, 0.0, 0.782608, 0.622515, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18583;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18917;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20651;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20765;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20771;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20798;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=28632;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29240;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31122;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31127;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31130;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=31132;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42621;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55463;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55465;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55469;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55470;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55472;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55473;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55476;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55477;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55485;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55775;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55776;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55778;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55779;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55780;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85823;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20793;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55471;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55474;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55484;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85820;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85821;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85822;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85826;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85827;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85835;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300064, 31200, 0.0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(300066, 31196, 0.0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(300067, 31314, 0.0, 'Redridge Mountains (Rethban Caverns) - Battered Chest (2849)'),
(300068, 31202, 0.0, 'Redridge Mountains (Render''s Camp) - Solid Chest (2850)'),
(300258, 31200, 0.0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31199 WHERE guid=18583;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=18917;
UPDATE pool_gameobject SET pool_entry=31194 WHERE guid=20651;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=20765;
UPDATE pool_gameobject SET pool_entry=31195 WHERE guid=20798;
UPDATE pool_gameobject SET pool_entry=31196 WHERE guid=28632;
UPDATE pool_gameobject SET pool_entry=31202 WHERE guid=29240;
UPDATE pool_gameobject SET pool_entry=31198 WHERE guid=31127;
UPDATE pool_gameobject SET pool_entry=31196 WHERE guid=31130;
UPDATE pool_gameobject SET pool_entry=31203 WHERE guid=31132;
UPDATE pool_gameobject SET pool_entry=31199 WHERE guid=42621;
UPDATE pool_gameobject SET pool_entry=31195 WHERE guid=55463;
UPDATE pool_gameobject SET pool_entry=31196 WHERE guid=55465;
UPDATE pool_gameobject SET pool_entry=31194 WHERE guid=55469;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=55470;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=55472;
UPDATE pool_gameobject SET pool_entry=31201 WHERE guid=55476;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=55477;
UPDATE pool_gameobject SET pool_entry=31204 WHERE guid=55485;
UPDATE pool_gameobject SET pool_entry=31199 WHERE guid=55775;
UPDATE pool_gameobject SET pool_entry=31200 WHERE guid=55776;
UPDATE pool_gameobject SET pool_entry=31196 WHERE guid=55778;
UPDATE pool_gameobject SET pool_entry=31195 WHERE guid=55779;
UPDATE pool_gameobject SET pool_entry=31205 WHERE guid=55780;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31199 WHERE entry=40130;
UPDATE pool_template SET entry=31200 WHERE entry=40131;
UPDATE pool_template SET entry=31194 WHERE entry=40125;
UPDATE pool_template SET entry=31195 WHERE entry=40126;
UPDATE pool_template SET entry=31196 WHERE entry=40127;
UPDATE pool_template SET entry=31202 WHERE entry=40133;
UPDATE pool_template SET entry=31198 WHERE entry=40129;
UPDATE pool_template SET entry=31203 WHERE entry=40134;
UPDATE pool_template SET entry=31201 WHERE entry=40132;
UPDATE pool_template SET entry=31204 WHERE entry=40135;
UPDATE pool_template SET entry=31205 WHERE entry=40136;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31199 WHERE pool_id=40130;
UPDATE pool_pool SET pool_id=31200 WHERE pool_id=40131;
UPDATE pool_pool SET pool_id=31194 WHERE pool_id=40125;
UPDATE pool_pool SET pool_id=31195 WHERE pool_id=40126;
UPDATE pool_pool SET pool_id=31196 WHERE pool_id=40127;
UPDATE pool_pool SET pool_id=31202 WHERE pool_id=40133;
UPDATE pool_pool SET pool_id=31198 WHERE pool_id=40129;
UPDATE pool_pool SET pool_id=31203 WHERE pool_id=40134;
UPDATE pool_pool SET pool_id=31201 WHERE pool_id=40132;
UPDATE pool_pool SET pool_id=31204 WHERE pool_id=40135;
UPDATE pool_pool SET pool_id=31205 WHERE pool_id=40136;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=15, description="Redridge Mountains - Master Chest Pool" WHERE entry=39911;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Arathi Highlands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55576, 105581, 0, -1509.78, -1689.98, 68.8217, -1.37881, 0.0, 0.0, 0.0, 0.0, 300, 900),
(300115, 2857, 0, -2169.96, -1708.87, -46.6102, 1.18682, 0.0, 0.0, 0.559193, 0.829038, 300, 900),
(300119, 2857, 0, -2051.7, -2796.66, 72.4766, 5.20108, 0.0, 0.0, -0.515037, 0.857168, 300, 900),
(300127, 2855, 0, -1883.55, -3068.64, 57.881, 4.34587, 0.0, 0.0, -0.824126, 0.566406, 300, 900),
(300130, 2855, 0, -1813.15, -3409.62, 45.5308, 1.01229, 0.0, 0.0, 0.484809, 0.87462, 300, 900),
(300131, 2857, 0, -1789.1, -1580.76, 52.8563, 0.314158, 0.0, 0.0, 0.156434, 0.987688, 300, 900),
(300135, 2857, 0, -1677.67, -1769.35, 81.2149, 4.59022, 0.0, 0.0, -0.748956, 0.66262, 300, 900),
(300136, 105581, 0, -1601.2, -1644.99, 68.1097, 2.9845, 0.0, 0.0, 0.996917, 0.0784664, 300, 900),
(300139, 105581, 0, -1544.81, -1751.48, 68.1662, 1.11701, 0.0, 0.0, 0.529919, 0.848048, 300, 900),
(300140, 105578, 0, -1542.43, -3033.22, 12.9803, 6.23083, 0.0, 0.0, -0.0261765, 0.999657, 300, 900),
(300157, 105579, 0, -1106.34, -2921.2, 42.197, 4.66003, 0.0, 0.0, -0.725374, 0.688355, 300, 900),
(300159, 105579, 0, -1047.59, -2811.98, 42.197, 3.85718, 0.0, 0.0, -0.936671, 0.35021, 300, 900),
(300167, 2855, 0, -793.025, -2082.12, 34.9696, 2.28638, 0.0, 0.0, 0.909961, 0.414694, 300, 900),
(300168, 2855, 0, -776.63, -2028.77, 34.105, 1.06465, 0.0, 0.0, 0.507538, 0.861629, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10460;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16648;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16787;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16789;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16794;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16946;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16947;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16949;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16950;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16978;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55503;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55514;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55515;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55518;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55519;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55520;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55568;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85893;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16977;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16992;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55521;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87385;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300044;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300045;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300046;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(55576, 31099, 0.0, 'Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)'),
(300115, 31100, 0.0, 'Arathi Highlands (The Drowned Reef) - Solid Chest (2857)'),
(300119, 31101, 0.0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(300127, 31097, 0.0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(300130, 31097, 0.0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(300131, 31099, 0.0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(300135, 31099, 0.0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(300136, 31099, 0.0, 'Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)'),
(300139, 31099, 0.0, 'Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)'),
(300140, 31289, 0.0, 'Arathi Highlands (Go''Shek Farm) - Tattered Chest (105578)'),
(300157, 31290, 0.0, 'Arathi Highlands (Dabyrie''s Farmstead) - Tattered Chest (105579)'),
(300159, 31290, 0.0, 'Arathi Highlands (Dabyrie''s Farmstead) - Tattered Chest (105579)'),
(300167, 31098, 0.0, 'Arathi Highlands (Northfold Manor) - Solid Chest (2855)'),
(300168, 31098, 0.0, 'Arathi Highlands (Northfold Manor) - Solid Chest (2855)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31100 WHERE guid=10460;
UPDATE pool_gameobject SET pool_entry=31097 WHERE guid=16648;
UPDATE pool_gameobject SET pool_entry=31099 WHERE guid=16789;
UPDATE pool_gameobject SET pool_entry=31100 WHERE guid=16794;
UPDATE pool_gameobject SET pool_entry=31098 WHERE guid=16946;
UPDATE pool_gameobject SET pool_entry=31101 WHERE guid=16949;
UPDATE pool_gameobject SET pool_entry=31097 WHERE guid=16950;
UPDATE pool_gameobject SET pool_entry=31099 WHERE guid=16978;
UPDATE pool_gameobject SET pool_entry=31097 WHERE guid=55503;
UPDATE pool_gameobject SET pool_entry=31103 WHERE guid=55514;
UPDATE pool_gameobject SET pool_entry=31101 WHERE guid=55515;
UPDATE pool_gameobject SET pool_entry=31099 WHERE guid=55518;
UPDATE pool_gameobject SET pool_entry=31099 WHERE guid=55519;
UPDATE pool_gameobject SET pool_entry=31101 WHERE guid=55520;
UPDATE pool_gameobject SET pool_entry=31099, description='Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)' WHERE guid=16992;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31100 WHERE entry=40028;
UPDATE pool_template SET entry=31097 WHERE entry=40025;
UPDATE pool_template SET entry=31099 WHERE entry=40027;
UPDATE pool_template SET entry=31098 WHERE entry=40026;
UPDATE pool_template SET entry=31101 WHERE entry=40029;
UPDATE pool_template SET entry=31103 WHERE entry=40031;

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(31099, 39919, 0.0, 'Arathi Highlands (Stromgarde Keep) - Chest Pool');

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31100 WHERE pool_id=40028;
UPDATE pool_pool SET pool_id=31097 WHERE pool_id=40025;
UPDATE pool_pool SET pool_id=31098 WHERE pool_id=40026;
UPDATE pool_pool SET pool_id=31101 WHERE pool_id=40029;
UPDATE pool_pool SET pool_id=31103 WHERE pool_id=40031;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=9, description="Arathi Highlands - Master Chest Pool" WHERE entry=39919;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Burning Steppes
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300071, 153453, 0, -8225.17, -1954.8, 142.569, 0.645772, 0.0, 0.0, 0.317305, 0.948324, 300, 900),
(300072, 153453, 0, -8092.34, -1403.27, 130.926, 4.41568, 0.0, 0.0, -0.803857, 0.594823, 300, 900),
(300073, 153453, 0, -8073.49, -2968.62, 134.251, 4.01426, 0.0, 0.0, -0.906307, 0.422619, 300, 900),
(300074, 153453, 0, -7956.8, -904.648, 131.554, 0.383971, 0.0, 0.0, 0.190808, 0.981627, 300, 900),
(300076, 153453, 0, -7763.62, -1524.23, 131.932, 0.401425, 0.0, 0.0, 0.199367, 0.979925, 300, 900),
(300077, 153453, 0, -7550.28, -2740.63, 136.647, 3.21142, 0.0, 0.0, -0.999391, 0.0349061, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=6827;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=6835;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=6837;
UPDATE gameobject SET orientation=-0.191985, rotation2=-0.0958452, rotation3=0.995396, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=6868;
UPDATE gameobject SET rotation2=0.642787, rotation3=0.766045, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=6871;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45499;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45500;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55774;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85790;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85794;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85897;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85898;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170024;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300071, 31188, 0.0, 'Burning Steppes - Solid Chest (153453)'),
(300072, 31188, 0.0, 'Burning Steppes - Solid Chest (153453)'),
(300073, 31193, 0.0, 'Burning Steppes (Terror Wing Path) - Solid Chest (153453)'),
(300074, 31188, 0.0, 'Burning Steppes - Solid Chest (153453)'),
(300076, 31189, 0.0, 'Burning Steppes (Blackrock Stronghold) - Solid Chest (153453)'),
(300077, 31193, 0.0, 'Burning Steppes (Terror Wing Path) - Solid Chest (153453)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31189 WHERE guid=6827;
UPDATE pool_gameobject SET pool_entry=31188 WHERE guid=6835;
UPDATE pool_gameobject SET pool_entry=31190 WHERE guid=6837;
UPDATE pool_gameobject SET pool_entry=31188 WHERE guid=6868;
UPDATE pool_gameobject SET pool_entry=31188 WHERE guid=6871;
UPDATE pool_gameobject SET pool_entry=31193 WHERE guid=45499;
UPDATE pool_gameobject SET pool_entry=31190 WHERE guid=45500;
UPDATE pool_gameobject SET pool_entry=31192 WHERE guid=55774;
UPDATE pool_gameobject SET pool_entry=31190 WHERE guid=85790;
UPDATE pool_gameobject SET pool_entry=31192 WHERE guid=85794;
UPDATE pool_gameobject SET pool_entry=31189 WHERE guid=85897;
UPDATE pool_gameobject SET pool_entry=31188 WHERE guid=85898;
UPDATE pool_gameobject SET pool_entry=31191 WHERE guid=170024;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31189 WHERE entry=40120;
UPDATE pool_template SET entry=31188 WHERE entry=40119;
UPDATE pool_template SET entry=31190 WHERE entry=40121;
UPDATE pool_template SET entry=31193 WHERE entry=40124;
UPDATE pool_template SET entry=31192 WHERE entry=40123;
UPDATE pool_template SET entry=31191 WHERE entry=40122;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31189 WHERE pool_id=40120;
UPDATE pool_pool SET pool_id=31188 WHERE pool_id=40119;
UPDATE pool_pool SET pool_id=31190 WHERE pool_id=40121;
UPDATE pool_pool SET pool_id=31193 WHERE pool_id=40124;
UPDATE pool_pool SET pool_id=31192 WHERE pool_id=40123;
UPDATE pool_pool SET pool_id=31191 WHERE pool_id=40122;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Burning Steppes - Master Chest Pool" WHERE entry=39933;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Hinterlands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300173, 153451, 0, -417.437, -4015.42, 195.178, 4.08407, 0.0, 0.0, -0.891007, 0.453991, 300, 900),
(300179, 153451, 0, -161.006, -3784.68, 239.553, 1.13446, 0.0, 0.0, 0.537299, 0.843392, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46268;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46292;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46316;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46345;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46346;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46370;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46387;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=46430;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55535;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55561;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55562;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55564;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55565;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55566;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55569;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55570;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55571;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55572;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85719;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85876;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87589;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85780;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85894;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87387;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87389;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87392;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=91363;
-- Update GUID of existing GOs that have different GUID in target database
-- 190338 -> 55525
UPDATE gameobject SET guid=80001 WHERE guid=55525; -- Cleanup of standalone GO, align its GUID with TBC-DB one
UPDATE gameobject SET guid=55525, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190338;
UPDATE pool_gameobject SET guid=55525, pool_entry=31104 WHERE guid=190338;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300173, 31107, 0.0, 'The Hinterlands (Jintha''Alor) - Solid Chest (153451)'),
(300179, 31107, 0.0, 'The Hinterlands (Jintha''Alor) - Solid Chest (153451)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31104 WHERE guid=46268;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=46292;
UPDATE pool_gameobject SET pool_entry=31105 WHERE guid=46316;
UPDATE pool_gameobject SET pool_entry=31108 WHERE guid=46345;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=46346;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=46370;
UPDATE pool_gameobject SET pool_entry=31106 WHERE guid=46387;
UPDATE pool_gameobject SET pool_entry=31109 WHERE guid=46430;
UPDATE pool_gameobject SET pool_entry=31104 WHERE guid=55535;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55561;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55562;
UPDATE pool_gameobject SET pool_entry=31110 WHERE guid=55564;
UPDATE pool_gameobject SET pool_entry=31109 WHERE guid=55565;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55566;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55569;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55570;
UPDATE pool_gameobject SET pool_entry=31107 WHERE guid=55571;
UPDATE pool_gameobject SET pool_entry=31111 WHERE guid=55572;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31104 WHERE entry=40032;
UPDATE pool_template SET entry=31107 WHERE entry=40035;
UPDATE pool_template SET entry=31105 WHERE entry=40033;
UPDATE pool_template SET entry=31108 WHERE entry=40036;
UPDATE pool_template SET entry=31106 WHERE entry=40034;
UPDATE pool_template SET entry=31109 WHERE entry=40037;
UPDATE pool_template SET entry=31110 WHERE entry=40038;
UPDATE pool_template SET entry=31111 WHERE entry=40039;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31104 WHERE pool_id=40032;
UPDATE pool_pool SET pool_id=31107 WHERE pool_id=40035;
UPDATE pool_pool SET pool_id=31105 WHERE pool_id=40033;
UPDATE pool_pool SET pool_id=31108 WHERE pool_id=40036;
UPDATE pool_pool SET pool_id=31106 WHERE pool_id=40034;
UPDATE pool_pool SET pool_id=31109 WHERE pool_id=40037;
UPDATE pool_pool SET pool_id=31110 WHERE pool_id=40038;
UPDATE pool_pool SET pool_id=31111 WHERE pool_id=40039;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11, description="The Hinterlands - Master Chest Pool" WHERE entry=39926;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Searing Gorge
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300078, 4149, 0, -6666.43, -716.584, 238.184, 5.2709, 0.0, 0.0, -0.484809, 0.87462, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10031;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10093;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10157;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10163;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=10204;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55536;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55537;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55538;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55539;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55768;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55769;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85874;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170042;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85727;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300078, 31115, 0.0, 'Searing Gorge (Firewatch Ridge) - Solid Chest (4149)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31112 WHERE guid=10031;
UPDATE pool_gameobject SET pool_entry=31113 WHERE guid=10093;
UPDATE pool_gameobject SET pool_entry=31114 WHERE guid=10163;
UPDATE pool_gameobject SET pool_entry=31115 WHERE guid=10204;
UPDATE pool_gameobject SET pool_entry=31112 WHERE guid=55537;
UPDATE pool_gameobject SET pool_entry=31113 WHERE guid=55539;
UPDATE pool_gameobject SET pool_entry=31113 WHERE guid=55769;
UPDATE pool_gameobject SET pool_entry=31115 WHERE guid=170042;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31112 WHERE entry=40040;
UPDATE pool_template SET entry=31113 WHERE entry=40041;
UPDATE pool_template SET entry=31114 WHERE entry=40042;
UPDATE pool_template SET entry=31115 WHERE entry=40043;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31112 WHERE pool_id=40040;
UPDATE pool_pool SET pool_id=31113 WHERE pool_id=40041;
UPDATE pool_pool SET pool_id=31114 WHERE pool_id=40042;
UPDATE pool_pool SET pool_id=31115 WHERE pool_id=40043;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Searing Gorge - Master Chest Pool" WHERE entry=39928;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Tirisfal Glades
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300000, 2843, 0, 2019.49, 1853.66, 102.67, 4.18879, 0.0, 0.0, -0.866025, 0.500001, 300, 900),
(300003, 2843, 0, 1788.8, 1345.5, 89.2825, 5.34071, 0.0, 0.0, -0.45399, 0.891007, 300, 900),
(300006, 2843, 0, 1965.06, 1617.98, 88.2023, 4.92183, 0.0, 0.0, -0.62932, 0.777146, 300, 900),
(300221, 106318, 0, 2342.99, 1319.23, 34.0111, 4.55531, 0.0, 0.0, -0.760405, 0.649449, 300, 900),
(300227, 106318, 0, 2762.72, 788.501, 114.367, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 300, 900),
(300230, 106318, 0, 3026.86, 373.43, -1.28392, 3.26377, 0.0, 0.0, -0.998135, 0.0610518, 300, 900),
(300231, 106318, 0, 3058.99, 2.03689, -1.59202, 3.71755, 0.0, 0.0, -0.958819, 0.284016, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45060;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45240;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45244;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45251;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45257;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85765;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85877;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85878;
-- Update GUID of existing GOs that have different GUID in target database
-- 1090056 -> 300001
UPDATE gameobject SET guid=300001, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090056;
UPDATE pool_gameobject SET guid=300001, pool_entry=31001 WHERE guid=1090056;
-- 1090057 -> 300002
UPDATE gameobject SET guid=300002, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090057;
UPDATE pool_gameobject SET guid=300002, pool_entry=31001 WHERE guid=1090057;
-- 1090059 -> 300004
UPDATE gameobject SET guid=300004, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090059;
UPDATE pool_gameobject SET guid=300004, pool_entry=31000, description='Tirisfal (Deathknell) - Battered Chest (2843)' WHERE guid=1090059;
-- 1090060 -> 300005
UPDATE gameobject SET guid=300005, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090060;
UPDATE pool_gameobject SET guid=300005, pool_entry=31000, description='Tirisfal (Deathknell) - Battered Chest (2843)' WHERE guid=1090060;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 1090055 with entry 2843
-- GO 1090058 with entry 2843
-- GO 1090061 with entry 2843

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300000, 31001, 0.0, 'Tirisfal Glades (Night Web''s Hollow) - Battered Chest (2843)'),
(300003, 31000, 0.0, 'Tirisfal (Deathknell) - Battered Chest (2843)'),
(300006, 31000, 0.0, 'Tirisfal (Deathknell) - Battered Chest (2843)'),
(300221, 31335, 0.0, 'Tirisfal Glades (Solliden Farmstead) - Battered Chest (106318)'),
(300227, 31266, 0.0, 'Tirisfal Glades (Agamand Mills) - Battered Chest (106318)'),
(300230, 31264, 0.0, 'Tirisfal Glades (The North Coast) - Battered Chest (106318)'),
(300231, 31264, 0.0, 'Tirisfal Glades (The North Coast) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31264 WHERE guid=45060;
UPDATE pool_gameobject SET pool_entry=31265 WHERE guid=45244;
UPDATE pool_gameobject SET pool_entry=31266 WHERE guid=45257;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31264 WHERE entry=40200;
UPDATE pool_template SET entry=31265 WHERE entry=40201;
UPDATE pool_template SET entry=31266 WHERE entry=40202;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31264 WHERE pool_id=40200;
UPDATE pool_pool SET pool_id=31265 WHERE pool_id=40201;
UPDATE pool_pool SET pool_id=31266 WHERE pool_id=40202;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=9, description="Tirisfal Glades - Master Chest Pool" WHERE entry=39905;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Silverpine Forest
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300172, 111095, 0, -470.033, 826.422, 96.8248, 5.67232, 0.0, 0.0, -0.300705, 0.953717, 300, 900),
(300174, 106319, 0, -336.079, 1516.02, 16.8309, 5.07891, 0.0, 0.0, -0.566406, 0.824126, 300, 900),
(300183, 111095, 0, 62.7082, 789.352, 64.0437, 2.42601, 0.0, 0.0, 0.936672, 0.350207, 300, 900),
(300184, 111095, 0, 73.6613, 767.879, 63.6439, 4.88692, 0.0, 0.0, -0.642787, 0.766045, 300, 900),
(300187, 2849, 0, 389.709, 645.387, 35.1687, 3.89209, 0.0, 0.0, -0.930417, 0.366502, 300, 900),
(300197, 106319, 0, 983.86, 1199.85, 48.4682, 0.680677, 0.0, 0.0, 0.333806, 0.942642, 300, 900),
(300199, 2849, 0, 999.366, 699.265, 53.8206, 1.02974, 0.0, 0.0, 0.492423, 0.870356, 300, 900),
(300201, 106319, 0, 1007.36, 1566.84, 28.9856, 1.32645, 0.0, 0.0, 0.615661, 0.788011, 300, 900),
(300203, 106319, 0, 1036.53, 1620.64, 25.1019, 0.820303, 0.0, 0.0, 0.398748, 0.91706, 300, 900),
(300206, 106319, 0, 1158.05, 965.709, 32.3014, 3.07177, 0.0, 0.0, 0.999391, 0.0349061, 300, 900),
(300207, 106319, 0, 1175.96, 931.949, 33.0883, 3.89209, 0.0, 0.0, -0.930417, 0.366502, 300, 900),
(300208, 106319, 0, 1208.59, 896.666, 33.4174, 2.61799, 0.0, 0.0, 0.965925, 0.258821, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35436;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35447;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35449;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35481;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35483;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35489;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35569;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42067;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42068;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42069;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42077;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=42957;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55461;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55784;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85806;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35484;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=35487;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85775;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85776;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85819;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85884;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85888;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87590;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87591;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87592;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300172, 31332, 0.0, 'Silverpine Forest (Beren''s Peril) - Tattered Chest (111095)'),
(300174, 31182, 0.0, 'Silverpine Forest (Pyrewood Village) - Battered Chest (106319)'),
(300183, 31312, 0.0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300184, 31312, 0.0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300187, 31180, 0.0, 'Silverpine Forest - Battered Chest (2849)'),
(300197, 31185, 0.0, 'Silverpine Forest (Valgan''s Field) - Battered Chest (106319)'),
(300199, 31181, 0.0, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'),
(300201, 31186, 0.0, 'Silverpine Forest (The Dead Field) - Battered Chest (106319)'),
(300203, 31186, 0.0, 'Silverpine Forest (The Dead Field) - Battered Chest (106319)'),
(300206, 31183, 0.0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(300207, 31183, 0.0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(300208, 31183, 0.0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31179 WHERE guid=35436;
UPDATE pool_gameobject SET pool_entry=31180 WHERE guid=35447;
UPDATE pool_gameobject SET pool_entry=31182 WHERE guid=35483;
UPDATE pool_gameobject SET pool_entry=31183 WHERE guid=35569;
UPDATE pool_gameobject SET pool_entry=31184 WHERE guid=42067;
UPDATE pool_gameobject SET pool_entry=31185 WHERE guid=42068;
UPDATE pool_gameobject SET pool_entry=31186 WHERE guid=42069;
UPDATE pool_gameobject SET pool_entry=31185 WHERE guid=42077;
UPDATE pool_gameobject SET pool_entry=31187 WHERE guid=42957;
UPDATE pool_gameobject SET pool_entry=31179 WHERE guid=55461;
UPDATE pool_gameobject SET pool_entry=31182 WHERE guid=55784;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31179 WHERE entry=40110;
UPDATE pool_template SET entry=31180 WHERE entry=40111;
UPDATE pool_template SET entry=31182 WHERE entry=40113;
UPDATE pool_template SET entry=31183 WHERE entry=40114;
UPDATE pool_template SET entry=31184 WHERE entry=40115;
UPDATE pool_template SET entry=31185 WHERE entry=40116;
UPDATE pool_template SET entry=31186 WHERE entry=40117;
UPDATE pool_template SET entry=31187 WHERE entry=40118;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31179 WHERE pool_id=40110;
UPDATE pool_pool SET pool_id=31180 WHERE pool_id=40111;
UPDATE pool_pool SET pool_id=31182 WHERE pool_id=40113;
UPDATE pool_pool SET pool_id=31183 WHERE pool_id=40114;
UPDATE pool_pool SET pool_id=31184 WHERE pool_id=40115;
UPDATE pool_pool SET pool_id=31185 WHERE pool_id=40116;
UPDATE pool_pool SET pool_id=31186 WHERE pool_id=40117;
UPDATE pool_pool SET pool_id=31187 WHERE pool_id=40118;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11, description="Silverpine Forest - Master Chest Pool" WHERE entry=39908;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Eastern Plaguelands
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300223, 153454, 0, 2416.02, -3709.41, 177.675, 4.46804, 0.0, 0.0, -0.788011, 0.615662, 300, 900),
(300229, 153454, 0, 2796.36, -5403.23, 162.927, 2.56563, 0.0, 0.0, 0.958819, 0.284016, 300, 900),
(300233, 153454, 0, 3333.82, -5000.1, 168.712, 4.36332, 0.0, 0.0, -0.819152, 0.573577, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45496;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45734;
UPDATE gameobject SET rotation2=0.649447, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45735;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45910;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45915;
UPDATE gameobject SET orientation=-0.0349067, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45931;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45933;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45938;
UPDATE gameobject SET rotation2=-0.920505, rotation3=0.390732, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45949;
UPDATE gameobject SET rotation2=-0.492423, rotation3=0.870356, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45950;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55578;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55579;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85791;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85792;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85793;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85795;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89666;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89667;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89668;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89669;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89670;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300047;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 190339 with entry 153454
-- GO 190340 with entry 153454

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300223, 31120, 0.0, 'Eastern Plaguelands (The Fungal Vale) - Solid Chest (153454)'),
(300229, 31121, 0.0, 'Eastern Plaguelands (The Noxious Glade) - Solid Chest (153454)'),
(300233, 31119, 0.0, 'Eastern Plaguelands (Zul''Mashar) - Solid Chest (153454)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31124 WHERE guid=45496;
UPDATE pool_gameobject SET pool_entry=31123 WHERE guid=45734;
UPDATE pool_gameobject SET pool_entry=31116 WHERE guid=45735;
UPDATE pool_gameobject SET pool_entry=31119 WHERE guid=45910;
UPDATE pool_gameobject SET pool_entry=31120 WHERE guid=45915;
UPDATE pool_gameobject SET pool_entry=31121 WHERE guid=45931;
UPDATE pool_gameobject SET pool_entry=31122 WHERE guid=45933;
UPDATE pool_gameobject SET pool_entry=31122 WHERE guid=45938;
UPDATE pool_gameobject SET pool_entry=31117 WHERE guid=45949;
UPDATE pool_gameobject SET pool_entry=31118 WHERE guid=45950;
UPDATE pool_gameobject SET pool_entry=31123 WHERE guid=55578;
UPDATE pool_gameobject SET pool_entry=31119 WHERE guid=55579;
UPDATE pool_gameobject SET pool_entry=31116 WHERE guid=85791;
UPDATE pool_gameobject SET pool_entry=31118 WHERE guid=85792;
UPDATE pool_gameobject SET pool_entry=31125 WHERE guid=85793;
UPDATE pool_gameobject SET pool_entry=31118 WHERE guid=85795;
UPDATE pool_gameobject SET pool_entry=31121 WHERE guid=89666;
UPDATE pool_gameobject SET pool_entry=31126 WHERE guid=89667;
UPDATE pool_gameobject SET pool_entry=31120 WHERE guid=89668;
UPDATE pool_gameobject SET pool_entry=31122 WHERE guid=89669;
UPDATE pool_gameobject SET pool_entry=31122 WHERE guid=89670;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31124 WHERE entry=40052;
UPDATE pool_template SET entry=31123 WHERE entry=40051;
UPDATE pool_template SET entry=31116 WHERE entry=40044;
UPDATE pool_template SET entry=31119 WHERE entry=40047;
UPDATE pool_template SET entry=31120 WHERE entry=40048;
UPDATE pool_template SET entry=31121 WHERE entry=40049;
UPDATE pool_template SET entry=31122 WHERE entry=40050;
UPDATE pool_template SET entry=31117 WHERE entry=40045;
UPDATE pool_template SET entry=31118 WHERE entry=40046;
UPDATE pool_template SET entry=31125 WHERE entry=40053;
UPDATE pool_template SET entry=31126 WHERE entry=40054;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31124 WHERE pool_id=40052;
UPDATE pool_pool SET pool_id=31123 WHERE pool_id=40051;
UPDATE pool_pool SET pool_id=31116 WHERE pool_id=40044;
UPDATE pool_pool SET pool_id=31119 WHERE pool_id=40047;
UPDATE pool_pool SET pool_id=31120 WHERE pool_id=40048;
UPDATE pool_pool SET pool_id=31121 WHERE pool_id=40049;
UPDATE pool_pool SET pool_id=31122 WHERE pool_id=40050;
UPDATE pool_pool SET pool_id=31117 WHERE pool_id=40045;
UPDATE pool_pool SET pool_id=31118 WHERE pool_id=40046;
UPDATE pool_pool SET pool_id=31125 WHERE pool_id=40053;
UPDATE pool_pool SET pool_id=31126 WHERE pool_id=40054;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11, description="Eastern Plaguelands - Master Chest Pool" WHERE entry=39936;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Lordamere Lake
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Great Sea
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Hillsbrad Foothills
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300158, 2855, 0, -1068.21, -78.6024, 1.3575, 1.43117, 0.0, 0.0, 0.656058, 0.75471, 300, 900),
(300164, 2852, 0, -890.011, -1052.25, 31.2693, 4.69494, 0.0, 0.0, -0.71325, 0.70091, 300, 900),
(300166, 4096, 0, -801.115, 65.3181, 8.89202, 0.785397, 0.0, 0.0, 0.382683, 0.92388, 300, 900),
(300169, 3715, 0, -566.732, 32.3075, 49.8843, 2.53072, 0.0, 0.0, 0.953716, 0.300708, 300, 900),
(300170, 3715, 0, -488.521, 109.981, 60.4183, 6.23083, 0.0, 0.0, -0.0261765, 0.999657, 300, 900),
(300177, 2855, 0, -243.951, -378.061, 47.6736, 1.62316, 0.0, 0.0, 0.725374, 0.688355, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=20885;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29292;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29647;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29650;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=29653;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30018;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30032;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30033;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30036;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55505;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55760;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85692;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85804;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85830;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85831;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87593;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87594;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85660;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85664;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85676;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85846;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85849;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85851;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87586;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300158, 31128, 0.0, 'Hillsbrad Foothills (Western Strand) - Solid Chest (2855)'),
(300164, 31129, 0.0, 'Hillsbrad Foothills (Nethander Stead) - Solid Chest (2852)'),
(300166, 31299, 0.0, 'Hillsbrad Foothills (Azurelode Mine) - Tattered Chest (4096)'),
(300169, 31297, 0.0, 'Hillsbrad Foothills (Hillsbrad Fields) - Tattered Chest (3715)'),
(300170, 31297, 0.0, 'Hillsbrad Foothills (Hillsbrad Fields) - Tattered Chest (3715)'),
(300177, 31296, 0.0, 'Hillsbrad Foothills (Darrow Hill) - Solid Chest (2855)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31128 WHERE guid=29292;
UPDATE pool_gameobject SET pool_entry=31129 WHERE guid=29647;
UPDATE pool_gameobject SET pool_entry=31128 WHERE guid=29653;
UPDATE pool_gameobject SET pool_entry=31127 WHERE guid=30018;
UPDATE pool_gameobject SET pool_entry=31128 WHERE guid=55760;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31128 WHERE entry=40056;
UPDATE pool_template SET entry=31129 WHERE entry=40057;
UPDATE pool_template SET entry=31127 WHERE entry=40055;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31128 WHERE pool_id=40056;
UPDATE pool_pool SET pool_id=31129 WHERE pool_id=40057;
UPDATE pool_pool SET pool_id=31127 WHERE pool_id=40055;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=7, description="Hillsbrad Foothills - Master Chest Pool" WHERE entry=39915;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Dun Algaz
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15213;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55486;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85824;

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31042 WHERE guid=15213;
UPDATE pool_gameobject SET pool_entry=31042 WHERE guid=55486;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31042 WHERE entry=39970;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31042 WHERE pool_id=39970;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=12, description="Wetlands - Master Chest Pool" WHERE entry=39916;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Thoradin's Wall
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Forbidding Sea
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Thandol Span
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Gillijim's Isle
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Island of Doctor Lapidis
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Undercity
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Stormwind City
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Ironforge
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Quel'thalas
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- City
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

