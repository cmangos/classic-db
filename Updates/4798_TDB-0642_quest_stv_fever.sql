-- Rework quest Stranglethorn Fever
-- Quest ID: 349

SET @CGUID := 180830;
SET @STRINGID := 18010;
SET @SGGUID := 18010;
SET @CONDITIONID := 18010;

-- Correct StaticFlags based on Leak
-- Detection based on classic tests
UPDATE creature_template SET Detection = 0, StaticFlags1 = 524294, StaticFlags2 = 536870912 WHERE entry = 1449;

-- Delete OLD script
DELETE FROM dbscripts_on_quest_end WHERE id = 349;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(349, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Set Activeobject'),
(349, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Remove NpcFlags'),
(349, 0, 2, 22, 495, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Set Faction Temporary'),
(349, 5000, 0, 15, 12380, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Cast Shadow Channeling'),
-- Spawn first Group now
(349, 6000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Spawn Group 1'),
-- Set Worldstate to false so group doesnt respawn 
(349, 7000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Change Worldstate to false');

UPDATE quest_template SET StartScript = 0, CompleteScript = 349 WHERE entry = 349;


DELETE FROM dbscripts_on_relay WHERE id IN (144901, 144902, 144903);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- When wave dies - SendAiEvent to Witch Doctor Unbagwa (core script)
-- Witch Doctor Unbagwa starts RelayScripts via ACID
(144901, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Spawn Group 2'),
(144901, 1000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Change Worldstate to false'),
-- Spawn last wave
(144902, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 1, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Spawn Group 3'),
(144902, 1000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Change Worldstate to false'),
-- Reset Flags and finish event.
(144903, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Set NPC Flags'),
(144903, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Reset Faction'),
(144903, 0, 2, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Stop Casting'),
(144903, 0, 3, 14, 12380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Remove Aura'),
(144903, 0, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Unbagwa - Remove Activeobject');

DELETE FROM creature WHERE guid = 1219;
DELETE FROM creature_addon WHERE guid = 1219;

DELETE FROM creature WHERE guid BETWEEN @CGUID+0 AND @CGUID+14;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 1449, 0, 1, -13738.461, -29.74349, 44.63955, 1.8151423, 300, 300, 0, 0), -- Witch Doctor Unbagwa
-- Wave 1
(@CGUID+1, 1511, 0, 1, -13838.4189453125, 14.41518020629882812, 17.64513206481933593, 5.979951381683349609, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+2, 1511, 0, 1, -13835.2158203125, 9.559136390686035156, 18.47904777526855468, 0.297403633594512939, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+3, 1511, 0, 1, -13834.626953125, 15.90484046936035156, 19.78957748413085937, 5.680875301361083984, 5, 5, 0, 0), -- Enraged Silverback Gorilla
-- Wave 2
(@CGUID+4, 1516, 0, 1, -13840.109375, 14.86018753051757812, 17.33305168151855468, 5.799076080322265625, 5, 5, 0, 0), -- Konda
(@CGUID+5, 1511, 0, 1, -13838.240234375, 17.52527046203613281, 18.38785362243652343, 5.37737131118774414, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+6, 1511, 0, 1, -13836.2265625, 16.40901756286621093, 19.06935882568359375, 5.944375514984130859, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+7, 1511, 0, 1, -13835.8134765625, 11.8701171875, 18.32985877990722656, 6.123894214630126953, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+8, 1511, 0, 1, -13839.1708984375, 10.49603939056396484, 18.11985015869140625, 0.424249112606048583, 5, 5, 0, 0), -- Enraged Silverback Gorilla
-- Wave 3
(@CGUID+9, 1514, 0, 1, -13839.90625, 14.95377635955810546, 17.36712837219238281, 0.152731716632843017, 5, 5, 0, 0), -- Mokk the Savage
(@CGUID+10, 1511, 0, 1, -13837.6044921875, 16.74213218688964843, 18.35962295532226562, 5.343771934509277343, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+11, 1511, 0, 1, -13836.0576171875, 16.17523956298828125, 19.08766555786132812, 5.922751903533935546, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+12, 1511, 0, 1, -13835.56640625, 11.66498470306396484, 18.36614418029785156, 6.096064567565917968, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+13, 1511, 0, 1, -13838.6708984375, 10.30490493774414062, 18.21713829040527343, 0.432937771081924438, 5, 5, 0, 0), -- Enraged Silverback Gorilla
(@CGUID+14, 1511, 0, 1, -13838.126953125, 14.23741340637207031, 17.95226478576660156, 5.724080085754394531, 5, 5, 0, 0); -- Enraged Silverback Gorilla

DELETE FROM creature_spawn_data WHERE guid  BETWEEN @CGUID+0 AND @CGUID+14;
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(@CGUID+1, 1),
(@CGUID+2, 1),
(@CGUID+3, 1),
(@CGUID+4, 1),
(@CGUID+5, 1),
(@CGUID+6, 1),
(@CGUID+7, 1),
(@CGUID+8, 1),
(@CGUID+9, 1),
(@CGUID+10, 1),
(@CGUID+11, 1),
(@CGUID+12, 1),
(@CGUID+13, 1),
(@CGUID+14, 1);

DELETE FROM string_id WHERE Id IN (@STRINGID+0, @STRINGID+1);
INSERT INTO `string_id` (Id, Name) VALUES 
(@STRINGID+0, 'STV_WITCH_DOCTOR_UNBAGWA'),
(@STRINGID+1, 'STV_FEVER_WAVES');

DELETE FROM spawn_group WHERE id BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+0, 'STV - Witch Doctor Unbagwa', 0, 0, 0, 0, @SGGUID+0),
(@SGGUID+1, 'STV - Quest:Stranglethorn Fever Wave 1 - Enraged Silverback Gorilla (3)', 0, 0, @SGGUID+1, 1, @STRINGID+1),
(@SGGUID+2, 'STV - Quest:Stranglethorn Fever Wave 2 - Konda | Enraged Silverback Gorilla (4)', 0, 0, @SGGUID+2, 1, @STRINGID+1),
(@SGGUID+3, 'STV - Quest:Stranglethorn Fever Wave 3 - Mokk the Savage | Enraged Silverback Gorilla (5)', 0, 0, @SGGUID+3, 1, @STRINGID+1);

DELETE FROM spawn_group_spawn WHERE ID BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+0, @CGUID+0, 0, 0), -- Witch Doctor Unbagwa
(@SGGUID+1, @CGUID+1, 0, 0), -- Enraged Silverback Gorilla
(@SGGUID+1, @CGUID+2, 1, 0), -- Enraged Silverback Gorilla
(@SGGUID+1, @CGUID+3, 2, 0), -- Enraged Silverback Gorilla

(@SGGUID+2, @CGUID+5, 0, 0), -- Enraged Silverback Gorilla
(@SGGUID+2, @CGUID+6, 1, 0), -- Enraged Silverback Gorilla
(@SGGUID+2, @CGUID+7, 2, 0), -- Enraged Silverback Gorilla
(@SGGUID+2, @CGUID+8, 3, 0), -- Enraged Silverback Gorilla
(@SGGUID+2, @CGUID+4, 4, 0), -- Konda

(@SGGUID+3, @CGUID+10, 0, 0), -- Enraged Silverback Gorilla
(@SGGUID+3, @CGUID+11, 1, 0), -- Enraged Silverback Gorilla
(@SGGUID+3, @CGUID+12, 2, 0), -- Enraged Silverback Gorilla
(@SGGUID+3, @CGUID+13, 3, 0), -- Enraged Silverback Gorilla
(@SGGUID+3, @CGUID+14, 4, 0), -- Enraged Silverback Gorilla
(@SGGUID+3, @CGUID+9, 5, 0); -- Mokk the Savage

DELETE FROM spawn_group_formation WHERE Id BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+1, 3, 2, 0, @SGGUID+1, 2, 'STV - Quest:Stranglethorn Fever Wave 1 - Enraged Silverback Gorilla (3)'),
(@SGGUID+2, 3, 2, 0, @SGGUID+2, 2, 'STV - Quest:Stranglethorn Fever Wave 2 - Konda | Enraged Silverback Gorilla (4)'),
(@SGGUID+3, 3, 2, 0, @SGGUID+3, 2, 'STV - Quest:Stranglethorn Fever Wave 3 - Mokk the Savage | Enraged Silverback Gorilla (5)');


DELETE FROM waypoint_path_name WHERE PathId BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+1, 'STV - Quest:Stranglethorn Fever Wave 1 - Enraged Silverback Gorilla (3)'),
(@SGGUID+2, 'STV - Quest:Stranglethorn Fever Wave 2 - Konda | Enraged Silverback Gorilla (4)'),
(@SGGUID+3, 'STV - Quest:Stranglethorn Fever Wave 3 - Mokk the Savage | Enraged Silverback Gorilla (5)');

DELETE FROM waypoint_path WHERE PathId BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+1, 1, -13789.036,3.222928,34.766632, 100, 0, 0),
(@SGGUID+1, 2, -13777.561,-2.8964844,39.831615, 100, 0, 0),
(@SGGUID+1, 3, -13763.384,-11.975261,45.06178, 100, 0, 0),
(@SGGUID+1, 4, -13745.515,-22.961372,44.981564, 100, 0, 0),
(@SGGUID+1, 5, -13735.692,-33.317165,45.429634, 100, 10000, 151101), -- move idle
(@SGGUID+2, 1, -13812.6,9.011122,27.627281, 100, 0, 0),
(@SGGUID+2, 2, -13794.561,6.778212,32.361076, 100, 0, 0),
(@SGGUID+2, 3, -13770.931,-7.349501,42.814438, 100, 0, 0),
(@SGGUID+2, 4, -13751.048,-19.82394,44.325195, 100, 0, 0),
(@SGGUID+2, 5, -13735.427,-33.767143,45.569283, 100, 10000, 151101), -- move idle
(@SGGUID+3, 1, -13791.743,5.1065,32.91057, 100, 0, 0),
(@SGGUID+3, 2, -13777.821,-1.650174,39.538128, 100, 0, 0),
(@SGGUID+3, 3, -13749.035,-20.493708,44.407917, 100, 0, 0),
(@SGGUID+3, 4, -13735.712,-33.456272,45.459396, 100, 10000, 151101); -- move idle

DELETE FROM dbscripts_on_creature_movement WHERE id = 151101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(151101, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'STV Fever - Change Movement To 0 - Idle'),
(151101, 0, 1, 31, 0, 150, 0, @STRINGID+1, 150, 0x800, 0, 0, 0, 0, 0, 0, 0, 0, 'STV Fever - Search for string id - Terminate if not found'),
(151101, 1, 1, 35, 5, 0, 0, @STRINGID+1, 150, 2561, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn_group_entry - send AI Event A');


DELETE FROM worldstate_name WHERE id BETWEEN @SGGUID+0 AND @SGGUID+3;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'STV - Quest:Stranglethorn Fever Wave 1 - Enraged Silverback Gorilla (3)'),
(@SGGUID+2, 'STV - Quest:Stranglethorn Fever Wave 2 - Konda | Enraged Silverback Gorilla (4)'),
(@SGGUID+3, 'STV - Quest:Stranglethorn Fever Wave 3 - Mokk the Savage | Enraged Silverback Gorilla (5)');

DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITIONID+1 AND @CONDITIONID+3;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'STV - Quest:Stranglethorn Fever Wave 1 - Enraged Silverback Gorilla (3)'),
(@CONDITIONID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'STV - Quest:Stranglethorn Fever Wave 2 - Konda | Enraged Silverback Gorilla (4)'),
(@CONDITIONID+3, 42, @SGGUID+3, 1, 1, 0, 0, 'STV - Quest:Stranglethorn Fever Wave 3 - Mokk the Savage | Enraged Silverback Gorilla (5)');


