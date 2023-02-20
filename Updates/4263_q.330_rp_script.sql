-- File accidently never made it into master branch/was overwritten.

-- Rework Privat Merle Movement
-- Spawns on Last waypoint and moves instantly 	
-- Respawns between 30 and 40 secs.
SET @PATH := 1421; -- Privat Merle Movement
UPDATE `creature` SET `spawntimesecsmin`='30', `spawntimesecsmax`='40', `position_x`='-11330.128', `position_y`='-201.70247', `position_z`='75.3551' WHERE `id` = '1421';
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES 
(@PATH,0,1,-11332.41,-202.57655,75.27844,100, 0),
(@PATH,0,2,-11332.354,-207.86171,75.4801,100, 0),
(@PATH,0,3,-11329.404,-210.93268,75.854614,100, 0),
(@PATH,0,4,-11325.882,-214.05154,76.310425,100, 0),
(@PATH,0,5,-11326.426,-220.31602,76.13684,100, 0),
(@PATH,0,6,-11331.428,-224.11876,75.2301,100, 15000),
(@PATH,0,7,-11330.593,-229.14502,75.061646,100, 0),
(@PATH,0,8,-11329.63,-232.61719,74.89221,100, 0),
(@PATH,0,9,-11329.29,-236.28912,74.812546,100, 0),
(@PATH,0,10,-11330.215,-240.38336,74.337204,100, 0),
(@PATH,0,11,-11328.289,-244.47841,74.35039,100, 0),
(@PATH,0,12,-11330.688,-248.137,73.26103,100, 30000),
(@PATH,0,13,-11328.444,-239.69011,74.69609,100, 0),
(@PATH,0,14,-11327.524,-235.55914,74.91753,100, 0),
(@PATH,0,15,-11326.942,-230.3699,75.30945,100, 0),
(@PATH,0,16,-11330.103,-226.33957,75.2301,100, 0),
(@PATH,0,17,-11330.271,-222.37321,75.2301,100, 0),
(@PATH,0,18,-11328.002,-216.52393,76.18225,100, 0),
(@PATH,0,19,-11330.451,-207.0886,75.4801,100, 0),
(@PATH,0,20,-11332.41,-202.57655,75.27844,100, 0),
(@PATH,0,21,-11330.128,-201.70247,75.3551,100, 12000);

-- Add waypoints for Privat Merle when quest Proof of Deed is turned in.
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,-11315.612,-197.70877,76.311745,100, 0, 0),
(@PATH,1,2,-11313.796,-194.019,76.59934,100, 6000, 142100), -- Say text and face Player 
(@PATH,1,3,-11325.414,-200.42009,75.6178,100, 0, 0),
(@PATH,1,4,-11343.164,-212.33643,75.29683,100, 0, 0),
(@PATH,1,5,-11359.65,-209.66531,75.29683,100, 0, 0),
(@PATH,1,6,-11374.819,-216.3622,75.34232,100, 0, 0),
(@PATH,1,7,-11383.107,-231.53195,71.442665,100, 0, 0),
(@PATH,1,8,-11383.049,-246.53125,65.809425,100, 0, 0),
(@PATH,1,9,-11391.146,-276.89496,59.325535,100, 0, 0),
(@PATH,1,10,-11390.09,-287.58762,59.22373,100, 0, 0),
(@PATH,1,11,-11384.697,-308.23578,63.358273,100, 0, 0),
(@PATH,1,12,-11382.183,-317.46582,65.11658,100, 0, 0),
(@PATH,1,13,-11379.763,-328.08258,65.40881,100, 0, 0),
(@PATH,1,14,-11372.397,-344.2346,65.67435,100, 2000, 142101),
(@PATH,1,15,-11366.07,-364.66504,66.08626,100, 0, 0),
(@PATH,1,16,-11358.83,-375.84946,65.32926,100, 0, 0),
(@PATH,1,17,-11350.435,-381.47113,65.6547,100, 0, 0), -- Spawn Ghouls
(@PATH,1,18,-11308.213,-370.0369,65.413025,100, 0, 0), 
(@PATH,1,19,-11299.191,-369.09235,65.643585,100, 30000, 0), 
(@PATH,1,20,-11271.992,-368.16895,61.901157,100, 0, 0),
(@PATH,1,21,-11255.041,-371.03772,58.591084,100, 10000, 142102); -- Despawn

-- Add quest end script for quest 'Patrol Schedules' entry 330
-- Privat Merle moves into the camp, faces Player and talks to player.
-- We currently cant set Player as target when with db_script_on_movement
DELETE FROM dbscripts_on_quest_end WHERE id = '330';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `x`, `y`, `z`, `comments`) VALUES 
('330', '0', '0', '21', '1', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Set ActiveState'),
('330', '0', '1', '25', '1', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Set Run'),
('330', '0', '2', '20', '2', '1', '1', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Start Waypoint Path 1');

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (142100, 142101, 142102, 60401); -- 1901800 is spawngroup, The usage of IDs is as following: Creature Entry * 100 + (1 – 99)
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `dataint`, `dataint2`,`x`, `y`, `z`, `comments`) VALUES 
('142100', '1000', '0', '36', '0', '0', '0','0', '0', '0', '0', '0','0','Patrol Schedules - Privat Merle - Face Player'),
('142100', '1000', '1', '0', '0', '0', '0','0', '229', '0', '0', '0','0','Patrol Schedules - Privat Merle - Say Text'),
('142100', '2000', '2', '22', '99', '0', '0','0', '0', '0', '0', '0','0','Patrol Schedules - Privat Merle - Change Faction'),
-- Spawn Spreaders
-- Check how long they should be spawned
-- Spawn Plaque Spreader as spawn_group
('142101', '0', '0', '53', '0', '0', '0','0', '6506', '1', '0', '0','0','Patrol Schedules - Privat Merle - Spawn Plague Spreader'),
-- Despawn at the end of his Waypoint
-- not working maybe data_flags 4
('142102', '2000', '0', '18', '0', '0', '0','0', '0', '0', '0', '0','0','Patrol Schedules - Privat Merle - Despawn'),
-- Despawn Plague spreader on last waypoint
('60401', '0', '0', '53', '0', '0', '0','0', '6506', '0', '0', '0','0','Patrol Schedules - Plaque Spreader - Change WorldState'),
('60401', '0', '3', '18', '0', '0', '0','0', '0', '0', '0', '0','0','Patrol Schedules - Plaque Spreader - Despawn Self'),
('60401', '0', '1', '18', '0', '0', '604','10', '0', '0', '0', '0','0','Patrol Schedules - Plaque Spreader - Despawn Friend'),
('60401', '0', '2', '18', '0', '0', '604','10', '0', '0', '0', '0','0','Patrol Schedules - Plaque Spreader - Despawn Friend');

-- Plaque Spreader spawns
DELETE FROM `creature` WHERE `id` = 604 AND `guid` IN (5237, 5238, 5239); -- queryed for id 604, then took range guid min, guid max, searched for 3 unused guids that have used guids in duskwood near itself in all 3 expansions
INSERT INTO `creature` (`guid`, `id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `curhealth`, `MovementType`) VALUES 
-- Entry: 604 Low: 6461186
-- X: -11256.541 Y: -358.52567 Z: 59.071896
('5237', '604', '-11256.541', '-358.52567', '59.071896', '3.82457280158996582', '0', '0', '0'), -- no need for movementtype in spawngroup, spawngroup handles this
-- Entry: 604 Low: 14849794
-- X: -11250.679 Y: -356.77237 Z: 56.685455
('5238', '604', '-11250.679', '-356.77237', '56.685455', '6.282236576080322265', '0', '0', '0'),
-- Entry: 604 Low: 23238402
-- X: -11251.144 Y: -354.77817 Z: 57.42874
('5239', '604', '-11251.144', '-354.77817', '57.42874', '0.214641839265823364', '0', '0', '0');

-- Spawn Data to get different Faction for Plaque Spreaders
DELETE FROM `creature_spawn_data_template` WHERE `Entry` = '60401';
INSERT INTO `creature_spawn_data_template` (`Entry`, `Faction`) VALUES 
('60401', '43'); -- creature_entry * 100 + 1

DELETE FROM `creature_spawn_data` WHERE `Guid` IN (5237, 5238, 5239);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
('5237', '60401'),
('5238', '60401'),
('5239', '60401');

DELETE FROM `spawn_group` WHERE `Id` = '19018';
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
('19018', 'Duskwood - Plague Spreader (3) (q.330)', '0', '0', '6506', '8'); -- SPAWN_GROUP_DESPAWN_ON_COND_FAIL + CREATURE_GROUP_AGGRO_TOGETHER, aggro removed lets handle this generic because stuff like distract exists.

DELETE FROM `spawn_group_formation` WHERE `Id` = '19018';
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES 
('19018', '1', '5', '0', '19018', '2', 'Duskwood - Plague Spreader (3) (q.330)');

DELETE FROM `spawn_group_spawn` WHERE `Id` = '19018';
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
('19018', '5237', '0'),
('19018', '5238', '1'),
('19018', '5239', '2');

DELETE FROM `worldstate_name` WHERE `Id` = '6506';
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
('6506', 'Quest ID 330 - Plague Spreader Spawn');

DELETE FROM `conditions` WHERE `condition_entry` = '6506';
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
('6506', '42', '6506', '0', '1', '0', '0', 'Quest ID 330 - Plague Spreader Spawn');

-- plaque Spreader Waypoints
DELETE FROM `waypoint_path` WHERE `PathId` = 19018;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`) VALUES 
('19018','1','-11270.975','-364.99533','61.834743', '0', '0'),
('19018','2','-11282.513','-366.25824','63.389675', '0', '0'),
('19018','3','-11291.812','-366.56598','64.210236', '2000', '0'),
('19018','4','-11290.514','-366.52344','64.17557', '0', '0'),
('19018','5','-11272.343','-366.87717','62.105503', '0', '0'),
('19018','6','-11262.049','-365.63098','60.135162', '0', '0'),
('19018','7','-11250.061','-358.7902','56.24234', '1000', '60401');

DELETE FROM `waypoint_path_name` WHERE `PathId` = 19018 AND `Name` = 'Duskwood - Plague Spreader (q.330)';
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
('19018', 'Duskwood - Plague Spreader (q.330)');

-- make Private Merle survive rebel watchman
UPDATE `creature_template` SET `DamageMultiplier` = 1.20 WHERE `entry` = 1421;

