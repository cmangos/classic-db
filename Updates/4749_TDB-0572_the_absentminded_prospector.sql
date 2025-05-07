-- ----------------
-- Darkshore
-- Quest - The Absent Minded Prospector (id 731) new script 
-- ---------------

SET @CGUID := 180800;
SET @SGGUID := 18000; -- spawn_groups
SET @CONDITIONID := 18000; -- conditions

-- Correct spawn points to sniffed ones, respawn time is 1 minute
DELETE FROM creature WHERE guid = 37085;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(37085, 2917, 1, 1, 4678.6328125, 601.6138916015625, 18.49715995788574218, 2.21656823, 60, 60, 0, 0);

-- Correct UnitFlags, gets set to 256 after starting escort quest
-- [0] Flags: 768
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 2917;

-- Quest Start RP
DELETE FROM dbscripts_on_quest_start WHERE id IN (731);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- On Escort start Remtravel gets UNIT_FLAG_IMMUNE_TO_NPC removed
(731, 0, 0, 48, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Remove UnitFlags'),
(731, 0, 2, 0, 0, 0, 0, 0, 0, 0, 925, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'); -- 14:08:13.648

UPDATE quest_template SET StartScript = 731 WHERE entry = 731;

-- Waypoints for Prospector Remtrave when doing escort Quest: The Absent Minded Prospector
DELETE FROM waypoint_path_name WHERE PathId = 2917;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(2917, 'Darkshore - Prospector Remtrave - Quest: The Absent Minded Prospector');

DELETE FROM waypoint_path WHERE `PathId` = 2917;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(2917, 1, 4678.6328125, 601.61389, 18.497, 100, 6000, 0), -- Spawn Position needed to get correct delay before moving
(2917, 2, 4670.234,598.8473,15.763595, 100, 0, 0),
(2917, 3, 4655.2603,614.8669,8.485262, 100, 0, 0),
(2917, 4, 4632.711,632.1179,6.437456, 100, 5000, 291701),
(2917, 5, 4641.124,638.4467,13.487869, 100, 7000, 291702),
(2917, 6, 4631.54,631.40875,6.3513136, 100, 0, 0),
(2917, 7,4621.9995,633.0487,6.2727175, 100, 0, 0),
(2917, 8,4621.341,629.5961,6.1541057, 100, 7000, 291703),
(2917, 9, 4630.0303,637.9837,6.5094347, 100, 0, 0),
(2917, 10, 4630.9497,643.8005,7.7740593, 100, 0, 0),
(2917, 11, 4623.223,650.1216,7.4028087, 100, 0, 0),
(2917, 12, 4619.8887,647.1142,7.0895514, 100, 0, 0),
(2917, 13, 4626.1816,641.6079,6.4718084, 100, 0, 0),
(2917, 14, 4625.8843,637.784,6.3367157, 100, 0, 0),
(2917, 15, 4620.833,637.5,6.313057, 100, 8000, 291704),
(2917, 16, 4630.4507,631.7372,6.3264318, 100, 0, 0),
(2917, 17, 4629.1533,619.38165,6.6539536, 100, 0, 0),
(2917, 18, 4615.099,616.4778,5.6825485, 100, 0, 0),
(2917, 19, 4593.5063,597.9297,0.9834638, 100, 0, 0),
(2917, 20, 4569.7397,581.3132,0.78809583, 100, 0, 0),
(2917, 21, 4578.435,560.7112,1.235612, 100, 0, 0),
(2917, 22, 4601.1035,573.6618,1.2627248, 100, 0, 0),
(2917, 23, 4607.751,566.30774,1.2705956, 100, 7000, 291705),
(2917, 24, 4599.366,571.1409,1.1818796, 100, 0, 0),
(2917, 25, 4585.864,563.9825,1.0296991, 100, 0, 0),
(2917, 26, 4576.1035,571.39276,1.0822027, 100, 0, 0),
(2917, 27, 4563.435,575.8007,1.0584995, 100, 0, 0),
(2917, 28, 4554.5884,572.6651,1.2425578, 100, 0, 0),
(2917, 29, 4550,566.9179,1.3598087, 100, 4000, 291706),
(2917, 30, 4554.631,573.4612,1.2356098, 100, 0, 0),
(2917, 31, 4570.322,581.5853,0.7712989, 100, 0, 0),
(2917, 32, 4591.4673,595.6045,0.9228745, 100, 0, 0),
(2917, 33, 4601.2534,602.0839,1.9368179, 100, 0, 0),
(2917, 34, 4616.252,615.9153,5.714327, 100, 0, 0),
(2917, 35, 4628.161,619.72626,6.4233346, 100, 0, 0),
(2917, 36, 4637.245,627.7016,7.518464, 100, 0, 0),
(2917, 37, 4650.8423,619.4415,8.568127, 100, 0, 0),
(2917, 38, 4668.952,600.83813,14.594071, 100, 6000, 291707), -- finish
(2917, 39, 4678.633,601.6139,18.413963, 2.2165682, 1000, 291708);


DELETE FROM dbscripts_on_creature_movement WHERE id IN (291701, 291702, 291703, 291704, 291705, 291706, 291707, 291708);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(291701, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 926, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291702, 4000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtrave - Emote Oneshot Question'),
(291702, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 927, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
-- 1 Graveflint scout, up for 1 minute before despawning
(291702, 7000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+0, 1, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),
(291702, 8000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),

(291703, 2000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtrave - Emote Oneshot Question'),
(291703, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 928, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),

(291704, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 929, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291704, 5000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtrave - Emote Oneshot Question'),
(291704, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 930, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291704, 8000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),
(291704, 9000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),

(291705, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 931, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291705, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 932, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say EmotedText'),
(291705, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 933, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),

(291706, 1000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtrave - Emote Oneshot Question'),
(291706, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 935, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291704, 4000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),
(291704, 5000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Change Worldstate'),

(291707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 936, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say Text'),
(291707, 5000, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Set RunMode'),
(291707, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 937, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Say EmotedText'),

(291708, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Restore Faction'),
(291708, 0, 1, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Absent Minded Prospector - Prospector Remtravel - Restorce NpcFlags');

-- Change Text to emoted text
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id IN (932, 937);


-- Enemy NPCs that get spawned during escort
-- those are pre spawned on retail and get activated on different move points
-- its possible that the npc isnt "respawned" when another escort starts, happend on retail too
-- respawn time of those npcs is 6 minutes, thats a succesful run of the escort quest
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+4;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Wave 1
(@CGUID, 2158, 1, 1, 4644.36768, 633.74286, 8.7467, 3.1764, 360, 360, 0, 0),
-- Wave 2
(@CGUID+1, 2158, 1, 1, 4619.028, 650.8594, 8.136638, 5.3930, 360, 360, 0, 0),
(@CGUID+2, 2158, 1, 1, 4621.446, 652.4161, 8.0052736, 4.5029, 360, 360, 0, 0),
-- Wave 3
(@CGUID+3, 2160, 1, 1, 4570.2925, 548.49707, 5.821385, 2.635447, 360, 360, 0, 0),
(@CGUID+4, 2159, 1, 1, 4567.71875, 551.78302, 5.24911, 1.553343, 360, 360, 0, 0);

DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID AND @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+0, 'Darkshore - Absent Minded Prospector Escort - Wave 1 - Gravelflint Scout(1)', 0, 0, @SGGUID+0, 0, 0),
(@SGGUID+1, 'Darkshore - Absent Minded Prospector Escort - Wave 2 - Gravelflint Scout(2)', 0, 0, @SGGUID+1, 2, 0),
(@SGGUID+2, 'Darkshore - Absent Minded Prospector Escort - Wave 3 - Gravelflint Bonesnapper (1) | Geomancer (1)', 0, 0, @SGGUID+2, 2, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+1 AND @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+0, @CGUID, -1, 0), -- Gravelflint Scout

(@SGGUID+1, @CGUID+1, -1, 0), -- Gravelflint Scout
(@SGGUID+1, @CGUID+2, -1, 0), -- Gravelflint Scout

(@SGGUID+2, @CGUID+3, -1, 0), -- Gravelflint Geomancer
(@SGGUID+2, @CGUID+4, -1, 0); -- Gravelflint Bonesnapper

DELETE FROM worldstate_name WHERE Id IN (@SGGUID+0, @SGGUID+1, @SGGUID+2);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+0, 'Darkshore - Absent Minded Prospector Escort - Wave 1'),
(@SGGUID+1, 'Darkshore - Absent Minded Prospector Escort - Wave 2'),
(@SGGUID+2, 'Darkshore - Absent Minded Prospector Escort - Wave 3');

DELETE FROM `conditions` WHERE `condition_entry` IN (@CONDITIONID+0, @CONDITIONID+1, @CONDITIONID+2);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+0, 42, @SGGUID+0, 1, 1, 0, 0, 'Darkshore - Absent Minded Prospector Escort - Wave 1'),
(@CONDITIONID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Darkshore - Absent Minded Prospector Escort - Wave 2'),
(@CONDITIONID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'Darkshore - Absent Minded Prospector Escort - Wave 3');


-- Spell Lists
-- Gravelflint Bonesnapper spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 2159;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 215901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(215901, 'Darkshore - Gravelflint Bonesnapper', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (215901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(215901, 1, 3148, 0, -1, 130, 0, 100, 0, 6000, 12000, 8000, 14000, 'Gravelflint Bonesnapper - Head Crack - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 215901 WHERE `entry` = 2159;

-- Gravelflint Geomancer spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 2160;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 216001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(216001, 'Darkshore - Gravelflint Geomancer', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (216001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(216001, 1, 3148, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Gravelflint Bonesnapper - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 216001 WHERE `entry` = 2160;

