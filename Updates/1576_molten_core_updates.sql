-- Thanks to malcrom for providing movement data: https://github.com/cmangos/issues/issues/892#issuecomment-270154679 / http://pastebin.com/U87kY1UR
-- ************************
-- Garr movement/linking fixup
-- ************************
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `guid`=56609; -- Garr
UPDATE `creature` SET `position_x`=684.192,`position_y`=-506.928,`position_z`=-214.424,`orientation`=3.73863 WHERE `guid`=56627; -- Firesworn

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
(56636,56634,3 + 1024),
(56637,56634,3 + 1024),
(56635,56634,3 + 1024),
(56638,56634,3 + 1024);
-- Pack 2
DELETE FROM `creature_linking` WHERE `master_guid` IN(56631);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56633,56631,3 + 1024),
(56630,56631,3 + 1024),
(56629,56631,3 + 1024),
(56632,56631,3 + 1024);
-- Pack 3
DELETE FROM `creature_linking` WHERE `master_guid` IN(56640);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56641,56640,3 + 1024),
(56639,56640,3 + 1024),
(56642,56640,3 + 1024),
(56643,56640,3 + 1024);
-- Pack 4
DELETE FROM `creature_linking` WHERE `master_guid` IN(56651);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56654,56651,3 + 1024),
(56653,56651,3 + 1024),
(56652,56651,3 + 1024),
(56650,56651,3 + 1024);
-- Pack 5
DELETE FROM `creature_linking` WHERE `master_guid` IN(56648);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56644,56648,3 + 1024),
(56646,56648,3 + 1024),
(56649,56648,3 + 1024),
(56647,56648,3 + 1024);
-- Linking each pack "master" respawn to Magmadar being alive
DELETE FROM `creature_linking` WHERE `master_guid` IN(56648);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56634,56683,1024),
(56631,56683,1024),
(56640,56683,1024),
(56651,56683,1024),
(56648,56683,1024);
-- Deleting linking_template entry
DELETE FROM creature_linking_template WHERE entry = 11671;

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