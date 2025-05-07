-- ----------------
-- The Thandol Span
-- QuestEnd for first quest spawns 2 npcs
-- QuestAccept for 2nd quest lets one of those npcs attack and the other start waypoints
-- ---------------


SET @CGUID := 180827;
SET @SGGUID := 18008; -- spawn_groups
SET @CONDITIONID := 18008;

-- Pre spawn npcs
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 4062, 0, 1, -2370.93212890625, -2523.818359375, 74.6389923095703125, 2.565634012222290039, 5, 5, 0, 0), -- Dark Iron Bombardier
(@CGUID+2, 4062, 0, 1, -2372.223876953125, -2483.47412109375, 74.63901519775390625, 0.174532920122146606, 5, 5, 0, 0); -- Dark Iron Bombardier

DELETE FROM creature_movement WHERE id = @CGUID+2;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+2, 1, -2372.22388, -2483.4741, 74.6390, 100, 6000, 406201),
(@CGUID+2, 2, -2367.6418,-2490.2195,75.35177, 100, 0, 0),
(@CGUID+2, 3, -2376.869,-2491.26,75.351776, 100, 0, 0),
(@CGUID+2, 4, -2372.9832,-2495.345,75.35177, 100, 0, 0),
(@CGUID+2, 5, -2372.842,-2498.6948,75.35177, 100, 0, 0),
(@CGUID+2, 6, -2376.5527,-2499.2554,75.35176, 100, 0, 0),
(@CGUID+2, 7, -2376.8274,-2504.2578,78.392426, 100, 0, 0),
(@CGUID+2, 8, -2376.3125,-2511.2085,82.58866, 100, 0, 0),
(@CGUID+2, 9, -2372.1162,-2514.5889,82.35177, 100, 3000, 406202);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (406201, 406202);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(406201, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - set ActiveObject'),
(406201, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 783, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Say Text'),
(406202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 784, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Say Text'),
(406202, 2000, 1, 20, 1, 3, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Say Text');

DELETE FROM spawn_group WHERE id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'Wetlands - Quest:The Thandol Spawn - Dark Iron Bombardier (2)', 0, 0, @SGGUID+1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+1, 0, 0), -- Dark Iron Bombardier
(@SGGUID+1, @CGUID+2, 1, 0); -- Dark Iron Bombardier

DELETE FROM worldstate_name WHERE id = @SGGUID+1;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'Wetlands - Quest:The Thandol Spawn - Dark Iron Bombardier (2)');

DELETE FROM conditions WHERE condition_entry = @CONDITIONID+1;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Wetlands - Quest:The Thandol Spawn - Dark Iron Bombardier (2)');


-- SpellList for Dark Iron Bombardier
DELETE FROM `creature_template_spells` WHERE `entry` = 4062;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 406201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(406201, 'Dark Iron Bombardier', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (406201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(406201, 1, 8858, 0, -1, 132, 0, 100, 0, 6000, 9000, 6000, 9000, 'Dark Iron Bombardier - Bomb - top aggro not in melee range');

UPDATE `creature_template` SET `SpellList` = 406201 WHERE `entry` = 4062; 

-- The Thandol Span (1) endscript will spawn both npcs
DELETE FROM dbscripts_on_quest_end WHERE id = 631;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(631, 0, 0, 31, 4062, 30, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'The Thandol Span (1) - Terminate Script if Dark Iron Bombardier found and alive'),
(631, 1, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'The Thandol Span (1) - Change Worldstate to true'),
(631, 1000, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'The Thandol Span (1) - Change Worldstate to false');

UPDATE quest_template SET StartScript = 0, CompleteScript = 631 WHERE entry = 631;



-- When Player accepts Quest 2 the prev spawns npc attacks the player or starts waypoint movement
DELETE FROM dbscripts_on_quest_start WHERE id = 632;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(632, 0, 0, 31, 4062, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Thandol Span (2) - Terminate Script if Forlorn Spirit not found and alive'),
(632, 100, 1, 35, 5, 0, 0, 4062, 30, 512, 0, 0, 0, 0, 0, 0, 0, 0, 'The Thandol Span (2) - SendAiEvent A to Dark Iron Bombardiert');

UPDATE quest_template SET StartScript = 632, CompleteScript = 0 WHERE entry = 632;

