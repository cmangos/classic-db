-- q.8731 'Field Duty' -- horde
-- q.8507 'Field Duty' -- alliance

-- Horde Ver
-- Krug Skullsplit 15612
-- UPDATE creature_template SET GossipMenuId = 6687 WHERE entry IN(15612); -- exists
DELETE FROM gossip_menu WHERE entry IN(6687,6686,6688);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(6686,8060,0,0),
(6687,8059,0,0), -- exists
(6688,8061,0,0);

-- DELETE FROM npc_text_broadcast_text WHERE Id IN(8059,8060,8061); -- exists
-- INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
-- (8059,1,11273),
-- (8060,1,11275),
-- (8061,1,11276);

-- DELETE FROM npc_text WHERE id IN (8059,8060,8061);
-- DELETE FROM npc_gossip WHERE npc_guid IN (46167);

DELETE FROM gossip_menu_option WHERE menu_id IN (6687,6686);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(6687,0,0,'Reporting for duty, sir.',11274,1,1,6686,0,0,0,0,NULL,0,4001),
(6686,0,0,'I\'m ready!',11334,1,1,-1,0,668601,0,0,NULL,0,0);

DELETE FROM conditions WHERE condition_entry = 4001;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(4001,9,8731,0,0,0,0,'');

DELETE FROM dbscripts_on_gossip WHERE id = 668601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(668601,1,31,15620,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 15620 - terminate if alive'),
(668601,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(668601,101,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPC Flags Removed'),
(668601,102,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(668601,103,3,0,0,0,0,0,0x04,0,0,0,0,-7551.8066,708.42114,-17.226425,4.537,'move'), -- 18:24:00.574
(668601,1000,10,15620,1800000,0,0,0,0x08,0,0,0,0,-7610.63,671.6507,-48.72991,0.501217305660247802,'Summon 15620'), -- 18:24:13.608
(668601,5000,0,0,0,0,0,0,0x04,11286,0,0,0,0,0,0,0,'text'), -- 18:24:05.084
(668601,8000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 18:24:08.334
(668601,10000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(668601,11000,3,0,0,0,0,0,0x04,0,0,0,0,-7548.4204,719.8852,-16.355494,1.61682,'move'), -- 118:24:11.574
(668601,13000,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 18:24:13.200
(668601,13500,0,0,0,0,0,0,0x04,11287,0,0,0,0,0,0,0,'text'), -- 18:24:13.200
(668601,13600,35,5,50,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(668601,15000,3,0,0,0,0,0,0x04,0,0,0,0,-7548.4204,719.8852,-16.355494,4.537856101989746093,'move'); -- 18:24:14.815

-- texts
UPDATE broadcast_text SET ChatTypeID = 1 WHERE Id IN (11286,11287,11207,11288,11356,10970,10982,10961);

-- Hive'Regal Hunter-Killer 15620
UPDATE creature_template SET UnitFlags = 832, CorpseDecay = 300, MovementType = 2 WHERE entry IN(15620);

DELETE FROM creature_movement_template WHERE entry = 15620;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(15620,1,-7570.335,683.43274,-50.11782,100,0,0),
(15620,2,-7563.5977,688.08136,-47.48374,100,0,0),
(15620,3,-7562.8477,688.58136,-48.23374,100,0,0),
(15620,4,-7561.8477,688.83136,-45.48374,100,0,0),
(15620,5,-7561.0977,689.33136,-45.73374,100,0,0),
(15620,6,-7560.3477,689.83136,-41.73374,100,0,0),
(15620,7,-7558.5977,691.08136,-36.48374,100,0,0),
(15620,8,-7557.5977,691.58136,-33.98374,100,0,0),
(15620,9,-7556.8477,692.08136,-32.23374,100,0,0),
(15620,10,-7556.0977,692.58136,-31.483742,100,0,0),
(15620,11,-7555.1816,693.13574,-30.733772,100,1,0),
(15620,12,-7549.8647,697.7108,-25.523811,100,0,0),
(15620,13,-7549.347,699.26483,-23.908577,100,0,0),
(15620,14,-7549.4707,704.62756,-20.83761,100,0,0),
(15620,15,-7550.3,712.328,-16.426,100,100,1562001),
(15620,16,-7548.16,722.592,-16.3067,100,1000,20);

DELETE FROM dbscripts_on_creature_movement WHERE id = 1562001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1562001,1,35,6,100,0,0,0,0,0,0,0,0,0,0,0,0,'Hive\'Regal Hunter-Killer - send Event AI 6'),
(1562001,100,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hive\'Regal Hunter-Killer - Remove UnitFlags'),
(1562001,200,26,0,0,0,15612,100,1,0,0,0,0,0,0,0,0,'Hive\'Regal Hunter-Killer - attack Krug');

-- Respawn Timer Corrected
-- Krug Skullsplit 15612
-- Merok Longstride 15613
-- Shadow Priestess Shai 15615
-- Orgrimmar Legion Grunt 15616
-- Orgrimmar Legion Axe Thrower 15617
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id IN (15612,15613,15615,15616,15617); -- 600 600
UPDATE creature_template SET DamageMultiplier = 3 WHERE entry IN (15612); -- 4
UPDATE creature_template SET DamageMultiplier = 1 WHERE entry IN (15613,15615,15616,15617); -- 3,5,1

-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 33 AND 52;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 33
(33,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI - Active'),
(33,2,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI - Add NpcFlags'),
(33,3,52,6688,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI: Set Gossip'),
(33,180000,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI - Remove NpcFlags'),
(33,180001,52,6687,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI: Set Gossip'),
(33,180002,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Krug Skullsplit 15612 EAI - UnActive'),
-- 34,50
(34,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Merok Longstride 15613 EAI - Run on'),
(34,10,3,0,0,0,0,0,0x04,0,0,0,0,-7544.742,721.3121,-15.842302,4.537,'Part of Merok Longstride 15613 EAI - move'),
(50,1,3,0,0,0,0,0,0x04,0,0,0,0,-7537.146,731.184,-16.490795,2.79252,'Part of Merok Longstride 15613 EAI - move'),
(50,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7537.146,731.184,-16.490795,2.79252,'Part of Merok Longstride 15613 EAI - safe move'),
-- 35,51
(35,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Shadow Priestess Shai 15615 EAI - Run on'),
(35,10,3,0,0,0,0,0,0x04,0,0,0,0,-7552.0063,720.9287,-16.642857,4.9305,'Part of Shadow Priestess Shai 15615 EAI - move'),
(51,1,3,0,0,0,0,0,0x04,0,0,0,0,-7556.597,749.00696,-17.57885,5.61996,'Part ofShadow Priestess Shai 15615 EAI - move'),
(51,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7556.597,749.00696,-17.57885,5.61996,'Part of Shadow Priestess Shai 15615 EAI - safe move'),
-- 36,37
(36,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(36,10,3,0,0,0,0,0,0x04,0,0,0,0,-7547.876,726.9385,-16.33075,4.6513,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(37,1,3,0,0,0,0,0,0x04,0,0,0,0,-7552.7256,740.40765,-17.447472,2.3038,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(37,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7552.7256,740.40765,-17.447472,2.3038,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 38,39
(38,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(38,10,3,0,0,0,0,0,0x04,0,0,0,0,-7545.8535,729.58594,-16.083582,4.58478,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(39,1,3,0,0,0,0,0,0x04,0,0,0,0,-7551.3037,742.05194,-17.667734,3.019,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(39,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7551.3037,742.05194,-17.667734,3.019,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 40,41
(40,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(40,10,3,0,0,0,0,0,0x04,0,0,0,0,-7550.059,728.9959,-16.487635,4.7368,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(41,1,3,0,0,0,0,0,0x04,0,0,0,0,-7551.561,744.48157,-17.870377,3.6652,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(41,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7551.561,744.48157,-17.870377,3.6652,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 42,43
(42,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(42,10,3,0,0,0,0,0,0x04,0,0,0,0,-7543.761,731.3052,-16.487146,4.52279,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(43,1,3,0,0,0,0,0,0x04,0,0,0,0,-7554.27,746.03204,-17.662876,4.6251,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(43,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7554.27,746.03204,-17.662876,4.6251,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 44,45
(44,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(44,10,3,0,0,0,0,0,0x04,0,0,0,0,-7552.2427,731.05334,-16.831995,4.809,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(45,1,3,0,0,0,0,0,0x04,0,0,0,0,-7556.7485,744.3583,-17.410648,5.68977,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(45,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7556.7485,744.3583,-17.410648,5.68977,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 46,47
(46,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(46,10,3,0,0,0,0,0,0x04,0,0,0,0,-7541.7036,733.48846,-16.688915,4.4733,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(47,1,3,0,0,0,0,0,0x04,0,0,0,0,-7556.8735,741.62976,-17.257341,0.5236,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(47,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7556.8735,741.62976,-17.257341,0.5236,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move'),
-- 48,49
(48,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - Run on'),
(48,10,3,0,0,0,0,0,0x04,0,0,0,0,-7554.426,733.1108,-16.793055,4.87165,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(49,1,3,0,0,0,0,0,0x04,0,0,0,0,-7555.1797,740.34973,-17.277504,1.32645,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - move'),
(49,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7555.1797,740.34973,-17.277504,1.32645,'Part of Orgrimmar Legion Axe Thrower 15617 EAI - safe move');

-- Alliance Ver
-- Janela Stouthammer 15443
-- UPDATE creature_template SET GossipMenuId = 6623 WHERE entry IN(15443); -- exists
DELETE FROM gossip_menu WHERE entry IN(6623,6622,6949);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(6623,7874,0,0), -- exists
(6622,7875,0,0),
(6949,8237,0,0);

-- DELETE FROM npc_text_broadcast_text WHERE Id IN(7874,7875,8237); -- exists
-- INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
-- (7874,1,11005),
-- (7875,1,11007),
-- (8237,1,11728);

-- DELETE FROM npc_text WHERE id IN (7874,7875,8237);
-- DELETE FROM npc_gossip WHERE npc_guid IN (42914);

DELETE FROM gossip_menu_option WHERE menu_id IN (6623,6622);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(6623,0,0,'I\'m here to aid the Captain.',11006,1,1,6622,0,0,0,0,NULL,0,4002),
(6622,0,0,'I\'ll wait.',11413,1,1,-1,0,662201,0,0,NULL,0,0);

DELETE FROM conditions WHERE condition_entry = 4002;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(4002,9,8507,0,0,0,0,'');

DELETE FROM dbscripts_on_gossip WHERE id IN (662201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(662201,1,31,15449,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 15449 - terminate if alive'),
(662201,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(662201,101,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPC Flags Removed'),
(662201,200,10,15441,900000,0,0,0,0x08,0,0,0,88,-7207.7603,1430.0612,5.2083325,5.3194,'Summon 15441'),-- 17:06:19.807
(662201,201,10,15442,900000,0,0,0,0x08,0,0,0,89,-7169.231,1380.7969,3.0650182,2.398,'Summon 15442'),-- 17:06:19.807
(662201,3000,0,0,0,0,0,0,0x04,11394,0,0,0,0,0,0,0,'text'), -- 17:06:22.754
(662201,10000,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 17:06:29.487
(662201,16000,3,0,0,0,0,0,0x04,0,0,0,0,-7178.561,1392.0747,2.8916323,0.087266,'move'), -- 17:06:35.638
(662201,16001,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 17:06:35.638
(662201,16100,0,0,0,0,0,0,0x04,10974,0,0,0,0,0,0,0,'text'), -- 17:06:35.762
(662201,23000,0,0,0,0,0,0,0x04,11356,0,0,0,0,0,0,0,'text'), -- 17:06:42.240
(662201,23001,10,15440,900000,0,0,0,0x08,0,0,0,90,-7162.1313,1379.5212,3.0027514,2.208057,'Summon 15440'),
(662201,25000,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
(662201,28001,10,15449,1800000,0,0,0,0x08,0,0,0,0,-7215.693,1458.8447,-3.1210537,5.16508,'Summon 15449'),
(662201,35000,3,0,0,0,0,0,0x04,0,0,0,0,-7178.561,1392.0747,2.8916323,5.777,'move'),
(662201,35001,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 17:06:56.728
(662201,38000,3,0,0,0,0,0,0x04,0,0,0,0,-7178.561,1392.0747,2.8916323,2.25147,'move');

-- Ironforge Brigade Rifleman 15441
-- path 1
DELETE FROM creature_movement_template WHERE entry IN (15441);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(15441,1,1,-7207.7603,1430.0612,5.2083325,100,0,0),
(15441,1,2,-7195.75,1410.4182,5.2330947,100,0,0),
(15441,1,3,-7189.2734,1403.0304,4.0071425,100,0,0),
(15441,1,4,-7179.86,1393.2805,2.843207,5.3756,19000,1544101),
(15441,1,6,-7168.705,1389.649,2.919412,2.2689,1000,3);

DELETE FROM dbscripts_on_creature_movement WHERE id = 1544101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1544101,1,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ironforge Brigade Rifleman - emote'),
(1544101,100,0,0,0,0,0,0,0x04,10973,0,0,0,0,0,0,0,'Ironforge Brigade Rifleman - Say'),
(1544101,101,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Ironforge Brigade Rifleman - Send Event 5 (self)');

DELETE FROM `dbscripts_on_relay` WHERE `id` = 20663;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(20663, 1, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SET waypoints - Path 1');

DELETE FROM creature_spawn_data_template WHERE `entry` IN (88);
INSERT INTO creature_spawn_data_template (entry, SpawnFlags,RelayId,Name) VALUES
(88,1,20663,'- SPAWN FLAG RUN, RelayId 20663');

-- Ironforge Brigade Footman 15442
-- path 1
DELETE FROM creature_movement_template WHERE entry IN (15442);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(15442,1,1,-7169.231,1380.7969,3.0650182,2.398,0,0),-- 17:06:29.487
(15442,1,2,-7176.1895,1391.653,3.3684,2.398,12000,0),
(15442,1,3,-7176.1895,1391.653,3.3684,2.398,1000,1066), -- 17:06:38.882
(15442,1,4,-7164.078,1381.8844,2.919417,100,6000,1544201); -- 17:06:42.128

DELETE FROM dbscripts_on_creature_movement WHERE id = 1544201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1544201,1,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Ironforge Brigade Footman - emote'),
(1544201,100,0,0,0,0,0,0,0x04,10976,0,0,0,0,0,0,0,'Ironforge Brigade Footman - say'), -- 17:06:48.766
(1544201,101,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Ironforge Brigade Footman - Send Event 5 (self)'),
(1544201,110,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Ironforge Brigade Footman - idle');

DELETE FROM creature_spawn_data_template WHERE `entry` IN (89);
INSERT INTO creature_spawn_data_template (entry, RelayId, Name) VALUES
(89,20663,'- RelayId 20663');

-- Captain Blackanvil 15440
UPDATE creature_template SET Faction = 1611, NpcFlags = 2 WHERE entry IN(15440); -- Classic/TBC (15440,13316,0,0);
DELETE FROM creature_movement_template WHERE entry IN (15440);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(15440,1,1,-7162.1313,1379.5212,3.0027514,2.208057,3000,0), -- 17:06:47.405
(15440,1,2,-7174.816,1390.562,2.966527,100,3000,1544001),
(15440,1,3,-7179.5303,1394.5319,2.3387,100,10000,1544002);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1544001,1544002);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1544001,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Captain Blackanvil - emote'), -- 17:06:55.101
(1544001,100,0,0,0,0,0,0,0x04,10964,0,0,0,0,0,0,0,'Captain Blackanvil - say'),
(1544002,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Captain Blackanvil - emote'), -- 17:07:03.224
(1544002,100,0,0,0,0,0,0,0x04,10968,0,0,0,0,0,0,0,'Captain Blackanvil - say'),
(1544002,3000,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Captain Blackanvil - emote'), -- 17:07:06.475
(1544002,3001,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.526,'Captain Blackanvil - move'), -- 17:07:06.475
(1544002,3100,0,0,0,0,0,0,0x04,10982,0,0,0,0,0,0,0,'Captain Blackanvil - say'), -- 17:07:06.582
(1544002,5100,0,0,0,0,0,0,0x04,10970,0,0,0,0,0,0,0,'Captain Blackanvil - say'), -- 17:07:08.034
(1544002,5101,35,6,50,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Blackanvil - Send Event 6'), -- 17:07:11.340
(1544002,6000,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Captain Blackanvil - idle');

DELETE FROM creature_spawn_data_template WHERE `entry` IN (90);
INSERT INTO creature_spawn_data_template (entry, UnitFlags, RelayId, Name) VALUES
(90,33536,20663,'- RelayId 20663');

-- Hive'Zora Abomination 15449
UPDATE creature_template SET Faction = 1395, UnitFlags = 832, CorpseDecay = 300, MovementType = 2 WHERE entry IN(15449);
DELETE FROM creature_movement_template WHERE entry = 15449;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(15449,1,-7215.693,1458.8447,-3.1210537,5.16508,0,0),
(15449,2,-7210.614,1446.5219,-0.774911,100,0,0),
(15449,3,-7200.527,1422.5425,5.40259,100,0,0),
(15449,4,-7203.5703,1410.9662,5.495494,100,1000000,1544901), -- tutaj send all
(15449,5,-7191.466,1399.9132,3.978827,100,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1544901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1544901,1,35,8,100,0,0,0,0,0,0,0,0,0,0,0,0,'Hive\'Zora Abomination 15449 - send Event AI 8'),
(1544901,100,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hive\'Zora Abomination 15449 - Remove UnitFlags'),
(1544901,200,26,0,0,0,15440,100,1,0,0,0,0,0,0,0,0,'Hive\'Zora Abomination 15449 - attack Blackanvil');

-- Respawn Timer Corrected
-- Janela Stouthammer 15443
-- Sergeant Carnes 15903
-- Arcanist Nozzlespring 15444
-- Ironforge Brigade Rifleman 15441
-- Ironforge Brigade Footman 15442
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id IN (15443,15903,15444,15441,15442,15449); -- 300 or 600
UPDATE creature_template SET DamageMultiplier = 3 WHERE entry IN (15443); -- 3.5
UPDATE creature_template SET DamageMultiplier = 1 WHERE entry IN (15903,15444,15441,15442); -- 1,1,5,4

-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 53 AND 84;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 53,54
(53,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7168.6685,1394.3657,2.943416,2.925,'Part of Sergeant Carnes 15903 EAI - move'),
(54,1,3,0,0,0,0,0,0x04,0,0,0,0,-7160.947,1401.1855,3.0375133,4.10152,'Part of Sergeant Carnes 15903 EAI - move'),
(54,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7160.947,1401.1855,3.0375133,4.10152,'Part of Sergeant Carnes 15903 EAI - safe move'),
-- 55,56
(55,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7177.405,1393.0306,3.091943,2.3038,'Part of Arcanist Nozzlespring 15444 EAI - move'),
(56,1,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9097,1404.1198,2.9698133,3.2812,'Part of Arcanist Nozzlespring 15444 EAI - move'),
(56,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9097,1404.1198,2.9698133,3.2812,'Part of Arcanist Nozzlespring 15444 EAI - safe move'),
-- 57,58
(57,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7172.8164,1389.6763,2.919412,2.4609,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(58,1,3,0,0,0,0,0,0x04,0,0,0,0,-7163.413,1389.0591,2.8928092,2.87979,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(58,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7163.413,1389.0591,2.8928092,2.87979,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 59,60
(59,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7170.662,1391.6168,2.919412,2.3911,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(60,1,3,0,0,0,0,0,0x04,0,0,0,0,-7164.2715,1403.1415,3.0027473,3.159,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(60,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7164.2715,1403.1415,3.0027473,3.159,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 61,62
(61,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7174.86,1383.3921,2.919416,2.3387,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(62,1,3,0,0,0,0,0,0x04,0,0,0,0,-7167.7505,1380.4862,3.0027502,2.02458,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(62,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7167.7505,1380.4862,3.0027502,2.02458,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 63,64
(63,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7177.0522,1385.4811,2.919411,2.35619,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(64,1,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9243,1387.3278,3.0027452,1.361357,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(64,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9243,1387.3278,3.0027452,1.361357,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 65,66
(65,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7170.761,1387.5787,2.919412,2.3038,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(66,1,3,0,0,0,0,0,0x04,0,0,0,0,-7169.733,1405.132,2.7783232,5.044,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(66,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7169.733,1405.132,2.7783232,5.044,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 67,68
(67,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7174.879,1387.5894,2.919412,2.44346,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(68,1,3,0,0,0,0,0,0x04,0,0,0,0,-7164.139,1391.2416,3.0027463,3.8397,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(68,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7164.139,1391.2416,3.0027463,3.8397,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 69,70
(69,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7172.975,1385.422,2.919416,2.3736,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(70,1,3,0,0,0,0,0,0x04,0,0,0,0,-7178.1353,1390.4185,2.9810643,2.234,'Part of Ironforge Brigade Rifleman 15441 EAI - move'),
(70,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7178.1353,1390.4185,2.9810643,2.234,'Part of Ironforge Brigade Rifleman 15441 EAI - safe move'),
-- 71,72,73
(71,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7172.7666,1393.6962,3.073042,2.35619,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(72,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Brigade Footman 15442 EAI - RUN ON'),
(72,10,3,0,0,0,0,0,0x04,0,0,0,0,-7183.3896,1404.201,4.169739,2.35619,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(73,1,3,0,0,0,0,0,0x04,0,0,0,0,-7169.231,1380.7969,3.0386415,2.007,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(73,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7169.231,1380.7969,3.0386415,2.007,'Part of Ironforge Brigade Footman 15442 EAI - safe move'),
-- 74,75,76
(74,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7177.0103,1389.5869,2.920661,2.35619,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(75,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Brigade Footman 15442 EAI - RUN ON'),
(75,10,3,0,0,0,0,0,0x04,0,0,0,0,-7187.4116,1400.0577,3.949679,2.35619,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(76,1,3,0,0,0,0,0,0x04,0,0,0,0,-7187.4116,1400.0577,3.949679,2.35619,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(76,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7164.3145,1387.0052,2.8852112,1.989675,'Part of Ironforge Brigade Footman 15442 EAI - safe move'),
-- 77,78,79
(77,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7174.9873,1391.656,2.987242,2.3387,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(78,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Brigade Footman 15442 EAI - RUN ON'),
(78,10,3,0,0,0,0,0,0x04,0,0,0,0,-7185.2603,1402.104,4.07097,2.3387,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(79,1,3,0,0,0,0,0,0x04,0,0,0,0,-7172.894,1381.3248,3.0027502,1.93731,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(79,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7172.894,1381.3248,3.0027502,1.93731,'Part of Ironforge Brigade Footman 15442 EAI - safe move'),
-- 80,81,82
(80,1000,3,0,0,0,0,0,0x04,0,0,0,0,-7179.092,1387.4589,2.919413,2.3387,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(81,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Brigade Footman 15442 EAI - RUN ON'),
(81,10,3,0,0,0,0,0,0x04,0,0,0,0,-7189.437,1397.9579,3.783503,2.3387,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(82,1,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9097,1391.6007,2.9916933,5.1313,'Part of Ironforge Brigade Footman 15442 EAI - move'),
(82,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7166.9097,1391.6007,2.9916933,5.1313,'Part of Ironforge Brigade Footman 15442 EAI - safe move'),
-- 83
(83,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captain Blackanvil 15440 EAI - Active'),
(83,2,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captain Blackanvil 15440 EAI - Add NpcFlags'),
(83,180000,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captain Blackanvil 15440 EAI - Remove NpcFlags'),
(83,180002,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captain Blackanvil 15440 EAI - UnActive'),
(83,180003,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captain Blackanvil 15440 EAI - despawn'),
-- 84
(84,1,3,0,0,0,0,0,0x04,0,0,0,0,-7178.561,1392.0747,2.8916323,2.25147,'Part of Janela Stouthammer 15443 EAI - move'),
(84,2,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI - Active'),
(84,3,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI - Add NpcFlags'),
(84,4,52,6949,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI: Set Gossip'),
(84,10000,3,0,0,0,0,0,0x04,0,0,0,0,-7178.561,1392.0747,2.8916323,2.25147,'Part of Janela Stouthammer 15443 EAI - safe move'),
(84,180000,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI - Remove NpcFlags'),
(84,180001,52,6623,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI: Set Gossip'),
(84,180002,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Janela Stouthammer 15443 EAI - UnActive');

