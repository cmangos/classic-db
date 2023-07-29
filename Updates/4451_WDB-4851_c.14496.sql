-- Stormwind Orphan 14496
UPDATE `creature_template` SET `MinLevel` = 1 WHERE `entry` = 14496;
UPDATE creature SET position_x = -8605.174, position_y = 727.18976, position_z = 101.953995, spawndist = 0, MovementType = 0 WHERE guid IN (79804,79803,79812);
DELETE FROM `spawn_group` WHERE id = 19948;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19948, 'Stormwind - Stormwind Orphan 14496 x3', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19948;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19948, 79804, 0),
(19948, 79803, 1),
(19948, 79812, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19948;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19948, 0, 3, 0, 19948, 4, 'Stormwind - Stormwind Orphan 14496 x3');
DELETE FROM `waypoint_path_name` WHERE PathId = 19948;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19948,'Stormwind - Stormwind Orphan 14496 x3');
DELETE FROM `waypoint_path` WHERE PathId = 19948;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19948,1 ,-8605.174,727.18976,101.95399,100,0,0),
(19948,2 ,-8615.518,727.06305,101.954  ,100,0,0),
(19948,3 ,-8601.668,734.00146,102.00754,100,0,0),
(19948,4 ,-8595.465,740.55396,101.95401,100,0,0),
(19948,5 ,-8607.297,737.6297,101.96997 ,100,0,0),
(19948,6 ,-8610.456,726.92267,102.08236,100,0,0),
(19948,7 ,-8614.731,738.2851,101.953995,100,0,0),
(19948,8 ,-8616.292,746.80334,99.71966 ,100,0,0),
(19948,9 ,-8621.654,754.39355,96.754005,100,0,0),
(19948,10,-8626.7,739.71124,96.954     ,100,0,0),
(19948,11,-8625.583,751.8725,96.8355   ,100,0,0),
(19948,12,-8619.152,756.4973,96.987305 ,100,0,0),
(19948,13,-8608.3955,754.0259,96.97132,100,1000,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (79804,79803,79812);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(79804,1),(79803,1),(79812,1);
-- these do not belong to Event 10
-- Orphan Matron Nightingale 14450 - has extra quests and gossip during Event 10 'Children's Week'
DELETE FROM game_event_creature WHERE guid IN (79812,79806);
DELETE FROM game_event_quest WHERE quest = 1468;
INSERT INTO game_event_quest (quest, event) VALUES
(1468,10);

