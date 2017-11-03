/* Kwee Changes */

-- Correcting Gift Giving quests

UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `RequiredRaces`= 178, `SpecialFlags`= 1, `OfferRewardText`= 'Wonderful! Wonderful! I will add this to the pile of other gifts.$B$BI didn\'t expect so many! You must truly love your leaders.$B$BNow, let me just add one more to the count...', `RequestItemsText`= 'Have you come to deliver a present of love and adoration to your favorite leader?', `CompleteEmote`= 6, `OfferRewardEmote1`= 1 WHERE `entry`= 8981;
UPDATE `quest_template` SET `QuestLevel`= 60, `SpecialFlags`= 1 WHERE `entry`= 8993;

INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16075, 8981);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16075, 8981);

INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8981, 8);
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8993, 8);

-- Adding Spawns

-- SW
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91714, 16075, 0, 0, 0, -8435.320313, 321.929993, 121.746002, 2.215110, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91714, 8);
-- IF
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91715, 16075, 0, 0, 0, -4867.240234, -1031.479980, 502.190002, 5.384200, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91715, 8);
-- Darn
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91716, 16075, 1, 0, 0, 9671.019531, 2535.510010, 1360, 5.141840, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91716, 8);
-- Org
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91717, 16075, 1, 0, 0, 1929.651733, -4137.270508, 40.387890, 4.629610, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91717, 8);
-- TB
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91718, 16075, 1, 0, 0, -1196.150024, -119.406998, 163.798996, 3.086320, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91718, 8);
-- UC
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`,  `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91719, 16075, 0, 0, 0, 1302.354004, 344.460327, -65.027145, 1.409486, 300, 300, 0, 0, 5000, 0, 0, 0);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91719, 8);

-- Adding /kiss buff
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `Entry`= 16075;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1607501, 16075, 22, 0, 100, 0, 58, 0, 0, 0, 11, 27572, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kwee Cast Smitten on receiving /kiss');


-- Kwee Q Peddlefeet gossip + menus