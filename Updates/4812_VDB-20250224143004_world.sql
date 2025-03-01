-- Add your query below.

-- Mrs. Winters 2134
UPDATE `creature` SET `position_x` = 2253.34,  `position_y` = 270.22,  `position_z` = 34.8849,  `orientation` = 4.14647, `spawndist` = 1.15, `movementtype` = 1 WHERE `guid` = 38291 AND `id` = 2134; -- https://www.wowhead.com/classic/npc=2134/mrs-winters

-- Lillith Nefara 1946 - https://www.youtube.com/watch?v=TBycYjFiHVM
UPDATE `dbscripts_on_quest_end` SET `delay` = 1000, `x` = 2472.19, `y` = 15.7446, `z` = 24.406, `o` = 0.316845, `comments` = 'Spawn Lillith Nefara 1946' WHERE `id` = 410;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 410 AND `command` = 26;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(410, 1000, 1, 26, 0, 0, 0, 1946, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lillith Nefara - Attack Player');

-- Devlin Agamand Random OOC Texts
DELETE FROM `dbscript_random_templates` WHERE `id` = 912;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(912, 0, 568, 0, 'Devlin Agamand (1657) - Random OOC Texts'), -- I am the head of the family.  Me.  ME!!!
(912, 0, 569, 0, 'Devlin Agamand (1657) - Random OOC Texts'), -- I'm cold, lord.  When will you keep your promise?
(912, 0, 570, 0, 'Devlin Agamand (1657) - Random OOC Texts'), -- My family hates me.  Frightened idiots, all of them!
(912, 0, 571, 0, 'Devlin Agamand (1657) - Random OOC Texts'), -- Father?  Are you proud of me now? HAHAH!
(912, 0, 572, 0, 'Devlin Agamand (1657) - Random OOC Texts'), -- Mother, oh mother.  You should have listened to me...
(912, 0, 573, 0, 'Devlin Agamand (1657) - Random OOC Texts'); -- Thurman my brother, who's laughing now?  Hah!

-- Devlin Agamand
SET @ENTRY := 1657;
UPDATE `creature` SET `position_x` = 2631.66,  `position_y` = 899.199,  `position_z` = 112.134,  `orientation` = 0, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 44611 AND `id` = 1657;
UPDATE `creature` SET `spawndist`=0, `movementtype`=2 WHERE `id`=@ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@ENTRY, 1, 2582.32, 884.58, 102.23, 100, 1, 165701),
(@ENTRY, 2, 2631.66, 899.19, 112.13, 100, 1, 165702);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 165701;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `comments`) VALUES
(165701, 0, 20, 1, 10, 20000, 12, 'Devlin Agamand - MovementType 1, Spawndist 10, 20secs'),
(165701, 20000, 0, 912, 0, 0, 0, 'Devlin Agamand - Random OOC Texts');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 165702;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `comments`) VALUES
(165702, 0, 20, 1, 10, 15000, 12, 'Devlin Agamand - MovementType 1, Spawndist 10, 15secs');

-- https://github.com/cmangos/classic-db/commit/17381ec2e4643f37f8c423f22423e632d23f969a
UPDATE `creature` SET `position_x` = 1764.09,  `position_y` = 1384.35,  `position_z` = 92.6039,  `orientation` = 5.44543, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 44986 AND `id` = 1667;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 1667;
DELETE FROM `creature_movement_template` WHERE `entry`= 1667;

-- Meven Korgal Random OOC Texts - seemingly not
-- DELETE FROM `dbscript_random_templates` WHERE `id` = 913;
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
-- (913, 0, 370, 0, 'Meven Korgal (1667) - Random OOC Texts'), -- We must be vigilant to eradicate this plague!
-- (913, 0, 371, 0, 'Meven Korgal (1667) - Random OOC Texts'), -- Keep up the good work.  This scourge will be cleansed!
-- (913, 0, 372, 0, 'Meven Korgal (1667) - Random OOC Texts'), -- The Scarlet Crusade will scour these lands!
-- (913, 0, 373, 0, 'Meven Korgal (1667) - Random OOC Texts'); -- Let none with the foul taint of plague live!

-- Caretaker Caice Random OOC Texts
DELETE FROM `dbscript_random_templates` WHERE `id` = 913;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(913, 0, 583, 0, 'Caretaker Caice (2307) - Random OOC Texts'), -- Your undeath is not the end of your life, but the beginning. It is up to you to decide where your fate lies now.
(913, 0, 584, 0, 'Caretaker Caice (2307) - Random OOC Texts'), -- You are free of His control. And while you will be judged by lesser beings, at least you have chances that the Scourge do not!
(913, 0, 585, 0, 'Caretaker Caice (2307) - Random OOC Texts'), -- Terror, darkness, power? The Forsaken crave not these things; the Forsaken ARE these things.
(913, 0, 586, 0, 'Caretaker Caice (2307) - Random OOC Texts'); -- My bones are weak, my eyes see only darkness, and my body feels only pain; but these things are good because my will is my own.

-- Caretaker Caice 2307 Movement
UPDATE `creature` SET `spawndist` = 1, `MovementType` = 1 WHERE `guid` = 31915 AND `id` = 2307;

UPDATE `creature_template` SET `SpellList` = 428001 WHERE `entry`='4280'; -- https://www.wowhead.com/classic/npc=4280/scarlet-preserver
UPDATE `creature_template` SET `SpellList` = 428501 WHERE `entry`='4285'; -- https://www.wowhead.com/classic/npc=4285/scarlet-disciple

DELETE FROM creature_template_spells WHERE `entry` IN (4280,4285);
DELETE FROM creature_cooldowns WHERE `entry` IN (4280,4285);

-- SpellLists
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (428001,428501);
DELETE FROM `creature_spell_list` WHERE `Id` IN (428001,428501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(428001, 'Tirisfal Glades - Scarlet Preserver', 75, 0),
(428501, 'Tirisfal Glades - Scarlet Disciple', 75, 75);

INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('428001','4280','0','0','100','1025','3000','5000','7000','12000','0','0','11','13953','1','0','0','0','0','0','0','0','0','0','Scarlet Preserver - Cast Holy Strike'),
-- ('428002','4280','14','0','100','1025','500','40','12000','18000','0','0','11','13952','12','0','0','0','0','0','0','0','0','0','Scarlet Preserver - Cast Holy Light on Friendly Missing HP'),
(428001, 3, 1042, 0, -1, 201, 0, 100, 1, 0, 5000, 10000, 20000, 'Scarlet Preserver - Holy Light - Missing 50% including self'), -- s.13952 tbc+
(428001, 4, 13953, 0, -1, 1, 0, 100, 1, 1000, 5000, 7000, 12000, 'Scarlet Preserver - Holy Strike - current'),
-- Scarlet Disciple 4285 - s.6063,8362 classic only
-- ('428504','4285','14','0','100','1025','600','40','11000','15000','0','0','11','6063','12','0','0','0','0','0','0','0','0','0','Scarlet Disciple - Cast Heal on Friendly Missing HP'),
-- ('428505','4285','14','0','100','1025','300','40','18000','21000','0','0','11','8362','12','0','0','0','0','0','0','0','0','0','Scarlet Disciple - Cast Renew on Friendly Missing HP'),
-- ('428506','4285','9','0','100','1025','0','40','3400','4800','0','0','11','9734','1','256','0','0','0','0','0','0','0','0','Scarlet Disciple - Cast Holy Smite'),
(428501, 0, 9734, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Disciple - Holy Smite'),
(428501, 1, 6063, 0, -1, 201, 0, 100, 1, 3000, 9000, 10000, 20000, 'Scarlet Disciple - Heal - Missing 50% including self'), -- s.11642 tbc+
(428501, 2, 8362, 0, -1, 206, 0, 100, 1, 5000, 15000, 18000, 21000, 'Scarlet Disciple - Renew - Missing 25% including self'); -- s.11640 tbc+

UPDATE `creature_spell_list` SET `InitialMin`=2000 WHERE `Id`=153801 AND `Position`=0; -- Tirisfal Glades - Scarlet Friar - Lesser Heal (Rank 2) on Friendly Missing 50% including self

-- Pathing for Preserver [Entry 4280] - strange path into wall?
SET @GUID := 38372;
UPDATE `creature` SET `spawndist`=0, `movementtype`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@GUID, 1, 2927.040, -760.854, 154.03599, 2.373650, 60000, 0), -- current spawn - incomplete path
(@GUID, 2, 2932.429, -774.015, 154.10699, 100, 0, 0),
(@GUID, 3, 2945.649, -769.966, 154.00500, 0.31045, 60000, 0), -- -> moves to 2959.290039 -798.077026 153.867996 (lots of Preserver spawns at that location inside texture) wtf?
(@GUID, 4, 2947.850, -766.197, 153.93100, 100, 0, 0),
(@GUID, 5, 2932.770, -765.401, 154.06199, 100, 0, 0);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (38373, 4280); -- 4281,4282

UPDATE `creature` SET `id` = 0 WHERE `guid` = 41919;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (41919, 4280),(41919, 4281),(41919, 4282); -- 4282 static

UPDATE `creature` SET `id` = 0 WHERE `guid` = 45112;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (45112, 4280),(45112, 4281),(45112, 4282); -- 4282 static

DELETE FROM `creature_spawn_entry` WHERE `guid` = 44904 AND `entry` = 4281;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (44900, 4282); -- 4280,4281

UPDATE `creature` SET `id` = 0 WHERE `guid` = 41920;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (41920, 4280),(41920, 4281),(41920, 4282); -- 4282 static

UPDATE `creature` SET `id` = 0 WHERE `guid` = 45198;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (45198, 4280),(45198, 4281),(45198, 4282); -- 4282 static

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (30041, 4280); -- 4281,4282

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (45089, 4280); -- 4281,4282

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (44525, 4280); -- 4281,4282

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (45165, 4280); -- 4281,4282

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (45085, 4280); -- 4281,4282

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (41918, 4280); -- 4281,4282

-- 45096 scout only with path (missing)
DELETE FROM `creature_spawn_entry` WHERE `guid` = 45096 AND `entry` = 4282;

DELETE FROM `creature` WHERE `guid` IN (30029,30030) AND `id` IN (4281,0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Zone: 85 (Tirisfal Glades) Area: 160 (Whispering Gardens)
(30029, 4281, 0, 2721.129, -745.224, 136.356, 0, 300, 300, 10, 1),
(30030, 0, 0, 2811.959, -744.315, 142.636, 0, 300, 300, 10, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (30030, 4280),(30030, 4281),(30030, 4282);

-- classic only
UPDATE `creature_spell_list` SET `SpellId`=1042 WHERE `Id`=428005 AND `Position`=3; -- old spell

-- End of migration.

