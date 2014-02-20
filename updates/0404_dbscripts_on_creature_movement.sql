-- Improved attitude of creatures 16146 (Deaathknight) and 16803 (Deathknight Understudy)
-- by updating their addon to make them look ready to combat
UPDATE `creature_addon` SET `emote` = 333 WHERE `guid` IN (88461, 88462, 88463, 88464, 88436, 88437, 88438, 88439, 88435, 88434);

-- Added generic emotes script for Deathknight Captains training Deathknights in Naxxramas
-- Military Wing. Timers are guessed based on videos below.
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- Added false waypoint movement for some Deathknight Captains in Naxxramas Military Wing
-- in order to trigger emote script


SET @SCRIPTID := 2;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = @SCRIPTID;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(@SCRIPTID, 1, 1, 22, 0, 16145, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight Captain shout'),
(@SCRIPTID, 3, 1, 36, 0, 16146, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight buddy attacks combat dummy'),
(@SCRIPTID, 12, 1, 36, 0, 16146, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight buddy attacks combat dummy'),
(@SCRIPTID, 21, 1, 36, 0, 16146, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight buddy attacks combat dummy'),
(@SCRIPTID, 5, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight attacks combat dummy'),
(@SCRIPTID, 13, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight attacks combat dummy'),
(@SCRIPTID, 20, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight attacks combat dummy');


-- Group 1
SET @GUID := 88436;
SET @X := 2857.77;
SET @Y := -3180.22;
SET @Z := 298.152;
SET @O := 0;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` VALUES
(@GUID, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID, 2, @X, @Y, @Z, 22000, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.001, 0, 0);

-- Group 2
SET @GUID := 88434;
SET @X := 2829.24;
SET @Y := -3208.36;
SET @Z := 298.254;
SET @O := 4;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` VALUES
(@GUID, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID, 2, @X, @Y, @Z, 23000, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.001, 0, 0);

-- Group 3
SET @GUID := 88439;
SET @X := 2825.4;
SET @Y := -3156.5;
SET @Z := 298.146;
SET @O := 1.479;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` VALUES
(@GUID, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID, 2, @X, @Y, @Z, 21000, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.001, 0, 0);

-- Added generic emotes script for Deathknight Captains discussing with Deathknights in Naxxramas
-- Military Wing. Timers are guessed based on videos below.
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- http://www.youtube.com/watch?v=iA_de7CcIrQ
-- Added false waypoint movement for some Deathknight Captains in Naxxramas Military Wing
-- in order to trigger emote script

SET @SCRIPTID := 3;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = @SCRIPTID;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(@SCRIPTID, 1, 1, 36, 0, 16145, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight captain attacks'),
(@SCRIPTID, 2, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight parries'),
(@SCRIPTID, 5, 1, 1, 0, 16145, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight captain talks'),
(@SCRIPTID, 7, 1, 36, 0, 16145, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight captain attacks'),
(@SCRIPTID, 8, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight parries'),
(@SCRIPTID, 14, 1, 60, 0, 16145, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight captain kicks'),
(@SCRIPTID, 15, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathknight parries');

-- Group 1
SET @GUID := 88430;
SET @X := 2872.37;
SET @Y := -3201.92;
SET @Z := 298.33;
SET @O := 5.84;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` VALUES
(@GUID, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID, 2, @X, @Y, @Z, 15000, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.001, 0, 0);

-- Group 2
SET @GUID := 88444;
SET @X := 2799.63;
SET @Y := -3164.42;
SET @Z := 298.33;
SET @O := 3.5;


UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` VALUES
(@GUID, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID, 2, @X, @Y, @Z, 16000, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.001, 0, 0);

-- Added movement script to creature 16061 (Instructor Razuvious) to trigger attack emote of it trainees

SET @SCRIPTID := 1606102;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = @SCRIPTID;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(@SCRIPTID, 0, 1, 36, 0, 16803, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Understudy attacks combat dummy');

-- Updated waypoint movement of creature 16061 (Instructor Razuvious) to make it use script above
UPDATE `creature_movement_template` SET `script_id` = @SCRIPTID WHERE `entry` = 16061 AND `point` < 7;
