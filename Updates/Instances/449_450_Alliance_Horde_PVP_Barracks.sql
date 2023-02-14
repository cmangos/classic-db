/* DBScriptData
DBName: Champions' Hall & Hall of Legends
DBScriptName: -
DB%Complete: 75
DBComment:
-- Horde
-- 2008-12-30-23-28_9183_MIHASYA.sqlite  - 9183_V3_0_3_9183
-- 2009-02-16-01-05_9551_SHURA117.sqlite - 9551_V3_0_9_9551
-- 2009-03-18-19-50_9551_SHURA117.sqlite
-- 2009-03-19-19-53_9551_SHURA117.sqlite

-- Alliance
-- 2008-03-14-20-39_7799_MIHASYA.sqlite - 7799_V2_3_3_7799
-- 2008-02-17-03-39_7799_MIHASYA.sqlite - 7799_V2_3_3_7799
-- 2008-04-03-04-33_8125_MIHASYA.sqlite - 8125_V2_4_1_8125
-- 2008-12-16-23-52_9183_MIHASYA.sqlite - 9183_V3_0_3_9183
-- 2009-01-23-23-38_9464_MIHASYA.sqlite - 9464_V3_0_8_9464
-- 2009-02-11-00-18_9551_MIHASYA.sqlite - 9551_V3_0_9_9551
-- 2009-05-07-01-40_9835_MIHASYA.sqlite - 9835_V3_1_1_9835
-- 2009-05-21-14-49_9901_MIHASYA.sqlite - 9901_V3_1_2_9901
-- 2009-06-02-21-52_9947_MIHASYA.sqlite - 9947_V3_1_3_9947
-- 2009-09-02-00-54_10314_SHURA117.sqlite - 10314_V3_2_0_10314
EndDBScriptData */

-- 449 (Alliance PVP Barracks) - Champions' Hall
SET @ACGUID := 4490000; -- creatures
SET @AOGUID := 4490000; -- gameobjects
-- 450 (Horde PVP Barracks) - Hall of Legends
SET @HCGUID := 4500000; -- creatures
SET @HOGUID := 4500000; -- gameobjects

-- =========
-- CREATURES
-- =========

-- INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(12777, 0, 0, 0, 0, 0, NULL), -- Captain Dirgehammer
(12778, 0, 0, 0, 0, 0, NULL), -- Lieutenant Rachel Vaccar
(12779, 0, 0, 0, 0, 0, NULL), -- Archmage Gaiman
(12780, 0, 0, 2, 0, 0, NULL), -- Sergeant Major Skyshadow
(12781, 0, 0, 1, 0, 0, NULL), -- Master Sergeant Biggins
(12782, 0, 0, 0, 0, 0, NULL), -- Captain O'Neal
(12783, 0, 0, 0, 0, 0, NULL), -- Lieutenant Karter
(12784, 0, 0, 1, 0, 0, NULL), -- Lieutenant Jackspring
(12785, 0, 0, 0, 0, 0, NULL), -- Sergeant Major Clate
(12786, 0, 0, 1, 0, 0, NULL), -- Guard Quine
(12787, 0, 0, 1, 0, 0, NULL), -- Guard Hammon
(12788, 0, 0, 0, 0, 0, NULL), -- Legionnaire Teena
(12789, 0, 0, 0, 0, 0, NULL), -- Blood Guard Hini'wana
(12790, 0, 0, 1, 0, 0, NULL), -- Advisor Willington
(12791, 0, 0, 2, 0, 0, NULL), -- Chieftain Earthbind
(12792, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
(12793, 0, 0, 0, 0, 0, NULL), -- Brave Stonehide
(12794, 0, 0, 0, 0, 0, NULL), -- Stone Guard Zarg
(12795, 0, 0, 0, 0, 0, NULL), -- First Sergeant Hola'mahi
(12796, 0, 0, 0, 0, 0, NULL), -- Raider Bork
(12797, 0, 0, 1, 0, 0, NULL), -- Grunt Korf
(12798, 0, 0, 1, 0, 0, NULL), -- Grunt Bek'rah
(14581, 0, 0, 0, 0, 0, NULL); -- Sergeant Thunderhorn
-- (19848, 0, 0, 1, 0, 0, NULL), -- Harbinger Ennarth
-- (19850, 0, 0, 1, 0, 0, NULL), -- Councilor Arial D'Anastasis
-- (23446, 0, 0, 1, 0, 0, NULL), -- Lieutenant Tristia
-- (23447, 0, 0, 0, 0, 0, NULL), -- Sergeant Kien
-- (24520, 0, 0, 0, 0, 0, NULL), -- Doris Volanthius
-- (24667, 0, 0, 0, 0, 0, NULL), -- Sergeant Thunderhorn
-- (24668, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
-- (26396, 0, 0, 0, 0, 0, NULL), -- Sergeant Thunderhorn
-- (26397, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
-- (26398, 0, 0, 0, 0, 0, NULL); -- Doris Volanthius

INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Alliance Classic Version
(@ACGUID+1, 12777, 449, -7.02304, -5.13929, 5.57096, 2.25147, 180, 300, 0, 0), -- Captain Dirgehammer <Armor Quartermaster>
(@ACGUID+2, 12778, 449, -2.79471, 29.6844, 1.18142, 6.05629, 180, 300, 0, 0), -- Lieutenant Rachel Vaccar
(@ACGUID+3, 12779, 449, -0.993629, 31.6975, 1.18142, 5.044, 180, 300, 0, 0), -- Archmage Gaiman
(@ACGUID+4, 12780, 449, 2.65049, 29.7101, 1.18142, 3.4383, 180, 300, 0, 0), -- Sergeant Major Skyshadow (-0.992282, 31.6972, 1.09809, 5.00614)
(@ACGUID+5, 12781, 449, -3.68559, 15.1514, -0.172549, 5.49779, 180, 300, 0, 0), -- Master Sergeant Biggins <Officer Accessories Quartermaster>
(@ACGUID+6, 12782, 449, 7.21626, 33.6513, 1.13917, 2.70526, 180, 300, 0, 0), -- Captain O'Neal <Weapons Quartermaster>
(@ACGUID+7, 12783, 449, 6.30864, 34.9575, 1.13917, 4.85202, 180, 300, 0, 0), -- Lieutenant Karter <Mount Vendor>
(@ACGUID+8, 12784, 449, 7.16394, 4.2682, -0.172551, 0.0872665, 180, 300, 0, 0), -- Lieutenant Jackspring <Reagent Vendor> (7.16394, 4.2682, -0.172551, 0.087266)
(@ACGUID+9, 12785, 449, -9.11894, -4.26696, 5.57096, 0.139626, 180, 300, 0, 0), -- Sergeant Major Clate <Food and Drink>
(@ACGUID+10, 12786, 449, -2.74466, 3.60577, -0.172551, 0.0523599, 180, 300, 0, 0), -- Guard Quine (-2.74466, 3.60577, -0.172551, 0.05236)
(@ACGUID+11, 12787, 449, 2.04541, 3.63727, -0.172552, 3.10669, 180, 300, 0, 0), -- Guard Hammon
-- Horde Classic Version
(@HCGUID+1, 12788, 450, 239.877, 85.6123, 24.8598, 6.12611, 180, 300, 0, 0), -- Legionnaire Teena
(@HCGUID+2, 12789, 450, 246.295, 86.5842, 24.8598, 3.71755, 180, 300, 0, 0), -- Blood Guard Hini'wana
(@HCGUID+3, 12790, 450, 239.886, 84.1280, 24.8548, 1.11701, 180, 300, 0, 0), -- Advisor Willington
(@HCGUID+4, 12791, 450, 246.830, 82.4214, 24.8454, 2.56563, 180, 300, 0, 0), -- Chieftain Earthbind
(@HCGUID+5, 12792, 450, 261.771, 86.2750, 25.8042, 3.19395, 180, 300, 0, 0), -- Lady Palanseer <Armor Quartermaster>
(@HCGUID+6, 12793, 450, 256.485, 99.3971, 25.8042, 3.96190, 180, 300, 0, 0), -- Brave Stonehide <Officer Accessories Quartermaster>
(@HCGUID+7, 12794, 450, 240.616, 103.316, 25.8049, 4.85202, 180, 300, 0, 0), -- Stone Guard Zarg <Weapons Quartermaster>
(@HCGUID+8, 12795, 450, 256.598, 70.6699, 25.8037, 2.32129, 180, 300, 0, 0), -- First Sergeant Hola'mahi <Armor Quartermaster>
(@HCGUID+9, 12796, 450, 258.963, 73.2198, 25.8045, 2.49582, 180, 300, 0, 0), -- Raider Bork <Mount Quartermaster>
(@HCGUID+10, 12797, 450, 230.810, 86.7280, 25.8016, 6.12611, 180, 300, 0, 0), -- Grunt Korf
(@HCGUID+11, 12798, 450, 238.214, 73.3759, 25.7981, 1.18682, 180, 300, 0, 0), -- Grunt Bek'rah
(@HCGUID+12, 14581, 450, 244.059, 103.591, 25.8036, 4.66003, 180, 300, 0, 0); -- Sergeant Thunderhorn <Weapons Quartermaster>

-- Alliance TBC Version
-- INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@ACGUID+1, 12777, 449, -6.9852, -6.68433, 5.57096, 1.25664, 180, 300, 0, 0), -- Captain Dirgehammer <Armor Quartermaster>
-- (@ACGUID+2, 12778, 449, -2.79471, 29.6844, 1.18142, 6.05629, 180, 300, 0, 0), -- Lieutenant Rachel Vaccar
-- (@ACGUID+3, 12779, 449, -0.992282, 31.6972, 1.09809, 5.00614, 180, 300, 0, 0), -- Archmage Gaiman
-- (@ACGUID+4, 12780, 449, 2.65049, 29.7101, 1.18142, 3.4383, 180, 300, 0, 0), -- Sergeant Major Skyshadow
-- (@ACGUID+5, 12781, 449, -3.68559, 15.1514, -0.172549, 5.49779, 180, 300, 0, 0), -- Master Sergeant Biggins <Officer Accessories Quartermaster>
-- (@ACGUID+6, 12782, 449, 7.67861, 33.5746, 1.13917, 3.75246, 180, 300, 0, 0), -- Captain O'Neal <Weapons Quartermaster> - 26394 in wotlk static
-- (@ACGUID+7, 12783, 449, 6.30864, 34.9575, 1.13917, 4.85202, 180, 300, 0, 0), -- Lieutenant Karter <Mount Vendor>
-- (@ACGUID+8, 12784, 449, 7.16394, 4.2682, -0.172551, 0.087266, 180, 300, 0, 0), -- Lieutenant Jackspring <Weapons Quartermaster>
-- (@ACGUID+9, 12785, 449, -9.11894, -4.26696, 5.57096, 0.139626, 180, 300, 0, 0), -- Sergeant Major Clate <Armor Quartermaster>
-- (@ACGUID+10, 12786, 449, -2.74466, 3.60577, -0.172551, 0.05236, 180, 300, 0, 0), -- Guard Quine
-- (@ACGUID+11, 12787, 449, 2.04541, 3.63727, -0.172552, 3.10669, 180, 300, 0, 0), -- Guard Hammon
-- TBC+
-- (@ACGUID+21, 19848, 449, 1.56239, 32.0995, 1.18142, 4.20624, 180, 300, 0, 0), -- Harbinger Ennarth
-- (@ACGUID+22, 23446, 449, -7.53458, 34.93, 1.13917, 5.37561, 180, 300, 0, 0), -- Lieutenant Tristia <Armor Quartermaster>
-- (@ACGUID+23, 24670, 449, -7.53458, 34.93, 1.13917, 5.37561, 180, 300, 0, 0), -- Lieutenant Tristia <Armor Quartermaster>
-- Captain O'Neal <Weapons Quartermaster> 24671
-- Captain Dirgehammer <Armor Quartermaster> 24672
-- Captain Dirgehammer <Armor Quartermaster> 26393
-- Captain O'Neal <Weapons Quartermaster> 26394
-- (@ACGUID+24, 26395, 449, -7.53458, 34.93, 1.13917, 5.37561, 180, 300, 0, 0), -- Lieutenant Tristia <Armor Quartermaster>
-- Horde TBC Version
-- (@HCGUID+1, 12788, 450, 239.065, 84.6268, 24.7756, 0.124754, 180, 300, 0, 0), -- Legionnaire Teena
-- (@HCGUID+2, 12789, 450, 243.494, 89.6673, 24.7757, 4.6133, 180, 300, 0, 0), -- Blood Guard Hini'wana
-- (@HCGUID+3, 12790, 450, 241.756, 88.9445, 24.7764, 5.0938, 180, 300, 0, 0), -- Advisor Willington
-- (@HCGUID+4, 12791, 450, 246.607, 86.7114, 24.7757, 3.58049, 180, 300, 0, 0), -- Chieftain Earthbind
-- (@HCGUID+5, 12792, 450, 262.328, 86.2516, 25.7205, 3.23834, 180, 300, 0, 0), -- Lady Palanseer <Armor Quartermaster>
-- (@HCGUID+6, 12793, 450, 256.748, 99.7957, 25.7205, 4.11799, 180, 300, 0, 0), -- Brave Stonehide <Officer Accessories Quartermaster>
-- (@HCGUID+7, 12794, 450, 240.143, 104.005, 25.7207, 4.53379, 180, 300, 0, 0), -- Stone Guard Zarg <Weapons Quartermaster>
-- (@HCGUID+8, 12795, 450, 256.598, 70.6699, 25.8037, 2.32129, 180, 300, 0, 0), -- First Sergeant Hola'mahi <Armor Quartermaster>
-- (@HCGUID+9, 12796, 450, 259.272, 73.8997, 25.7209, 2.34254, 180, 300, 0, 0), -- Raider Bork <Mount Quartermaster>
-- (@HCGUID+10, 12797, 450, 230.810, 86.7280, 25.8016, 6.12611, 180, 300, 0, 0), -- Grunt Korf (Activate as Flavor Npcs, as they are also present in wotlk+)
-- (@HCGUID+11, 12798, 450, 238.214, 73.3759, 25.7981, 1.18682, 180, 300, 0, 0), -- Grunt Bek'rah (Activate as Flavor Npcs, as they are also present in wotlk+)
-- (@HCGUID+12, 14581, 450, 243.532, 104.221, 25.7195, 4.85973, 180, 300, 0, 0), -- Sergeant Thunderhorn <Weapons Quartermaster>
-- TBC+
-- (@HCGUID+21, 19850, 450, 242.333, 88.3034, 24.7764, 4.9218, 180, 300, 0, 0), -- Councilor Arial D'Anastasis
-- (@HCGUID+22, 23447, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0), -- Sergeant Kien <Armor Quartermaster>
-- (@HCGUID+23, 24520, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0), -- Doris Volanthius <Armor Quartermaster>
-- Sergeant Thunderhorn 24667
-- Lady Palanseer 24668
-- Sergeant Thunderhorn 26396
-- Lady Palanseer 26397
-- (@HCGUID+24, 26398, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0); -- Doris Volanthius <Armor Quartermaster>

-- WotLK+
-- Captain O'Neal <Jewelcrafting Quartermaster> 32379
-- Captain O'Neal <Jewelcrafting Quartermaster> 34079
-- Captain O'Neal <Jewelcrafting Quartermaster> 34080
-- Captain O'Neal <Jewelcrafting Quartermaster> 34081

-- Lieutenant Tristia <Veteran Armor Quartermaster> 32380
-- Lieutenant Tristia <Veteran Armor Quartermaster> 34076
-- Lieutenant Tristia <Veteran Armor Quartermaster> 34077
-- Lieutenant Tristia <Veteran Armor Quartermaster> 34078

-- Captain Dirgehammer <Apprentice Armor Quartermaster> 32381
-- Captain Dirgehammer <Apprentice Armor Quartermaster> 34073
-- Captain Dirgehammer <Apprentice Armor Quartermaster> 34074
-- Captain Dirgehammer <Apprentice Armor Quartermaster> 34075

-- Lady Palanseer <Jewelcrafting Quartermaster> 32382
-- Lady Palanseer <Jewelcrafting Quartermaster> 34039
-- Lady Palanseer <Jewelcrafting Quartermaster> 34040
-- Lady Palanseer <Jewelcrafting Quartermaster> 34043

-- Sergeant Thunderhorn <Apprentice Armor Quartermaster> 32383
-- Sergeant Thunderhorn <Apprentice Armor Quartermaster> 34036
-- Sergeant Thunderhorn <Apprentice Armor Quartermaster> 34037
-- Sergeant Thunderhorn <Apprentice Armor Quartermaster> 34038

-- Doris Volanthius <Veteran Armor Quartermaster> 32385
-- Doris Volanthius <Veteran Armor Quartermaster> 34058
-- Doris Volanthius <Veteran Armor Quartermaster> 34059
-- Doris Volanthius <Veteran Armor Quartermaster> 34060

-- Knight-Lieutenant Moonstrike <Armor Quartermaster> 32834
-- Knight-Lieutenant Moonstrike <Armor Quartermaster> 34082
-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> 34083
-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> 34084

-- Blood Guard Zar'shi <Armor Quartermaster> 32832
-- Blood Guard Zar'shi <Northrend Armor Quartermaster> 34061
-- Blood Guard Zar'shi <Northrend Armor Quartermaster> 34062
-- Blood Guard Zar'shi <Northrend Armor Quartermaster> 34063

-- Sergeant Kien <Jewelcrafting Quartermaster> 32384 ???

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@AOGUID+1, 176371, 449, 0.955410480499267578, -5.70585489273071289, 5.482604026794433593, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707107007503509521, 180, 300),
(@AOGUID+2, 176372, 449, -0.98827487230300903, -1.42821311950683593, 5.482604026794433593, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+3, 176373, 449, 3.012539148330688476, -3.59733366966247558, 5.482604026794433593, 3.089232683181762695, 0, 0, 0.999657332897186279, 0.026176948100328445, 180, 300),
(@AOGUID+4, 176374, 449, -2.82573175430297851, -3.58956217765808105, 5.482604026794433593, -0.03490565717220306, 0, 0, -0.01745194196701049, 0.999847710132598876, 180, 300),
(@AOGUID+5, 176375, 449, -1.02899158000946044, -5.617584228515625, 5.482604026794433593, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707107007503509521, 180, 300),
(@AOGUID+6, 176376, 449, 0.886589109897613525, -1.41003787517547607, 5.482604026794433593, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+7, 176377, 449, 1.447737812995910644, 36.51779556274414062, 1.060976982116699218, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+8, 176378, 449, -2.75262212753295898, 36.49962234497070312, 1.060976982116699218, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+9, 176379, 449, -0.59116721153259277, 36.51779556274414062, 1.060976982116699218, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+10, 176380, 449, 8.186553001403808593, 30.15225601196289062, 1.060976982116699218, 3.141592741012573242, 0, 0, 1, -0.00000004371138828, 180, 300),
(@AOGUID+11, 176381, 449, 8.204728126525878906, 27.99079513549804687, 1.060976982116699218, 3.141592741012573242, 0, 0, 1, -0.00000004371138828, 180, 300),
(@AOGUID+12, 176382, 449, 8.204729080200195312, 25.95189285278320312, 1.060976982116699218, 3.141592741012573242, 0, 0, 1, -0.00000004371138828, 180, 300),
(@AOGUID+13, 176383, 449, -9.00712776184082031, 25.91104316711425781, 1.060976982116699218, 0, 0, 0, 0.000000043711388286, 1, 180, 300),
(@AOGUID+14, 176384, 449, -9.02530384063720703, 28.07249832153320312, 1.060976982116699218, 0, 0, 0, 0.000000043711388286, 1, 180, 300),
(@AOGUID+15, 176385, 449, -9.02530384063720703, 30.11140251159667968, 1.060976982116699218, 0, 0, 0, 0.000000043711388286, 1, 180, 300),
(@AOGUID+16, 176386, 449, 7.123021125793457031, 12.03599834442138671, -0.24433700740337371, -0.01745413243770599, 0, 0, -0.00872695539146661, 0.999961912631988525, 180, 300),
(@AOGUID+17, 176387, 449, 6.8272705078125, 6.826453685760498046, -0.24433700740337371, 0.191986888647079467, 0, 0, 0.095846086740493774, 0.995396137237548828, 180, 300),
(@AOGUID+18, 176388, 449, -4.75978851318359375, 14.60685253143310546, -0.24433700740337371, 1.762783288955688476, 0, 0, 0.77162480354309082, 0.63607800006866455, 180, 300),
(@AOGUID+19, 176575, 449, -2.51993966102600097, -2.90728116035461425, 0, -1.57079565525054931, 0, 0, -0.70710653066635131, 0.707107007503509521, 180, 300),
(@AOGUID+20, 179706, 449, 0.097742997109889984, 29.08226203918457031, 2.43142104148864746, -1.64060950279235839, 0, 0, 0.731353700160980224, -0.68199831247329711, 180, 300),

(@HOGUID+1, 176566, 450, 206.649, 66.0756, 25.4049, 3.60411, 0, 0, -0.973379, 0.229201, 180, 300),
(@HOGUID+2, 176567, 450, 251.4891967773437500, 94.47144317626953125, 25.82601547241210937, 0.968657314777374267, 0, 0, 0.465614318847656250, 0.884987771511077880, 180, 300),
(@HOGUID+3, 176568, 450, 255.7041778564453125, 85.47332763671875000, 25.82601356506347656, 5.715955257415771484, 0, 0, -0.27982807159423828, 0.960050106048583984, 180, 300),
(@HOGUID+4, 176569, 450, 252.4973754882812500, 76.74610137939453125, 25.82601547241210937, 5.000368118286132812, 0, 0, -0.59832477569580078, 0.801253676414489746, 180, 300),
(@HOGUID+5, 176570, 450, 242.5849456787109375, 97.20764160156250000, 25.82601547241210937, 1.195548772811889648, 0, 0, 0.562804222106933593, 0.826590240001678466, 180, 300),
(@HOGUID+6, 176571, 450, 230.5503997802734375, 83.68984222412109375, 25.79817581176757812, 1.195548772811889648, 0, 0, 0.562804222106933593, 0.826590240001678466, 180, 300),
(@HOGUID+7, 176572, 450, 235.8290710449218750, 74.55625152587890625, 25.79817390441894531, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305, 180, 300),
(@HOGUID+8, 179707, 450, 242.9784851074218750, 87.13777160644531250, 25.80420875549316406, 4.904376029968261718, 0, 0, -0.63607788085937500, 0.771624863147735595, 180, 300);

-- INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- (@ACGUID+22, 54), -- Lieutenant Tristia - Arena PvP Season 2
-- (@ACGUID+23, 55), -- Lieutenant Tristia - Arena PvP Season 3
-- (@ACGUID+24, 56), -- Lieutenant Tristia - Arena PvP Season 4

-- (@HCGUID+22, 54), -- Sergeant Kien - Arena PvP Season 2
-- (@HCGUID+23, 55), -- Doris Volanthius - Arena PvP Season 3
-- (@HCGUID+24, 56); -- Doris Volanthius - Arena PvP Season 4

-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) VALUES
-- (@ACGUID+1, 0, 0, 0, 544, 0, 0, 54), -- Captain Dirgehammer - Arena PvP Season 2
-- (@ACGUID+1, 24672, 0, 0, 0, 0, 0, 55), -- Captain Dirgehammer - Arena PvP Season 3
-- (@ACGUID+1, 26393, 0, 0, 0, 0, 0, 56), -- Captain Dirgehammer - Arena PvP Season 4

-- (@ACGUID+6, 24671, 0, 0, 0, 0, 0, 55), -- Captain O'Neal - Arena PvP Season 3
-- (@ACGUID+6, 26394, 0, 0, 0, 0, 0, 56), -- Captain O'Neal - Arena PvP Season 4

-- (@HCGUID+5, 0, 0, 0, 545, 0, 0, 54), -- Lady Palanseer - Arena PvP Season 2
-- (@HCGUID+5, 24668, 0, 0, 0, 0, 0, 55), -- Lady Palanseer - Arena PvP Season 3
-- (@HCGUID+5, 26397, 0, 0, 0, 0, 0, 56), -- Lady Palanseer - Arena PvP Season 4

-- (@HCGUID+12, 24667, 0, 0, 0, 0, 0, 55), -- Sergeant Thunderhorn - Arena PvP Season 3
-- (@HCGUID+12, 26396, 0, 0, 0, 0, 0, 56); -- Sergeant Thunderhorn - Arena PvP Season 4

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES


