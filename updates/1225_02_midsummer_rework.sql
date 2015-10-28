-- Minor Adjustments to Pavillion and 1 Streamer

UPDATE `gameobject` SET `orientation`= 3.38446 WHERE `guid`= 55090;

UPDATE `gameobject` SET `position_z`= 58.496498, `orientation`= 3.38838 WHERE `guid`= 55091;

-- Adding 1 Celebrant

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95044, 16781, 0, 16431, 0, -322.454071, -681.170715, 54.582485, 0.250718, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95044,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95044, 0, 0, 1, 16, 0, 0, NULL);