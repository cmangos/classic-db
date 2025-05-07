-- ----------------
-- Darkshore
-- Quest Escape Through Stealth (995)
-- Quest Escape Through Force (994)
-- ---------------

SET @CGUID := 180818;
SET @SGGUID := 18004; -- spawn_groups
SET @CONDITIONID := 18004;

-- Correct spawnPosition and Respawn Timer based on Sniffs
DELETE FROM creature WHERE guid = 37096;
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+6;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(37096, 3692, 1, 1, 4608.44189453125, -6.32595491409301757, 69.7472991943359375, 1.850049018859863281, 60, 60, 0, 0),
-- NPCs spawned during Escort
-- Wave 1
(@CGUID+1, 0, 1, 1, 4630.9873046875, 20.57942771911621093, 70.31865692138671875, 2.216568231582641601, 2, 2, 0, 2), -- spawn_group_entry
(@CGUID+2, 0, 1, 1, 4606.6772460937500, 53.2311210632324, 70.5124816894531, 5.5326938629150, 2, 2, 0, 2), -- spawn_group_entry

(@CGUID+3, 0, 1, 1, 4726.0693359375000, 100.7260208129883, 54.3944969177246, 3.1590459346771, 2, 2, 0, 2), -- spawn_group_entry
(@CGUID+4, 0, 1, 1, 4604.9921875000000, 96.6590728759766, 64.6199493408203, 0.7155849933624, 2, 2, 0, 2), -- spawn_group_entry

(@CGUID+5, 0, 1, 1, 4692.1928710937500, 202.8195037841797, 57.9679412841797, 5.4803338050842, 2, 2, 0, 2), -- spawn_group_entry
(@CGUID+6, 0, 1, 1, 4763.4018554687500, 159.7842407226563, 54.8794937133789, 2.2689280509949, 2, 2, 0, 2); -- spawn_group_entry

DELETE FROM creature_movement WHERE id BETWEEN @CGUID+1 AND @CGUID+6;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+1, 1, 4630.9873, 20.5794, 70.3187, 100, 100, 217001),
(@CGUID+1, 2, 4617.987, 22.59733, 70.73513, 100, 0, 0),
(@CGUID+1, 3, 4616.488, 19.848238, 70.673485, 100, 1000, 3), -- idle

(@CGUID+2, 1, 4606.6772, 53.2311, 70.512, 100, 6000, 217001),
(@CGUID+2, 2, 4619.928, 37.121964, 69.69718, 100, 0, 0),
(@CGUID+2, 3, 4615.4106, 20.990452, 70.91237, 100, 1000, 3), -- idle

(@CGUID+3, 1, 4726.069, 100.726, 54.395, 100, 6000, 217001), 
(@CGUID+3, 2, 4687.198,94.99501,52.92359,  100, 0, 0), 
(@CGUID+3, 3, 4653.7007,92.59516,59.36527, 100, 1000, 3), -- idle

(@CGUID+4, 1, 4604.992, 96.659, 64.6199, 100, 100, 217001),
(@CGUID+4, 2, 4626.159,103.82465,62.678608,  100, 0, 0), 
(@CGUID+4, 3, 4642.077,91.71484,61.255398, 100, 1000, 3), -- idle

(@CGUID+5, 1, 4692.19287, 202.8195, 57.9679, 100, 100, 217001),
(@CGUID+5, 2, 4710.5645,179.46864,55.01509, 100, 0, 0), 
(@CGUID+5, 3, 4712.5806,152.18892,51.82158, 100, 1000, 3), -- idle

(@CGUID+6, 1, 4763.4019, 159.78424, 54.8795, 100, 100, 217001),
(@CGUID+6, 2, 4737.4463,166.4566,52.88087, 100, 0, 0), 
(@CGUID+6, 3, 4718.637,152.93024,51.658363, 100, 1000, 3); -- idle

DELETE FROM creature_movement_template WHERE entry = 3695 AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Grimclaw - Path triggered when player completes quest Escape Through Force
(3695, 1, 1, 4775.9326, 207.56445, 50.76735, 100, 1000, 369501); -- homeposition

-- Correct UnitFlags
-- UPDATE creature_template SET UnitFlags = 768 WHERE entry = 3692; -- [2] (46) UNIT_FIELD_FLAGS: (4608) OnlyAttackableByPlayerControlled, PVP

-- Change Text to emoted text
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id IN (1238, 1241);


DELETE FROM dbscripts_on_quest_start WHERE id IN (994, 995);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Escape Through Force
(994, 0, 0, 48, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Remove UnitFlags'), -- UNIT_FLAG_IMMUNE_TO_NPC
(994, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - StandState Stand'),
(994, 0, 2, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Face Player'),
(994, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1237, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Say Text'),
-- Escape Through Stealth
(995, 0, 0, 22, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Change Faction'),
(995, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - StandState Stand'),
(995, 0, 2, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Face Player'),
(995, 0, 3, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Emote OneShotBow'),
(995, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1236, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Say Text'),
(995, 6000, 0, 15, 10849, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Cast Spell'),
(995, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Say EmotedText');

UPDATE quest_template SET StartScript = 994 WHERE entry = 994;
UPDATE quest_template SET StartScript = 995 WHERE entry = 995;


DELETE FROM dbscripts_on_creature_movement WHERE id IN (217001, 369201, 369202, 369203, 369204, 369501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Let Escort npcs set Phase to 1 (CAI) and despawn OOC
(217001, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - RunMode'),
(217001, 0, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - SendAiEventA to self'),
-- Escort spawn Wave 1
(369201, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to true'),
(369201, 100, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to false'),
-- Escort spawn Wave 2
(369202, 1000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to true'),
(369202, 1100, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to false'),
-- Escort spawn Wave 3
(369203, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 1, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to true'),
(369203, 100, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Change Worldstate to false'),
-- Escort Finish -- 08:33:57.610
(369204, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Set ActiveObject'), 
(369204, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Emote OneShotTalk'), 
(369204, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1243, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Say Text'), 
(369204, 5000, 0, 20, 0, 0, 0, 3695, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Grimclaw - Disable random Movement'),
(369204, 5000, 1, 37, 0, 0, 1, 3695, 30, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Grimclaw - Move to Volcor'),
(369204, 7000, 0, 0, 0, 0, 0, 3695, 30, 0, 1241, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Grimclaw - Say EmotedText'), 
(369204, 12000, 0, 36, 0, 0, 0, 3695, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Face Grimclaw'), 
(369204, 12000, 1, 0, 0, 0, 0, 0, 0, 0, 1244, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Say Text'), 
(369204, 26000, 0, 20, 2, 1, 0, 3695, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Grimclaw - Move back to homeposition'),
(369204, 26000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Remove ActiveObject'), 
(369204, 26000, 2, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Force - Volcor - Force Despawn'),
(369501, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grimclaw - Move Idle'),
(369501, 0, 1, 20, 1, 3, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Grimclaw - Move random around Point');

-- Waypoints for Volcor when doing escort Quest: Escape Through Stealth or Escape Though Force
DELETE FROM waypoint_path_name WHERE PathId IN (3692, 3693);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(3692, 'Darkshore - Volcor - Quest: Escape Through Stealth'),
(3693, 'Darkshore - Volcor - Quest: Escape Through Force');

DELETE FROM waypoint_path WHERE `PathId` IN (3692, 3693);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
-- Escape Through Stealth path
(3692, 1, 4608.442, -6.326, 69.7473, 100, 10000, 0), 
(3692, 2, 4620.7637,25.817871,70.31253, 100, 0, 0), 
(3692, 3, 4642.706,32.261177,67.791306, 100, 5000, 0),
-- Escape Through Force path
(3693, 1, 4608.442, -6.326, 69.7473, 100, 3000, 0), 
(3693, 2, 4606.0684,1.574327,69.72632, 100, 100, 369201), -- first wave spawns
(3693, 3, 4611.687,12.015516,69.54273, 100, 0, 0), 
(3693, 4, 4623.653,31.363064,69.554825, 100, 0, 0), 
(3693, 5, 4630.4756,43.982746,68.412445, 100, 0, 0), 
(3693, 6, 4636.2656,61.76519,65.63667, 100, 0, 0), 
(3693, 7, 4639.3594,78.0166,61.94827, 100, 1000, 369202), 
(3693, 8, 4642.826,85.68848,60.83361, 100, 0, 0), 
(3693, 9, 4654.8657,98.59516,58.740883, 100, 0, 0), 
(3693, 10, 4692.1865,114.21354,52.798996, 100, 0, 0), 
(3693, 11, 4704.088,135.93317,53.587494, 100, 100, 369203), 
(3693, 12, 4721.8975,154.84029,51.77296, 100, 0, 0), 
(3693, 13, 4745.759,171.77951,53.13714, 100, 0, 0), 
(3693, 14, 4761.3286,194.15158,52.92282, 100, 1000, 0),
(3693, 15, 4761.3286,194.15158,52.92282, 1.57079, 1000, 369204);

DELETE FROM spawn_group WHERE id BETWEEN @SGGUID+1 AND @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 1', 0, 0, @SGGUID+1, 0, 0),
(@SGGUID+2, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 2', 0, 0, @SGGUID+2, 0, 0),
(@SGGUID+3, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 3', 0, 0, @SGGUID+3, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+1 AND @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+1, -1, 0), -- spawn_group_entry
(@SGGUID+1, @CGUID+2, -1, 0), -- spawn_group_entry

(@SGGUID+2, @CGUID+3, -1, 0), -- spawn_group_entry
(@SGGUID+2, @CGUID+4, -1, 0), -- spawn_group_entry

(@SGGUID+3, @CGUID+5, -1, 0), -- spawn_group_entry
(@SGGUID+3, @CGUID+6, -1, 0); -- spawn_group_entry

DELETE FROM spawn_group_entry WHERE Id BETWEEN @SGGUID+1 AND @SGGUID+3;
INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+1, 2170, 0, 0, 0), (@SGGUID+1, 2171, 0, 0, 0), -- Blackwood Ursa / Blackwood Shaman
(@SGGUID+2, 2170, 0, 0, 0), (@SGGUID+2, 2171, 0, 0, 0), -- Blackwood Ursa / Blackwood Shaman
(@SGGUID+3, 2170, 0, 0, 0), (@SGGUID+3, 2171, 0, 0, 0); -- Blackwood Ursa / Blackwood Shaman

DELETE FROM worldstate_name WHERE id BETWEEN @SGGUID+1 AND @SGGUID+3;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 1'),
(@SGGUID+2, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 2'),
(@SGGUID+3, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 3');

DELETE FROM conditions WHERE condition_entry  BETWEEN @CONDITIONID+1 AND @CONDITIONID+3;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 1'),
(@CONDITIONID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 2'),
(@CONDITIONID+3, 42, @SGGUID+3, 1, 1, 0, 0, 'Darkshore - Volcor - Quest: Escape Through Force - Wave 3');

-- SpellList for Blackwood Ursa
DELETE FROM `creature_template_spells` WHERE `entry` = 2170;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 217001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(217001, 'Blackwood Ursa', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (217001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(217001, 1, 1058, 0, -1, 200, 0, 100, 0, 2000, 8000, 18000, 21000, 'Blackwood Ursa - Rejuvenation - frindly missing 20% hp include self');

UPDATE `creature_template` SET `SpellList` = 217001 WHERE `entry` = 2170; 

-- SpellList for Blackwood Shaman
DELETE FROM `creature_template_spells` WHERE `entry` = 2171;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 217101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(217101, 'Blackwood Shaman', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (217101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(217101, 1, 913, 0, -1, 200, 0, 100, 0, 2000, 8000, 16000, 21000, 'Blackwood Shaman - Healing Wave - frindly missing 20% hp include self'),
(217101, 2, 2606, 0, -1, 100, 0, 100, 0, 9000, 14000, 11000, 15000, 'Blackwood Shaman - Shock - random'),
(217101, 3, 9532, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Blackwood Shaman - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 217101 WHERE `entry` = 2171; 


-- Having this result in Volcor always getting StandState sit on reset
DELETE FROM creature_template_addon WHERE entry = 3692;