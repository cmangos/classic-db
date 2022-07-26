-- Samophlange Gameobject use
-- Has the a 80% chance to spawn 1-2 creature 
-- Based on TBC PTR 										
DELETE FROM `creature` WHERE `guid` IN (158020, 158021, 158022);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `curhealth`, `MovementType`) VALUES 
('158020', '0', '1', '807.8574', '-2685.848', '91.75', '5.864306', '5', '5','0', '0', '2'),
('158021', '0', '1', '806.99445', '-2683.6455', '91.75', '3.647738', '5', '5','0', '0', '2'),
('158022', '0', '1', '845.2584', '-2657.833' ,'92.1316' ,'3.176499' , '5', '5','0', '0', '2');

DELETE FROM `creature_spawn_entry` WHERE `guid` IN (158020, 158021, 158022);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES 
('158020', '3284'),
('158020', '3285'),
('158021', '3284'),
('158021', '3285'),
('158022', '3284'),
('158022', '3285');

DELETE FROM `spawn_group` WHERE `Id` IN (19020, 19021);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
('19020', 'Barrens - Main Control Valve RND Spawn NPCs', '0', '2', '19020', '2'),
('19021', 'Barrens - Regulator Valve RND Spawn NPCs', '0', '2', '19021', '2');

DELETE FROM `spawn_group_formation` WHERE `Id` = '19020';
DELETE FROM `spawn_group_formation` WHERE `Id` = '19021';

DELETE FROM `spawn_group_spawn` WHERE `Id` IN (19020, 19021);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
('19020', '158020', '0'),
('19020', '158021', '1'),
('19021', '158022', '1');

DELETE FROM `worldstate_name` WHERE `Id` IN (19020, 19021);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
('19020', 'Barrens - Main Control Valve RND Spawn NPCs'),
('19021', 'Barrens - Regulator Valve RND Spawn NPCs');

DELETE FROM `conditions` WHERE `condition_entry` IN (19020, 19021);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
('19020', '42', '19020', '0', '1', '0', '0', 'Barrens - Main Control Valve RND Spawn NPCs'),
('19021', '42', '19021', '0', '1', '0', '0', 'Barrens - Regulator Valve RND Spawn NPCs');

DELETE FROM creature_movement WHERE `Id` IN ('158020', '158021', '158022');
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`) VALUES 
('158020','1','807.8574', '-2685.848', '91.75', '1000', '328400'),
('158020','2','827.53876', '-2679.0618', '91.791664', '5000', '328401'),
('158021','1','806.99445', '-2683.6455', '91.75', '1000', '328400'),
('158021','2','826.4972', '-2678.3015', '91.791664', '5000', '328402'),
('158022','1','845.2584','-2657.833','92.1316','1000', '328403'),
('158022','2','842.5071' ,'-2673.2441','91.791664','5000', '328402');

DELETE FROM dbscripts_on_go_template_use WHERE id IN (4072, 61935);
INSERT INTO `dbscripts_on_go_template_use` (`id`, `command`, `datalong`, `datalong2`,  `comments`) VALUES 
('4072', '45', '0', '4072', 'Quest Samophlange - Main Control Valve start relay script'),
('61935', '45', '0', '61935', 'Quest Samophlange - Regulator start relay script');

DELETE FROM dbscript_random_templates WHERE id IN (4072, 61935);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES 
('4072', '1', '4072', '80', 'Quest Samophlange - Main Control Valve RND Spawn NPCs'),
('4072', '1', '0', '20', 'Quest Samophlange - No Action'),
('61935', '1', '61935', '80', 'Quest Samophlange - Regulator Valve RND Spawn NPCs'),
('61935', '1', '0', '20', 'Quest Samophlange - No Action');

DELETE FROM dbscripts_on_relay WHERE id IN (4072, 61935);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `dataint`, `dataint2`, `comments`) VALUES 
('4072', '0','0', '53', '0', '0','19020', '1', 'Main Control Valve Spawn NPCS'),
('61935', '0','0', '53', '0', '0','19021', '1', 'Regulator Valve - Spawn NPCS');

DELETE FROM dbscripts_on_creature_movement WHERE id IN ('328400', '328401', '328402');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `data_flags`, `dataint`, `dataint2`, `comments`) VALUES 
('328400', '0','0', '25', '1', '0', '0', '0','0', 'Quest Samophlange - Venture co - Set RUN'),
('328400', '0','0', '53', '0', '0', '0', '19020','0', 'Set Worldstate'),
('328400', '100','1', '0', '0', '0', '0', '4704','0', 'Samophlange - RND Spawn TALK'),
('328401', '1000','0', '32', '1', '0', '0', '0','0', 'Stop Waypoint'),
('328402', '1000','0', '32', '1', '0', '0', '0','0', 'Stop Waypoint'),
('328402', '2000','0', '20', '1', '3', '8', '0','0', 'Set Random Movement'),
('328403', '0','0', '25', '1', '0', '0', '0','0', 'Quest Samophlange - Venture co - Set RUN'),
('328403', '0','0', '53', '0', '0', '0', '19021','0', 'Set Worldstate'),
('328403', '100','1', '0', '0', '0', '0', '4704','0', 'Samophlange - RND Spawn TALK');
