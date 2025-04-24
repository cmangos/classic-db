-- ----------------
-- The Legend of Stalvan QuestSeries
-- ---------------

-- The Legend of Stalvan (2)
-- NPC spawns on QuestEnd from 2nd quest for 5 minutes, not from 3rd Quest
-- Delete old script
DELETE FROM dbscripts_on_quest_start WHERE id = 68;

-- New Script
DELETE FROM dbscripts_on_quest_end WHERE id = 67;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(67, 0, 0, 31, 2044, 10, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (2) - Terminate Script if Forlorn Spirit found and alive'),
(67, 100, 1, 10, 2044, 300000, 0, 0, 0, 8, 0, 0, 0, 0, -10953.1348, 1568.40759, 47.06084, 3.735, 'The Legend of Stalvan (2) - Spawn Forlorn Spirit');

UPDATE quest_template SET StartScript = 0, CompleteScript = 67 WHERE entry = 67;

-- When Player accepts Quest 3 the prev spawns npc attacks the player
DELETE FROM dbscripts_on_quest_start WHERE id = 68;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(68, 0, 0, 31, 2044, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (3) - Terminate Script if Forlorn Spirit not found and alive'),
(68, 100, 1, 35, 5, 0, 0, 2044, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (3) - SendAiEvent A to Forlorn Spirit');

UPDATE quest_template SET StartScript = 68, CompleteScript = 0 WHERE entry = 68;


-- The Legend of Stalvan (6)
-- NPC spawns on QuestEnd from 6th quest for 5 minutes, not from 7rd Quest
DELETE FROM dbscripts_on_quest_start WHERE id = 74;

-- New Script
DELETE FROM dbscripts_on_quest_end WHERE id = 72;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(72, 0, 0, 31, 2044, 10, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (6) - Terminate Script if Forlorn Spirit found and alive'),
(72, 100, 1, 10, 2044, 300000, 0, 0, 0, 8, 0, 0, 0, 0, -8841.6318, 985.3077, 98.8059, 5.8992, 'The Legend of Stalvan (6) - Spawn Forlorn Spirit');

UPDATE quest_template SET StartScript = 0, CompleteScript = 72 WHERE entry = 72;

-- When Player accepts Quest 7 the prev spawns npc attacks the player
DELETE FROM dbscripts_on_quest_start WHERE id = 74;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(74, 0, 0, 31, 2044, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (7) - Terminate Script if Forlorn Spirit not found and alive'),
(74, 100, 1, 35, 5, 0, 0, 2044, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Legend of Stalvan (7) - SendAiEvent A to Forlorn Spirit');

UPDATE quest_template SET StartScript = 74, CompleteScript = 0 WHERE entry = 74;

-- The legend of Stalvan (8)
-- NPC should only spawn if Player looted item from Marshal Haggard's Chest, scripted via core delete old scripts
-- DELETE FROM dbscripts_on_event WHERE id = 264;
-- UPDATE gameobject_template SET data6 = 0 WHERE entry = 1562;

-- SpellList for Forlorn Spirit
DELETE FROM `creature_template_spells` WHERE `entry` = 2044;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 204401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(204401, 'Forlorn Spirit', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (204401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(204401, 1, 3105, 0, -1, 130, 0, 100, 0, 2000, 6000, 2000, 6000, 'Forlorn Spirit - Curse of Stalvan - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 204401 WHERE `entry` = 2044;
