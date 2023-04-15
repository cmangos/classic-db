-- Defias Rioter 5043 - RP
-- https://github.com/cmangos/classic-db/commit/4768a651320bf88667712227ace9d4c36c03cfd9

-- event moved to spawn groups & corrected (not sure about aura `Uber Stealth` they have - couldn't find source of it)
UPDATE `creature_template_addon` SET `auras` = NULL, `sheath_state` = 1 WHERE `entry` = 5043; -- equip 1906

DELETE FROM `creature` WHERE `guid` BETWEEN 138550 AND 138553; -- 138550 AND 138553
DELETE FROM `game_event_creature` WHERE `event` = 61;
DELETE FROM `creature_movement` WHERE `id` BETWEEN 138550 AND 138553;
DELETE FROM `creature` WHERE `id` = 5043;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(138550, 5043, 0, -8764.87, 847.11, 87.2577, 3.86765, 1800, 1800, 0, 2), -- old all 30mins for 10mins, now reduced to 10mins respawn
(138551, 5043, 0, -8764.18, 846.946, 87.0923, 3.91792, 1800, 1800, 0, 2),
(138552, 5043, 0, -8764.17, 846.22, 87.2574, 3.7577, 1800, 1800, 0, 2),
(138553, 5043, 0, -8763.14, 845.686, 87.0814, 3.76991, 1800, 1800, 0, 2);

DELETE FROM `game_event` WHERE `entry` = 61;
-- INSERT INTO `game_event` (`entry`, `schedule_type`, `occurence`, `length`, `holiday`, `linkedTo`, `EventGroup`, `description`) VALUES
-- (61, 1, 30, 10, 0, 0, 0, 'Stormwind City - Stockades Jail Break'); - tbc (24, 1, 30, 10, 0, 0, 0, 'Stormwind City - Stockades Jail Break');
DELETE FROM `game_event_time` WHERE `entry` = 61;
-- INSERT INTO `game_event_time` (`entry`, `start_time`, `end_time`) VALUES
-- (61, '2010-12-31 23:58:00', '2050-12-30 23:00:00'); - tbc (24, '2011-01-01 00:58:00', '2025-12-31 00:00:00');
DELETE FROM `game_event_creature` WHERE guid BETWEEN 138550 AND 138553;
DELETE FROM `creature_movement` WHERE id BETWEEN 138550 AND 138553;
UPDATE creature SET position_x = -8764.87, position_y = 847.11, position_z = 87.2577, spawndist = 0, MovementType = 0, spawntimesecsmin = 600, spawntimesecsmax = 600 WHERE guid IN (138550,138551,138552,138553); -- make sure they will spawn only once during 10min event

DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9999);
INSERT INTO `creature_spawn_data_template` (`entry`, `SpawnFlags`, `RelayId`) VALUES
(9999,1,30510); -- set active

DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 138550 AND 138553;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(138550,9999),(138551,9999),(138552,9999),(138553,9999);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (30502,30503,30600);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(30502, 1, 0, 35, 8, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 8 (C) to Self'),
(30503, 1, 0, 35, 9, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 9 (D) to Self'),
(30600, 0, 0, 20, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - set Waypoints');

DELETE FROM `spawn_group` WHERE id = 19981;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19981, 'Stormwind - Defias Rioter 5043 x4 - RP', 0, 0, 0, 0x01 | 0x02 | 0x08); -- worldstatecondition 9109

-- https://github.com/cmangos/wotlk-db/commit/677ad035aec8cd919720d647215f5488b931a438 - game_event` doesnt seem to be needed at all for this.
-- DELETE FROM conditions WHERE condition_entry IN (9109);
-- INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
-- (9109, 12, 24, 0, 0, 0, ''); -- 61 in classic/wotlkmangos

DELETE FROM `spawn_group_spawn` WHERE id = 19981;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19981, 138550, 0),
(19981, 138551, 1),
(19981, 138552, 2),
(19981, 138553, 3);

DELETE FROM `spawn_group_formation` WHERE id = 19981;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19981, 4, 2, 0, 19981, 2, 'Stormwind - Defias Rioter 5043 x4 - RP');

DELETE FROM `waypoint_path_name` WHERE PathId = 19981;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19981,'Stormwind - Defias Rioter 5043 x4 - RP');

DELETE FROM `waypoint_path` WHERE PathId = 19981;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19981,1,-8764.87,847.11,87.2577,3.86765,1000,504301), -- keep old script incase classic works different.
(19981,2,-8789.37,827.108,97.6443,100,1000,2); -- 20 in wotlkmangos, missing update to make 2 truly generic

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 504301 AND 504305;
-- 16	10836	Defias Rioter - Open Cell Door Sound
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(504301, 1000, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Rioter - Set Run Mode On');
-- 16	10837	Defias Rioter - Close Cell Door Sound
-- 15	37718
-- INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- (504301,1,31,5043,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 5043'),
-- (504301,100,16,10836,0,0,4995,50,7,0,0,0,0,0,0,0,0,'buddy - Play Sound'); -- Table `dbscripts_on_creature_movement` using nonexistent sound (id: 10836) in SCRIPT_COMMAND_PLAY_SOUND for script id 504301

DELETE FROM dbscripts_on_creature_death WHERE id IN (5043);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5043,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- (5043,2,31,5043,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 5043 - terminate if alive'),
-- (5043,100,16,10837,0,0,4995,50,7,0,0,0,0,0,0,0,0,'buddy - Play sound'); -- Table `dbscripts_on_creature_death` using nonexistent sound (id: 10837) in SCRIPT_COMMAND_PLAY_SOUND for script id 5043

