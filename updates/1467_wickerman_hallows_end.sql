-- Adding entries for the Wickerman's Festival

-- Wickerman
DELETE FROM gameobject WHERE guid=37870;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37870, 180433, 0, 1734.04, 504.05, 42.2861, 1.4131, 0, 0, 0.649213, 0.760607, 300, 100,1);
DELETE FROM game_event_gameobject WHERE guid=37870;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37870, 12);

-- Adjusting size and removing player interaction
UPDATE `gameobject_template` SET `flags`= 16, `size`= 4 WHERE `entry`= 180433;


-- Pumpkins
DELETE FROM gameobject WHERE guid=37879;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37879, 180405, 0, 1746.07, 517.066, 38.936, 3.40519, 0, 0, 0.991327, -0.131419, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37879;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37879, 12);
DELETE FROM gameobject WHERE guid=37880;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37880, 180406, 0, 1728, 475.099, 63.6779, 3.49316, 0, 0, 0.98459, -0.174878, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37880;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37880, 12);
DELETE FROM gameobject WHERE guid=37881;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37881, 180406, 0, 1719.67, 522.979, 36.8828, 3.30702, 0, 0, 0.996581, -0.0826182, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37881;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37881, 12);

-- Forsaken Banners
DELETE FROM gameobject WHERE guid=37867;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37867, 180432, 0, 1732.167358, 474.855957, 61.656750, 1.52646, 0, 0, 0, 0, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37867;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37867, 12);
DELETE FROM gameobject WHERE guid=37868;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37868, 180432, 0, 1749.28, 507.611, 39.2312, 1.49635, 0, 0, 0.680301, 0.732933, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37868;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37868, 12);
DELETE FROM gameobject WHERE guid=37869;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37869, 180432, 0, 1712.63, 507.05, 38.2495, 1.58824, 0, 0, 0.713246, 0.700914, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=37869;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37869, 12);

-- Wickerman Guardians
DELETE FROM creature WHERE guid=85632;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `Deathstate`, `MovementType`) VALUES (85632, 15195, 0, 0, 0, 1713.1, 511.295, 37.2005, 1.48063, 300, 0, 0, 45780, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid=85632;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (85632, 12);
DELETE FROM creature WHERE guid=85633;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `Deathstate`, `MovementType`) VALUES (85633, 15195, 0, 0, 0, 1750.57, 511.697, 37.7587, 1.25444, 300, 0, 0, 45780, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid=85633;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (85633, 12);
DELETE FROM creature WHERE guid=85634;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `Deathstate`, `MovementType`) VALUES (85634, 15195, 0, 0, 0, 1729.046387, 552.650269, 34.302891, 4.543876, 300, 0, 0, 45780, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid=85634;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (85634, 12);

-- Making them guards
UPDATE `creature_template` SET `UnitFlags`= 36864, `ExtraFlags`= 1024 WHERE `Entry`= 15195;

-- Adding Wickerman Guardian Ember GO to DB to support spell 27005
DELETE FROM gameobject_template WHERE entry=180574;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180574, 2, 6421, 'Wickerman Guardian Ember', 0, 0, 5, 43, 0, 0, 6535, 0, 0, 19700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Adding Gossip menu and options for Wickerman Ember
DELETE FROM gossip_menu WHERE entry=6535 AND text_id IN (7737, 7738);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6535, 7737, 0, 1370);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6535, 7738, 0, 1371);
DELETE FROM gossip_menu_option WHERE menu_id=6535 AND id=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (6535, 0, 0, 'Smear the ash on my face like war paint!', 1, 0, -1, 0, 653501, 0, 0, NULL, 1370);
DELETE FROM dbscripts_on_gossip WHERE id=653501;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (653501, 0, 15, 24705, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Invocation of the Wickerman');

DELETE FROM conditions WHERE condition_entry IN (1370, 1371);
-- Adding condition entry option when not buffed with 24705
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (1370, 11, 24705, 0);
-- Adding condition entry option when already buffed with 24705
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (1371, 1, 24705, 0);

-- Darkcaller Yanka
UPDATE `creature` SET `position_x`= 1732.31, `position_y`= 520.874, `position_z`= 36.3326, `orientation`= 1.309420 WHERE `id`= 15197;

-- Adding Gossip_menu
DELETE FROM gossip_menu WHERE entry=6537 AND text_id =7740;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6537, 7740, 0, 0);
UPDATE `creature_template` SET `NpcFlags`= 7, `GossipMenuId`= 6537 WHERE `Entry`= 15197;

-- Bonfires
DELETE FROM gameobject WHERE guid IN (37871,37872,37873,37874,37885);
DELETE FROM game_event_gameobject WHERE guid IN (37871,37872,37873,37874,37885);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37871, 180434, 0, 1758.89, 513.276, 35.8655, 1.28897, 0, 0, 0.600788, 0.799409, 300, 0, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37871, 12);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37872, 180434, 0, 1704.48, 518.689, 35.4045, 1.30704, 0, 0, 0.607984, 0.793949, 300, 0, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37872, 12);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37873, 180434, 0, 1743.098389, 473.444763, 61.655338, 1.4092, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37873, 12);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37874, 180434, 0, 1712.852661, 472.536041, 61.646259, 1.589838, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37874, 12);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (37885, 180434, 0, 1738.741821, 551.096802, 33.496574, 4.59492, 0, 0, 0, 0, 300, 100, 1);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (37885, 12);