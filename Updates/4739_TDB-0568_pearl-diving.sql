-- ----------------
-- Badlands - Pearl Diving
-- ---------------

SET @CGUID := 180824;
SET @SGGUID := 18007; -- spawn_groups
SET @CONDITIONID := 18007;

-- Pre spawn Wayward Buzzard
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 6013, 0, 1, -6749.7001953125, -3168.14404296875, 246.4369354248046875, 1.973509192466735839, 2, 2, 0, 0), -- Wayward Buzzard
(@CGUID+2, 6013, 0, 1, -6743.99609375, -3170.575927734375, 249.026153564453125, 2.588994503021240234, 2, 2, 0, 0); -- Wayward Buzzard

DELETE FROM spawn_group WHERE id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'Badlands - Quest:Pearl Diving - Wayward Buzzard (2)', 0, 0, @SGGUID+1, 2, @SGGUID+1);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+1, 0, 0), -- Wayward Buzzard
(@SGGUID+1, @CGUID+2, 1, 0); -- Wayward Buzzard

DELETE FROM spawn_group_formation WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+1, 1, 4, 0, @SGGUID+1, 2, 'Badlands - Quest:Pearl Diving - Wayward Buzzard (2)');

DELETE FROM waypoint_path_name WHERE PathId = @SGGUID+1;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+1, 'Badlands - Quest:Pearl Diving - Wayward Buzzard (2)');

DELETE FROM waypoint_path WHERE PathId = @SGGUID+1;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+1, 1, -6749.7, -3168.144, 246.43694, 100, 100, 601301),
(@SGGUID+1, 2, -6756.2554,-3154.4746,243.04355, 100, 1000, 601302),
(@SGGUID+1, 3, -6759.1206,-3146.1194,242.01147, 100, 100, 601303),
(@SGGUID+1, 4, -6759.8545,-3144.306,241.69682, 100, 1000, 5),
(@SGGUID+1, 5, -6766.5815,-3169.0037,240.74365, 100, 0, 0),
(@SGGUID+1, 6, -6760.42,-3182.8594,240.74365, 100, 0, 0),
(@SGGUID+1, 7, -6752.3853,-3193.6333,240.74365, 100, 0, 0),
(@SGGUID+1, 8, -6739.1665,-3199.834,241.04175, 100, 0, 0),
(@SGGUID+1, 9, -6730.48,-3200.0283,244.19952, 100, 1000, 601304);

DELETE FROM worldstate_name WHERE id = @SGGUID+1;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'Badlands - Quest:Pearl Diving - Wayward Buzzard (2)');

DELETE FROM conditions WHERE condition_entry = @CONDITIONID+1;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Badlands - Quest:Pearl Diving - Wayward Buzzard (2)');

DELETE FROM string_id WHERE Id = @SGGUID+1;
INSERT INTO `string_id` (Id, Name) VALUES 
(@SGGUID+1, 'BADLANDS_PEARL_DIVING_BUZZARDS');

-- Quest Endscript
-- On Quest End he only spawns the 2 wayward buzzards and says 2 texts, everything else from this event gets handled after buzzards went to their waypoints
DELETE FROM dbscripts_on_quest_end WHERE id = 705;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(705, 0, 0, 31, 6013, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Terminate Script if Buzzard found alive'),
(705, 1, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Set Active Object'),
(705, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.66519, 'Pear Diving - Rigglefuzz - Change orientation'),
(705, 1, 3, 0, 0, 0, 0, 0, 0, 0, 1021, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Say Emoted Text'),
(705, 1, 4, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Change Worldstate to true'),
(705, 1000, 3, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Change Worldstate to false'),
(705, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1023, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Say Text'),
(705, 3000, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pear Diving - Rigglefuzz - Remove Active Object');

UPDATE quest_template SET CompleteScript = 705 WHERE entry = 705;


DELETE FROM dbscripts_on_creature_movement WHERE id IN (601301, 601302, 601303, 601304);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(601301, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Wayward Buzzard - Active Object'),

(601302, 0, 0, 36, 0, 0, 0, 2817, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Rigglefuzz - Facing to Wayward Buzzard'),
(601302, 0, 0, 0, 0, 0, 0, 2817, 25, 0, 1022, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Rigglefuzz - Say Text'),
(601303, 0, 0, 0, 0, 0, 0, 2817, 25, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Rigglefuzz - Say Text'),
(601303, 0, 1, 15, 5134, 0, 0, 2817, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Rigglefuzz - Cast Flash Bomb'),
(601303, 2000, 1, 15, 5134, 0, 0, 2817, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Rigglefuzz - Cast Flash Bomb'),
-- For safty change worldstate to false again
(601304, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Wayward Buzzard - Change Worldstate to false'),
(601304, 0, 1, 18, 0, 0, 0, @SGGUID+1, 15, 2561, 0, 0, 0, 0, 0, 0, 0, 0, 'Pearl Diving - Wayward Buzzard - SnedAiEventA');


-- Change Text to emoted text
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id IN (1021);