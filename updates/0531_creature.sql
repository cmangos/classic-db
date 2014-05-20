-- This closes #439 

-- Archbishop Benedictus
-- Source: http://www.wowwiki.com/Patch_1.4.1
-- "Archbishop Benedictus should be respawning every 2 hours."
-- Currently set as 6300 (1hr 45 mins)

UPDATE creature SET spawntimesecs = 7200 WHERE guid = 7566;

-- Highlord Bolvar
-- Source: http://www.wowwiki.com/Patch_1.4.1
-- "Highlord Bolvar should be respawning between 5 and 8 minutes."
-- Used 6:30 mins, as doesnt seem to be a way to use a spawntime variance?
-- Currently set as 2 hour respawn timer. (7200)

UPDATE creature SET spawntimesecs = 390 WHERE guid = 10495;

-- Onyxia
-- Raid Reset is 5 days
-- 432000 is 5 days.
-- Currently set as 3 minute respawn timer. (180)

UPDATE creature SET spawntimesecs = 432000 WHERE guid = 47572;

-- AQ40 Raid Bosses
-- Raid Reset is 7 days
-- 604800 is 7 days
-- Currently all AQ40 bosses are set as 1hr 45 minutes minute respawn timer. (6380)

-- CThun
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87559;

-- Eye of CThun
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87560;

-- Merithra of the Dream
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87561;

-- Caelestrasz
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87562;

-- Arygos
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87563;

-- Fankriss the Unyielding
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87911;

-- Viscidus
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 87938;

-- Princess Huhuran
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88014;

-- Emperor Veknilash
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88076;

-- Emperor Veklor
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88077;

-- Naxx Raid Bosses
-- Raid Reset is 7 days
-- 604800 is 7 days
-- Currently all Naxx bosses are set as 1hr 45 minutes minute respawn timer. (6380)

-- Noth the Plaguebringer
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88100;

-- Heigan the Unclean
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88205;

-- Loatheb
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88226;

-- Patchwerk
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88298;

-- Grobbulus
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88303;

-- Gluth
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88304;

-- AnubRekhan
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88346;

-- Instructor Razuvious
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88460;

-- Gothik the Harvester
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88479;

-- Thaddius
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88480;

-- Stalag
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88481;

-- Feugen
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88482;

-- Maexxna
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88483;

-- Grand Widow Faerlina
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88496;

-- Thane Korthazz (The Four Horsemen)
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88752;

-- Lady Blaumeux (The Four Horsemen)
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88753;

-- Sir Zeliek (The Four Horsemen)
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88754;

-- Highlord Mograine (The Four Horsemen)
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88755;

-- KelThuzad (Currently 8 hours)
UPDATE creature SET spawntimesecs = 604800 WHERE guid = 88813;

-- AQ20 Bosses
-- Raid Reset is 3 days
-- 259200 is 3 days

-- Kurinnaxx (Currently 8 hours)
UPDATE creature SET spawntimesecs = 259200 WHERE guid = 90805;

-- Buru the Gorger (Currently 8 hours)
UPDATE creature SET spawntimesecs = 259200 WHERE guid = 90873;

-- Ayamiss the Hunter
UPDATE creature SET spawntimesecs = 259200 WHERE guid = 90891;
