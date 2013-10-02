-- Fixes based on Project Silverpine reports (Titarion) and some of the fixes by Titarion

/* Improved the zoning coordinates into Blackwing Lair
   Source: http://www.youtube.com/watch?v=AWE1tHKjguk&t=4m25s
*/
UPDATE `areatrigger_teleport` SET `target_position_x` = -7666.23, `target_position_y` = -1102.79, `target_position_z` = 399.68, `target_orientation` = 0.601256 WHERE `id` = 3726;  

/* Changes to NPC Argent Sentry, Argent Rider, Argent Defender and Cenarion Hold Infantry:
   Minimum Level and Maximum Level changed to 60 (Argent Sentry, Argent Rider)
   Rank changed to Elite (Argent Sentry, Argent Rider)
   Health Points are increased to 8100 for the Argent Rider and 12150 for the Argent Sentry
   unit_flags set to not be passive (for Argent Sentry, Argent Defender and Cenarion Hold Infantry. Argent Riders are only aggravated when hit by AoE spells(requires additional information) or unless you have the weapon: Corrupted Ashbringer equipped)
   Changed MovementType of Argent Rider to Waypoint
   Changed the affiliation of Argent Defender to <The Argent Dawn>
   Removed the quest giver flag from Argent Defenders
   Increased the damage output of Argent Sentries and Argent Riders by a fairly large margin
*/

-- Argent Sentry
UPDATE `creature_template` SET `minlevel` = 60, `rank` = 1, `dmg_multiplier` = 4.6, `unit_flags` = `unit_flags` - 512 WHERE `entry` = 16378;
-- Argent Rider
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel`= 60, `rank` = 1, `dmg_multiplier` = 4.6, `MovementType` = 2 WHERE `entry` = 11102;
-- Argent Defender
UPDATE `creature_template` SET `npcflag` = 0, `unit_flags` = 32768 WHERE `entry` = 11194;
-- Cenarion Hold Infantry
UPDATE `creature_template` SET `npcflag` = 0, `unit_flags` = `unit_flags` - 512 WHERE `entry` = 15184;


/* NOTE: These NPCs may require further improvements and adjustments, such as damage values and possibly Health Points.
         Additionally, according to the videos below, Argent Sentries are either calling for help or are linked with one another.
         These are the most powerful guards in the game.
         See http://project-silverpine.com/devwiki/index.php?title=Creature_template#attackpower

Sources: http://www.youtube.com/watch?v=31rO2OCTNPo
         http://www.youtube.com/watch?v=cihEAa6jQNo
         http://www.youtube.com/watch?v=YDCpZ5mFKII
         http://old.wowhead.com/npc=16378#comments:id=820794
         http://old.wowhead.com/npc=11102#comments:id=765721
         http://www.wowhead.com/npc=11194#comments:id=1313446
*/

/* Added Invisibility and Stealth Detection aura to some Neutral guards
   Source: http://www.wow-europe.com/en/patchnotes/patch-1120.html See "World Environment"
*/
UPDATE `creature_addon` SET `auras` = '18950' WHERE `guid` IN (19470, 19487, 19488, 19489, 19490, 19503, 19504, 19505, 19506, 76, 77, 160, 161, 162, 163, 164, 165, 178, 182, 589, 590, 591, 592, 593, 594, 596, 597, 598, 599, 649, 650, 651, 652, 653, 654, 655, 656, 657, 679, 680, 681, 682, 683, 686, 687, 688, 689, 692, 693, 694, 695, 696, 697, 698, 699, 700, 715, 716, 717, 718, 719, 2164, 2167, 23560, 23561, 23562, 23563, 23564, 23565, 23566, 23567, 23568, 23569, 23570, 23571, 23572, 23573, 23574, 23575, 23576, 23577, 23578, 23579, 23580, 23581, 23582, 23583, 23584, 23585, 23586, 23587, 23588, 23589, 23590, 23591, 23592, 23593, 23594, 23595, 23596, 24664, 24665, 42278, 42279, 42280, 42281, 42282, 42283, 42284, 42285, 42286, 42287, 42288, 42289, 42290, 42291, 42292, 42293, 42294, 42295);
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` IN (3502, 4624, 9460, 11190);

-- Adjusted the Z axis of Mountaineer Cragg
UPDATE `creature` SET `position_z` = 349.380 WHERE `id` = 2509;
-- Adjusted the Z axis of Mountaineer Swarth
UPDATE `creature` SET `position_z` = 349.883 WHERE `id` = 2518;

/* Added randomized movement for the following NPCs:
Mountaineer Bludd
Mountaineer Fazgard
Mountaineer Haggil
Mountaineer Harn
Mountaineer Kamdar
Mountaineer Morlic
Mountaineer Roghan
Mountaineer Uthan
Mountaineer Cragg
Mountaineer Swarth
*/
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5 WHERE `id` IN (2511, 2518, 2509, 2515, 2528, 2506, 2516, 2526, 2512, 2507);
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (2511, 2518, 2509, 2515, 2528, 2506, 2516, 2526, 2512, 2507);

/* The following Commanders and Lieutenants are now properly mounted:
Commander Mortimer
Lieutenant Spencer
Lieutenant Stouthandle
Lieutenant Mancuso
Lieutenant Stronghoof
Lieutenant Rugba
Lieutenant Greywand
Lieutenant Largent
Commander Malgor
Lieutenant Vol'talar
Lieutenant Lewis
*/
DELETE FROM `creature_template_addon` WHERE `entry` IN (13318, 13138, 13297, 13300, 13143, 13137, 13298, 13296, 13152, 13144, 13147);
INSERT INTO `creature_template_addon` VALUES
(13318, 14577, 0, 1, 16, 0, 0, NULL),
(13138, 14337, 0, 1, 16, 0, 0, NULL),
(13297, 14577, 0, 1, 16, 0, 0, NULL),
(13300, 14337, 0, 1, 16, 0, 0, NULL),
(13143, 14348, 0, 1, 16, 0, 0, NULL),
(13137, 14334, 0, 1, 16, 0, 0, NULL),
(13298, 14372, 0, 1, 16, 0, 0, NULL),
(13296, 14337, 0, 1, 16, 0, 0, NULL),
(13152, 14334, 0, 1, 16, 0, 0, NULL),
(13144, 14388, 0, 1, 16, 0, 0, NULL),
(13147, 10671, 0, 1, 16, 0, 0, NULL);

-- Mountaineer Boombellow is now passive towards players, unless attacked
--  Source: http://old.wowhead.com/npc=13797#comments:id=327892
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|(512+8) WHERE `entry` = 13797;

/* The Zeppelin Master, Hin Denburg, is not classified as Elite 
   Source: http://old.wowhead.com/npc=3150
*/
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` = 3150;

/* Linked missing npc text to Decedra Willham
   Source: http://www.wowpedia.org/Decedra_Willham
*/
DELETE FROM `gossip_menu` WHERE `entry` = 4357;
INSERT INTO `gossip_menu` VALUES
(4357, 5579, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id` = 4357 WHERE `entry` = 12716;

-- Linked missing npc text to Mupsi Shacklefridd
DELETE FROM `gossip_menu` WHERE `entry` = 7237;
INSERT INTO `gossip_menu` VALUES
(7237, 8537, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id` = 7237 WHERE `entry` = 16418;

/* Changed Monstrous Crawler's InhabitType to permit combat in the water
   Source: http://old.wowhead.com/npc=1088/monstrous-crawler#comments
*/
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 1088;

-- Set 'The Last Barov (5342)' to be Horde-only
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 5342;

/* Removed Lieutenant Doren's mount
   Source: http://www.wowwiki.com/Lieutenant_Doren?oldid=317495
*/
UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 469;
-- Removed passive flag
UPDATE `creature_template` SET `unit_flags` = 36864 WHERE `entry` = 469;

/* Removed Mana Points from all Rogue Trainers.
   Sources: http://www.youtube.com/watch?v=ZFuaZVM_5Ik
            http://www.wowpedia.org/index.php?title=Rogue_trainers&oldid=410531
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (915, 916, 917, 918, 1234, 1411, 2122, 2130, 3155, 3170, 3327, 3328, 3401, 3594, 3599, 4163, 4214, 4215, 4582, 4583, 4584, 5165, 5166, 5167, 13283);    
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `subname` = 'Rogue Trainer';

/* Removed Mana Points from all Auctioneers.
   Source: http://www.youtube.com/watch?v=mHm-1tAsWuo
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (8661, 8669, 8670, 8671, 8672, 8673, 8674, 8719, 8720, 8721, 8722, 8723, 8724, 9856, 9857, 9859, 15659, 15675, 15676, 15678, 15679, 15682, 15683, 15684, 15686);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` IN (8661, 8669, 8670, 8671, 8672, 8673, 8674, 8719, 8720, 8721, 8722, 8723, 8724, 9856, 9857, 9859, 15659, 15675, 15676, 15678, 15679, 15682, 15683, 15684, 15686);

/* Changed the Min. Level of the quest 'The Scepter of Celebras' to 41, down from 43.
   Source: http://www.wowpedia.org/index.php?title=Quest:The_Scepter_of_Celebras&oldid=677982
*/
UPDATE `quest_template` SET `MinLevel` = 41 WHERE `entry` = 7046;

/* Removed Mana Points from Cenarion Outrider
   Source: http://www.wowpedia.org/Cenarion_Outrider
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 15545;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 15545;

/* Changes to Silverpine Deathguard:
   Removed Mana Points.
   Source: http://www.wowpedia.org/Silverpine_Deathguard
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 7489;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 7489;

/* Changes to Corporal Teeka Bloodsnarl:
   Changed level to 56 - 57, up from 54.
   Sources: http://www.wowwiki.com/Teeka_Bloodsnarl
            http://project-zero.eu/images/gallery/WoWScrnShot_082506_190115.jpg
*/
UPDATE `creature_template` SET `minlevel` = 56, `maxlevel` = 57 WHERE `entry` = 13776;

