-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Applies SQL updates from SD2 revision s2347 to revision s2643
-- Some of these updates (or parts of them) were previously handled by other classicDB updates
-- like creature_linking_template or spell_target_template

-- SD2-classic revision s2347
-- https://github.com/scriptdev2/scriptdev2/commit/ce98ad5a138ee697cd8577108bc09a848f17c0c8
UPDATE creature_template SET MovementType = 1 WHERE entry = 16479;

-- SD2-classic revision s2362
-- https://github.com/scriptdev2/scriptdev2/commit/0c57d7d061fa73e47bb269cd0476bd58b815e6e6
DELETE FROM spell_script_target WHERE entry IN (25183, 25177, 25178, 25180, 25181, 25183);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(25183, 1, 15339),
(25177, 1, 15339),
(25178, 1, 15339),
(25180, 1, 15339),
(25181, 1, 15339);
INSERT INTO creature (id, map, position_x, position_y, position_z, orientation) VALUES
 (15590, 531, -9407.718, 1960.211, 85.63906, 1.117011);
INSERT INTO gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
 (180619, 531, -9407.718, 1960.211, 85.63906, 1.117009, 0, 0, 0.5299187, 0.8480484, 600, 255, 1);

-- SD2-classic revision s2412
-- https://github.com/scriptdev2/scriptdev2/commit/5207a5678cb762b6e78b6a84e8f66b7e7f955a60
delete from creature_linking_template where entry in (15546,15934);
insert into creature_linking_template (entry, map, master_entry, flag) values
(15546, 509, 15369, 4112), -- ayamiss swarmer - despawn on evade / death
(15934, 509, 15369, 4096); -- ayamiss hornet - despawn on evade

-- SD2-classic revision s2413
-- https://github.com/scriptdev2/scriptdev2/commit/f023194c0feb569613cad63e1c912e3eb499da5b
delete from creature_linking_template where entry in (15514);
insert into creature_linking_template (entry, map, master_entry, flag) values
(15514, 509, 15370, 1030); -- buru egg - aggro on aggro / respawn on evade / don't respawn when boss dead

-- SD2-classic revision s2424
-- https://github.com/scriptdev2/scriptdev2/commit/de021dca0caeaef8ccb5ab22d2fd602c4d9e40d0
DELETE FROM gameobject WHERE id IN(176346,176349,176350,176351,176352,176353);
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,
rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(23607, 176346, 329, 3682.24, -3401.63, 132.84, 3.87243, 0, 0, 0.933973, -0.357343, 600, 255, 1),
(23609, 176349, 329, 3651.64, -3165.24, 128.157, 2.17619, 0, 0, 0.885745, 0.464173, 600, 255, 1),
(23610, 176350, 329, 3660.31, -3476.31, 138.379, 1.49442, 0, 0, 0.679596, 0.733586, 600, 255, 1),
(23611, 176351, 329, 3662.84, -3629.71, 138.513, 5.47596, 0, 0, 0.392744, -0.919648, 600, 255, 1),
(23612, 176352, 329, 3567.3, -3351.87, 130.696, 5.47596, 0, 0, 0.392744, -0.919648, 600, 255, 1),
(23613, 176353, 329, 3500.43, -3295.64, 131.034, 1.57623, 0, 0, 0.709027, 0.705182, 600, 255, 1);

DELETE FROM gameobject WHERE id=176360;
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,
rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(23620, 176360, 329, 3500.44, -3296.51, 132.178, 4.55695, 0, 0, -0.711057, -0.703135, -180, 255, 1),
(23619, 176360, 329, 3566.72, -3351.26, 131.838, 2.31857, 0, 0, 0.916517, 0.399995, -180, 255, 1),
(23618, 176360, 329, 3662.24, -3629.09, 139.66, 2.20469, 0, 0, -0.382585, 0.92392, -180, 255, 1),
(23617, 176360, 329, 3660.25, -3477.18, 139.511, 4.82007, 0, 0, -0.685653, -0.727929, -180, 255, 1),
(23616, 176360, 329, 3652.15, -3165.96, 129.285, 5.34443, 0, 0, 0.452331, -0.89185, -180, 255, 1),
(23615, 176360, 329, 3682.91, -3401.05, 133.941, 0.670026, 0, 0, -0.929145, 0.369716, -180, 255, 1);

-- SD2-classic revision s2452
-- https://github.com/scriptdev2/scriptdev2/commit/1518687c14c6bf054cd7c9d3f248dd6ca48e8584
UPDATE quest_template SET ReqSpellCast1= 0 WHERE entry=5441;

-- SD2-classic revision s2469
-- https://github.com/scriptdev2/scriptdev2/commit/25a0fd6ad4213691bd6811c75934ecddb32e2a4b
-- Razorgore event
delete from spell_script_target where entry in (19832, 23014);
insert into spell_script_target (entry, type, targetEntry) values
(19832, 1, 12435),
(23014, 1, 12435);
-- Link Grethok to Razorgore
delete from creature_linking_template where entry in (12557, 14456);
insert into creature_linking_template (entry, map, master_entry, flag) values
(12557, 469, 12435, 6),
(14456, 469, 12557, 143);

-- SD2-classic revision s2471
-- https://github.com/scriptdev2/scriptdev2/commit/c39fb0c55b9f563a6fbf971bc84132efbf77e6d6
-- Chromaggus door lever
delete from dbscripts_on_go_use where id=66908; -- guid for 179148;
insert into dbscripts_on_go_use values
(66908,1,11,66900,0,0,0,0,0,0,0,0,0,0,0,0,'Open Chromaggus side door'), -- 66900 = guid of entry 179116 
(66908,2,25,1,0,14020,70,0,0,0,0,0,0,0,0,0,'Set Chromaggus run = true'),
(66908,3,3,0,0,14020,70,0,0,0,0,0,-7484.91,-1072.98,476.55,2.18,'Move Chromaggus in the center of the room');

-- SD2-classic revision s2476
-- https://github.com/scriptdev2/scriptdev2/commit/031473d2bce3bd7a8e841ccc6ef849b8393bad56
delete from creature_linking_template where entry in (15544,15543);
insert into creature_linking_template (entry, map, master_entry, flag) values
(15544,531,15511,143),
(15543,531,15511,143);
delete from spell_script_target where entry=25790;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(25790,1,15543),
(25790,1,15511);

-- SD2-classic revision s2477
-- https://github.com/scriptdev2/scriptdev2/commit/0d23d645c634403a4e177b16ba5cc01c1a80903f
-- Emberseer update (from sniff)
UPDATE creature_template SET speed_run=1.42857146263123, unit_flags=unit_flags|33554752, faction_A=40, faction_H=40, MovementType=0 WHERE entry=9816; -- 9816
-- Link blackhand incarcerators with self (for aggro)
delete from creature_linking_template where entry=10316;
insert into creature_linking_template (entry, map, master_entry, flag) values
(10316,229,10316,3);

-- SD2-classic revision s2481
-- https://github.com/scriptdev2/scriptdev2/commit/02a24cf938389a0ad9e05d0c704fa34d9d75623b
-- spell script target
delete from spell_script_target where entry=24804;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(24804,1,14888);

-- SD2-classic revision s2488
-- https://github.com/scriptdev2/scriptdev2/commit/9d30b1aa2309246a0a4ede317d8f08d36392a239
DELETE FROM creature WHERE id=10339;
DELETE FROM creature WHERE id=10162 AND map=229;
UPDATE creature_template SET MovementType=0 WHERE entry IN (10429,10442,10447,10742,10339);

-- SD2-classic revision s2490
-- https://github.com/scriptdev2/scriptdev2/commit/9f66a008a9d0453745983214c72a92330bfaac81
delete from spell_target_position where id in (4801,8195,20449);
insert into spell_target_position values
(4801,531,-8340.782227,2083.814453,125.648788,0),
(8195,531,-8341.546875,2118.504639,133.058151,0),
(20449,531,-8318.822266,2058.231201,133.058151,0);

-- SD2-classic revision s2491
-- https://github.com/scriptdev2/scriptdev2/commit/f8d2745971a7dd600572ebf7d76864a5586930b5
delete from creature_linking_template where entry in (14988,15117);
insert into creature_linking_template values
(14988,309,11382,4096,0),
(15117,309,11382,4096,0);

-- SD2-classic revision s2492
-- https://github.com/scriptdev2/scriptdev2/commit/876af5d60c0d7ce4a784709b1aeaccc0d6189fc7
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN (1779, 1781);

-- SD2-classic revision s2495
-- https://github.com/scriptdev2/scriptdev2/commit/bb69b8038b1e6f1219cb903a0c6a508953bd1c31
delete from dbscripts_on_quest_start where id=995;

-- SD2-classic revision s2496
-- https://github.com/scriptdev2/scriptdev2/commit/8dd714a8fa649a3ec3acced439479541d33fa055
-- c_t_a not needed because this is a channeled spell
Delete from creature_template_addon where entry=14517;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (14517,14750,14965,11368);
delete from spell_script_target where entry=23974;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(23974, 1, 14758);

-- SD2-classic revision s2497
-- https://github.com/scriptdev2/scriptdev2/commit/3a6baa472c9c948c96926b85ba810d6ca921c65f
-- Script id: 179985
DELETE FROM dbscripts_on_go_template_use WHERE id=179985;
INSERT INTO dbscripts_on_go_template_use VALUES 
(179985,1,10,15041,60000,0,0,2,0,0,0,0,0,0,0,0,'Spider Egg - Summon Spawn of Mar\'li');

-- SD2-classic revision s2505
-- https://github.com/scriptdev2/scriptdev2/commit/2d2af47f04883be015213696c4fed156115e00e6
delete from spell_target_position where id in (720, 1121);
insert into spell_target_position values
(720,531,-8043.01,1254.21,-84.19,0),
(1121,531,-8022.68,1150.08,-89.33,0);

-- SD2-classic revision s2522
-- https://github.com/scriptdev2/scriptdev2/commit/63b6f39e6cf1eb743660e9d71dc8203ff1c3a020
delete from creature_linking_template where entry in (16063,16064,16065,16573,16360);
insert into creature_linking_template values
(16063,533,16062,143,0),
(16064,533,16062,143,0),
(16065,533,16062,143,0),
(16573,533,15956,1031,0),
(16360,533,15932,4112,0);

-- SD2-classic revision s2535
-- https://github.com/scriptdev2/scriptdev2/commit/1348124ea6b3f3e633cde82716568ed72630819e
DELETE FROM dbscripts_on_go_template_use WHERE id=179804;
INSERT INTO dbscripts_on_go_template_use VALUES 
(179804,1,10,14605,60000,0,0,2,0,0,0,0,0,0,0,0,'Drakonid Bones - Summon Bone Construct');

-- SD2-classic revision s2536
-- https://github.com/scriptdev2/scriptdev2/commit/c1edd03e2ce49abced98bf19df56aad57fd4cfec
DELETE FROM `creature` WHERE `id`=14494;
INSERT INTO `creature` (`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(14494, 0, 0, 0, 3325.018, -2996.802, 164.449, 0.01, 600, 0, 0, 3052, 0, 0, 0);
-- The peasants should have regenHealth = 0. Also the walk speed should be decreased!
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` IN (14484,14485);

-- SD2-classic revision s2538
-- https://github.com/scriptdev2/scriptdev2/commit/68cf55711eb3c4f6909507c1da52ad45a975a371
delete from creature_movement_template where entry=18731;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime) values
(18731, 1, -157.366, 2.177, 8.073, 0),
(18731, 2, -172.266, -18.280, 8.073, 0),
(18731, 3, -171.051, -38.748, 8.073, 0),
(18731, 4, -170.718, -59.436, 8.073, 0),
(18731, 5, -156.659, -72.118, 8.073, 0),
(18731, 6, -142.292, -59.423, 8.073, 0),
(18731, 7, -141.779, -38.972, 8.073, 0),
(18731, 8, -142.922, -18.950, 8.073, 0),
(18731, 9, -157.366, 2.177, 8.073, 0);

-- SD2-classic revision s2539
-- https://github.com/scriptdev2/scriptdev2/commit/65ec024fc3c5a2baa464b98128d3a7c212ae030e
-- Npc flag is set by script; Fix horse faction; Npc should be mounted when spawned
update creature_template set npcflag=npcflag&~2 where entry=12580;
DELETE FROM `creature_template_addon` WHERE (`entry`=12580);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `emote`, `moveflags`, `auras`) VALUES (12580, 2410, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `faction_A` = 12, `faction_H` = 12 WHERE `entry` = 12581;

-- SD2-classic revision s2542
-- https://github.com/scriptdev2/scriptdev2/commit/8cb5e93ae28ef5932ed6a5209911ad010a1e1de9
delete from spell_script_target where entry in (20358,20465);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(20358,1,1749),
(20465,1,12580);

-- SD2-classic revision s2544
-- https://github.com/scriptdev2/scriptdev2/commit/30f07e5c1b2b06d961b76dfb32b5837eacfb3fb5
delete from creature_linking_template where entry IN (15276,15316,15317);
insert into creature_linking_template values
(15276,531,15275,143,0),
(15316,531,15276,132,0),
(15317,531,15276,132,0);

-- SD2-classic revision s2568
-- https://github.com/scriptdev2/scriptdev2/commit/8e51995ef86eed9768d5d09cdf6a3ef0cefb5afd
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(178145, 0, 10, 11920, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` in (176581);
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(176581, 0, 10, 11876, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` in (175944);
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(175944, 0, 10, 10882, 30000, 0, 0, 0, 0, 0, 0, 0, -5008.338, -2118.894, 83.657, 0.874, '');
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` in (181956);
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(181956, 0, 10, 17716, 30000, 0, 0, 0, 0, 0, 0, 0, 8094.632, -7542.740, 151.568, 0.287, '');

-- SD2-classic revision s2572
-- https://github.com/scriptdev2/scriptdev2/commit/9d3df48298ba026065206282291748ac8bdfbb7e
-- ### quest 4322 ###
SET @STRING_START := 2000000067;
delete from creature_movement_template where entry=9679;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id) values
(9679,1,549.21,-281.07,-75.27,0),
(9679,2,554.39,-267.39,-73.68,0),
(9679,3,533.59,-249.38,-67.04,0),
(9679,4,519.44,-217.02,-59.34,0),
(9679,5,506.55,-153.49,-62.34,967901);
delete from creature_movement_template where entry=9022;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id) values
(9022,1,280.42,-82.86,-77.12,0),
(9022,2,287.64,-87.01,-76.79,0),
(9022,3,354.63,-64.95,-67.53,902201);
delete from dbscripts_on_creature_movement where id in (902201,967901);
insert into dbscripts_on_creature_movement (id, delay, command, datalong, comments) values
(902201,0,18,0,'Despawn Dughal on last waypoint'),
(967901,0,18,0,'Despawn Tobias on last waypoint');
DELETE FROM db_script_string WHERE entry in (@STRING_START,@STRING_START+1,@STRING_START+2,@STRING_START+3);
insert into db_script_string (entry, content_default) values
(@STRING_START,'Get him out of there!'),
(@STRING_START+1,'Perhaps Ograbisi will use your head as a tiny little hat when I\'m through with you.'),
(@STRING_START+2,'Where I come from, you get shanked for opening another inmate\'s cell door!'),
(@STRING_START+3,'Ograbisi needs new hat.');
delete from dbscripts_on_go_template_use where id in (170562,170567,170568,170569);
insert into dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) values
-- dughal
(170562, 1, 0, 0, 0, 9023, 20, 3, @STRING_START, 'Windsor - say on Dughal door open'),
-- jaz
(170568, 1, 0, 0, 0, 9677, 20, 3, @STRING_START+3 ,'Ograbisi - say on Jaz door open'),
(170568, 2, 22, 54, 5, 9681, 20, 3, 0, 'Jaz - change faction to hostile'),
(170568, 2, 22, 54, 5, 9677, 20, 3, 0, 'Ograbisi - change faction to hostile'),
-- shill
(170569, 1, 0, 0, 0, 9678, 20, 3, @STRING_START+1, 'Shill - say on Shill door open'),
(170569, 1, 22, 54, 5, 9678, 20, 3, 0, 'Shill - change faction to hostile'),
-- crest
(170567, 1, 0, 0, 0, 9680, 20, 3, @STRING_START+2, 'Crest - say on Crest door open'),
(170567, 1, 22, 54, 5, 9680, 20, 3, 0, 'Crest - change faction to hostile');

-- SD2-classic revision s2574
-- https://github.com/scriptdev2/scriptdev2/commit/cedc2f582ea8320f86b61119889cd729745548da
-- Ouro
-- update creature id to the spawner - boss is summoned by script
update creature set id = 15957 where id = 15517;
-- delete the bugs from the map - they are summoned
delete from creature where id = 15718;
-- Fix some flags and factions
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry in (15957,15712,15717);
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15712;

-- SD2-classic revision s2576
-- https://github.com/scriptdev2/scriptdev2/commit/c85fe6696968a2df36f77821c45520e614cb6e89
-- Ouro sandworm base script target
delete from spell_script_target where entry=26063;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(26063,0,180795);
-- Cthun
UPDATE `creature_template` SET unit_flags=unit_flags|33554432 WHERE `entry` in (15910,15904,15800);
delete from creature_linking_template where entry IN (15589,15725,15726,15904,15802,15728,15334,15910);
insert into creature_linking_template values
(15589,531,15727,4,0),
(15725,531,15589,4096,0),
(15726,531,15727,4128,0),
(15904,531,15727,4128,0),
(15802,531,15727,4128,0),
(15728,531,15727,4128,0),
(15334,531,15727,4128,0),
(15910,531,15727,4128,0);

-- SD2-classic revision s2606
-- https://github.com/scriptdev2/scriptdev2/commit/a743ba78f9f568f6cc739a0afef673be8e3ae1d8
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN (6129,6124);

-- SD2-classic revision s2622
-- https://github.com/scriptdev2/scriptdev2/commit/8a057604e22147b7a97e18ce97d02628ff1c92a0
UPDATE gameobject_template SET flags=34 WHERE entry IN (179550, 179549);

-- SD2-classic revision s2643
-- https://github.com/scriptdev2/scriptdev2/commit/090e1a1556bc907e3cd0c1c67dc6f112f25e8014
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=6661;
DELETE FROM spell_script_target WHERE entry = 21052;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(21052, 1, 13017);
UPDATE quest_template SET CompleteScript=6661 WHERE entry=6661;
DELETE FROM dbscripts_on_quest_end WHERE id=6661;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, comments) VALUES 
(6661,1,15, 21052,'Cast Monty Bashes Rats (DND)');
DELETE FROM dbscripts_on_spell WHERE id=21052;
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(21052, 15, 8329, 6, 'Enthralled Deeprun Rat - Cast Suicide');

-- SD2-classic revision s2644
-- https://github.com/scriptdev2/scriptdev2/commit/3ef8f906b2124519cbf73def4c4ce728c690943c
-- Total guesswork! (Better movement for UBRS Rookery Event (see http://www.scriptdev2.com/project.php?issueid=1604 )
UPDATE creature_template SET MovementType=2 WHERE entry IN (10264, 10258, 10683);
-- Waypoints for some NPCs
DELETE FROM creature_movement_template WHERE entry IN (10264, 10258, 10683);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
-- Solakar Flamewreath
(10264, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10264, 2, 74.4821, -275.932, 92.602, 0, 0),
(10264, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10264, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Guardian
(10258, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10258, 2, 74.4821, -275.932, 92.602, 0, 0),
(10258, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10258, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Hatcher
(10683, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10683, 2, 74.4821, -275.932, 92.602, 0, 0),
(10683, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10683, 4, 78.1464, -317.642, 91.4405, 1, 1026404);
DELETE FROM dbscripts_on_creature_movement WHERE id=1026404;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, datalong2, data_flags, comments) VALUES
(1026404, 20, 1, 20, 0x08, 'UBRS-Rookery event: Random movement around current position');

-- SD2-classic revision s2649
-- https://github.com/scriptdev2/scriptdev2/commit/3e0f359127a36ad4553d2001c3fd9fccead430db
DELETE FROM creature_linking_template WHERE entry = 15428;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(15428, 509, 15339, 4112, 0);

-- SD2-classic revision s2652
-- https://github.com/scriptdev2/scriptdev2/commit/d0030bb6426f9f551f89d73ae9a732b16d23ee31
DELETE FROM creature_linking_template WHERE entry IN (7309,10120,7076,7077);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(7309, 70, 2748, 20, 0),
(10120, 70, 2748, 20, 0),
(7076, 70, 2748, 20, 0),
(7077, 70, 2748, 20, 0);
DELETE FROM spell_script_target WHERE entry IN (10258,10252);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(10258, 1, 10120),
(10252, 1, 7076);

-- SD2-classic revision s2653
-- https://github.com/scriptdev2/scriptdev2/commit/2ec5a4656dfb044b19ad995a3949d288bd776dd0
-- Remove auras - handled in eventAI
UPDATE creature_template_addon SET auras='' WHERE entry  IN (7309,7077,7076,10120,4857);

-- SD2-classic revision s2654
-- https://github.com/scriptdev2/scriptdev2/commit/2aaa3c39133436913a219c0ae2bfa5e351c29494
-- Link Grethok to Razorgore
UPDATE creature_linking_template SET flag = 135 WHERE entry = 12557 AND map = 469;
DELETE FROM spell_script_target WHERE entry = 20037;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(20037, 1, 16604);
-- Orb of Domination event
DELETE FROM dbscripts_on_event WHERE id = 8302;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(8302, 0, 15, 23014, 14449, 10, 7, 'Blackwing Orb Trigger - Cast Possess visual'),
(8302, 90, 14, 23014, 12435, 100, 7, 'Razorgore - Remove Possess visual'),
(8302, 90, 15, 23958, 0, 0, 4, 'Cast Mind Exhaustion on player');
-- Increase Eggs spawntime
UPDATE gameobject SET spawntimesecs=604800 WHERE id=177807;

-- SD2-classic revision s2665
-- https://github.com/scriptdev2/scriptdev2/commit/2aaa3c39133436913a219c0ae2bfa5e351c29494
-- Blueleaf tubber (YTDB)
DELETE FROM gameobject WHERE id=20920;
INSERT INTO gameobject (id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(20920, 47, 2082.74, 1671.82, 61.2396, 3.66079, 0, 0, 0.966493, -0.256693, -43200, 100, 1),
(20920, 47, 2159.43, 1687.49, 57.5433, 3.66079, 0, 0, 0.966493, -0.256693, -43200, 100, 1),
(20920, 47, 2080.89, 1703.36, 56.6447, 0.553757, 0, 0, 0.273354, 0.961913, -43200, 100, 1),
(20920, 47, 2055.28, 1767.7, 58.4559, 2.98378, 0, 0, 0.996889, 0.0788245, -43200, 100, 1),
(20920, 47, 2196.64, 1827.96, 61.4706, 2.11277, 0, 0, 0.870583, 0.492022, -43200, 100, 1),
(20920, 47, 2030.32, 1867.61, 56.2866, 5.6777, 0, 0, 0.298139, -0.954522, -43200, 100, 1),
(20920, 47, 2091.33, 1861.73, 51.0341, 1.25355, 0, 0, 0.586536, 0.809923, -43200, 100, 1),
(20920, 47, 2200.15, 1897.64, 71.3191, 2.6492, 0, 0, 0.969846, 0.243717, -43200, 100, 1),
(20920, 47, 2075.75, 1742.04, 76.7184, 1.33994, 0, 0, 0.620962, 0.78384, -43200, 100, 1),
(20920, 47, 2126, 1661.15, 82.4824, 0.0220437, 0, 0, 0.0110216, 0.999939, -43200, 100, 1),
(20920, 47, 2207.92, 1596.91, 80.7375, 3.60582, 0, 0, 0.973182, -0.230035, -43200, 100, 1),
(20920, 47, 2156.98, 1542.26, 72.849, 2.43086, 0, 0, 0.937519, 0.347934, -43200, 100, 1),
(20920, 47, 2179.95, 1514.06, 69.0709, 0.778385, 0, 0, 0.379441, 0.925216, -43200, 100, 1),
(20920, 47, 2000.85, 1533.93, 80.3971, 4.919, 0, 0, 0.630419, -0.776255, -43200, 100, 1),
(20920, 47, 1991.49, 1608.53, 81.1601, 1.1004, 0, 0, 0.522858, 0.85242, -43200, 100, 1);
DELETE FROM gameobject WHERE id=300011;
INSERT INTO gameobject (id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(300011, 47, 2072.84, 1582.57, 82.14, 0, 0, 0, 0, 1, -43200, 0, 1);


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;