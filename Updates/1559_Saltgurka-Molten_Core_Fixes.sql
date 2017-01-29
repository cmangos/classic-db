-- Thanks to malcrom for providing movement data: https://github.com/cmangos/issues/issues/892#issuecomment-270154679  /  http://pastebin.com/U87kY1UR

-- ************************
-- MISC
-- ************************
-- Add the circle fire animation to Rune of Zeth
DELETE FROM `gameobject` WHERE `guid`=113269;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
('113269', '178188', '409', '748.839', '-985.16', '-178.283', '3.14159', '0', '0', '-1', '0', '604800', '255', '1');

-- Sulfuron Harbinger followers should not respawn while boss is dead
UPDATE `creature_linking_template` SET `flag`=1031 WHERE `master_entry`=12098 AND `entry`=11662; -- Old flag: 7

-- Gehennas followers should not respawn while boss is dead
UPDATE `creature_linking_template` SET `flag`=1031 WHERE `master_entry`=12259 AND `entry`=11661; -- Old flag: 7

-- ************************
-- Garr movement/linking fixup
-- ************************
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `guid`=56609; -- Garr
UPDATE `creature` SET `position_x`=684.192,`position_y`=-506.928,`position_z`=-214.424,`orientation`=3.73863 WHERE `guid`=56627; -- Firesworn

-- Firesworn follows Garr. To be blizzlike they should remain in a perfect circle around him at all times, but that's not possible with the current linking system
UPDATE `creature_linking_template` SET `flag`=1543 WHERE `entry`=12099 AND `master_entry`=12057; -- Old flag: 7

-- ************************
-- Core Hounds
-- ************************
-- Pathing for Ancient Core Hound Entry: 11673 'TDB FORMAT' 
-- Original had duplicate points
SET @GUID := 56853;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@GUID,1,1040.764,-815.1115,-152.1656,0),
(@GUID,2,1051.314,-799.6896,-151.9713,0),
(@GUID,3,1039.667,-791.0968,-151.0096,0),
(@GUID,4,1026.315,-767.8003,-156.6493,0),
(@GUID,5,1038.774,-761.6977,-152.658,0),
(@GUID,6,1064.627,-748.9409,-151.7516,0),
(@GUID,7,1038.774,-761.6977,-152.658,0),
(@GUID,8,1024.332,-768.7155,-156.9002,0),
(@GUID,9,1039.641,-791.0518,-150.9892,0),
(@GUID,10,1051.314,-799.6896,-151.9713,0);

-- Pathing for Ancient Core Hound Entry: 11673 'TDB FORMAT' 
-- Original one had some duplicate points
SET @GUID := 56856;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@GUID,1,706.5988,-608.756,-209.7862,0),
(@GUID,2,694.3823,-643.1285,-209.7859,0),
(@GUID,3,691.9941,-667.7454,-209.6549,0),
(@GUID,4,712.6238,-699.4688,-209.7263,0),
(@GUID,5,696.8894,-727.3798,-209.4279,0),
(@GUID,6,672.7046,-770.8894,-209.0702,0),
(@GUID,7,696.8894,-727.3798,-209.4279,0),
(@GUID,8,712.6238,-699.4688,-209.7263,0),
(@GUID,9,691.9941,-667.7454,-209.6549,0);

-- Pathing for Ancient Core Hound Entry: 11673 'TDB FORMAT' 
-- At the second resting area it should be moving around "randomly" on the spot. It didn't on the old path.
SET @GUID := 56851;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`) VALUES
(@GUID,1,1144.05,-662.6844,-131.46260,0,0),
(@GUID,2,1160.286,-696.8795,-132.48630,0,0),
(@GUID,3,1129.031,-721.049,-139.58040,0,0),
(@GUID,4,1118.512,-712.1383,-144.25850,0,0),
(@GUID,5,1104.687,-722.1303,-146.98320,0,0),
(@GUID,6,1090.824,-731.3634,-149.98680,0,0),
(@GUID,7,1070.791,-717.5623,-153.48310,0,0),
(@GUID,8,1080.754,-681.5721,-159.87260,0,0),
(@GUID,9,1081.626,-681.3043,-159.6755,100,12000),
(@GUID,10,1079.369,-678.5401,-160.8983,100,10000),
(@GUID,11,1081.374,-680.3018,-159.9551,100,1000),
(@GUID,12,1080.824,-681.4283,-159.8819,100,2000),
(@GUID,13,1081.491,-679.0739,-160.1742,100,1000),
(@GUID,14,1079.343,-678.3975,-160.9352,100,5000),
(@GUID,15,1081.436,-676.3215,-160.7577,100,8000),
(@GUID,16,1080.754,-681.5721,-159.8726,100,1000),
(@GUID,17,1077.228,-678.6388,-161.4971,100,1000),
(@GUID,18,1077.687,-678.7886,-161.3334,100,1000),
(@GUID,19,1079.716,-679.3854,-160.6235,100,10000),
(@GUID,20,1081.338,-682.8629,-159.4373,100,10000),
(@GUID,21,1079.463,-680.3129,-160.5056,100,1000),
(@GUID,22,1080.754,-681.5721,-159.8726,100,1000),
(@GUID,23,1080.708,-679.2873,-160.3567,100,1000),
(@GUID,24,1082.191,-681.9566,-159.3777,100,9000),
(@GUID,25,1079.69,-678.5046,-160.8126,100,8000),
(@GUID,26,1080.177,-679.1766,-160.5332,100,1000),
(@GUID,27,1078.341,-677.3896,-161.4327,100,9000),
(@GUID,28,1079.791,-676.366,-161.2243,100,1000),
(@GUID,29,1078.341,-677.3896,-161.4327,100,1000),
(@GUID,30,1081.163,-683.5833,-159.3395,100,7000),
(@GUID,31,1080.636,-682.1011,-159.7975,100,1000),
(@GUID,32,1081.985,-678.5395,-160.1417,100,2000),
(@GUID,33,1081.526,-679.8784,-159.9983,100,1000),
(@GUID,34,1080.778,-681.3652,-159.9082,100,1000),
(@GUID,35,1079.221,-677.4147,-161.1729,100,1000),
(@GUID,36,1079.501,-678.1235,-160.946,100,2000),
(@GUID,37,1080.827,-681.6636,-159.8325,100,6000),
(@GUID,38,1085.063,-680.338,-158.8806,100,8000),
(@GUID,39,1079.092,-677.261,-161.242,100,1000),
(@GUID,40,1079.541,-677.6991,-161.0217,100,1000),
(@GUID,41,1081.284,-682.4361,-159.5412,100,2000),
(@GUID,42,1080.757,-681.0048,-159.9885,100,1000),
(@GUID,43,1083.066,-680.2807,-159.4699,100,6000),
(@GUID,44,1081.552,-677.1035,-160.5629,100,1000),
(@GUID,45,1081.611,-680.4688,-159.852,100,11000),
(@GUID,46,1080.048,-679.4224,-160.5198,100,7000),
(@GUID,47,1082.761,-681.9189,-159.2203,100,11000),
(@GUID,48,1078.952,-678.8635,-160.9521,100,8000),
(@GUID,49,1081.18,-681.5133,-159.7614,100,1000),
(@GUID,50,1080.676,-681.3997,-159.9307,100,11000),
(@GUID,51,1078.617,-679.6107,-160.8951,100,1000),
(@GUID,52,1081.279,-680.4371,-159.9548,100,1000),
(@GUID,53,1078.764,-677.3422,-161.3203,100,1000),
(@GUID,54,1080.66,-681.4279,-159.9294,100,2000),
(@GUID,55,1080.101,-708.452,-154.2289,100,1000),
(@GUID,56,1084.528,-731.8951,-151.01180,0,0),
(@GUID,57,1093.696,-748.0836,-149.26190,0,0),
(@GUID,58,1110.641,-738.1426,-146.50050,0,0),
(@GUID,59,1115.694,-716.585,-144.63470,0,0),
(@GUID,60,1148.22,-713.5815,-132.9880,0,0),
(@GUID,61,1161.699,-694.4932,-132.20030,0,0),
(@GUID,62,1149.113,-669.7729,-130.33960,0,0),
(@GUID,63,1142.684,-647.411,-131.92330,0,0),
(@GUID,64,1142.684,-647.411,-131.9233,1.53589,100000);

-- ************************
-- Baron Geddon
-- ************************

-- Pathing for Baron Geddon Entry: 12056 'TDB FORMAT' 
-- He had incorrect points and he wasn't running
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(5665501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(5665501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Baron Geddon - Run');

-- Change his movement speed to the values from tbc-db
-- Judging from my observations from retail he is always in runmode (you can see his animation is slightly different), and classic-db's SpeedRun=3,15 was too fast
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=2.28571;

SET @ENTRY := 12056;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=56655;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@ENTRY,1,747.5466,-981.676,-178.401,0,0,5665501),
(@ENTRY,2,739.986,-953.2151,-185.7548,0,0,0),
(@ENTRY,3,716.3201,-910.8809,-193.1546,0,0,0),
(@ENTRY,4,701.403,-887.8356,-199.5063,0,0,0),
(@ENTRY,5,675.8235,-847.7932,-208.2585,0,0,0),
(@ENTRY,6,639.0753,-830.6404,-208.4202,0,0,0),
(@ENTRY,7,611.1107,-828.0424,-207.401,0,0,0),
(@ENTRY,8,591.2252,-811.5459,-205.4029,0,0,0),
(@ENTRY,9,608.8426,-787.6771,-207.4771,0,0,0),
(@ENTRY,10,643.6417,-778.0462,-208.7169,0,0,0),
(@ENTRY,11,664.3234,-786.412,-208.9517,0,0,0),
(@ENTRY,12,661.6707,-816.6882,-208.705,0,0,0),
(@ENTRY,13,678.5975,-847.099,-208.2891,0,0,0),
(@ENTRY,14,699.6382,-878.082,-201.5386,0,0,0),
(@ENTRY,15,718.3248,-907.4992,-193.3159,0,0,0),
(@ENTRY,16,740.3997,-949.3792,-186.3494,0,0,0),
(@ENTRY,17,746.6027,-966.5585,-181.5636,0,0,0);

-- ************************
-- Lucifron
-- ************************

-- Pathing for Lucifron Entry: 12118 'TDB FORMAT'
-- Fixed spawnpoint. For some reason his followers refuse to stay close to him even if their respawn coordinates are right next to him. Not sure why. I guess it's an issue in classic core linking system?
SET @ENTRY := 12118;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1037.022,`position_y`=-986.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56605; -- Lucifron
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=1033.022,`position_y`=-986.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56606; -- Flamewaker Protector 1
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=1037.022,`position_y`=-982.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56607; -- Flamewaker Protector 2
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`) VALUES
(@ENTRY,1,1037.022,-986.3419,-181.5163,0,0),
(@ENTRY,2,1053.15,-990.7546,-182.6615,0,0),
(@ENTRY,3,1070.411,-1006.765,-185.5444,0,0),
(@ENTRY,4,1053.979,-989.0480,-182.5530,0,0),
(@ENTRY,5,1039.573,-983.6991,-181.3170,0,0),
(@ENTRY,6,1014.957,-977.6532,-181.2234,0,0),
(@ENTRY,7,1007.782,-958.0884,-180.174,0,0),
(@ENTRY,8,1000.203,-955.4069,-179.5825,0,0),
(@ENTRY,9,1007.782,-958.0884,-180.174,0,0),
(@ENTRY,10,1014.45,-978.5632,-181.1854,0,0);

-- The followers shouldn't respawn after Lucifron is killed
UPDATE `creature_linking_template` SET `flag`=1543 WHERE `master_entry`=@ENTRY AND `entry`=12119; -- Old flag: 519

-- ************************
-- Molten Giants/Molten Destroyers
-- ************************
-- They should all be linked in pairs
-- Note that to be blizzlike these should be pooled in some way. 
-- It should be a gradually increasing chance of being a molten destroyer the deeper you get into the instance.
-- The two packs in Garr's lair should always be two Destroyers
-- All our spawns are currently static

-- 2 Molten Giants before first bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56704);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56705,56704,3); -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO

-- 2 Molten Giants after first bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56714);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56715,56714,3);

-- 2 Molten Giants before second bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56716);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56717,56716,3);

-- First pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56747);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56748,56747,3);

-- Second pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56702);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56703,56702,3);

-- 2 Molten Giants
DELETE FROM `creature_linking` WHERE `master_guid` IN(56706);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56707,56706,3);

-- Third pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56708);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56709,56708,3);

-- Fourth pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56710);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56711,56710,3);

-- Fifth pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56718);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56719,56718,3);

-- First pack of 2 Destroyers
DELETE FROM `creature_linking` WHERE `master_guid` IN(56712);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56713,56712,3);

-- Second pack of 2 Destroyers
DELETE FROM `creature_linking` WHERE `master_guid` IN(56700);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56701,56700,3);

-- ************************
-- Flame Imps
-- ************************

-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11669);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11669);

-- First room, all these should be linked
DELETE FROM `creature_linking` WHERE `master_guid` IN(56591);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56592,56591,3),
(56593,56591,3),
(56584,56591,3),
(56590,56591,3),
(56589,56591,3),
(56588,56591,3),
(56587,56591,3),
(56586,56591,3),
(56585,56591,3);
-- Second room, right side, lone pack
DELETE FROM `creature_linking` WHERE `master_guid` IN(56604);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56603,56604,3),
(56597,56604,3),
(56602,56604,3),
(56601,56604,3),
(56599,56604,3),
(56598,56604,3),
(56596,56604,3),
(56595,56604,3),
(56594,56604,3);

-- Second room, left side. This huge sea of flame imps is divided into 3 linked packs
-- Commenting out for now. Linking them like this would pull the entire room because they are so close to each other, but they are definitely supposed to be divided into three linked packs.
-- Pack 1
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56572);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56571,56572,3),
-- (56570,56572,3),
-- (56573,56572,3),
-- (56569,56572,3),
-- (56567,56572,3),
-- (56566,56572,3),
-- (56565,56572,3),
-- (56564,56572,3),
-- (56568,56572,3);
-- -- Pack 2
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56562);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56561,56562,3),
-- (56559,56562,3),
-- (56558,56562,3),
-- (56560,56562,3),
-- (56563,56562,3),
-- (56557,56562,3),
-- (56556,56562,3),
-- (56555,56562,3),
-- (56549,56562,3);
-- -- Pack 3
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56582);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56578,56582,3),
-- (56581,56582,3),
-- (56579,56582,3),
-- (56580,56582,3),
-- (56583,56582,3),
-- (56575,56582,3),
-- (56576,56582,3),
-- (56577,56582,3),
-- (56574,56582,3);

-- ************************
-- Core Hounds
-- ************************
-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11671);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11671);

-- Pack 1
DELETE FROM `creature_linking` WHERE `master_guid` IN(56634);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56636,56634,3),
(56637,56634,3),
(56635,56634,3),
(56638,56634,3);
-- Pack 2
DELETE FROM `creature_linking` WHERE `master_guid` IN(56631);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56633,56631,3),
(56630,56631,3),
(56629,56631,3),
(56632,56631,3);
-- Pack 3
DELETE FROM `creature_linking` WHERE `master_guid` IN(56640);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56641,56640,3),
(56639,56640,3),
(56642,56640,3),
(56643,56640,3);
-- Pack 4
DELETE FROM `creature_linking` WHERE `master_guid` IN(56651);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56654,56651,3),
(56653,56651,3),
(56652,56651,3),
(56650,56651,3);
-- Pack 5
DELETE FROM `creature_linking` WHERE `master_guid` IN(56648);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56644,56648,3),
(56646,56648,3),
(56649,56648,3),
(56647,56648,3);

-- ************************
-- Lava Elementals, Flameguards, Firewalker, Lava Reaver
-- ************************
-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11667,11666,12100,12076);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11667,11666,12100,12076);

-- Pack 1
DELETE FROM `creature_linking` WHERE `master_guid` IN(91289);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91287,91289,3),
(91288,91289,3),
(91286,91289,3);
-- Pack 2
DELETE FROM `creature_linking` WHERE `master_guid` IN(91261);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91262,91261,3),
(91264,91261,3),
(91263,91261,3);
-- Pack 3
DELETE FROM `creature_linking` WHERE `master_guid` IN(91277);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91278,91277,3),
(91279,91277,3);
-- Pack 4
DELETE FROM `creature_linking` WHERE `master_guid` IN(91290);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91291,91290,3),
(91292,91290,3);
-- Pack 5
DELETE FROM `creature_linking` WHERE `master_guid` IN(91271);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91270,91271,3),
(91269,91271,3),
(91268,91271,3);
-- Pack 6
DELETE FROM `creature_linking` WHERE `master_guid` IN(56724);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56723,56724,3),
(56722,56724,3);
-- Pack 7
DELETE FROM `creature_linking` WHERE `master_guid` IN(56781);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56782,56781,3),
(56783,56781,3);
-- Pack 8
DELETE FROM `creature_linking` WHERE `master_guid` IN(91265);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91266,91265,3),
(91267,91265,3);
-- Pack 9
DELETE FROM `creature_linking` WHERE `master_guid` IN(56792);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56793,56792,3),
(56795,56792,3),
(56794,56792,3);
-- Pack 10
DELETE FROM `creature_linking` WHERE `master_guid` IN(56729);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56730,56729,3),
(56731,56729,3),
(56732,56729,3);
-- Pack 11
DELETE FROM `creature_linking` WHERE `master_guid` IN(91260);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91259,91260,3),
(91258,91260,3),
(91257,91260,3);
-- Pack 12
DELETE FROM `creature_linking` WHERE `master_guid` IN(56750);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56751,56750,3),
(56776,56750,3),
(56775,56750,3);
-- Pack 13
DELETE FROM `creature_linking` WHERE `master_guid` IN(56798);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56797,56798,3),
(56799,56798,3);


