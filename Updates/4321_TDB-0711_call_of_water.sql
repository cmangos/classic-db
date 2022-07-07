-- Remove script from Quest 63
UPDATE `quest_template` SET `CompleteScript`='0' WHERE `entry`='63';
DELETE FROM dbscripts_on_quest_end WHERE id = '63';

-- QuestID 96 Start Script
UPDATE `quest_template` SET `StartScript`='96' WHERE `entry`='96';
DELETE FROM dbscripts_on_quest_start WHERE id = '96';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(96,20000,0,45,589501,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Start Relay Script'); -- launches 589501, eai 589502 launches 589501

-- QuestID 100 'Call of Water' Start Script
UPDATE `quest_template` SET `StartScript`='100' WHERE `entry`='100';
DELETE FROM dbscripts_on_quest_start WHERE id = '100';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(100,0,0,45,700701,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Start Relay Script'); -- launches 700701, movementscript 700701 launches 700701

-- QuestID 1103 Call of Water End Script
DELETE FROM dbscripts_on_quest_end WHERE id = '1103';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1103,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Remove Standstate'),
(1103,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Set Active Object'),
(1103,1000,0,0,0,0,0,0,0,0,3069,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Say Text'),
(1103,4000,0,20,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Change Movement');

-- Relay Scripts
DELETE FROM dbscripts_on_relay WHERE id IN (589501, 700701, 589701);
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- This relay Script starts when quest 96 is accepted or 5 minutes after the Corrupted Water Spirit got spawned
(589501,0,3,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Remove NPC Flags'),
(589501,0,2,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Start Movement'),
(589501,0,1,35,5,0,0,6748,50,512,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Send AI Event'),
-- Spawn script
(700701,0,1,35,5,50,0,5897,50,512,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Corrupt Water Spirit of Water - Send AI Event'),
(700701,1000,0,9,15176,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Respawn Gameobject'),
(700701,12000,0,9,15175,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Respawn Gameobject'),
(700701,13000,0,31,5895,15,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Check for spawn'),
(700701,15000,0,10,5895,0,1,0,0,8,0,0,0,0,0,417.04,1822.66,12.61,1.483,0,0,'Call of Water - Spawn Minor Manifestation of Water'),
(700701,19000,0,10,6748,0,6,0,0,8,0,0,0,0,0,393.13,1860.64,11.22,5.577,0,0,'Call of Water - Spawn Water Spirit - Path 6'),
(700701,19000,0,10,6748,0,7,0,0,8,0,0,0,0,0,405.81,1843.58,12.54,6.161,0,0,'Call of Water - Spawn Water Spirit - Path 7'),
(700701,19000,0,10,6748,0,10,0,0,8,0,0,0,0,0,424.75,1840.46,12.25,2.945,0,0,'Call of Water - Spawn Water Spirit - Path 10'),
(700701,20000,0,10,6748,0,4,0,0,8,0,0,0,0,0,404.85,1863.62,11.20,5.135,0,0,'Call of Water - Spawn Water Spirit - Path 4'),
(700701,20000,0,10,6748,0,9,0,0,8,0,0,0,0,0,424.45,1818.22,10.46,1.964,0,0,'Call of Water - Spawn Water Spirit - Path 9'),
(700701,22000,0,10,6748,0,3,0,0,8,0,0,0,0,0,431.41,1849.24,11.39,3.516,0,0,'Call of Water - Spawn Water Spirit - Path 3'),
(700701,22000,0,10,6748,0,8,0,0,8,0,0,0,0,0,400.15,1827.50,10.46,0.813,0,0,'Call of Water - Spawn Water Spirit - Path 8'),
(700701,22000,0,10,6748,0,11,0,0,8,0,0,0,0,0,413.20,1831.29,10.46,1.468,0,0,'Call of Water - Spawn Water Spirit - Path 11'),
(700701,24000,0,10,6748,0,2,0,0,8,0,0,0,0,0,439.28,1837.30,12.42,2.934,0,0,'Call of Water - Spawn Water Spirit - Path 2'),
(700701,24000,0,10,6748,0,5,0,0,8,0,0,0,0,0,418.96,1854.28,10.97,4.339,0,0,'Call of Water - Spawn Water Spirit - Path 5'),
(700701,25000,0,10,6748,0,12,0,0,8,0,0,0,0,0,434.02,1862.14,10.89,3.925,0,0,'Call of Water - Spawn Water Spirit - Path 12'),
(700701,25000,0,10,6748,0,1,0,0,8,0,0,0,0,0,392.31,1847.33,12.36,6.068,0,0,'Call of Water - Spawn Water Spirit - Path 1'),
-- Despawn script for Corrupt Water Spirits after accepting quest 100
(589701,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Corrupt Water Spirit - Stop Movement'),
(589701,0,1,28,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Corrupt Water Spirit - Set Standstate 7'),
(589701,7000,0,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Corrupt Water Spirit - Despawn');

-- Waypoint Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (589500, 674800, 700700, 700701);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- Minor Manifestation of Water
(589500,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Pause Movement'),
(589500,300000,0,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Minor Manifestation of Water - Change Movement after 5 minutes'),
-- Water Spirit
(674800,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Water Spirit - Pause Movement'),
(674801,0,0,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Water Spirit - Despawn'),
-- Tiev Mordune
(700700,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Pause Movement'),
(700700,0,1,0,0,0,0,0,0,0,3070,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Say Text'),
(700700,3000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Face Player'),
(700700,3000,1,15,9735,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Cast Sapta Sight on Player'),
(700700,6000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Unpause Movement'),
(700701,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Pause Movement'),
(700701,0,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Face Player'),
(700701,100,2,1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Emote Kneel'),
(700701,5000,0,0,0,0,0,0,0,0,3072,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Say Text'),
(700701,6000,0,45,700701,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Start Relay Script'), -- launches 700701
(700701,15000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Unpause Movement'),
(700702,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Pause Movement'),
(700702,16000,0,0,0,0,0,0,0,0,3073,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Say Text'),
(700702,16000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Unpause Movement'),
(700703,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Remove Movement'),
(700703,0,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Remove Active Object'),
(700703,4000,0,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Call of Water - Tiev Mordune - Set Stanstate');

-- Add spell script target for Spell Sapta Sight
DELETE FROM `spell_script_target` WHERE entry = 9735;
INSERT INTO `spell_script_target` (`entry`, `targetEntry`) VALUES ('9735', '113791');

-- Make Minoe Manifestation of Water only visable when having Sapta Sight buff 
UPDATE `creature_template_addon` SET `auras`='8203' WHERE (`entry`='5895');

-- Make corrupt water spirits only visable when having Sapta Sight buff and correct respawn timer
UPDATE `creature_template_addon` SET `auras`='8203' WHERE (`entry`='5897');
UPDATE `creature` SET `spawntimesecsmin`='450', `spawntimesecsmax`='450' WHERE (`id`='5897');
-- Add random movement to corrupted water spirits
-- All 8 have rnd movement
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE (`id`='5897');

-- Correct faction and Flags for water spirits
DELETE FROM creature_template_addon WHERE entry = 6748;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('6748', '8203');
UPDATE `creature_template` SET `Faction`='35', `UnitFlags`='33555200', `MovementType`='2'  WHERE (`Entry`='6748');

-- Correct spawn position and movement for corrupted minor manifestation of water
UPDATE `creature` SET `position_x`='418.87442', `position_y`='1831.7448', `position_z`='10.740808', `orientation`='1.29154360294342',  `MovementType`='2' WHERE (`guid`='84707');

SET @PATH := 7007;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,0,1,431.49332,1869.7583,10.962283,100,100,700700,'Tiev Mordune Script 0'),
(@PATH,0,2,433.68994,1865.9907,10.562694,100,0,0,'Tiev Mordune'),
(@PATH,0,3,435.59,1863.40,10.60,100,0,0,'Tiev Mordune CUSTOM Pathfinding Issue'),
(@PATH,0,4,419.18393,1849.8658,11.653746,100,0,0,'Tiev Mordune'),
(@PATH,0,5,419.10806,1845.3435,11.937315,100,100,700701,'Tiev Mordune Script 1'),
(@PATH,0,6,418.88077,1834.5356,10.5857525,100,0,0,'Tiev Mordune'),
(@PATH,0,7,416.7359,1827.0114,11.646935,100,100,700702,'Tiev Mordune Script 2'),
(@PATH,0,8,424.09283,1833.2285,9.805505,100,0,0,'Tiev Mordune'),
(@PATH,0,9,435.79385,1853.7615,10.922435,100,0,0,'Tiev Mordune'),
(@PATH,0,10,434.79166,1868.6956,10.229746,100,0,0,'Tiev Mordune'),
(@PATH,0,11,430.83606,1880.6953,15.179446,100,0,0,'Tiev Mordune'),
(@PATH,0,12,430.38467,1881.858,15.423465,100,0,0,'Tiev Mordune'),
(@PATH,0,13,430.38467,1881.858,15.423465,5.131,5000,700703,'Tiev Mordune Script 3');

SET @PATH := 5894;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,418.87442,1831.7448,10.740808,1.29154360294342041, 15000, 0),
(@PATH,0,2,411.1008,1830.1821,10.487756,100, 0, 0),
(@PATH,0,3,405.4809,1825.3516,10.487756,100, 0, 0),
(@PATH,0,4,405.21533,1819.3403,10.434289,100, 0, 0),
(@PATH,0,5,413.8386,1811.1016,10.659387,100, 0, 0),
(@PATH,0,6,422.24197,1812.2107,10.667932,100, 0, 0),
(@PATH,0,7,426.7163,1816.2659,10.487756,100, 0, 0),
(@PATH,0,8,429.11118,1821.2192,10.487756,100, 0, 0),
(@PATH,0,9,427.67056,1827.4037,10.487756,100, 0, 0),
(@PATH,0,10,420.71713,1831.9974,10.759118,100, 1000, 0),
(@PATH,0,11,418.87442,1831.7448,10.740808,100, 1000, 0),
(@PATH,0,12,418.87442,1831.7448,10.740808,1.29154360294342041,47000, 0),
(@PATH,0,13,425.76688,1830.2009,10.612145,100, 0, 0),
(@PATH,0,14,428.9062,1822.8967,10.487756,100, 0, 0),
(@PATH,0,15,426.91602,1815.8613,10.487756,100, 0, 0),
(@PATH,0,16,420.52893,1811.664,11.1521845,100, 0, 0),
(@PATH,0,17,411.95572,1812.0321,11.103478,100, 0, 0),
(@PATH,0,18,405.62247,1817.4442,10.174523,100, 0, 0),
(@PATH,0,19,404.27496,1823.1691,10.487756,100, 0, 0),
(@PATH,0,20,407.25537,1828.4978,10.487756,100, 0, 0),
(@PATH,0,21,412.9241,1831.525,10.487756,100, 0, 0),
(@PATH,0,22,417.86905,1833.245,10.560876,100, 0, 0),
(@PATH,0,23,418.87442,1831.7448,10.740808,100, 0, 0),
(@PATH,0,24,418.87442,1831.7448,10.740808,1.29154360294342041,2000, 0),
(@PATH,0,25,417.94888,1841.0326,11.753721,100, 0, 0),
(@PATH,0,26,412.83752,1840.493,12.289122,100, 0, 0),
(@PATH,0,27,406.2172,1836.3334,12.8357525,100, 0, 0),
(@PATH,0,28,394.71332,1846.7622,12.228581,100, 0, 0),
(@PATH,0,29,399.55655,1860.3184,11.46491,100, 0, 0),
(@PATH,0,30,410.5286,1863.5994,10.558653,100, 0, 0),
(@PATH,0,31,420.33704,1853.7542,11.200865,100, 0, 0),
(@PATH,0,32,429.42557,1847.4866,11.689024,100, 0, 0),
(@PATH,0,33,440.58447,1847.8099,11.269969,100, 0, 0),
(@PATH,0,34,443.78656,1843.0039,12.289866,100, 0, 0),
(@PATH,0,35,440.0046,1835.2489,12.419017,100, 0, 0),
(@PATH,0,36,433.30914,1829.9442,12.131921,100, 0, 0),
(@PATH,0,37,428.29428,1837.9879,12.414732,100, 0, 0),
(@PATH,0,38,421.72055,1840.7006,12.101133,100, 100, 5),
(@PATH,0,39,418.87442,1831.7448,10.740808,100, 100, 6),
(@PATH,0,40,418.87442,1831.7448,10.740808,1.29154360294342041, 25000, 0);

-- Add Waypoints for Water Spirits and Minor Manifestation of Water
-- Add Waypoints to Minor Manifestation of Water
-- 11:34:03.300
SET @PATH := 5895;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,421.8788,1840.3544,12.0527935,100,100,589500),
(@PATH,2,1,421.8788,1840.3544,12.0527935,100,0,0),
(@PATH,2,2,431.01562,1847.8055,11.612364,100,0,0),
(@PATH,2,3,454.36328,1883.919,5.442026,100,0,0),
(@PATH,2,4,459.39835,1923.7932,-10.240311,100,1000,674801);

SET @PATH := 6748;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
-- Entry: 6748 Low: 9217623
-- 11:34:06.532
(@PATH,1,1,392.31,1847.33,12.36,6.068,100,674800),
(@PATH,1,2,392.31,1847.33,12.36,6.068,3000,0),
(@PATH,1,3,406.45312,1853.0293,11.4607525,100, 0, 0),
(@PATH,1,4,426.0931,1853.4049,11.238218,100, 0, 0),
(@PATH,1,5,439.47028,1859.5836,10.419017,100, 0, 0),
(@PATH,1,6,452.2871,1873.2698,8.482309,100, 0, 0),
(@PATH,1,7,469.80817,1890.7695,1.4991376,100, 1000, 674801),
-- Entry: 6748 Low: 17606231
-- 11:34:08.147
(@PATH,2,1,439.28,1837.30,12.42,2.934,100,674800),
(@PATH,2,2,439.28,1837.30,12.42,2.934,5000,0),
(@PATH,2,3,439.02524,1844.5131,11.919017,100, 0, 0),
(@PATH,2,4,439.42584,1860.4017,10.526927,100, 0, 0),
(@PATH,2,5,443.2843,1880.2444,5.9984226,100, 0, 0),
(@PATH,2,6,442.6797,1877.0859,6.942026,100, 1000, 674801),
-- Entry: 6748 Low: 25994839 
-- 11:34:08.147
(@PATH,3,1,431.41,1849.24,11.39,3.516,100,674800),
(@PATH,3,2,431.41,1849.24,11.39,3.516,5000,0),
(@PATH,3,3,438.10107,1862.1263,10.4462385,100, 0, 0),
(@PATH,3,4,445.3859,1866.9548,9.960947,100, 0, 0),
(@PATH,3,5,449.72852,1879.206,6.567026,100, 0, 0),
(@PATH,3,6,446.74728,1892.3281,1.0941257,100, 0, 0),
(@PATH,3,7,443.83682,1903.1873,-5.6569366,100, 1000, 674801),
-- 6748 Low: 34383447
-- 11:34:08.147
(@PATH,4,1,404.85,1863.62,11.20,5.135,100,674800),
(@PATH,4,2,404.85,1863.62,11.20,5.135,500,0),
(@PATH,4,3,410.91525,1860.8453,10.843443,100, 0, 0),
(@PATH,4,4,427.12457,1856.0109,10.926939,100, 0, 0),
(@PATH,4,5,437.1794,1860.1814,10.519969,100, 0, 0),
(@PATH,4,6,457.08438,1888.1526,4.269785,100, 0, 0),
(@PATH,4,7,464.85547,1909.8047,-5.720413,100, 1000, 674801),
-- Entry: 6748 Low: 42772055
-- 11:34:06.532
(@PATH,5,1,418.96,1854.28,10.97,4.339,100,674800),
(@PATH,5,2,418.96,1854.28,10.97,4.339,3000,0),
(@PATH,5,3,430.84006,1853.1951,11.028135,100, 0, 0),
(@PATH,5,4,437.45844,1860.4113,10.4864,100, 0, 0),
(@PATH,5,5,444.05286,1873.4497,8.562632,100, 0, 0),
(@PATH,5,6,448.75015,1888.2692,3.3022556,100, 0, 0),
(@PATH,5,7,457.16418,1900.19,-1.3889923,100, 1000, 674801),
-- Entry: 6748 Low: 51160663
-- 11:34:08.147
(@PATH,6,1,393.13,1860.64,11.22,5.577,100,674800),
(@PATH,6,2,393.13,1860.64,11.22,5.577,5000,0),
(@PATH,6,3,407.33914,1859.3123,11.392515,100, 0, 0),
(@PATH,6,4,429.232,1856.2153,10.9607525,100, 0, 0),
(@PATH,6,5,443.2384,1870.1517,9.710215,100, 0, 0),
(@PATH,6,6,463.67264,1896.4757,0.32032204,100, 1000, 674801),
-- Entry: 6748 Low: 59549271
-- 1:34:13.027
(@PATH,7,1,405.81,1843.58,12.54,6.161,100,674800),
(@PATH,7,2,405.81,1843.58,12.54,6.161,10000,0),
(@PATH,7,3,425.22348,1816.2814,10.487756,100, 0, 0),
(@PATH,7,4,430.78104,1820.6372,10.487756,100, 0, 0),
(@PATH,7,5,439.31754,1825.1202,12.664169,100, 0, 0),
(@PATH,7,6,441.66635,1835.1333,12.419017,100, 0, 0),
(@PATH,7,7,444.533,1842.4141,12.521068,100, 0, 0),
(@PATH,7,8,449.82465,1849.613,11.037059,100, 0, 0),
(@PATH,7,9,446.33344,1861.1415,10.195994,100, 0, 0),
(@PATH,7,10,469.31055,1891.5924,1.3225019,100, 1000, 674801),
-- Entry: 6748 Low: 67937879
-- 11:34:13.027
(@PATH,8,1,400.15,1827.50,10.46,0.813,100,674800),
(@PATH,8,2,400.15,1827.50,10.46,0.813,10000,0),
(@PATH,8,3,428.5726,1819.7274,10.487756,100, 0, 0),
(@PATH,8,4,427.20813,1827.1571,10.487756,100, 0, 0),
(@PATH,8,5,432.24295,1836.5192,12.405577,100, 0, 0),
(@PATH,8,6,438.77335,1843.1816,12.084422,100, 0, 0),
(@PATH,8,7,436.4252,1853.4467,10.884349,100, 0, 0),
(@PATH,8,8,434.67307,1868.783,10.27186,100, 0, 0),
(@PATH,8,9,439.33084,1876.4147,8.145517,100, 0, 0),
(@PATH,8,10,444.48453,1893.4553,0.009897232,100, 0, 0),
(@PATH,8,11,440.0733,1901.166,-5.9965363,100, 1000, 674801),
-- Entry: 6748 Low: 76326487
-- 11:34:14.666
(@PATH,9,1,424.45,1818.22,10.46,1.964,100,674800),
(@PATH,9,2,424.45,1818.22,10.46,1.964,11000,0),
(@PATH,9,3,428.00943,1825.4735,10.487756,100, 0, 0),
(@PATH,9,4,425.67725,1830.5055,10.480554,100, 0, 0),
(@PATH,9,5,428.95306,1840.714,12.4607525,100, 0, 0),
(@PATH,9,6,436.45667,1845.7812,11.806468,100, 0, 0),
(@PATH,9,7,437.6485,1854.5172,10.588695,100, 0, 0),
(@PATH,9,8,449.22168,1880.1298,6.3767185,100, 0, 0),
(@PATH,9,9,448.36328,1878.207,6.817026,100, 1000, 674801),
-- Entry: 6748 Low: 84715095 
-- 11:34:14.666
(@PATH,10,1,424.75,1840.46,12.25,2.945,100,674800),
(@PATH,10,2,424.75,1840.46,12.25,2.945,11000,0),
(@PATH,10,3,435.19205,1825.6515,12.399033,100, 0, 0),
(@PATH,10,4,442.65442,1836.267,12.600047,100, 0, 0),
(@PATH,10,5,445.90778,1853.7994,10.150584,100, 0, 0),
(@PATH,10,6,445.82993,1865.9453,10.130931,100, 0, 0),
(@PATH,10,7,458.66364,1884.7913,5.2171726,100, 0, 0),
(@PATH,10,8,470.88943,1897.9523,-1.1516192,100, 1000, 674801),
-- Entry: 6748 Low: 93103703 
-- 11:34:14.66
(@PATH,11,1,413.20,1831.29,10.46,1.468,100,674800),
(@PATH,11,2,413.20,1831.29,10.46,1.468,11000,0),
(@PATH,11,3,428.40353,1829.527,10.391686,100, 0, 0),
(@PATH,11,4,432.89297,1843.0895,12.342833,100, 0, 0),
(@PATH,11,5,430.71457,1858.4186,10.9607525,100, 0, 0),
(@PATH,11,6,439.50668,1870.2897,9.891489,100, 0, 0),
(@PATH,11,7,451.3856,1891.964,2.2780857,100, 0, 0),
(@PATH,11,8,451.89758,1899.8502,-1.6959133,100, 1000, 674801),
-- Entry: 6748 Low: 829015
-- 11:34:06.532
(@PATH,12,1,434.02,1862.14,10.89,3.925,100,674800),
(@PATH,12,2,434.02,1862.14,10.89,3.925,3000,0),
(@PATH,12,3,454.813,1891.4397,2.8512058, 100, 1000, 674801);

