-- q.8183 'The Heart of Hakkar'
DELETE FROM dbscripts_on_quest_end WHERE id = 8183;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8183,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(8183,2,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(8183,10,0,0,0,0,0,0,0x04,10473,0,0,0,0,0,0,0,'Say'),
(8183,11,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:30:31.063
(8183,3000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path 1'), -- 22:30:34.324
(8183,8000,10,15080,80000,0,0,0,0x08,0,0,0,9999,-11831.727,1331.291,1.9385194,0.942477762699127197,'Summon 15080'), -- 22:30:38.228
(8183,8001,10,15080,80000,0,0,0,0x08,0,0,0,9999,-11817.911,1325.0208,1.5590134,1.518436431884765625,'Summon 15080'), -- 22:30:38.228
(8183,8002,10,15080,80000,0,0,0,0x08,0,0,0,9999,-11801.401,1335.381,1.3626903,2.617993831634521484,'Summon 15080'), -- 22:30:38.228
(8183,8003,10,15080,80000,0,0,0,0x08,0,0,0,9999,-11835.155,1349.3596,2.1101081,6.056292533874511718,'Summon 15080'), -- 22:30:38.228
(8183,58000,53,0,0,0,0,0,0,19951,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- 22:31:16.889
(8183,66000,0,0,0,0,0,0,0,10537,0,0,0,0,0,0,0,'Say'), -- 22:31:21.311
(8183,66002,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(8183,68000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND STATE');
UPDATE quest_template SET CompleteScript = 8183 WHERE entry = 8183;
-- Molthor 14875
DELETE FROM creature_movement_template WHERE Entry = 14875;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(14875,1,1,-11812.336,1260.9138,6.0150294,100,10,5),
(14875,1,2,-11828.406,1260.0973,1.7511787,100,0,0),
(14875,1,3,-11836.572,1280.5206,1.8802238,100,0,0),
(14875,1,4,-11837.823,1291.0463,1.3923087,100,0,0),
(14875,1,5,-11836.7,1294.62,0.519089,100,0,0),
(14875,1,6,-11835.1,1299.09,0.719369,100,0,0),
(14875,1,7,-11833.912,1301.8694,0.94556135,100,0,0),
(14875,1,8,-11825.78,1323.7767,0.49130094,100,70000,1487501),
(14875,1,9,-11834.219,1301.308,0.9074732,100,0,0),
(14875,1,10,-11838.089,1289.7418,1.5805411,100,0,0),
(14875,1,11,-11829.768,1264.8495,1.6261787,100,0,0),
(14875,1,12,-11818.517,1249.3657,2.5915108,100,0,0),
(14875,1,13,-11812.336,1260.9138,6.0150294,4.27605,300,1487502);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1487501,1487502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1487501,1000,15,24214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 24214'), -- 22:30:47.326
(1487501,6000,53,0,0,0,0,0,0,19951,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- 22:30:51.363
(1487501,6010,10,15069,60000,0,0,0,0x08,0,0,0,9998,-11818.292,1345.1305,8.014503,1.326450228691101074,'Summon Heart of Hakkar 15069'), -- 22:30:51.363
(1487501,7500,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.256637096405029296,'set orientation'),
(1487501,7501,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:30:53.777
(1487501,7510,0,0,0,0,0,0,0x04,10474,0,0,0,0,0,0,0,'Yell'),
(1487501,11000,28,8,0,0,0,0,0x04,8,0,0,0,0,0,0,0,'KNELL STATE'), -- 22:30:57.017
(1487502,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.27605,'orientation'),
(1487502,101,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags Add'),
(1487502,110,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnActive'),
(1487502,120,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Idle');
DELETE FROM spell_target_position WHERE Id IN(24214);
INSERT INTO spell_target_position VALUES
(24214,0,-11819,1343,10.5,0);
DELETE FROM spell_script_target WHERE entry IN (24217);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(24217,1,15069,0);
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `id` IN (10474,10537);
-- Updates
-- missing objects
DELETE FROM `gameobject` WHERE `guid` IN (101,103,105,107,109);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
-- Servant of the Hand Summoning Circle 180404
(101,180404,0,1,-11835.113,1349.4844,2.130358,3.0194132,0,0,0.9981346,0.061051756,180,180),
(103,180404,0,1,-11831.58,1331.3569,1.855185,5.742135,0,0,-0.26723766,0.9636307,180,180),
(105,180404,0,1,-11817.805,1324.9457,1.47568,6.056293,0,0,-0.11320305,0.9935719,180,180),
(107,180404,0,1,-11801.265,1335.2521,1.334912,0.26179817,0,0,0.13052559,0.99144495,180,180),
-- Heart of Hakkar Object 180402
(109,180402,0,1,-11818.353,1344.856,4.766753,1.326450228691101074,0,0,0,0,1,1); -- controled by worldstate
-- Creatures
-- Servant of the Hand 15080
DELETE FROM creature_spawn_data_template WHERE entry IN (9999,9998);
INSERT INTO creature_spawn_data_template (`Entry`, `NpcFlags`, `RelayId`) VALUES -- `Name`
(9999,0,28), -- 'Servant of the Hand (15080) - RelayScript (28)'
(9998,0,29); -- 'Servant of the Hand (15080) - RelayScript (29)'
DELETE FROM dbscripts_on_relay WHERE id IN (28,29,30);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28,10,15,17321,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Servant of the Hand 15080 - Spawn Effect - q.8183'),
(28,17000,15,24217,0,0,0,0,0,0,0,0,0,0,0,0,0,'Servant of the Hand 15080 - Cast 24217 - q.8183'), -- 22:30:55.707
(29,7000,15,24202,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Heart of Hakkar 15069 - cast 24202 - q.8183'),
(29,7001,15,24203,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Heart of Hakkar 15069 - cast 24203 - q.8183'),
(29,22000,15,24215,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Heart of Hakkar 15069 - cast 24215 - q.8183'), -- missing spell
(29,25000,15,24204,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Heart of Hakkar 15069 - cast 24204 - q.8183'),
(29,25001,16,7059,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Heart of Hakkar 15069 - Play Sound - q.8183'),
(30,1,13,0,0,0,180391,170712,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,2,13,0,0,0,180391,170713,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,3,13,0,0,0,180391,170714,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,4,13,0,0,0,180391,170715,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,5,13,0,0,0,180391,170716,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,6,13,0,0,0,180391,170717,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,7,13,0,0,0,180391,170718,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,8,13,0,0,0,180391,170719,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,9,13,0,0,0,180391,170720,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,10,13,0,0,0,180391,170721,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,11,13,0,0,0,180391,170722,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,12,13,0,0,0,180391,170723,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,13,13,0,0,0,180391,170724,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183'),
(30,14,13,0,0,0,180391,170725,1|0x10|0x400,0,0,0,0,0,0,0,0,'Part of Pat\'s Hellfire Guy 15073 EAI - Activate Trap - q.8183');
-- Worldstate
DELETE FROM `spawn_group` WHERE id = 19951;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19951, 'Stranglethorn Vale - Yoyamba Isle - o.180402 spawn with q.8183', 1, 0, 20545, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19951;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19951, 109, -1);
DELETE FROM conditions WHERE condition_entry IN (20545);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20545, 42, 19951, 0, 1, 0, 'Stranglethorn Vale - Yoyamba Isle - o.180402 spawn with q.8183');
DELETE FROM worldstate_name WHERE Id=19951;
INSERT INTO worldstate_name(Id, Name) VALUES
(19951,'Stranglethorn Vale - Yoyamba Isle - o.180402 spawn with q.8183');

-- Correct UnitFlags & NpcFlags for Heart of Hakkar 15069 & Pat's Hellfire Guy 15073
UPDATE `creature_template` SET `UnitFlags` = 33555200, `NpcFlags` = 0 WHERE `entry` IN (15069,15073);

