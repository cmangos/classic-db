-- ----------------
-- Stormwind
-- Quest A Noble Brew (336)
-- ---------------

-- Correct spawnPosition and Respawn Timer based on Sniffs
DELETE FROM creature WHERE guid = 79749;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(79749, 1439, 0, 1, -8562.7783203125, 369.692169189453125, 108.568878173828125, 0.471238881349563598, 60, 60, 0, 0);

-- Add Waypoints used during Quest
DELETE FROM `creature_movement_template` WHERE `entry` = 1439;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
(1439, 1, 1, -8562.778, 369.69217, 108.56887, 100, 0, 0), 
(1439, 1, 2, -8560.683, 362.36588, 108.476135, 100, 0, 0),
(1439, 1, 3, -8557.226, 365.08148, 108.44017, 100, 100, 143901);

-- New script
DELETE FROM dbscripts_on_quest_end WHERE id = 336;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(336, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Set ActiveObject'),
(336, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Remove NpcFlags'),
(336, 0, 2, 0, 0, 0, 0, 0, 0, 0, 387, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Say Text'),
(336, 0, 3, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Start Waypoints');

DELETE FROM dbscripts_on_creature_movement WHERE id = 143901;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(143901, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - change to Idle'),
(143901, 0, 1, 0, 0, 0, 0, 0, 0, 0, 388, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Say Text'),
(143901, 0, 2, 15, 2596, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Cast Spell'),
(143901, 6000, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Noble Brew - Lord Baurles - Despawn Self');





