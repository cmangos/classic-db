-- q.1090 'Gerenzo's Orders'
-- reconstructed
DELETE FROM dbscripts_on_quest_start WHERE id IN (1090);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1090,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1090,100,22,113,1|0x20,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp faction'),
(1090,101,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags Removed'),
(1090,1000,0,0,0,0,0,0,0x04,1427,0,0,0,0,0,0,0,'say'), -- 08:05:55.255
-- 1st wave
(1090,17000,53,0,0,0,0,0,0,19888,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- activate wave 1
-- 2nd wave
(1090,108000,34,944,1090,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(1090,109000,34,945,1090,0,0,0,0x04,0,0,0,0,0,0,0,0,'Stop script if source is dead'),
(1090,109500,53,0,0,0,0,0,0,19888,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(1090,110000,53,0,0,0,0,0,0,19889,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- activate wave 2
(1090,113000,0,0,0,0,0,0,0x04,1431,0,0,0,0,0,0,0,'say'), -- 01:56
-- 3rd wave
(1090,203000,34,944,1090,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(1090,204000,34,945,1090,0,0,0,0x04,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(1090,204500,53,0,0,0,0,0,0,19889,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(1090,204600,53,0,0,0,0,0,0,19890,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- activate wave 3
(1090,215000,0,0,0,0,0,0,0x04,1432,0,0,0,0,0,0,0,'say'), -- 03:34
-- final
(1090,302000,53,0,0,0,0,0,0,19890,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(1090,303000,34,944,1090,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(1090,304000,34,945,1090,0,0,0,0x04,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(1090,305000,7,1090,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest complete'),
(1090,305001,0,0,0,0,0,0,0x04,1434,0,0,0,0,0,0,0,'say'), -- 05:04
(1090,305002,22,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set default faction'), -- 05:04
(1090,305003,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags Added'),
(1090,305004,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Piznik 4276
DELETE FROM dbscripts_on_creature_death WHERE id IN (4276);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4276,1,53,0,0,0,0,0,0,19888,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(4276,2,53,0,0,0,0,0,0,19889,0,0,0,0,0,0,0,'Set worldstate variable to 0'), 
(4276,3,53,0,0,0,0,0,0,19890,0,0,0,0,0,0,0,'Set worldstate variable to 0'), 
(4276,4,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags Added'),
(4276,5,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Windshear Vermin 3998
-- UPDATE creature_template SET EquipmentTemplateId = 7 WHERE Entry = 3998;

-- wave 1
-- Creatures
-- missing spawns added
DELETE FROM creature WHERE guid BETWEEN 128027 AND 128029;
INSERT INTO creature (guid, id, map, spawnMask, position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(128027,3998,1,1,937.8112,-254.16438,-2.0966728,0.38397,180,180,0,0),
(128028,3998,1,1,938.6028,-256.62613,-2.1013877,0.174532920122146606,180,180,0,0),
(128029,4001,1,1,936.6871,-255.91563,-2.2386348,0.296705961227416992,180,180,0,0);
DELETE FROM `spawn_group` WHERE id =19888;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19888, 'Stonetalon Mountains - q.1090 - Wave 1 - Windshear Vermin x2 & Windshear Tunnel Rat', 0, 0, 9907, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19888;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19888, 128029, 0),
(19888, 128028, 1),
(19888, 128027, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19888;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19888, 5, 2, 0, 19888, 4, 'Stonetalon Mountains - q.1090 - Wave 1 - Windshear Vermin x2 & Windshear Tunnel Rat');
DELETE FROM `waypoint_path_name` WHERE PathId = 19888;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19888,'Stonetalon Mountains - q.1090 - Wave 1 - Windshear Vermin x2 & Windshear Tunnel Rat');
DELETE FROM `waypoint_path` WHERE PathId = 19888;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19888,1,936.6871,-255.91563,-2.2386348,0.2967,3000,0),
(19888,2,944.4445,-255.94446,-2.7950513,100,100,400101),
(19888,3,950.1888,-257.03415,-3.0987809,100,0,0),
(19888,4,953.7671,-258.39548,-3.5265486,100,0,0),
(19888,5,960.332,-260.597,-5.78864,5.99669,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (400101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(400101,0,0,0,0,0,0,0,0x04,1428,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (1428);
DELETE FROM conditions WHERE condition_entry IN (9907);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(9907, 42, 19888, 1, 1, 0, 'Stonetalon Mountains - q.1090 - Wave 1 - Windshear Vermin x2 & Windshear Tunnel Rat');
DELETE FROM worldstate_name WHERE Id=19888;
INSERT INTO worldstate_name(Id, Name) VALUES
(19888,'Stonetalon Mountains - q.1090 - Wave 1 - Windshear Vermin x2 & Windshear Tunnel Rat');
-- wave 2
-- Creatures
-- missing spawns added
DELETE FROM creature WHERE guid BETWEEN 128030 AND 128033;
INSERT INTO creature (guid, id, map, spawnMask, position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(128030,3999,1,1,937.0794,-258.10092,-2.2683077,0.48869219422340393,180,180,0,0),
(128031,3999,1,1,935.8944,-256.35678,-2.3162427,0.698131,180,180,0,0),
(128032,4003,1,1,934.352,-258.0696,-2.2152097,0.680678427219390869,180,180,0,0),
(128033,4003,1,1,935.28754,-258.9255,-2.2095058,0.575958,180,180,0,0);
DELETE FROM `spawn_group` WHERE id =19889;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19889, 'Stonetalon Mountains - q.1090 - Wave 2 - Windshear Digger x2 & Windshear Geomancer x2', 0, 0, 9908, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19889;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19889, 128032, 0),
(19889, 128033, 1),
(19889, 128031, 2),
(19889, 128030, 3);
DELETE FROM `spawn_group_formation` WHERE id = 19889;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19889, 5, 2, 0, 19889, 4, 'Stonetalon Mountains - q.1090 - Wave 2 - Windshear Digger x2 & Windshear Geomancer x2');
DELETE FROM `waypoint_path_name` WHERE PathId = 19889;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19889,'Stonetalon Mountains - q.1090 - Wave 2 - Windshear Digger x2 & Windshear Geomancer x2');
DELETE FROM `waypoint_path` WHERE PathId = 19889;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19889,1,944.28644,-255.18642,-2.7152529,100,100,400301),
(19889,2,946.54144,-256.04645,-3.0640638,100,0,0),
(19889,3,951.118,-257.7668,-3.1646798,100,0,0),
(19889,4,954.56036,-259.11758,-3.6698236,100,0,0),
(19889,5,960.332,-260.597,-5.78864,5.99669,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (400301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(400301,0,0,0,0,0,0,0,0x04,1430,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (1430);
DELETE FROM conditions WHERE condition_entry IN (9908);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(9908, 42, 19889, 1, 1, 0, 'Stonetalon Mountains - q.1090 - Wave 2 - Windshear Digger x2 & Windshear Geomancer x2');
DELETE FROM worldstate_name WHERE Id=19889;
INSERT INTO worldstate_name(Id, Name) VALUES
(19889,'Stonetalon Mountains - q.1090 - Wave 2 - Windshear Digger x2 & Windshear Geomancer x2');
-- wave 3
-- Creatures
-- missing spawns added
DELETE FROM creature WHERE guid BETWEEN 128034 AND 128037;
INSERT INTO creature (guid, id, map, spawnMask, position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(128034,4002,1,1,937.0794,-258.10092,-2.2683077,0.48869219422340393,180,180,0,0),
(128035,4002,1,1,935.8944,-256.35678,-2.3162427,0.698131,180,180,0,0),
(128036,4002,1,1,934.352,-258.0696,-2.2152097,0.680678427219390869,180,180,0,0),
(128037,4004,1,1,935.28754,-258.9255,-2.2095058,0.575958,180,180,0,0);
DELETE FROM `spawn_group` WHERE id =19890;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19890, 'Stonetalon Mountains - q.1090 - Wave 3 - Windshear Stonecutter x3 & Windshear Overlord', 0, 0, 9909, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19890;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19890, 128037, 0),
(19890, 128034, 1),
(19890, 128035, 2),
(19890, 128036, 3);
DELETE FROM `spawn_group_formation` WHERE id = 19890;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19890, 5, 2, 0, 19890, 4, 'Stonetalon Mountains - q.1090 - Wave 3 - Windshear Stonecutter x3 & Windshear Overlord');
DELETE FROM `waypoint_path_name` WHERE PathId = 19890;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19890,'Stonetalon Mountains - q.1090 - Wave 3 - Windshear Stonecutter x3 & Windshear Overlord');
DELETE FROM `waypoint_path` WHERE PathId = 19890;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19890,1,944.28644,-255.18642,-2.7152529,100,100,400401),
(19890,2,946.54144,-256.04645,-3.0640638,100,0,0),
(19890,3,951.118,-257.7668,-3.1646798,100,0,0),
(19890,4,954.56036,-259.11758,-3.6698236,100,0,0),
(19890,5,960.332,-260.597,-5.78864,5.99669,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (400401);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(400401,0,0,0,0,0,0,0,0x04,1433,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (1433);
DELETE FROM conditions WHERE condition_entry IN (9909);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(9909, 42, 19890, 1, 1, 0, 'Stonetalon Mountains - q.1090 - Wave 3 - Windshear Stonecutter x3 & Windshear Overlord');
DELETE FROM worldstate_name WHERE Id=19890;
INSERT INTO worldstate_name(Id, Name) VALUES
(19890,'Stonetalon Mountains - q.1090 - Wave 3 - Windshear Stonecutter x3 & Windshear Overlord');
