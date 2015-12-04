-- Several improvements in the Deadmines to bring them back to Classic times
-- Original work by @k59 and @Tobschinski, reviewed by @Muehe
-- This contribute to #487 

-- --------------------------------------------------------------------------------------------
-- Captain Greenskin (GUID 79333), Defias Pirate (GUID 79334), Defias Squallshaper (GUID 79335)
-- --------------------------------------------------------------------------------------------

-- Adjust spawn position of Captain Greenskin (ID 79333)
-- NOTE: this spawnpoint is closer to the two adds
-- NOTE: tried to adjust currentwaypoint to 5, didn't seem to work, he always went to wp 1 after spawn
UPDATE creature SET position_x = '-63.720577', position_y = '-808.797729', position_z = '41.234196', orientation = '5.771376' WHERE guid = '79333'; 

-- NOTE: make old point 5 new point 1 to match new spawn position
-- NOTE: orientation changed to 100
-- NOTE: don't know if this waittimes were meant to be in seconds but think so, changed accordingly (added 000)
DELETE FROM creature_movement WHERE id=79333;
DELETE FROM creature_movement_template WHERE entry=647;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(647,1,-56.0753,-808.808,41.9326,100,2000,0),
(647,2,-56.8627,-831.469,41.896,100,3000,0),
(647,3,-83.5775,-833.452,39.5389,100,0,0),
(647,4,-102.49,-824.696,38.0774,100,2000,0),
(647,5,-102.277,-814.224,38.0795,100,2000,0),
(647,6,-92.37,-808.028,38.7975,100,0,0);

-- Linking Captain Greenskin and his accompanying adds:
DELETE FROM creature_linking WHERE guid IN (79334, 79333, 79335);
INSERT INTO creature_linking  VALUES (79334, 79333, 515); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO, FOLLOW
INSERT INTO creature_linking  VALUES (79335, 79333, 515); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO, FOLLOW

-- Removed unneeded and wrong creature_addon (the template one is enough and correct)
DELETE FROM creature_addon WHERE guid=79333; -- Captain Greenskin

-- -------------------
-- Cookie (GUID 79334)
-- -------------------

-- Removed unneeded and wrong creature_addon (the template one is enough and correct)
DELETE FROM creature_addon WHERE guid='79344'; -- Cookie

-- Removed duplicate waypoints movement, the template one is enough
DELETE FROM creature_movement WHERE id=79344;
-- Fixed waittime values that were set in seconds when milliseconds are expected
UPDATE creature_movement_template SET waittime=waittime*1000 WHERE entry = 644;

-- -------------------
-- Gilnid (GUID 79206)
-- -------------------

-- Update spawndistance and MovementType for Gilnid:
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid=79206;

-- -------------------------------------------------------
-- Defias Miner(GUID 79172) (in front of Rare-Spawn)
-- Not sure on this, but I think none of the Miners should
-- have MovementType 1. I actually saw this bug once on
-- 79134, he would walk right up to the instance entry 
-- (which should be a safe-zone IIRC) then bug into the
-- wall there. In current DB, 8 miners have MovementType 1
-- -------------------------------------------------------

-- Movement type idle for Defias Miner(GUID 79172, 79134)
-- NOTE: added 79134
UPDATE creature SET MovementType=0 WHERE id=598 AND MovementType<>2;

-- -------------------------------------------------------------
-- Defias Blackguard (GUID 79345, 79346), Mr. Smite (GUID 79337)
-- Took code from #273, seemed cleaner
-- -------------------------------------------------------------

DELETE FROM creature WHERE guid IN (79345, 79346);
INSERT INTO creature (guid, id, map, modelid, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype) VALUES
(79345, 636, 36, 2314, -0.640532, -784.670654, 9.693322, 0.721177, 43200, 0, 0, 1352, 0, 0, 0), 
(79346, 636, 36, 2314, -4.788263, -779.289795, 9.801838, 0.685834, 43200, 0, 0, 1352, 0, 0, 0);  

DELETE from creature_linking WHERE master_guid= 79337;
INSERT INTO creature_linking (guid, master_guid, flag) 
VALUES
(79345, 79337, 3), -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO
(79346, 79337, 3); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO

UPDATE creature_template SET FactionAlliance=27, FactionHorde=27 WHERE Entry=646;

-- ---------------------------------------------------
-- Defias Blackguard (GUID 79368, 79369, 79370, 79383)
-- Edwin VanCleef (GUID 79336)
-- Took code from #272, seemed cleaner
-- ---------------------------------------------------

DELETE FROM creature WHERE guid IN (79368, 79369, 79370, 79383);
INSERT INTO creature (guid, id, map, modelid, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype)
VALUES
(79368, 636, 36, 2314, -78.363602, -824.518005, 39.912899, 2.708640, 43200, 0, 0, 1352, 0, 0, 0), 
(79369, 636, 36, 2314, -78.175720, -815.210999, 39.907925, 3.675046, 43200, 0, 0, 1352, 0, 0, 0);  

DELETE from creature_linking WHERE master_guid= 79336;
INSERT INTO creature_linking (guid, master_guid, flag)
VALUES (79368, 79336, 3), -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO
(79369, 79336, 3); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO
