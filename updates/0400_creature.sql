-- Revamp trash mobs in the outer ring of Naxxramas Spider Wing
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
-- http://www.warcraftmovies.com/movieview.php?id=29663

-- ---------------------------------------------
-- Spider Wing
-- ---------------------------------------------

-- Removal of placeholders / NPC in WotLK configuration
DELETE FROM `creature` WHERE `guid` IN (88759, 88758, 88760, 88757, 127984, 88761, 88762, 88761, 127983, 127986, 127985, 88790, 88789, 88785, 88786, 88616, 88617, 88615, 88619, 88618, 88614);

-- Fixed stats of creature 15979 (Tomb Horror) who had far too few hit points (about as much as a normal creature...)
-- Source: TBC-DB
UPDATE `creature_template` SET `mindmg` = 3386, `maxdmg` = 4490, `minhealth` = 110040, `maxhealth` = 110040, `minmana` = 0, `maxmana` = 0, `armor` = 4091 WHERE `entry` = 15979; 

SET @GUID := 88839;

-- Corridor leading to Outer Ring
-- First pack: 1 Tomb Horror, 4 Dread Creeper
DELETE FROM `creature` WHERE `guid` IN (@GUID + 1, @GUID + 2, @GUID + 3, @GUID + 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 1, 15974, 533, 0, 0, 3215.53, -3801.41, 273.951, 2.60437, 25, 0, 0, 46361, 0, 0, 0),
(@GUID + 2, 15974, 533, 0, 0, 3219.6, -3794.29, 273.948, 1.94464, 25, 0, 0, 46361, 0, 0, 0),
(@GUID + 3, 15974, 533, 0, 0, 3228.22, -3790.97, 273.838, 0.901626, 25, 0, 0, 46361, 0, 0, 0),
(@GUID + 4, 15974, 533, 0, 0, 3234.6, -3797.04, 273.798, 0.901626, 25, 0, 0, 46361, 0, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 3, @GUID + 4, @GUID + 2, @GUID + 1);
INSERT INTO `creature_linking` VALUES
(@GUID + 3, 127981, 3),
(@GUID + 4, 127981, 3),
(@GUID + 2, 127981, 3),
(@GUID + 1, 127981, 3);

-- Second pack: 1 Tomb Horror, 4 Dread Creeper (already 1 Tomb Horror and 2 Dread Creepers)
DELETE FROM `creature` WHERE `guid` IN (@GUID + 5, @GUID + 6);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 6, 15974, 533, 0, 0, 3174.24, -3803.11, 273.95, 2.4308, 25, 0, 0, 46361, 0, 0, 0),
(@GUID + 5, 15974, 533, 0, 0, 3181.05, -3796.11, 273.951, 2.12921, 25, 0, 0, 46361, 0, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (88620, @GUID + 6, @GUID + 5, 88621);
INSERT INTO `creature_linking` VALUES
(88620, 88779, 3),
(@GUID + 6, 88779, 3),
(@GUID + 5, 88779, 3),
(88621, 88779, 3);

-- Third pack: 1 Tomb Horror, 4 Dread Creeper (already 2 Dread Creepers)
DELETE FROM `creature` WHERE `guid` IN (@GUID + 7, @GUID + 8, @GUID + 9);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 9, 15979, 533, 0, 0, 3186.84, -3806.01, 273.951, 1.54722, 25, 0, 0, 110040, 0, 0, 0),
(@GUID + 7, 15974, 533, 0, 0, 3145.08, -3789.51, 273.949, 5.36505, 25, 0, 0, 46361, 0, 0, 0),
(@GUID + 8, 15974, 533, 0, 0, 3130.78, -3787.18, 273.943, 4.18695, 25, 0, 0, 46361, 0, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (88623, @GUID + 7, 88622, @GUID + 8);
INSERT INTO `creature_linking` VALUES
(88623, 127982, 3),
(@GUID + 7, 127982, 3),
(@GUID + 8, 127982, 3),
(88622, 127982, 3);

-- First ring (bottom)
-- Spirit of Naxxramas and patrolling ghouls
DELETE FROM `creature` WHERE `guid` IN (@GUID + 10, @GUID + 11, @GUID + 12, @GUID + 13, @GUID + 14, @GUID + 15);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 10, 16447, 533, 0, 0, 3106.93, -3914.09, 267.594, 3.20331, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 11, 16447, 533, 0, 0, 3106.67, -3910.21, 267.594, 3.53318, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 12, 16447, 533, 0, 0, 3100.49, -3911.09, 267.594, 3.08786, 25, 0, 0, 93736, 0, 0, 2),
(@GUID + 13, 16447, 533, 0, 0, 3100.27, -3915.21, 267.594, 3.08786, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 14, 16449, 533, 0, 0, 3101.95, -3883.86, 267.594, 3.08786, 25, 5, 0, 65845, 0, 0, 1);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 10, @GUID + 11, @GUID + 13);
INSERT INTO `creature_linking` VALUES
(@GUID + 10, @GUID + 12, 515),
(@GUID + 11, @GUID + 12, 515),
(@GUID + 13, @GUID + 12, 515);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 12;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 12, 1, 3100.52, -3911.52, 267.594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.0478, 0, 0),
(@GUID + 12, 2, 3080.83, -3903.46, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62369, 0, 0),
(@GUID + 12, 3, 3071.96, -3883.24, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.72598, 0, 0),
(@GUID + 12, 4, 3079.8, -3863.12, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.907593, 0, 0),
(@GUID + 12, 5, 3099.65, -3854.82, 267.593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.064861, 0, 0),
(@GUID + 12, 6, 3120.4, -3862.29, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.6349, 0, 0),
(@GUID + 12, 7, 3128.89, -3882.75, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.59268, 0, 0),
(@GUID + 12, 8, 3121.06, -3902.89, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93766, 0, 0);

-- Second ring (top)
-- 2 groups of patrolling Plagued Gargoyles
DELETE FROM `creature` WHERE `guid` IN (@GUID + 16, @GUID + 17, @GUID + 18, @GUID + 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 16, 16446, 533, 0, 0, 3228.61, -3857.19, 286.758, 3.15697, 25, 0, 0, 252533, 12000, 0, 2),
(@GUID + 17, 16446, 533, 0, 0, 3229.28, -3907.97, 287.094, 3.06744, 25, 0, 0, 252533, 12000, 0, 2),
(@GUID + 19, 16446, 533, 0, 0, 3249.28, -3894.02, 294.661, 1.49428, 25, 0, 0, 252533, 12000, 0, 2),
(@GUID + 18, 16446, 533, 0, 0, 3249.23, -3870.64, 294.661, 4.62802, 25, 0, 0, 252533, 12000, 0, 2);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 17, @GUID + 18);
INSERT INTO `creature_linking` VALUES
(@GUID + 17, @GUID + 16, 3),
(@GUID + 18, @GUID + 19, 3);

DELETE FROM `creature_movement` WHERE `id` IN (@GUID + 16, @GUID + 17, @GUID + 18, @GUID + 19);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 16, 1, 3229.08, -3857.86, 286.997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98732, 0, 0),
(@GUID + 16, 2, 3175.79, -3901.93, 267.593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86383, 0, 0),
(@GUID + 17, 1, 3228.88, -3908.34, 286.885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88208, 0, 0),
(@GUID + 17, 2, 3170.48, -3858.29, 267.599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.47996, 0, 0),
(@GUID + 19, 1, 3249.28, -3894.02, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.49428, 0, 0),
(@GUID + 19, 2, 3249.22, -3870.8, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.9304, 0, 0),
(@GUID + 18, 1, 3249.5, -3870.91, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62802, 0, 0),
(@GUID + 18, 2, 3249.24, -3893.88, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.34034, 0, 0);

-- Spirit of Naxxramas and patrolling ghouls
DELETE FROM `creature` WHERE `guid` IN (@GUID + 20, @GUID + 21, @GUID + 22, @GUID + 23, @GUID + 24);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 20, 16447, 533, 0, 0, 3286.14, -3887.51, 294.66, 1.60221, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 21, 16447, 533, 0, 0, 3281.92, -3887.01, 294.66, 1.80249, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 22, 16447, 533, 0, 0, 3281.23, -3882.03, 294.66, 1.36973, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 23, 16447, 533, 0, 0, 3285.97, -3882.85, 294.66, 1.62106, 25, 0, 0, 93736, 0, 0, 2),
(@GUID + 24, 16449, 533, 0, 0, 3310, -3882.32, 294.662, 4.73124, 25, 5, 0, 65845, 0, 0, 1);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 20, @GUID + 21, @GUID + 22);
INSERT INTO `creature_linking` VALUES
(@GUID + 20, @GUID + 23, 515),
(@GUID + 21, @GUID + 23, 515),
(@GUID + 22, @GUID + 23, 515);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 23;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 23, 1, 3284.89, -3882.03, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.40115, 0, 0),
(@GUID + 23, 2, 3292.01, -3864.25, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.929909, 0, 0),
(@GUID + 23, 3, 3309.94, -3857.43, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.157077, 0, 0),
(@GUID + 23, 4, 3327.91, -3864.18, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55277, 0, 0),
(@GUID + 23, 5, 3335.57, -3882.49, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.67862, 0, 0),
(@GUID + 23, 6, 3327.98, -3900.94, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.9859, 0, 0),
(@GUID + 23, 7, 3310.12, -3908.53, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10468, 0, 0),
(@GUID + 23, 8, 3291.92, -3900.29, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.18184, 0, 0);

-- Third ring (top)
-- Spirit of Naxxramas and patrolling ghouls
DELETE FROM `creature` WHERE `guid` IN (@GUID + 25, @GUID + 26, @GUID + 27, @GUID + 28);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 25, 16447, 533, 0, 0, 3475.74, -3750.32, 294.66, 4.25686, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 26, 16447, 533, 0, 0, 3479.1, -3751.97, 294.66, 4.25686, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 27, 16447, 533, 0, 0, 3477, -3756.19, 294.66, 4.1689, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 28, 16447, 533, 0, 0, 3473.84, -3754.28, 294.66, 4.1689, 25, 0, 0, 93736, 0, 0, 2),
(@GUID + 15, 16449, 533, 0, 0, 3453.53, -3739.18, 294.662, 1.97259, 25, 5, 0, 65845, 0, 0, 1);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 25, @GUID + 26, @GUID + 27);
INSERT INTO `creature_linking` VALUES
(@GUID + 25, @GUID + 28, 515),
(@GUID + 26, @GUID + 28, 515),
(@GUID + 27, @GUID + 28, 515);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 28;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 28, 1, 3473.9, -3754.6, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04009, 0, 0),
(@GUID + 28, 2, 3453.54, -3765.24, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01122, 0, 0),
(@GUID + 28, 3, 3435.42, -3757.78, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.324, 0, 0),
(@GUID + 28, 4, 3427.79, -3739.71, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6407, 0, 0),
(@GUID + 28, 5, 3435.3, -3721.62, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.928343, 0, 0),
(@GUID + 28, 6, 3453.4, -3714.11, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.22821, 0, 0),
(@GUID + 28, 7, 3471.37, -3721.64, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.45459, 0, 0),
(@GUID + 28, 8, 3478.65, -3739.75, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.78072, 0, 0);

-- 3 Plagued Deathhound
DELETE FROM `creature` WHERE `guid` IN (@GUID + 29, @GUID + 30, @GUID + 31);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 29, 16448, 533, 0, 0, 3406.41, -3778.99, 294.661, 4.0071, 25, 0, 0, 19500, 12000, 0, 0),
(@GUID + 30, 16448, 533, 0, 0, 3410.38, -3782.37, 294.661, 4.0071, 25, 0, 0, 19500, 12000, 0, 0),
(@GUID + 31, 16448, 533, 0, 0, 3414.3, -3785.71, 294.661, 4.0071, 25, 0, 0, 19500, 12000, 0, 0);


-- Fourth ring (bottom)
-- Spirit of Naxxramas and patrolling ghouls
DELETE FROM `creature` WHERE `guid` IN (@GUID + 32, @GUID + 33, @GUID + 34, @GUID + 35, @GUID + 36);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 32, 16447, 533, 0, 0, 3425.76, -3537.69, 267.594, 1.9773, 25, 0, 0, 93736, 0, 0, 0),  -- Plagued Ghoul
(@GUID + 33, 16447, 533, 0, 0, 3429.05, -3537.64, 267.594, 1.9553, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 34, 16447, 533, 0, 0, 3428.26, -3532.98, 267.594, 1.65685, 25, 0, 0, 93736, 0, 0, 2),
(@GUID + 35, 16447, 533, 0, 0, 3424.03, -3532.38, 267.594, 1.65685, 25, 0, 0, 93736, 0, 0, 0),
(@GUID + 36, 16449, 533, 0, 0, 3453.54, -3530.66, 267.594, 1.9985, 25, 5, 0, 65845, 0, 0, 1);  -- Spirit of Naxxramas

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 32, @GUID + 33, @GUID + 35);
INSERT INTO `creature_linking` VALUES
(@GUID + 32, @GUID + 34, 515),
(@GUID + 33, @GUID + 34, 515),
(@GUID + 35, @GUID + 34, 515);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 34;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 34, 1, 3428.35, -3532.03, 267.594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.42438, 0, 0),
(@GUID + 34, 2, 3434.26, -3511.54, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.51881, 0, 0),
(@GUID + 34, 3, 3453.34, -3504, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.20431, 0, 0),
(@GUID + 34, 4, 3471.16, -3511.05, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41891, 0, 0),
(@GUID + 34, 5, 3478.87, -3529.19, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.58561, 0, 0),
(@GUID + 34, 6, 3471.48, -3547.76, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86069, 0, 0),
(@GUID + 34, 7, 3453.62, -3554.96, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.92685, 0, 0),
(@GUID + 34, 8, 3435.53, -3547.83, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21685, 0, 0);

-- 4 Necro Stalkers patrolling across the four rooms
DELETE FROM `creature` WHERE `guid` IN (@GUID + 37, @GUID + 38, @GUID + 39, @GUID + 40);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 37, 16453, 533, 0, 0, 3458.38, -3553.3, 267.592, 4.74583, 25, 0, 0, 81178, 0, 0, 0),
(@GUID + 38, 16453, 533, 0, 0, 3450.29, -3553.57, 267.592, 4.74583, 25, 0, 0, 81178, 0, 0, 0),
(@GUID + 39, 16453, 533, 0, 0, 3450.6, -3562.83, 267.592, 4.74583, 25, 0, 0, 81178, 0, 0, 0),
(@GUID + 40, 16453, 533, 0, 0, 3458.41, -3562.57, 267.592, 4.74583, 25, 0, 0, 81178, 0, 0, 2);

DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 37, @GUID + 38, @GUID + 39);
INSERT INTO `creature_linking` VALUES
(@GUID + 37, @GUID + 40, 515),
(@GUID + 38, @GUID + 40, 515),
(@GUID + 39, @GUID + 40, 515);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 40;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 40, 1, 3458.37, -3562.06, 267.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.57618, 0, 0),
(@GUID + 40, 2, 3458.47, -3673.69, 293.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.77096, 0, 0),
(@GUID + 40, 3, 3456.23, -3737.33, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.47173, 0, 0),
(@GUID + 40, 4, 3379.76, -3816.37, 294.69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.8764, 0, 0),
(@GUID + 40, 5, 3304.08, -3885.89, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23787, 0, 0),
(@GUID + 40, 6, 3146.98, -3887.91, 267.593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06351, 0, 0),
(@GUID + 40, 7, 3304.08, -3885.89, 294.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23787, 0, 0),
(@GUID + 40, 8, 3379.76, -3816.37, 294.69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.8764, 0, 0),
(@GUID + 40, 9, 3456.23, -3737.33, 294.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.47173, 0, 0),
(@GUID + 40, 10, 3458.47, -3673.69, 293.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.77096, 0, 0);
