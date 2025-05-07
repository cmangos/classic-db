-- ----------------
-- Ashenvale
-- Quest - Vorsha the Lasher (id 6641) new script 
-- ---------------

-- Muglash Correct spawnpoints and respawn timer to sniffed ones - respawn timer exaclty 1 minute
DELETE FROM creature WHERE guid = 33115;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(33115, 12717, 1, 1, 3341.6513671875, 1004.38238525390625, 3.89818429946899414, 0.715584993362426757, 60, 60, 0, 0);

-- Correct UnitFlags for Muglash
-- UpdateType: CreateObject2
-- Object Guid: Full: 0x20566000200C6B400000B70000486654 Creature/0 R5528/S183 Map: 1 Entry: 12717 Low: 4744788
-- Flags: 33536
-- Flags2: 2048
UPDATE creature_template SET UnitFlags = 33536 WHERE entry = 12717;

-- Quest Start RP
DELETE FROM dbscripts_on_quest_start WHERE id IN (6641);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- On Escort start Muglash gets UNIT_FLAG_IMMUNE_TO_NPC removed
-- CreateObject2 Flags: 33536
-- After Quest Accept Flags: 33024
(6641, 0, 0, 48, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vorsha the Lasher - Muglash - Remove UnitFlags'),
-- Muglash RP 1 - start escort
(6641, 4000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vorsha the Lasher - Muglash - Emote OneShotTalk'),
(6641, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 8566, 0, 0, 0, 0, 0, 0, 0, 'Vorsha the Lasher - Muglash - Say Text'),
(6641, 7000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vorsha the Lasher - Muglash - Emote OneShotTalk'),
(6641, 7000, 1, 0, 0, 0, 0, 0, 0, 0, 8555, 0, 0, 0, 0, 0, 0, 0, 'Vorsha the Lasher - Muglash - Say Text');

UPDATE quest_template SET StartScript = 6641 WHERE entry = 6641;

-- Waypoints for Muglash when doing escort Quest: Vorsha the Lasher
DELETE FROM waypoint_path_name WHERE PathId = 12717;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(12717, 'Ashenvale - Muglash - Quest: Vorsha the Lasher');

DELETE FROM waypoint_path WHERE `PathId` = 12717;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(12717, 1, 3341.651, 1004.3823, 3.898, 100, 8000, 0), -- Spawn Position needed to get correct delay before moving
(12717, 2, 3350.8406,1007.5745,3.5365744, 100, 0, 0),
(12717, 3, 3369.9048,1010.379,3.8744621, 100, 0, 0),
(12717, 4, 3394.1067,1012.463,3.2067049, 100, 0, 0),
(12717, 5, 3417.402,1013.4382,2.887397, 100, 0, 0),
(12717, 6, 3453.568,1021.454,1.8218997, 100, 0, 0),
(12717, 7, 3490.2183,1038.3158,2.6884222, 100, 0, 0),
(12717, 8, 3508.507,1048.7985,10.892433, 100, 0, 0),
(12717, 9, 3528.4019,1060.732,7.764349, 100, 0, 0),
(12717, 10, 3544.6204,1093.9106,0.9372225, 100, 0, 0), -- last waypoint before entering water add ignore mmap flag via core
(12717, 11, 3561.0247,1120.2069,-5.188076, 100, 0, 0),
(12717, 12, 3573.4941, 1131.8076, 0.34229445, 100, 0, 0), -- intermediary point to remove ignore mmap flag via core
(12717, 13, 3577.4375,1135.5721,5.6727614, 100, 0, 0), -- official first waypoints after water exit
(12717, 14, 3597.7402,1144.0586,6.2461805, 100, 0, 0),
(12717, 15, 3604.5637,1144.9811,9.417302, 100, 0, 0), -- Point where Brazier gets activated
(12717, 16, 3614.2834,1143.0573,10.183878, 100, 1000, 0), -- Rest before 2nd Wave
(12717, 17, 3614.2834,1143.0573,10.183878, 1.01229, 1000, 0); -- Vorsha the Lasher spawn


-- Correct text to emote text
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='8567');

-- Waypoints for first Wave of adds
DELETE FROM `creature_movement_template` WHERE `entry` IN (3711, 3712, 3713, 3715, 3717, 3944, 12940);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Wrathtail Razortail
(3712, 1, 1, 3629.9194, 1169.9987, -3.4472558, 100, 1000, 0),
(3712, 1, 2, 3623.9512,1169.433,-2.3565378, 100, 0, 0),
(3712, 1, 3, 3603.3115,1163.1807,1.315433, 100, 0, 0),
(3712, 1, 4, 3593.4934,1156.381,1.302125, 100, 0, 0),
(3712, 1, 5, 3602.2007,1148.7751,9.573044, 100, 0, 0),
(3712, 1, 6, 3605.6372,1149.7043,10.589893, 100, 1000, 3),
-- Wrathtail Wave Rider
(3713, 1, 1, 3617.8516, 1097.7166, -4.0877485, 100, 1000, 0),
(3713, 1, 2, 3615.1199,1103.0576,-2.6899762, 100, 0, 0),
(3713, 1, 3, 3608.4167,1122.3812,2.1277914, 100, 0, 0),
(3713, 1, 4, 3604.9429,1147.381,10.2324295, 6.161527, 1000, 3),
-- Wrathtail Sorceress
(3717, 1, 1, 3583.1497, 1165.5658, -5.366, 100, 1000, 0),
(3717, 1, 2, 3605.3467,1149.0459,10.685549,5.6360, 1000, 3),
-- Waypoints for first Wave of adds
-- Wrathtail Myrmidon
(3711, 1, 1, 3575.009, 1119.8704, -4.2547455, 100, 17000, 0),
(3711, 1, 2, 3580.4463,1122.4072,-2.1348076, 100, 0, 0),
(3711, 1, 3, 3597.8523,1131.6528,1.7917445, 100, 0, 0),
(3711, 1, 4, 3610.0981,1138.9296,8.201238, 100, 0, 0),
(3711, 1, 5, 3617.0107,1142.9347,10.234581, 100, 1000, 3),
-- Wrathtail Sea Witch
(3715, 1, 1, 3606.9448, 1176.3822, -2.9632108, 100, 17000, 0),
(3715, 1, 2, 3612.38,1173.8435,-2.0236745, 100, 0, 0),
(3715, 1, 3, 3629.7751,1161.1024,-1.4252198, 100, 0, 0),
(3715, 1, 4, 3639.2627,1146.751,0.30979213, 100, 0, 0),
(3715, 1, 5, 3627.6768,1148.7941,1.6047611, 100, 0, 0),
(3715, 1, 6, 3596.0793,1136.7008,3.661009, 100, 0, 0),
(3715, 1, 7, 3612.3806,1142.9379,9.950995,6.25493621826171875, 1000, 3),
-- Wrathtail Priestess
(3944, 1, 1, 3651.5383, 1155.5522, -3.9628646, 100, 17000, 0),
(3944, 1, 2, 3616.5188,1145.6335,9.320201, 100, 0, 0),
(3944, 1, 3, 3616.625,1143.7721,10.017821,3.335667610168457031, 1000, 3),
-- Vorsha the Lasher Entry
(12940, 1, 1, 3630.2092, 1190.3536, -16.624332, 100, 12000, 0),
(12940, 1, 2, 3618.9739,1161.7755,0.09717928, 100, 12000, 0),
(12940, 1, 3, 3612.5732,1146.3362,10.072503,4.01725006103515625, 1000, 3);
