-- Revamp trash mobs in the outer ring of Naxxramas Military Wing
-- Removed placeholders and spawns backported from WotLK version
-- Added missing groups and spawns in outer ring
-- Added patrols

-- Sources:
-- http://www.wowhead.com/npc=16446#comments
-- http://www.wowhead.com/npc=16447#comments
-- http://www.wowhead.com/npc=16448#comments
-- http://www.wowhead.com/npc=16449#comments
-- http://www.wowhead.com/npc=16451#comments
-- http://www.wowhead.com/npc=16452#comments
-- http://www.wowhead.com/npc=16453#comments
-- http://www.warcraftmovies.com/movieview.php?id=44753

-- ---------------------------------------------
-- Military Wing
-- ---------------------------------------------

-- Room 1
SET @GUID := 88879;
SET @X := 2581.59;
SET @Y := -3339.19;
SET @Z := 267.594;
SET @O := 4.70766;

-- Two patrolling groups of ghouls around the room (opposite direction) and a shade in the middle
-- DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 8, 16447, 533, 0, 0, @X - 50.04, @Y + 4.12, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 7, 16447, 533, 0, 0, @X - 52.95, @Y + 5.28, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 6, 16447, 533, 0, 0, @X - 53.94, @Y + 0.95, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 5, 16447, 533, 0, 0, @X - 50.82, @Y + 0.61, @Z + 0.01, @O - 0.127, 25, 0, 0, 93736, 0, 0, 2),  -- leading Plagued Ghoul of group 2
(@GUID + 4, 16447, 533, 0, 0, @X - 0.56, @Y + 4.48, @Z + 0.01, @O + 0.137, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 3, 16447, 533, 0, 0, @X - 2.9, @Y + 4.57, @Z + 0.01, @O + 0.228, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 2, 16447, 533, 0, 0, @X + 3.4, @Y - 0.02, @Z + 0.01, @O, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 1, 16447, 533, 0, 0, @X, @Y, @Z, @O, 25, 0, 0, 93736, 0, 0, 2),                        -- leading Plagued Ghoul of group 1, acts as the origin point for placing all other creatures in the room
(@GUID + 9, 16449, 533, 0, 0, @X - 25.53, @Y + 0.59, @Z + 0.01, @O, 25, 5, 0, 65845, 0, 0, 1);  -- Naxxramas Spirit

-- Linked ghouls in each group
-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 3, @GUID + 2, @GUID + 4);
INSERT INTO `creature_linking` VALUES
(@GUID + 3, @GUID + 1, 515),
(@GUID + 4, @GUID + 1, 515),
(@GUID + 2, @GUID + 1, 515);

-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 7, @GUID + 6, @GUID + 8);
INSERT INTO `creature_linking` VALUES
(@GUID + 7, @GUID + 5, 515),
(@GUID + 8, @GUID + 5, 515),
(@GUID + 6, @GUID + 5, 515);

-- Added waypoint path for each group
-- DELETE FROM `creature_movement` WHERE `id` = @GUID + 1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 1, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID + 1, 2, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID + 1, 3, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID + 1, 4, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID + 1, 5, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID + 1, 6, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID + 1, 7, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID + 1, 8, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- DELETE FROM `creature_movement` WHERE `id` = @GUID + 5;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 5, 4, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID + 5, 3, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID + 5, 2, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID + 5, 1, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID + 5, 8, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID + 5, 7, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID + 5, 6, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID + 5, 5, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- Deathknight and patrolling Necro knights
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88795;

-- DELETE FROM `creature_linking` WHERE `guid` IN (88797, 88796);
INSERT INTO `creature_linking` VALUES
(88797, 88795, 515),
(88796, 88795, 515);

-- DELETE FROM `creature_movement` WHERE `id` = 88795;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(88795, 1, 2556.96, -3279.51, 267.593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52915, 0, 0),
(88795, 2, 2555.62, -3129.9, 240.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75946, 0, 0),
(88795, 3, 2608.56, -3078.92, 240.526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75946, 0, 0),
(88795, 4, 2555.62, -3129.9, 240.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75946, 0, 0);

-- Room 2
SET @GUID3 := 88888;

-- Removing two placeholders Naxxramas Acolytes
-- DELETE FROM `creature` WHERE `guid` IN (88793, 88794);

-- Added two patrolling gargoyles
-- DELETE FROM `creature` WHERE `guid` IN (@GUID3 + 10, @GUID3 + 11);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID3 + 10, 16446, 533, 0, 0, 2532.05, -3256.1, 259.026, 1.48364, 25, 0, 0, 252533, 12000, 0, 2),
(@GUID3 + 11, 16446, 533, 0, 0, 2581.34, -3254.76, 258.331, 1.57553, 25, 0, 0, 252533, 12000, 0, 2);

-- DELETE FROM `creature_movement` WHERE `id` IN (@GUID3 + 10, @GUID3 + 11);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID3 + 10, 1, 2532.05, -3256.1, 259.026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.48364, 0, 0),
(@GUID3 + 10, 2, 2579.91, -3198.64, 240.53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.08644, 0, 0),
(@GUID3 + 11, 1, 2581.34, -3254.76, 258.331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57553, 0, 0),
(@GUID3 + 11, 2, 2534.04, -3201.88, 240.525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41534, 0, 0);

-- DELETE FROM `creature_linking` WHERE `guid` = @GUID3 + 10;
INSERT INTO `creature_linking` VALUES
(@GUID3 + 10, @GUID3 + 11, 3);


SET @X := 2581.83;
SET @Y := -3128.81;
SET @Z := 240.526;
SET @O := 4.637;

-- Two patrolling groups of ghouls around the room (opposite direction) and a shade in the middle
-- DELETE FROM `creature` WHERE `guid` BETWEEN @GUID3 + 1 AND @GUID3 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID3 + 8, 16447, 533, 0, 0, @X - 50.04, @Y + 4.12, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 7, 16447, 533, 0, 0, @X - 52.95, @Y + 5.28, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 6, 16447, 533, 0, 0, @X - 53.94, @Y + 0.95, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 5, 16447, 533, 0, 0, @X - 50.82, @Y + 0.61, @Z + 0.01, @O - 0.127, 25, 0, 0, 93736, 0, 0, 2),
(@GUID3 + 4, 16447, 533, 0, 0, @X - 0.56, @Y + 4.48, @Z + 0.01, @O + 0.137, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 3, 16447, 533, 0, 0, @X - 2.9, @Y + 4.57, @Z + 0.01, @O + 0.228, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 2, 16447, 533, 0, 0, @X + 3.4, @Y - 0.02, @Z + 0.01, @O, 25, 0, 0, 93736, 0, 0, 0),
(@GUID3 + 1, 16447, 533, 0, 0, @X, @Y, @Z, @O, 25, 0, 0, 93736, 0, 0, 2),
(@GUID3 + 9, 16449, 533, 0, 0, @X - 25.53, @Y + 0.59, @Z + 0.01, @O, 25, 5, 0, 65845, 0, 0, 1);

-- Linked ghouls in each group
-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID3 + 3, @GUID3 + 2, @GUID3 + 4);
INSERT INTO `creature_linking` VALUES
(@GUID3 + 3, @GUID3 + 1, 515),
(@GUID3 + 4, @GUID3 + 1, 515),
(@GUID3 + 2, @GUID3 + 1, 515);

-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID3 + 7, @GUID3 + 6, @GUID3 + 8);
INSERT INTO `creature_linking` VALUES
(@GUID3 + 7, @GUID3 + 5, 515),
(@GUID3 + 8, @GUID3 + 5, 515),
(@GUID3 + 6, @GUID3 + 5, 515);

-- Added waypoint path for each group
-- DELETE FROM `creature_movement` WHERE `id` = @GUID3 + 1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID3 + 1, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID3 + 1, 2, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID3 + 1, 3, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID3 + 1, 4, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID3 + 1, 5, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID3 + 1, 6, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID3 + 1, 7, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID3 + 1, 8, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- DELETE FROM `creature_movement` WHERE `id` = @GUID3 + 5;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID3 + 5, 4, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID3 + 5, 3, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID3 + 5, 2, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID3 + 5, 1, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID3 + 5, 8, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID3 + 5, 7, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID3 + 5, 6, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID3 + 5, 5, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- Room 3
SET @GUID4 := 88911;

-- Removing two placeholders Naxxramas Acolytes
-- DELETE FROM `creature` WHERE `guid` IN (88802, 88803);

-- 3 Plagued Deathhounds guarding entrance
-- DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 10 AND @GUID4 + 12;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 10, 16448, 533, 0, 0, 2663.2, -3033.65, 240.526, 3.93563, 25, 0, 0, 19500, 12000, 0, 0),
(@GUID4 + 11, 16448, 533, 0, 0, 2658.23, -3028.77, 240.526, 3.93563, 25, 0, 0, 19500, 12000, 0, 0),
(@GUID4 + 12, 16448, 533, 0, 0, 2652.3, -3022.94, 240.526, 3.93563, 25, 0, 0, 19500, 12000, 0, 0);

-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID4 + 10, @GUID4 + 11);
INSERT INTO `creature_linking` VALUES
(@GUID4 + 10, @GUID4 + 12, 3),
(@GUID4 + 11, @GUID4 + 12, 3);


SET @X := 2725.365;
SET @Y := -2985.584;
SET @Z := 240.526;
SET @O := 4.7438;

-- Two patrolling groups of ghouls around the room (opposite direction) and a shade in the middle
-- DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 1 AND @GUID4 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 8, 16447, 533, 0, 0, @X - 50.04, @Y + 4.12, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 7, 16447, 533, 0, 0, @X - 52.95, @Y + 5.28, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 6, 16447, 533, 0, 0, @X - 53.94, @Y + 0.95, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 5, 16447, 533, 0, 0, @X - 50.82, @Y + 0.61, @Z + 0.01, @O - 0.127, 25, 0, 0, 93736, 0, 0, 2),
(@GUID4 + 4, 16447, 533, 0, 0, @X - 0.56, @Y + 4.48, @Z + 0.01, @O + 0.137, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 3, 16447, 533, 0, 0, @X - 2.9, @Y + 4.57, @Z + 0.01, @O + 0.228, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 2, 16447, 533, 0, 0, @X + 3.4, @Y - 0.02, @Z + 0.01, @O, 25, 0, 0, 93736, 0, 0, 0),
(@GUID4 + 1, 16447, 533, 0, 0, @X, @Y, @Z, @O, 25, 0, 0, 93736, 0, 0, 2),
(@GUID4 + 9, 16449, 533, 0, 0, @X - 25.53, @Y + 0.59, @Z + 0.01, @O, 25, 5, 0, 65845, 0, 0, 1);

-- Linked ghouls in each group
-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID4 + 3, @GUID4 + 2, @GUID4 + 4);
INSERT INTO `creature_linking` VALUES
(@GUID4 + 3, @GUID4 + 1, 515),
(@GUID4 + 4, @GUID4 + 1, 515),
(@GUID4 + 2, @GUID4 + 1, 515);

-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID4 + 7, @GUID4 + 6, @GUID4 + 8);
INSERT INTO `creature_linking` VALUES
(@GUID4 + 7, @GUID4 + 5, 515),
(@GUID4 + 8, @GUID4 + 5, 515),
(@GUID4 + 6, @GUID4 + 5, 515);

-- Added waypoint path for each group
-- DELETE FROM `creature_movement` WHERE `id` = @GUID4 + 1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID4 + 1, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID4 + 1, 2, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID4 + 1, 3, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID4 + 1, 4, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID4 + 1, 5, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID4 + 1, 6, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID4 + 1, 7, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID4 + 1, 8, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- DELETE FROM `creature_movement` WHERE `id` = @GUID4 + 5;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID4 + 5, 4, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID4 + 5, 3, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID4 + 5, 2, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID4 + 5, 1, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID4 + 5, 8, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID4 + 5, 7, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID4 + 5, 6, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID4 + 5, 5, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- Deathknight and patrolling Necro knights
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88808;

-- DELETE FROM `creature_linking` WHERE `guid` IN (88809, 88810);
INSERT INTO `creature_linking` VALUES
(88809, 88808, 515),
(88810, 88808, 515);

-- DELETE FROM `creature_movement` WHERE `id` = 88808;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(88808, 1, 2848.13, -2984.63, 267.594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16753, 0, 0),
(88808, 2, 2700.06, -2985.15, 240.526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16753, 0, 0),
(88808, 3, 2637.32, -3046.26, 240.527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93722, 0, 0),
(88808, 4, 2700.06, -2985.15, 240.526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16753, 0, 0);

-- Room 4
SET @GUID2 := 88923;
SET @X := 2935.14;
SET @Y := -2985.83;
SET @Z := 267.594;
SET @O := 4.75792;

-- Two patrolling groups of ghouls around the room (opposite direction) and a shade in the middle
-- DELETE FROM `creature` WHERE `guid` BETWEEN @GUID2 + 1 AND @GUID2 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID2 + 8, 16447, 533, 0, 0, @X - 50.04, @Y + 4.12, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 7, 16447, 533, 0, 0, @X - 52.95, @Y + 5.28, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 6, 16447, 533, 0, 0, @X - 53.94, @Y + 0.95, @Z + 0.01, @O - 0.105, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 5, 16447, 533, 0, 0, @X - 50.82, @Y + 0.61, @Z + 0.01, @O - 0.127, 25, 0, 0, 93736, 0, 0, 2),
(@GUID2 + 4, 16447, 533, 0, 0, @X - 0.56, @Y + 4.48, @Z + 0.01, @O + 0.137, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 3, 16447, 533, 0, 0, @X - 2.9, @Y + 4.57, @Z + 0.01, @O + 0.228, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 2, 16447, 533, 0, 0, @X + 3.4, @Y - 0.02, @Z + 0.01, @O, 25, 0, 0, 93736, 0, 0, 0),
(@GUID2 + 1, 16447, 533, 0, 0, @X, @Y, @Z, @O, 25, 0, 0, 93736, 0, 0, 2),
(@GUID2 + 9, 16449, 533, 0, 0, @X - 25.53, @Y + 0.59, @Z + 0.01, @O, 25, 5, 0, 65845, 0, 0, 1);

-- Linked ghouls in each group
-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID2 + 3, @GUID2 + 2, @GUID2 + 4);
INSERT INTO `creature_linking` VALUES
(@GUID2 + 3, @GUID2 + 1, 515),
(@GUID2 + 4, @GUID2 + 1, 515),
(@GUID2 + 2, @GUID2 + 1, 515);

-- DELETE FROM `creature_linking` WHERE `guid` IN (@GUID2 + 7, @GUID2 + 6, @GUID2 + 8);
INSERT INTO `creature_linking` VALUES
(@GUID2 + 7, @GUID2 + 5, 515),
(@GUID2 + 8, @GUID2 + 5, 515),
(@GUID2 + 6, @GUID2 + 5, 515);

-- Added waypoint path for each group
-- DELETE FROM `creature_movement` WHERE `id` = @GUID2 + 1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID2 + 1, 1, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID2 + 1, 2, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID2 + 1, 3, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID2 + 1, 4, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID2 + 1, 5, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID2 + 1, 6, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID2 + 1, 7, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID2 + 1, 8, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);

-- DELETE FROM `creature_movement` WHERE `id` = @GUID2 + 5;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID2 + 5, 4, @X, @Y, @Z, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O, 0, 0),
(@GUID2 + 5, 3, @X - 6.85, @Y - 17.49, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 0.105, 0, 0),
(@GUID2 + 5, 2, @X - 24.98, @Y - 25.48, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 1.352, 0, 0),
(@GUID2 + 5, 1, @X - 43.06, @Y - 17.9, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 2.461, 0, 0),
(@GUID2 + 5, 8, @X - 50.84, @Y + 0.05, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.034, 0, 0),
(@GUID2 + 5, 7, @X - 43.21, @Y + 18.17, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O - 3.827, 0, 0),
(@GUID2 + 5, 6, @X - 25.22, @Y + 25.44, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 1.546, 0, 0),
(@GUID2 + 5, 5, @X - 7.17, @Y + 18.77, @Z + 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @O + 0.868, 0, 0);
