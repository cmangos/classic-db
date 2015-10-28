-- Adjusting position of flame, trap and npc

UPDATE `gameobject` SET `position_x`= -2624.469971, `position_y`= -2508.330078, `position_z`= 82.138702 WHERE `guid`= 55086;

UPDATE `gameobject` SET `position_x`= -2624.469971, `position_y`= -2508.330078, `position_z`= 82.138702 WHERE `guid`= 55087;

UPDATE `creature` SET `position_x`= -2629.909912, `position_y`= -2517.419922, `position_z`= 81.178902 WHERE `guid`= 95014;

/* Adding Pavillion, streamers, Brazier, table and Ribbon Pole */

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55215, 181301, 0, -2639.300049, -2513.320068, 81.394302, 5.483973, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55215, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55216, 181392, 0, -2642.169922, -2510.419922, 84.9776, 2.34858, 0, 0, 0.922416, 0.386197, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55216, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55217, 181392, 0, -2636.489990, -2516.219971, 84.952797, 5.49488, 0, 0, 0.384026, -0.923322, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55217, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55218, 181355, 0, -2631.949951, -2498.020020, 81.0849, 5.330825, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55218, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55219, 181605, 0, -2647.080078, -2499.770020, 79.992897, 5.805990, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55219, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55220, 181305, 0, -2638.989990, -2511.419922, 81.252403, 5.23658, 0, 0, 0.499745, -0.866172, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55220, 1);

-- Adding 1 more Celebrant

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95045, 16781, 0, 16433, 0, -2636.152588, -2510.169434, 81.593987, 5.432929, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95045,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95045, 0, 0, 1, 16, 0, 0, NULL);