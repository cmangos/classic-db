-- Added missing spawn, movement and aura to NPC 2624 (Gazban) in Stranglethorn Vale
-- This closes #260  
SET @GUID := 105971;

DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` VALUES (@GUID, 0, 0, 1, 16, 0, 0, '6523');

UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `Entry` = 2624;

DELETE FROM `dbscripts_on_event` WHERE `id` = 364;
INSERT INTO `dbscripts_on_event` VALUES
(364, 0, 10, 2624, 90000, 0, 0, 0, 0, 0, 0, 0, -12179.4, 644.22, -67.1, 5.18, 'spawn Gazban'),
(364, 1, 22, 14, 0, 2624, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change faction to hostile'),
(364, 2, 26, 0, 0, 2624, 400, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'attacks player');

DELETE FROM `creature` WHERE `guid` = @GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, 2624, 0, 0, 0, -12194, 769.859, -15.9318, 1.96466, 300, 0, 0, 3036, 3191, 0, 2);

DELETE FROM `creature_movement` WHERE `id` = @GUID; 
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, 1, -12194.7, 769.551, -15.9318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 2, -12195.2, 780.622, -6.52437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 3, -12197.7, 797.174, -1.33736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 4, -12204.2, 818.71, 0.812559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 5, -12217.6, 838.669, 1.63277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 6, -12224.5, 856.531, 2.1303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 7, -12211.9, 879.66, 1.64149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 8, -12184.3, 908.512, 0.859513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 9, -12159.2, 932.952, 2.17466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 10, -12147.2, 948.471, 3.21953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 11, -12131.2, 964.07, 5.20597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.02, 0, 0),
(@GUID, 12, -12131.2, 964.07, 5.20597, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 5.02, 0, 0),
(@GUID, 13, -12149.5, 947.191, 2.98636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 14, -12161.9, 931.291, 2.17916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 15, -12184.2, 907.044, 0.896548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 16, -12212.5, 878.705, 1.68139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 17, -12223.4, 855.218, 2.51366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 18, -12216, 835.882, 1.65673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 19, -12202.3, 814.66, 0.211267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 20, -12196.8, 793.944, -1.38067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 21, -12196.2, 780.529, -6.76857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID, 22, -12193.7, 769.494, -16.3151, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);
