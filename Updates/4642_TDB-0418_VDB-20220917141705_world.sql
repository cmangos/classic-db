-- Add your query below.
-- https://github.com/vmangos/core/commit/cbf9cd95ca86d27f721681d0084d55f1057748da

-- RewMailTemplateId` = 123, `RewMailDelaySecs` = 86400, `RewMailMoney` = 1000000
-- UPDATE `quest_template` SET `CompleteScript` = 8729 WHERE `entry` = 8729;
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
-- (8728, 1, 0, 38, 123, 11811, 1000000, 0, 0, 0, 129600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'send mail with 36hrs delay to Player');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Giant Buzzard,Black Slayer,Bonepicker,Bloodshot,Gurubashi Bat Rider,Qiraji Scarab Are Not Skinnable
UPDATE `creature_template` SET `skinninglootid`= 0 WHERE `entry` IN  (14750, 11614, 2831, 5982, 5983,15316);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (2831,5982,14750);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Objects Used in Quest Bingles' Missing Supplies Should Respawn Faster (credit cmangos) -> fix missing in wotlkmangos 
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` IN (12871, 12863, 12872, 12864);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Questgiver
DELETE FROM `creature_questrelation` WHERE `id` = 313 AND `quest` = 249;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (313, 249);
-- gossip missing from object 76

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove hard coded name in text - "Saric"
UPDATE `quest_template` SET `RequestItemsText` = 'You made it. I\'m so glad.$b$bMuch has happened over the last few years, $n: the creation of Teldrassil, the corruption of many of the forest creatures here and abroad, discovery of lands we thought lost to us like Feralas... so much, in so little time. But those are just some of the reasons we are here, the most important being to protect our kind from further evil.' WHERE `entry`=3116;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Patrol 1
DELETE FROM `spawn_group` WHERE id = 19045;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19045,'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 000', 0, 0, 0, 0);
DELETE FROM `spawn_group_formation` WHERE id = 19045;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19045, 1, 3, 0, 19045, 2, 'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 000');
DELETE FROM `spawn_group_spawn` WHERE id = 19045;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19045, 92903, 0),
(19045, 92904, 1);
DELETE FROM `waypoint_path_name` WHERE `PathId` = 19045;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (19045, 'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 000');
DELETE FROM `creature_movement` WHERE `id` IN (92903,92904);
UPDATE `creature` SET `position_x` = -560.477, `position_y` = -4602.34, `position_z` = 9.73491, `MovementType` = 0 WHERE `guid` IN (92903,92904);
DELETE FROM `waypoint_path` WHERE `PathId` = 19045;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(19045, 1, -560.477, -4602.34, 9.73491, 100, 0, 0, ''),
(19045, 2, -555.676, -4584.8, 9.65229, 100, 0, 0, ''),
(19045, 3, -564.356, -4573.47, 9.47859, 100, 0, 0, ''),
(19045, 4, -584.895, -4564.14, 9.03952, 100, 0, 0, ''),
(19045, 5, -586.043, -4559.78, 9.10454, 100, 0, 0, ''),
(19045, 6, -581.104, -4560.61, 9.16501, 100, 0, 0, ''),
(19045, 7, -565.556, -4568.16, 9.41349, 100, 0, 0, ''),
(19045, 8, -558.513, -4557.34, 10.1069, 100, 0, 0, ''),
(19045, 9, -548.18, -4544.4, 9.76996, 100, 0, 0, ''),
(19045, 10, -537.815, -4539.63, 10.3619, 100, 0, 0, ''),
(19045, 11, -530.221, -4536.66, 10.8068, 100, 0, 0, ''),
(19045, 12, -527.343, -4539.12, 10.7366, 100, 0, 0, ''),
(19045, 13, -537.099, -4544.58, 10.2895, 100, 0, 0, ''),
(19045, 14, -550.885, -4553.08, 10.2612, 100, 0, 0, ''),
(19045, 15, -560.426, -4569.81, 9.58455, 100, 0, 0, ''),
(19045, 16, -556.762, -4579.83, 9.61527, 100, 0, 0, ''),
(19045, 17, -556.18, -4595.4, 9.56615, 100, 0, 0, ''),
(19045, 18, -558.644, -4604.46, 9.61982, 100, 0, 0, ''),
(19045, 19, -566.361, -4613.43, 9.74237, 100, 0, 0, ''),
(19045, 20, -576.789, -4615.38, 9.5312, 100, 0, 0, ''),
(19045, 21, -588.553, -4618.48, 9.37748, 100, 0, 0, ''),
(19045, 22, -599.79, -4630.89, 9.48897, 100, 0, 0, ''),
(19045, 23, -591.666, -4623.96, 9.46637, 100, 0, 0, ''),
(19045, 24, -583.448, -4616.84, 9.35752, 100, 0, 0, ''),
(19045, 25, -568.47, -4615.99, 9.65283, 100, 0, 0, '');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Patrol 2
-- https://www.youtube.com/watch?v=SJNNWCfaeO8&ab_channel=anti-gravity
DELETE FROM `spawn_group` WHERE id = 19046;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19046,'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 001', 0, 0, 0, 0);
DELETE FROM `spawn_group_formation` WHERE id = 19046;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19046, 1, 3, 0, 19046, 2, 'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 001');
DELETE FROM `spawn_group_spawn` WHERE id = 19046;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19046, 92898, 0),
(19046, 92899, 1);
DELETE FROM `waypoint_path_name` WHERE `PathId` = 19046;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (19046, 'The Hinterlands (Revantusk Village) - Raventusk Watcher (2) Patrol 001');
DELETE FROM `creature_movement` WHERE `id` IN (92898, 92899);
UPDATE `creature` SET `position_x` = -634.003, `position_y` = -4693.88, `position_z` = 5.13052, `MovementType` = 0 WHERE `guid` IN (92898, 92899);
DELETE FROM `waypoint_path` WHERE `PathId` = 19046;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(19046, 1, -634.003, -4693.88, 5.13052, 100, 0, 0, ''),
(19046, 2, -643.561, -4714.02, 5.1673, 100, 3000, 0, ''),
(19046, 3, -634.003, -4693.88, 5.13052, 100, 0, 0, ''),
(19046, 4, -614.562, -4654.46, 5.03842, 100, 3000, 0, '');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Missing Text to Smith Slagtree
-- https://www.wowhead.com/classic/npc=14737/smith-slagtree#comments
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1473701; -- Smith Slagtree - EMOTE_ONESHOT_KNEEL
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `dataint`,`comments`) VALUES
(1473701, 1000, 0, 28, 8, 0, 'Smith Slagtree - Kneel'),
(1473701, 4000, 0, 28, 0, 0, 'Smith Slagtree - Stand Up'),
(1473701, 5000, 0, 0, 0, 9959, 'Smith Slagtree - Talk');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Conver Caliph Scorpidsting Patrol To Groups
DELETE FROM `spawn_group` WHERE id = 19024;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19024,'Tanaris (Waterspring Field) - Caliph Scorpidsting (3) Patrol 000', 0, 0, 0, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19024;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19024, 1, 3, 0, 19024, 2, 'Tanaris (Waterspring Field) - Caliph Scorpidsting (3) Patrol 000');
DELETE FROM `spawn_group_spawn` WHERE id = 19024;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19024, 23286, 0),
(19024, 23466, 1),
(19024, 23467, 2);
DELETE FROM `waypoint_path_name` WHERE `PathId` = 19024;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (19024, 'Tanaris (Waterspring Field) - Caliph Scorpidsting (3) Patrol 000');
DELETE FROM `creature_movement` WHERE `id` IN (23286, 23466, 23467);
DELETE FROM `creature_movement_template` WHERE `entry` = 7847;
UPDATE `creature` SET `position_x` = -7632.11, `position_y` = -4484.75, `position_z` = 9.42574, `MovementType` = 0 WHERE `guid` IN (23286, 23466, 23467);
DELETE FROM `waypoint_path` WHERE `PathId` = 19024;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(19024, 1, -7632.11, -4484.75, 9.42574, 100, 0, 0, NULL),
(19024, 2, -7631.09, -4493.68, 8.91861, 100, 0, 0, NULL),
(19024, 3, -7629.96, -4504.82, 8.99366, 100, 0, 0, NULL),
(19024, 4, -7624.46, -4514.55, 9.30387, 100, 0, 0, NULL),
(19024, 5, -7614.63, -4524.48, 9.61623, 100, 0, 0, NULL),
(19024, 6, -7604.03, -4531.75, 9.80899, 100, 0, 0, NULL),
(19024, 7, -7594.79, -4544.92, 9.18175, 100, 0, 0, NULL),
(19024, 8, -7600.55, -4559.49, 9.48004, 100, 0, 0, NULL),
(19024, 9, -7600.72, -4570.66, 9.3134, 100, 0, 0, NULL),
(19024, 10, -7599.1, -4581.71, 9.09115, 100, 0, 0, NULL),
(19024, 11, -7604.47, -4594.67, 8.90585, 100, 0, 0, NULL),
(19024, 12, -7594.55, -4589.52, 9.00771, 100, 0, 0, NULL),
(19024, 13, -7584.49, -4586.34, 9.73873, 100, 0, 0, NULL),
(19024, 14, -7572.92, -4584.23, 10.6359, 100, 0, 0, NULL),
(19024, 15, -7560.66, -4583.15, 10.59, 100, 0, 0, NULL),
(19024, 16, -7544.01, -4580.97, 9.24722, 100, 0, 0, NULL),
(19024, 17, -7544.01, -4580.97, 9.24722, 100, 0, 0, NULL),
(19024, 18, -7517.74, -4579.11, 10.5473, 100, 0, 0, NULL),
(19024, 19, -7517.74, -4579.11, 10.5473, 100, 0, 0, NULL),
(19024, 20, -7496.79, -4577.6, 10.7032, 100, 0, 0, NULL),
(19024, 21, -7477.24, -4574.12, 9.25929, 100, 0, 0, NULL),
(19024, 22, -7477.24, -4574.12, 9.25929, 100, 0, 0, NULL),
(19024, 23, -7462.99, -4576.96, 8.96629, 100, 0, 0, NULL),
(19024, 24, -7443.78, -4585.45, 8.99293, 100, 0, 0, NULL),
(19024, 25, -7411.38, -4599.91, 8.99302, 100, 0, 0, NULL),
(19024, 26, -7398.6, -4601.22, 9.0521, 100, 0, 0, NULL),
(19024, 27, -7376.27, -4601.18, 9.02304, 100, 0, 0, NULL),
(19024, 28, -7348.44, -4607.56, 8.90977, 100, 0, 0, NULL),
(19024, 29, -7348.44, -4607.56, 8.90977, 100, 0, 0, NULL),
(19024, 30, -7364.11, -4598.95, 9.06223, 100, 0, 0, NULL),
(19024, 31, -7384.02, -4590.54, 9.00261, 100, 0, 0, NULL),
(19024, 32, -7390.7, -4573.43, 9.42725, 100, 0, 0, NULL),
(19024, 33, -7384.82, -4553.39, 11.3159, 100, 0, 0, NULL),
(19024, 34, -7384.14, -4550.97, 11.46, 100, 0, 0, NULL),
(19024, 35, -7401.86, -4539.76, 12.1673, 100, 0, 0, NULL),
(19024, 36, -7419.31, -4528.07, 10.9842, 100, 0, 0, NULL),
(19024, 37, -7436.23, -4515.64, 10.4303, 100, 0, 0, NULL),
(19024, 38, -7452.99, -4502.98, 8.97618, 100, 0, 0, NULL),
(19024, 39, -7467.9, -4488.74, 7.99462, 100, 0, 0, NULL),
(19024, 40, -7467.9, -4488.74, 7.99462, 100, 0, 0, NULL),
(19024, 41, -7486.19, -4478.9, 8.98445, 100, 0, 0, NULL),
(19024, 42, -7503.73, -4473.37, 8.92245, 100, 0, 0, NULL),
(19024, 43, -7510.55, -4463.82, 8.93055, 100, 0, 0, NULL),
(19024, 44, -7526.32, -4424.98, 9.6603, 100, 0, 0, NULL),
(19024, 45, -7528.74, -4419.26, 9.85108, 100, 0, 0, NULL),
(19024, 46, -7547.53, -4409.92, 10.1263, 100, 0, 0, NULL),
(19024, 47, -7563.08, -4401.59, 10.185, 100, 0, 0, NULL),
(19024, 48, -7572.42, -4383.16, 9.60879, 100, 0, 0, NULL),
(19024, 49, -7577.5, -4357.36, 9.06874, 100, 0, 0, NULL),
(19024, 50, -7581.41, -4355.14, 9.27655, 100, 0, 0, NULL),
(19024, 51, -7609.75, -4343.12, 9.39386, 100, 0, 0, NULL),
(19024, 52, -7609.75, -4343.12, 9.39386, 100, 0, 0, NULL),
(19024, 53, -7640.69, -4314.72, 8.88878, 100, 0, 0, NULL),
(19024, 54, -7649.18, -4306.59, 9.11055, 100, 0, 0, NULL),
(19024, 55, -7667.92, -4280.39, 8.88673, 100, 0, 0, NULL),
(19024, 56, -7680.96, -4282.76, 9.18084, 100, 0, 0, NULL),
(19024, 57, -7693.76, -4286.85, 10.0593, 100, 0, 0, NULL),
(19024, 58, -7708.09, -4289.23, 9.24063, 100, 0, 0, NULL),
(19024, 59, -7722.47, -4291.62, 9.75947, 100, 0, 0, NULL),
(19024, 60, -7734.45, -4298.77, 11.4524, 100, 0, 0, NULL),
(19024, 61, -7749.94, -4306.58, 12.5152, 100, 0, 0, NULL),
(19024, 62, -7764.08, -4314.5, 11.6996, 100, 0, 0, NULL),
(19024, 63, -7773.87, -4319.98, 10.0576, 100, 0, 0, NULL),
(19024, 64, -7784.42, -4332.34, 8.97198, 100, 0, 0, NULL),
(19024, 65, -7773.68, -4349.4, 8.97198, 100, 0, 0, NULL),
(19024, 66, -7757.49, -4365.63, 8.97198, 100, 0, 0, NULL),
(19024, 67, -7731.45, -4389.43, 8.98059, 100, 0, 0, NULL),
(19024, 68, -7731.45, -4389.43, 8.98059, 100, 0, 0, NULL),
(19024, 69, -7702.96, -4413.69, 9.31696, 100, 0, 0, NULL),
(19024, 70, -7689.29, -4426.94, 11.0171, 100, 0, 0, NULL),
(19024, 71, -7689.29, -4426.94, 11.0171, 100, 0, 0, NULL),
(19024, 72, -7664.58, -4447.99, 11.4495, 100, 0, 0, NULL),
(19024, 73, -7633.9, -4468.6, 9.92091, 100, 0, 0, NULL);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- normally these are not bugged anymore in cmangos, but incase that breaks sometimes.
-- Beached Sea Creature Should Not Despawn On Loot (Note To Self: Maybe Convert Beached Sea Creatures Hardcoded Scripts To DB)
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (175207,175226,175227,175230,176190,176191,176196,176197,176198,175233);

-- Objects Used In Quest The Relics of Wakening Should Not Despawn when Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (2739,2740,2741,2742);

-- Objects Used In Quest Deep Ocean, Vast Sea Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (175165,175166);

-- Objects Used In Quest Trial Of The Sea Lion Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (177790,177844,177792);

-- Blackwood Nut Stores Should Not Despawn When Looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (175331,175329,175330);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Stop Blubber Gump Castin Fishing If Player Already Has It
-- https://www.wowhead.com/classic/npc=10216/gubber-blump#comments
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2562; -- missing
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(2562, 0, 0, 'Gubber, I don\'t know how to fish.', 5529, 1, 1, -1, 0, 256200, 0, 0, NULL, 0, 811),
(2562, 1, 1, 'Gubber, I don\'t have a fishing pole.', 5530, 3, 4, 0, 0, 256201, 0, 0, NULL, 0, 814); -- npc_option_npcflag 4 classic

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 811 AND 814;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
-- (810, 7, 356, 1, 0, 0, 0, 'Has Skill ID 356, Minimum Skill Value 1'), -- already exists in classic (404) /wotlk (135)
(811, 7, 356, 1, 0, 0, 1, 'NOT (Has Skill ID 356, Minimum Skill Value 1)'),
(812, 8, 1141, 0, 0, 0, 0, ''),
(813, 9, 1141, 0, 0, 0, 0, ''),
(814, -2, 812, 813, 0, 0, 0, '');

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (256200,256201);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `condition_id`, `comments`, `data_flags`) VALUES
(256201, 0, 0, 0, 0, 5532, 0, 'Gubber Blump - Say Text', 0),
(256201, 30000, 31, 10216, 5, 0, 0, 'Gubber Blump - Spam Prevention', 0),
-- no spawm protection for teaching, but for vendor option, else people might think the option is bugged.
(256200, 0, 15, 7733, 0, 0, 811, 'Gubber Blump  - Teach Fishing', 0), -- 7620/7733
(256200, 0, 0, 0, 0, 5531, 0, 'Gubber Blump  - Say Text', 0);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unstuck Creature
UPDATE `creature` SET `position_z` = -6.5294 WHERE `guid`=8447;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Nicky: Various Gobjects Should Not Despawn When Looted
-- brotalnia: Guid 18541 has the consumable flag (data3) in gameobject_template, all the others don't.
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` IN (57,52,54,179426,2691,2689,2690,1560,1562,1760,32,19877);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Some Missing Salt Flats Scavengers (+ one patrol around the crater?)
UPDATE `creature` SET `position_x` = -5709.95, `position_y` = -4024.12, `position_z` = -58.62, `orientation` = 0 WHERE `guid` = 21540 AND `id` = 4154; -- prob pathing
UPDATE `creature` SET `position_x` = -5946.06, `position_y` = -3574.42, `position_z` = -58.62, `orientation` = 0, `spawndist` = 30, `MovementType` = 1 WHERE `guid` = 21541 AND `id` = 4154; -- prob pathing
UPDATE `creature` SET `position_x` = -5766.60, `position_y` = -3680.05, `position_z` = -58.62, `orientation` = 0, `spawndist` = 30, `MovementType` = 1 WHERE `guid` = 21542 AND `id` = 4154; -- prob pathing
UPDATE `creature` SET `position_x` = -6103.91, `position_y` = -3793.01, `position_z` = -58.62, `orientation` = 0, `spawndist` = 30, `MovementType` = 1 WHERE `guid` = 21543 AND `id` = 4154; -- prob pathing
UPDATE `creature` SET `position_x` = -6055.62, `position_y` = -3631.65, `position_z` = -58.62, `orientation` = 0, `spawndist` = 30, `MovementType` = 1 WHERE `guid` = 21545 AND `id` = 4154; -- prob pathing
DELETE FROM `creature` WHERE `id` = 4154 AND `guid` BETWEEN 88113 AND 88120;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`,`MovementType`) VALUES
(88113, 4154, 1, -6047.05, -3526.27, -58.4698, 0, 300, 300, 30, 1),
(88114, 4154, 1, -5908.47, -4283.60, -58.62, 0, 300, 300, 3, 1), -- confirmed
(88115, 4154, 1, -5904.01, -4313.43, -58.6666, 0, 300, 300, 3, 1), -- confirmed
(88116, 4154, 1, -5893.38, -4265.79, -58.6667, 0, 300, 300, 3, 1), -- confirmed
(88117, 4154, 1, -5882.59, -4300.98, -58.6666, 0, 300, 300, 3, 1), -- confirmed
(88118, 4154, 1, -5872.53, -4279.76, -58.6667, 0, 300, 300, 3, 1), -- confirmed
(88119, 4154, 1, -5620.8, -4173.51, -58.3531, 0, 300, 300, 30, 1),
(88120, 4154, 1, -5581.22, -3526.54, -57.7514, 0, 300, 300, 30, 1);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Some Missing Salt Flats Vultures
DELETE FROM `creature` WHERE `guid` = 21546; -- stuck in building
DELETE FROM `creature` WHERE `id` = 4158 AND `guid` BETWEEN 88121 AND 88126;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(88121, 4158, 1, -6480.62646, -3647.23755, -58.62494, 0.145858422, 300, 300, 30, 1), -- movement
(88122, 4158, 1, -6201.423, -3646.21826, -58.6249542, 4.038928, 300, 300, 30, 1), -- seems like pathing (32584,21547)
(88123, 4158, 1, -6542.08154, -3860.6875, -58.6691742, 0.449970663, 300, 300, 30, 1), -- strange pathing, but exists, maybe one patrolling the area?
(88124, 4158, 1, -6522.79, -3772.03, -58.66, 0, 300, 300, 30, 1), -- duplicate movement around the perimeter (32585)
(88125, 4158, 1, -6115.57861, -4092.78076, -58.6250343, 3.74741, 300, 300, 30, 1), -- seems like pathing (21548,32583)
(88126, 4158, 1, -6236.798, -4138.05762, -58.6250343, 6.24208736, 300, 300, 30, 1);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Incorrect Loot
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (2992, 10928);
DELETE FROM `creature_loot_template` WHERE `entry` IN (2992, 10928);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Some Missing Monstrous Crawlers
DELETE FROM `creature` WHERE `id` = 1088 AND `guid` BETWEEN 88127 AND 88145;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(88127, 1088, 0, -10800.1, -4404.08, -35.2167, 3.48709, 300, 300, 5, 1),
(88128, 1088, 0, -10718.1, -4448.59, -18.8454, 5.50029, 300, 300, 5, 1),
(88129, 1088, 0, -10700.3, -4399.87, -0.531008, 1.3507, 300, 300, 5, 1),
(88130, 1088, 0, -10666.7, -4366.29, 3.26075, 0.618773, 300, 300, 5, 1),
(88131, 1088, 0, -10653.4, -4517.67, -23.9547, 4.91462, 300, 300, 5, 1),
(88132, 1088, 0, -10583.3, -4452.21, -17.0435, 1.20334, 300, 300, 5, 1),
(88133, 1088, 0, -10567.1, -4366.64, 4.7016, 3.17283, 300, 300, 5, 1),
(88134, 1088, 0, -10450.6, -4452.4, -16.561, 2.9208, 300, 300, 5, 1),
(88135, 1088, 0, -10373.7, -4525.68, 17.5042, 5.48121, 300, 300, 5, 1),
(88136, 1088, 0, -10334.1, -4399.04, 1.59411, 2.065, 300, 300, 5, 1),
(88137, 1088, 0, -10266.9, -4366.72, 3.68002, 4.84307, 300, 300, 5, 1),
(88138, 1088, 0, -10265.8, -4366.62, 3.33819, 0.0981503, 300, 300, 5, 1),
(88139, 1088, 0, -10247.6, -4516.91, -17.0171, 2.41655, 300, 300, 5, 1),
(88140, 1088, 0, -10234, -4399.7, -4.47237, 2.42813, 300, 300, 5, 1),
(88141, 1088, 0, -10200.3, -4366.22, 1.46967, 3.15542, 300, 300, 5, 1),
(88142, 1088, 0, -10166.6, -4366.29, -1.91147, 0.648234, 300, 300, 5, 1),
(88143, 1088, 0, -10116.4, -4386.95, -3.52771, 2.39893, 300, 300, 5, 1),
(88144, 1088, 0, -10100.5, -4332.48, -1.9814, 2.32049, 300, 300, 5, 1),
(88145, 1088, 0, -10937.6, -4270.71, -35.2141, 5.71197, 300, 300, 5, 1);

UPDATE `creature` SET `spawndist` = 20 WHERE `id` = 1088;
DELETE FROM `creature` WHERE `guid` IN (38723, 42830, 38756); -- now duplicated

-- https://web.archive.org/web/20080616083635/http://wow.allakhazam.com/db/item.html?witem=8223
DELETE FROM `reference_loot_template` WHERE `entry` = 65282 AND `item` != 8223; -- NPC LOOT (Rare NPC Loot) - Ironeye the Invincible (5935) - Special Items - always level 37
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 45 WHERE `entry` = 65282 AND `item` = 8223;
DELETE FROM `reference_loot_template` WHERE `entry` = 65282 AND `item` = 60158;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65282, 60158, 55, 1, -60158, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Threshadon Should Only Have Water Movement
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry`=1224;
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry`=2188;

-- missing added from trinitycore
-- https://www.wowhead.com/classic/npc=2188/deep-sea-threshadon
DELETE FROM `creature` WHERE `id` = 2188 AND `guid` BETWEEN 88146 AND 88155;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(88146, 2188, 1, 8205.18, -942.167, -24.0992, 5.52606, 300, 300, 10, 1),
(88147, 2188, 1, 8141.94, -932.122, -22.4119, 4.78307, 300, 300, 10, 1),
(88148, 2188, 1, 8197.71, -1212.46, -51.4801, 4.93622, 300, 300, 10, 1),
(88149, 2188, 1, 8287.17, -1227.98, -79.8464, 1.18987, 300, 300, 10, 1),
(88150, 2188, 1, 8346.42, -1096.5, -82.6515, 3.75184, 300, 300, 10, 1),
(88151, 2188, 1, 8283.3, -1096.47, -64.8594, 0.0400507, 300, 300, 10, 1),
(88152, 2188, 1, 8253.2, -1117.77, -59.4172, 1.84882, 300, 300, 10, 1),
(88153, 2188, 1, 8143.82, -1092.24, -18.2926, 4.04637, 300, 300, 10, 1),
(88154, 2188, 1, 8223.68, -971.797, -46.0062, 1.82997, 300, 300, 10, 1),
(88155, 2188, 1, 8059.41, -894.016, -23.4058, 5.15614, 300, 300, 10, 1);

-- trinitycore
DELETE FROM `creature` WHERE `id` = 2187 AND `guid` BETWEEN 87019 AND 87021;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(87019, 2187, 1, 7951.68, -761.708, -16.9966, 2.80779, 300, 300, 10, 1),
(87020, 2187, 1, 7943.62, -902.689, -19.8649, 2.64677, 300, 300, 10, 1),
(87021, 2187, 1, 8035.47, -775.006, -30.7854, 0.0148895, 300, 300, 10, 1);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Dunemaul dynguid
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` IN (5471,5472,5473,5474,5475,8201,12046);
UPDATE `creature_template` SET `SpeedWalk` = 1.6 WHERE `entry` IN (5472,12046,8202);

UPDATE `creature` SET `id` = 0, `position_x` = -8545.49, `position_y` = -2992.34,`position_z` = 10.248, `orientation` = 5.98197, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23193;
UPDATE `creature` SET `id` = 0, `position_x` = -8543.34, `position_y` = -2971.38, `position_z` = 9.43386, `orientation` = 2.35826, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23156;
UPDATE `creature` SET `id` = 0, `position_x` = -8513.1, `position_y` = -3022.68, `position_z` = 9.63054, `orientation` = 2.14871, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23196;
UPDATE `creature` SET `id` = 0, `position_x` = -8490.92, `position_y` = -3031, `position_z` = 9.09877, `orientation` = 0.886886, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23157;
UPDATE `creature` SET `id` = 0, `position_x` = -8480.08, `position_y` = -3074.01, `position_z` = 10.4744, `orientation` = 0.366519, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23194;
UPDATE `creature` SET `id` = 0, `position_x` = -8448.01, `position_y` = -3153.98, `position_z` = 8.73415, `orientation` = 6.21337, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23182;
UPDATE `creature` SET `id` = 0, `position_x` = -8370.97, `position_y` = -2984.35, `position_z` = 8.58642, `orientation` = 0.865984, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23172;
UPDATE `creature` SET `id` = 0, `position_x` = -8358.53, `position_y` = -3021.53, `position_z` = 8.85765, `orientation` = 3.36982, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23154;
UPDATE `creature` SET `id` = 0, `position_x` = -8328.57, `position_y` = -3131.45, `position_z` = 8.91409, `orientation` = 0.631058, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23153;
UPDATE `creature` SET `id` = 0, `position_x` = -8318.6, `position_y` = -3163.25, `position_z` = 13.6378, `orientation` = 2.57397, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23183;
UPDATE `creature` SET `id` = 0, `position_x` = -8315.21, `position_y` = -3120.98, `position_z` = 8.7969, `orientation` = 3.97935, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23184;
UPDATE `creature` SET `id` = 0, `position_x` = -8307, `position_y` = -2864.82, `position_z` = 10.9717, `orientation` = 6.25112, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23137;
UPDATE `creature` SET `id` = 0, `position_x` = -8265.5, `position_y` = -3064.66, `position_z` = 10.6851, `orientation` = 1.64061, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23186;
UPDATE `creature` SET `id` = 0, `position_x` = -8265.08, `position_y` = -2899.93, `position_z` = 14.0473, `orientation` = 5.65371, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23141;
UPDATE `creature` SET `id` = 0, `position_x` = -8261.14, `position_y` = -2923.12, `position_z` = 12.9615, `orientation` = 5.90834, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23170;
UPDATE `creature` SET `id` = 0, `position_x` = -8247.64, `position_y` = -2996.96, `position_z` = 8.71352, `orientation` = 6.04627, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23177;
UPDATE `creature` SET `id` = 0, `position_x` = -8236.2, `position_y` = -2987.86, `position_z` = 9.53265, `orientation` = 2.43283, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23148;
UPDATE `creature` SET `id` = 0, `position_x` = -8230.15, `position_y` = -2928.9, `position_z` = 15.4798, `orientation` = 0.631691, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23169;
UPDATE `creature` SET `id` = 0, `position_x` = -8216.84, `position_y` = -2969.43, `position_z` = 11.2148, `orientation` = 0.0125323, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23143;
UPDATE `creature` SET `id` = 0, `position_x` = -8201.07, `position_y` = -3015.69, `position_z` = 12.615, `orientation` = 4.73902, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23175;
UPDATE `creature` SET `id` = 0, `position_x` = -8206.65, `position_y` = -3029.46, `position_z` = 10.7367, `orientation` = 1.24876, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23185;
UPDATE `creature` SET `id` = 0, `position_x` = -8918.06, `position_y` = -3351.78, `position_z` = 17.3995, `orientation` = 0.977384 WHERE `guid` = 23211;
UPDATE `creature` SET `id` = 0, `position_x` = -8538.98, `position_y` = -3006.87, `position_z` = 8.97602, `orientation` = 1.08488, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23147; -- d.23171
UPDATE `creature` SET `id` = 0, `position_x` = -8884.1, `position_y` = -3384.93, `position_z` = 15.4917, `orientation` = 3.03209 WHERE `guid` = 23155;
UPDATE `creature` SET `id` = 0, `position_x` = -8348.79, `position_y` = -3081.22,`position_z` = 8.70805, `orientation` = 1.15154, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23165;
UPDATE `creature` SET `id` = 0, `position_x` = -8418.63, `position_y` = -3082.32,`position_z` = 8.70868, `orientation` = 3.56047, `MovementType` = 1, `spawndist` = 2 WHERE `guid` = 23132;
UPDATE `creature` SET `id` = 0, `position_x` = -8285.11, `position_y` = -3020.42, `position_z` = 9.01643, `orientation` = 0.847612 WHERE `guid` = 23133;
UPDATE `creature` SET `id` = 0, `position_x` = -8473.41, `position_y` = -2968.29, `position_z` = 8.88, `orientation` = 0 WHERE `guid` = 23207;
UPDATE `creature` SET `id` = 0, `position_x` = -8459.37, `position_y` = -3008.85, `position_z` = 8.92, `orientation` = 0, `spawndist` = 15 WHERE `guid` = 23206;
UPDATE `creature` SET `id` = 0, `position_x` = -8309.20, `position_y` = -2962.03, `position_z` = 8.74, `orientation` = 0, `spawndist` = 15 WHERE `guid` = 23164;
UPDATE `creature` SET `id` = 0, `position_x` = -8816.759766, `position_y` = -3383.550049, `position_z` = 11.899000, `orientation` = 0.383972 WHERE `guid` = 23205;
UPDATE `creature` SET `id` = 0, `position_x` = -8851.759766, `position_y` = -3351.159912, `position_z` = 9.643310, `orientation` = 4.904380 WHERE `guid` = 23209;
UPDATE `creature` SET `id` = 0, `position_x` = -8604.16, `position_y` = -2850.00, `position_z` = 9.99, `orientation` = 0 WHERE `guid` = 23176;

DELETE FROM `creature` WHERE `guid` BETWEEN 88158 AND 88160;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(88158, 5471, 1, -8816.900391, -3316.600098, 9.368060, 2.164210, 300, 300, 5, 1),
(88159, 5471, 1, -8436.91, -2912.75, 9.78, 0, 300, 300, 15, 1),
(88160, 5471, 1, -8485.62, -3054.98, 10.52, 0, 300, 300, 3, 1);

UPDATE `creature` SET `MovementType` = 1, `spawndist` = 3 WHERE `guid` IN (23144,23145,23151,23178,23180,23181,23142,23146,23150,23191,23192,23195,23149,23179,23171);
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5 WHERE `guid` IN (23126,23127,23131,23136,23138,23162,23173,23197,23209,23213);

UPDATE `creature` SET `id` = 0 WHERE `guid` IN (23134,23135,23136,23139,23140,23146,23144,23151,23145,23149,23148,23171,23158,23159,23160,23162,23163,23166,23167,23172,23187,23188,23189,23190,23191,
23201,23204,23208,23212,23213,23125,23126,23127,23128,23129,23130,23131,23138,23142,23150,23152,23161,23168,23173,23174,23178,23179,23180,23181,23192,23195,23197,23198,23199,23200,23202,23203,23210,88158,88159,88160
);
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (23193,23156,23196,23157,23194,23182,23172,23154,23153,23183,23184,23137,23186,23141,23170,23177,23148,23169,23143,23175,23185,23211,23134,23135,
23136,23139,23140,23146,23144,23151,23145,23149,23148,23171,23147,23155,23158,23159,23160,23162,23163,23165,23166,23167,23187,23188,23189,23190,23191,23201,23204,23208,23212,23213,23132,23133,23125,23126,
23127,23128,23129,23130,23131,23138,23142,23150,23152,23161,23168,23173,23174,23178,23179,23180,23181,23192,23195,23197,23198,23199,23200,23202,23203,23210,23207,23206,23164,23205,23209,23176,88158,88159,88160
);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(23193, 5472),(23193, 5474),(23156, 5472),(23156, 5474),(23196, 5472),(23196, 5474),(23157, 5472),(23157, 5474),
(23194, 5472),(23194, 5474),(23182, 5472),(23182, 5474),(23172, 5472),(23172, 5474),(23154, 5472),(23154, 5474),
(23153, 5472),(23153, 5474),(23183, 5472),(23183, 5474),(23184, 5472),(23184, 5474),(23137, 5472),(23137, 5474),
(23186, 5472),(23186, 5474),(23141, 5472),(23141, 5474),(23170, 5472),(23170, 5474),(23177, 5472),(23177, 5474),
(23148, 5472),(23148, 5474),
(23169, 5472),(23169, 5474),
(23143, 5472),(23143, 5474),
(23175, 5472),(23175, 5474),
(23185, 5472),(23185, 5474),
(23211, 5471),(23211, 5472),(23211, 5473),(23211, 5474),(23211, 5475),
(23134, 5471),(23134, 5472),(23134, 5473),(23134, 5474),(23134, 5475),
(23135, 5471),(23135, 5472),(23135, 5473),(23135, 5474),(23135, 5475),
(23136, 5471),(23136, 5472),(23136, 5473),(23136, 5474),(23136, 5475),
(23139, 5471),(23139, 5472),(23139, 5473),(23139, 5474),(23139, 5475),
(23140, 5471),(23140, 5472),(23140, 5473),(23140, 5474),(23140, 5475),
(23146, 5472),(23146, 5474),
(23144, 5472),(23144, 5474),
(23151, 5472),(23151, 5474),
(23145, 5472),(23145, 5474),
(23149, 5472),(23149, 5474),
(23171, 5472),(23171, 5474),
(23147, 5471),(23147, 5472),(23147, 5473),(23147, 5474),(23147, 5475), -- patrol?
(23155, 5471),(23155, 5472),(23155, 5473),(23155, 5474),(23155, 5475),
(23158, 5471),(23158, 5472),(23158, 5473),(23158, 5474),(23158, 5475),
(23159, 5472),(23159, 5474),
(23160, 5471),(23160, 5472),(23160, 5473),(23160, 5474),(23160, 5475),
(23163, 5471),(23163, 5472),(23163, 5473),(23163, 5474),(23163, 5475),
(23165, 5471),(23165, 5473),(23165, 5474),(23165, 5475),
(23166, 5471),(23166, 5472),(23166, 5473),(23166, 5474),(23166, 5475),
(23167, 5471),(23167, 5472),(23167, 5473),(23167, 5474),(23167, 5475),
(23187, 5472),(23187, 5474),
(23188, 5472),(23188, 5474),
(23189, 5471),(23189, 5472),(23189, 5473),(23189, 5474),(23189, 5475),
(23190, 5471),(23190, 5472),(23190, 5473),(23190, 5474),(23190, 5475),
(23191, 5472),(23191, 5474),
(23201, 5471),(23201, 5472),(23201, 5473),(23201, 5474),(23201, 5475),
(23204, 5473),(23204, 5475),
(23208, 5471),(23208, 5473),(23208, 5474),
(23212, 5471),(23212, 5472),(23212, 5473),(23212, 5474),(23212, 5475),
(23213, 5471),(23213, 5472),(23213, 5473),(23213, 5474),(23213, 5475),
(23132, 5471),(23132, 5472),(23132, 5473),(23132, 5474),(23132, 5475),
(23133, 5471),(23133, 5472),(23133, 5473),(23133, 5474),(23133, 5475),
-- spawns without is_spawn
(23125, 5471),(23125, 5473),(23125, 5475),
(23126, 5471),(23126, 5472),(23126, 5473),(23126, 5475),
(23127, 5471),(23127, 5472),(23127, 5473),(23127, 5475),
(23128, 5471),(23128, 5472),(23128, 5473),(23128, 5475),
(23129, 5471),(23129, 5472),(23129, 5473),(23129, 5475),
(23130, 5471),(23130, 5472),(23130, 5473),(23130, 5474),(23130, 5475),
(23131, 5471),(23131, 5472),(23131, 5473),(23131, 5474),(23131, 5475),
(23138, 5471),(23138, 5472),(23138, 5473),(23138, 5474),(23138, 5475),
(23142, 5472),(23142, 5474),
(23150, 5472),(23150, 5474),
(23152, 5471),(23152, 5472),(23152, 5473),(23152, 5474),(23152, 5475),
(23161, 5471),(23161, 5472),(23161, 5473),(23161, 5474),(23161, 5475),
(23162, 5471),(23162, 5472),(23162, 5473),(23162, 5474),(23162, 5475),
(23168, 5471),(23168, 5472),(23168, 5474),(23168, 5475),
(23173, 5471),(23173, 5472),(23173, 5473),(23173, 5474),(23173, 5475),
(23174, 5471),(23174, 5472),(23174, 5473),(23174, 5474),(23174, 5475),
(23178, 5472),(23178, 5474),
(23179, 5472),(23179, 5474),
(23180, 5472),(23180, 5474),
(23181, 5472),(23181, 5474),
(23192, 5472),(23192, 5474),
(23195, 5472),(23195, 5474),
(23197, 5471),(23197, 5472),(23197, 5473),(23197, 5474),(23197, 5475),
(23198, 5471),(23198, 5472),(23198, 5473),(23198, 5474),(23198, 5475),
(23199, 5471),(23199, 5472),(23199, 5473),(23199, 5474),(23199, 5475),
(23200, 5471),(23200, 5472),(23200, 5473),(23200, 5474),(23200, 5475),
(23202, 5472),(23202, 5473),(23202, 5474),(23202, 5475),
(23203, 5471),(23203, 5472),(23203, 5473),(23203, 5474),(23203, 5475),
(23210, 5471),(23210, 5472),(23210, 5473),(23210, 5474),(23210, 5475),
-- lone wanderers / faulty spawns
(23207, 5471),(23207, 5472),(23207, 5473),(23207, 5474),(23207, 5475),
(23206, 5471),(23206, 5472),(23206, 5473),(23206, 5474),(23206, 5475),
(23164, 5471),(23164, 5472),(23164, 5473),(23164, 5474),(23164, 5475),
(23205, 5471),(23205, 5472),(23205, 5473),(23205, 5474),(23205, 5475),
(23209, 5471),(23209, 5472),(23209, 5473),(23209, 5474),(23209, 5475),
(23176, 5472),(23176, 5474),
-- NEW
(88158, 5471),(88158, 5472),(88158, 5473),(88158, 5474),(88158, 5475),
(88159, 5471),(88159, 5472),(88159, 5473),(88159, 5474),(88159, 5475),
(88160, 5472),(88160, 5474);

-- https://www.wowhead.com/classic/npc=8201/omgorn-the-lost seemingly 3 nodes + pathing
DELETE FROM `creature` WHERE `id` = 8201; -- 51831
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(51831, 8201, 1, -8431.95, -2890.55, 8.62, 0, 43200, 86400, 5, 1),
(51860, 8201, 1, -8818.58, -3350.17, 9.52449, 0, 43200, 86400, 5, 1),
(51861, 8201, 1, -9242.20, -3116.74, 18.47, 0, 43200, 86400, 5, 1);

DELETE FROM `spawn_group` WHERE id = 19025;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19025,'Tanaris - Omgorn the Lost (8201)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19025;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19025, 51831, -1),
(19025, 51860, -1),
(19025, 51861, -1);

-- improve loot
-- https://web.archive.org/web/20080316011756/http://wow.allakhazam.com/db/item.html?witem=17055
DELETE FROM `creature_loot_template` WHERE `entry` = 8201 AND `item` = 60184; -- NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)
DELETE FROM `reference_loot_template` WHERE `entry` = 65142 AND `item` = 60184; -- NPC LOOT (Rare NPC Loot) - Omgorn the Lost - Special Items
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65142, 60184, 75, 1, -60184, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)'); -- version level depended!

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Obvious Duplicate leading to chainpulls
DELETE FROM `creature` WHERE `guid` = 5982;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove dynguid due to pooling still being used, which makes them all being spawned!
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~1048576 WHERE `entry` IN (5622,8298,14267);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Option To Purchase Tharlendris Seeds Unlocks When Quest 3764 is Complete.
-- 4217	Mathrengyl Bearwalker	1403
-- 7879	Quintis Jonespyre	1922
-- 9087	Bashana Runetotem	1701
-- 965	8	3785	0	0	0	0	Quest ID 3785 Rewarded - Alliance
-- 974	8	3786	0	0	0	0	Quest ID 3786 Rewarded - Horde
UPDATE `creature_template` SET `GossipMenuId` = 1922 WHERE `entry` = 7879; -- was accessable by teleporthackers
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1922;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(1922, 1, 1, 'I\'d like to purchase more Tharlendris seeds.', 4845, 3, 4, 0, 0, 0, 0, 0, '', 0, 965); -- npc_option_npcflag 4 instead of 128 classic + condition Quest ID 3785 Rewarded

-- https://www.wowhead.com/tbc/quest=3803/morrowgrain-to-darnassus
UPDATE `creature_questrelation` SET `id` = 4217 WHERE `quest` = 3803; -- 3516

-- most important part, else gossips and menus dont work!
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` IN (3785,3786); -- next quest is an optional repeatable quest

UPDATE `gossip_menu_option` SET `condition_id` = 21 WHERE `menu_id` = 1403 AND `id` = 0; -- I am here for training. -> Druid (Player ClassMask: 1024)

UPDATE `gossip_menu_option` SET `npc_option_npcflag` = 4 WHERE `menu_id` IN (1701,1922); -- classic only, one was wrong!

-- Remove wrong item from loot table.
-- https://www.wowhead.com/tbc/item=11887/cenarion-circle-cache#contains
DELETE FROM `item_loot_template` WHERE `entry` = 11887 AND `item` IN (
3356, -- Kingsblood
3669, -- Gelatinous Goo
13446, -- Major Healing Potion
2450, -- Briarthorn
3357, -- Liferoot
8953, -- Deep Fried Plantains
3108, -- Broken Heavy Throwing Dagger
8952, -- Roasted Quail
8950, -- Homemade Cherry Pie
10285); -- Shadow Silk

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Corrections To Alliance Morrowgrain Quest Chain
-- https://www.wowhead.com/tbc/quest=3788/jonespyres-request#comments:id=5599706
UPDATE `quest_template` SET `PrevQuestId` = 3781 WHERE `entry` IN (3788, 3787); -- 3785

