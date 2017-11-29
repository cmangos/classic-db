-- Add your query below.
-- https://github.com/lh-server/core/commit/bbe312a7fa55014638db2c448fc37f789c1fa706

-- classic only
-- https://github.com/LightsHope/server/issues/701
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(3043, 0, 3043, 1, 0),(14275, 3043, 3043, 2, 0),(14276, 14275, 3043, 3, 0),(14277, 14276, 3043, 4, 0);

-- Requested by commit https://github.com/cmangos/mangos-tbc/commit/a58060d0af39ec23cd44f8dba3679fbf78b442d6
DELETE FROM `spell_proc_event` WHERE `entry` = 23582;

-- https://github.com/cmangos/issues/issues/3223
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|64 WHERE `entry` = 2462; -- Flesh Eating Worm (s.3428)

-- https://github.com/LightsHope/server/issues/638
-- https://web.archive.org/web/20080630195017/http://wow.allakhazam.com/db/item.html?witem=9326
-- https://www.wowhead.com/tbc/item=9326/grime-encrusted-ring
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=10, `condition_id` = 9031 WHERE `entry`=6212 AND `item`=9326; -- 8
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (9031, 22, 2945, 0, 0, 0, 0, 'Quest ID 2945 NOT Taken AND NOT Rewarded');

-- https://github.com/LightsHope/server/issues/663
UPDATE `creature` SET `position_x`=-7302.71, `position_y`=-373.976, `position_z`=-268.664 WHERE  `guid`=24506;

-- https://www.wowhead.com/classic/item=753/dragonmaw-shortsword
-- https://web.archive.org/web/20080523065346/http://wow.allakhazam.com/db/item.html?witem=753
DELETE FROM `reference_loot_template` WHERE `item` = 753;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1036, 753, 1, 9, 1, 1, 0, 'Dragonmaw Shortsword'); -- 1.3 vs 0.55

-- https://www.wowhead.com/classic/item=756/tunnel-pick
-- https://web.archive.org/web/20080523080029/http://wow.allakhazam.com/db/item.html?witem=756
DELETE FROM `reference_loot_template` WHERE `item` = 756;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1053, 756, 2, 9, 1, 1, 0, 'Tunnel Pick'); -- 3.7 vs 1.77

-- https://www.wowhead.com/classic/item=820/slicer-blade
-- https://web.archive.org/web/20080515125314/http://wow.allakhazam.com/db/item.html?witem=820
DELETE FROM `reference_loot_template` WHERE `item` = 820;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(115, 820, 1.2, 9, 1, 1, 0, 'Slicer Blade'); -- 1.4 vs 1.02

-- https://www.wowhead.com/classic/item=821/riverpaw-leather-vest
-- https://web.archive.org/web/20080529141712/http://wow.allakhazam.com/db/item.html?witem=821
DELETE FROM `reference_loot_template` WHERE `item` = 821;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(123, 821, 2.5, 9, 1, 1, 0, 'Riverpaw Leather Vest'); -- 3.2 vs 2.15

-- https://www.wowhead.com/classic/item=826/brutish-riverpaw-axe
-- https://web.archive.org/web/20080529163324/http://wow.allakhazam.com/db/item.html?witem=826
DELETE FROM `reference_loot_template` WHERE `item` = 826;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(124, 826, 2.5, 9, 1, 1, 0, 'Brutish Riverpaw Axe'); -- 3.2 vs 2.08

-- https://www.wowhead.com/classic/item=827/wicked-blackjack
-- https://web.archive.org/web/20080507094556/http://wow.allakhazam.com/db/item.html?witem=827
DELETE FROM `reference_loot_template` WHERE `item` = 827;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(122, 827, 1.5, 9, 1, 1, 0, 'Wicked Blackjack'), -- 2 vs 1.07
(449, 827, 1.5, 9, 1, 1, 0, 'Wicked Blackjack'); -- 2 vs 1.07

-- https://www.wowhead.com/classic/item=880/staff-of-horrors
-- https://web.archive.org/web/20080530144333/http://wow.allakhazam.com/db/item.html?witem=880
DELETE FROM `reference_loot_template` WHERE `item` = 880;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(202, 880, 1.5, 9, 1, 1, 0, 'Staff of Horrors'); -- 1.6 vs 1.03

-- https://www.wowhead.com/classic/item=885/black-metal-axe
-- https://web.archive.org/web/20080506015958/http://wow.allakhazam.com/db/item.html?witem=885
DELETE FROM `reference_loot_template` WHERE `item` = 885;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3, 885, 1.5, 9, 1, 1, 0, 'Black Metal Axe'); -- 1.6 vs 1.09

-- https://www.wowhead.com/classic/item=886/black-metal-shortsword
-- https://web.archive.org/web/20080508001057/http://wow.allakhazam.com/db/item.html?witem=886
DELETE FROM `reference_loot_template` WHERE `item` = 886;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(210, 886, 0.8, 9, 1, 1, 0, 'Black Metal Shortsword'); -- 0.8 vs 0.54

-- https://www.wowhead.com/classic/item=897/madwolf-bracers
-- https://web.archive.org/web/20080522121721/http://wow.allakhazam.com/db/item.html?witem=897
DELETE FROM `reference_loot_template` WHERE `item` = 897;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(206, 897, 1, 9, 1, 1, 0, 'Madwolf Bracers'); -- 1.9 vs 0.38

-- https://www.wowhead.com/classic/item=899/venom-web-fang
-- https://web.archive.org/web/20080316041826/http://wow.allakhazam.com/db/item.html?witem=899
DELETE FROM `reference_loot_template` WHERE `item` = 899;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(217, 899, 0.8, 9, 1, 1, 0, 'Venom Web Fang'); -- 1.1 vs 0.55

-- https://www.wowhead.com/classic/item=911/ironwood-treebranch
-- https://web.archive.org/web/20080306090953/http://wow.allakhazam.com/db/item.html?witem=911
DELETE FROM `reference_loot_template` WHERE `item` = 911;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(889, 911, 1.5, 9, 1, 1, 0, 'Ironwood Treebranch'); -- 2 vs 0.96

-- https://www.wowhead.com/classic/item=914/large-ogre-chain-armor
-- https://web.archive.org/web/20080324001754/http://wow.allakhazam.com/db/item.html?witem=914
DELETE FROM `reference_loot_template` WHERE `item` = 914;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1487, 914, 0.8, 9, 1, 1, 0, 'Large Ogre Chain Armor'); -- 1 vs 0.46

-- https://www.wowhead.com/classic/item=920/wicked-spiked-mace
-- https://web.archive.org/web/20080316025508/http://wow.allakhazam.com/db/item.html?witem=920
DELETE FROM `reference_loot_template` WHERE `item` = 920;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(215, 920, 1.5, 9, 1, 1, 0, 'Wicked Spiked Mace'), -- 2 vs 1.02
(909, 920, 1.5, 9, 1, 1, 0, 'Wicked Spiked Mace'); -- 1.8 vs 0.98

-- https://www.wowhead.com/classic/item=1211/gnoll-war-harness
-- https://web.archive.org/web/20080308103231/http://wow.allakhazam.com/db/item.html?witem=1211
DELETE FROM `reference_loot_template` WHERE `item` = 1211;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(423, 1211, 2, 9, 1, 1); -- 2 vs 1.05

-- https://www.wowhead.com/classic/item=1214/gnoll-punisher
-- https://web.archive.org/web/20080307002614/http://wow.allakhazam.com/db/item.html?witem=1214
DELETE FROM `reference_loot_template` WHERE `item` = 1214;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(426, 1214, 1.2, 9, 1, 1), -- 1.5 vs 1.0
(14271, 1214, 1.0, 9, 1, 1); -- 1.5 vs 0.76

-- https://www.wowhead.com/classic/item=1218/heavy-gnoll-war-club
-- https://web.archive.org/web/20080305001821/http://wow.allakhazam.com/db/item.html?witem=1218
DELETE FROM `reference_loot_template` WHERE `item` = 1218;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(445, 1218, 2, 9, 1, 1); -- 3 vs 1.09

-- https://www.wowhead.com/classic/item=1219/redridge-machete
-- https://web.archive.org/web/20080306035001/http://wow.allakhazam.com/db/item.html?witem=1219
DELETE FROM `reference_loot_template` WHERE `item` = 1219;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(424, 1219, 1.5, 9, 1, 1); -- 2 vs 1.02

-- https://www.wowhead.com/classic/item=1220/lupine-axe
-- https://web.archive.org/web/20080308103236/http://wow.allakhazam.com/db/item.html?witem=1220
DELETE FROM `reference_loot_template` WHERE `item` = 1220;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(580, 1220, 1.4, 9, 1, 1); -- 1.8 vs 0.99

-- https://www.wowhead.com/classic/item=1280/cloaked-hood
-- https://web.archive.org/web/20080415100829/http://wow.allakhazam.com/db/item.html?witem=1280
DELETE FROM `reference_loot_template` WHERE `item` = 1280;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2246, 1280, 1.4, 9, 1, 1); -- 1.8 vs 1.0

-- https://www.wowhead.com/classic/item=1287/giant-tarantula-fang
-- https://web.archive.org/web/20080506063510/http://wow.allakhazam.com/db/item.html?witem=1287
DELETE FROM `reference_loot_template` WHERE `item` = 1287;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(442, 1287, 1.15, 9, 1, 1); -- 1.1 vs 1.21

-- https://www.wowhead.com/classic/item=1296/blackrock-mace
-- https://web.archive.org/web/20080507105402/http://wow.allakhazam.com/db/item.html?witem=1296
DELETE FROM `reference_loot_template` WHERE `item` = 1296;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4065, 1296, 3, 9, 1, 1), -- 4 vs 2.06
(437, 1296, 1.5, 9, 1, 1); -- 2 vs 1.07

-- https://www.wowhead.com/classic/item=1297/robes-of-the-shadowcaster
-- https://web.archive.org/web/20080412052729/http://wow.allakhazam.com/db/item.html?witem=1297
DELETE FROM `reference_loot_template` WHERE `item` = 1297;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2553, 1297, 0.6, 9, 1, 1), -- 0.8 vs 0.49
(2577, 1297, 0.6, 9, 1, 1); -- 0.7 vs 0.5

-- https://www.wowhead.com/classic/item=1299/lesser-belt-of-the-spire
-- https://web.archive.org/web/20080507130001/http://wow.allakhazam.com/db/item.html?witem=1299
DELETE FROM `reference_loot_template` WHERE `item` = 1299;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(436, 1299, 1.8, 9, 1, 1); -- 2 vs 1.59

-- https://www.wowhead.com/classic/item=1300/lesser-staff-of-the-spire
-- https://web.archive.org/web/20080518023104/http://wow.allakhazam.com/db/item.html?witem=1300
DELETE FROM `reference_loot_template` WHERE `item` = 1300;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(436, 1300, 0.75, 9, 1, 1); -- 0.9 vs 0.56

-- https://www.wowhead.com/classic/item=1351/fingerbone-bracers
-- https://web.archive.org/web/20080523073439/http://wow.allakhazam.com/db/item.html?witem=1351
DELETE FROM `reference_loot_template` WHERE `item` = 1351;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3808, 1351, 0.8, 9, 1, 1); -- 1.1 vs 0.56

-- https://www.wowhead.com/classic/item=1391/riverpaw-mystic-staff
-- https://web.archive.org/web/20080330231515/http://wow.allakhazam.com/db/item.html?witem=1391
DELETE FROM `reference_loot_template` WHERE `item` = 1391;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(453, 1391, 1.3, 9, 1, 1); -- 1.7 vs 0.85

-- https://www.wowhead.com/classic/item=1394/driftwood-club
-- https://web.archive.org/web/20080316011705/http://wow.allakhazam.com/db/item.html?witem=1394
DELETE FROM `reference_loot_template` WHERE `item` = 1394;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(171, 1394, 2.5, 9, 1, 1); -- 3 vs 2.1

-- https://www.wowhead.com/classic/item=1405/foamspittle-staff
-- https://web.archive.org/web/20080330223044/http://wow.allakhazam.com/db/item.html?witem=1405
DELETE FROM `reference_loot_template` WHERE `item` = 1405;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(517, 1405, 1.2, 9, 1, 1); -- 1.4 vs 1.01

-- https://www.wowhead.com/classic/item=1406/pearl-encrusted-spear
-- https://web.archive.org/web/20080302230535/http://wow.allakhazam.com/db/item.html?witem=1406
DELETE FROM `reference_loot_template` WHERE `item` = 1406;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(544, 1406, 1.4, 9, 1, 1); -- 1.6 vs 0.88

-- https://www.wowhead.com/classic/item=1440/gnoll-skull-basher
-- https://web.archive.org/web/20080306035343/http://wow.allakhazam.com/db/item.html?witem=1440
DELETE FROM `reference_loot_template` WHERE `item` = 1440;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(446, 1440, 1.4, 9, 1, 1); -- 1.8 vs 1.01

-- https://www.wowhead.com/classic/item=1446/blackrock-boots
-- https://web.archive.org/web/20080302230626/http://wow.allakhazam.com/db/item.html?witem=1446
DELETE FROM `reference_loot_template` WHERE `item` = 1446;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(440, 1446, 1.35, 9, 1, 1); -- 1.7 vs 10.7

-- https://www.wowhead.com/classic/item=1448/blackrock-gauntlets
-- https://web.archive.org/web/20080330231520/http://wow.allakhazam.com/db/item.html?witem=1448
DELETE FROM `reference_loot_template` WHERE `item` = 1448;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4064, 1448, 2, 9, 1, 1), -- 4 vs 2.03
(485, 1448, 1.35, 9, 1, 1); -- 1.7 vs 1.08

-- https://www.wowhead.com/classic/item=1455/blackrock-champions-axe
-- https://web.archive.org/web/20080302230646/http://wow.allakhazam.com/db/item.html?witem=1455
DELETE FROM `reference_loot_template` WHERE `item` = 1455;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4464, 1455, 3, 9, 1, 1), -- 5 vs 2.26
(435, 1455, 2, 9, 1, 1); -- 3 vs 1.19

-- https://www.wowhead.com/classic/item=1457/shadowhide-mace
-- https://web.archive.org/web/20080306064443/http://wow.allakhazam.com/db/item.html?witem=1457
DELETE FROM `reference_loot_template` WHERE `item` = 1457;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(433, 1457, 1.6, 9, 1, 1); -- 2 vs 1.13

-- https://www.wowhead.com/classic/item=1458/shadowhide-maul
-- https://web.archive.org/web/20080305002012/http://wow.allakhazam.com/db/item.html?witem=1458
DELETE FROM `reference_loot_template` WHERE `item` = 1458;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(432, 1458, 1.5, 9, 1, 1); -- 1.9 vs 1.18

-- https://www.wowhead.com/classic/item=1459/shadowhide-scalper
-- https://web.archive.org/web/20080308075134/http://wow.allakhazam.com/db/item.html?witem=1459
DELETE FROM `reference_loot_template` WHERE `item` = 1459;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(579, 1459, 1.5, 9, 1, 1); -- 2 vs 1.05

-- https://www.wowhead.com/classic/item=1460/shadowhide-two-handed-sword
-- https://web.archive.org/web/20080308014224/http://wow.allakhazam.com/db/item.html?witem=1460
DELETE FROM `reference_loot_template` WHERE `item` = 1460;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(434, 1460, 1.3, 9, 1, 1); -- 1.6 vs 1.12

-- https://www.wowhead.com/classic/item=1461/slayers-battle-axe
-- https://web.archive.org/web/20080318215425/http://wow.allakhazam.com/db/item.html?witem=1461
DELETE FROM `reference_loot_template` WHERE `item` = 1461;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(431, 1461, 1.5, 9, 1, 1); -- 2 vs 1.2

-- https://www.wowhead.com/classic/item=1462/ring-of-the-shadow
-- https://web.archive.org/web/20080308151533/http://wow.allakhazam.com/db/item.html?witem=1462
DELETE FROM `reference_loot_template` WHERE `item` = 1462;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(429, 1462, 1.5, 9, 1, 1); -- 2 vs 1.12

-- https://www.wowhead.com/classic/item=1469/scimitar-of-atun
-- https://web.archive.org/web/20080302230707/http://wow.allakhazam.com/db/item.html?witem=1469
DELETE FROM `reference_loot_template` WHERE `item` = 1469;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(578, 1469, 1, 9, 1, 1), -- 1.1 vs 0.97
(14270, 1469, 0.5, 9, 1, 1); -- 0.3 vs 0.88

-- https://www.wowhead.com/classic/item=1473/riverside-staff
-- https://web.archive.org/web/20080318200645/http://wow.allakhazam.com/db/item.html?witem=1473
DELETE FROM `reference_loot_template` WHERE `item` = 1473;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(545, 1473, 1, 9, 1, 1); -- 0.9 vs 1.13

-- https://www.wowhead.com/classic/item=1521/lumbering-ogre-axe
-- https://web.archive.org/web/20080402113115/http://wow.allakhazam.com/db/item.html?witem=1521
DELETE FROM `reference_loot_template` WHERE `item` = 1521;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2719, 1521, 1.5, 9, 1, 1); -- 1.9 vs 0.95

-- https://www.wowhead.com/classic/item=1522/headhunting-spear
-- https://web.archive.org/web/20080516222058/http://wow.allakhazam.com:80/db/item.html?witem=1522
DELETE FROM `reference_loot_template` WHERE `item` = 1522;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(671, 1522, 1.2, 9, 1, 1); -- 1.4 vs 1.04

-- https://www.wowhead.com/classic/item=1523/huge-stone-club
-- https://web.archive.org/web/20080610183330/http://wow.allakhazam.com/db/item.html?witem=1523
DELETE FROM `reference_loot_template` WHERE `item` = 1523;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(597, 1523, 0.7, 9, 1, 1); -- 0.9 vs 0.51

-- https://www.wowhead.com/classic/item=1560/bluegill-sandals
-- https://web.archive.org/web/20080330231530/http://wow.allakhazam.com/db/item.html?witem=1560
DELETE FROM `reference_loot_template` WHERE `item` = 1560;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1025, 1560, 1, 9, 1, 1); -- 1 vs 1.04

-- https://www.wowhead.com/classic/item=1624/skullsplitter-helm
-- https://web.archive.org/web/20080603193020/http://wow.allakhazam.com/db/item.html?witem=1624
DELETE FROM `reference_loot_template` WHERE `item` = 1624;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(781, 1624, 1.2, 9, 1, 1), -- 1.5 vs 0.92
(783, 1624, 1.2, 9, 1, 1); -- 1.4 vs 1.02

-- https://www.wowhead.com/classic/item=1659/engineering-gloves
-- https://web.archive.org/web/20080606053804/http://wow.allakhazam.com/db/item.html?witem=1659
DELETE FROM `reference_loot_template` WHERE `item` = 1659;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(677, 1659, 0.5, 9, 1, 1); -- 0.5 vs 0.5

-- https://www.wowhead.com/classic/item=1664/spellforce-rod
-- https://web.archive.org/web/20080531213236/http://wow.allakhazam.com/db/item.html?witem=1664
DELETE FROM `reference_loot_template` WHERE `item` = 1664;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(676, 1664, 0.6, 9, 1, 1); -- 0.8 vs 0.49

-- https://www.wowhead.com/classic/item=1677/drake-scale-vest
-- https://web.archive.org/web/20080611043106/http://wow.allakhazam.com/db/item.html?witem=1677
DELETE FROM `reference_loot_template` WHERE `item` = 1677;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(680, 1677, 1.8, 9, 1, 1); -- 2 vs 1.45

-- https://www.wowhead.com/classic/item=1679/korg-bat
-- https://web.archive.org/web/20080504060731/http://wow.allakhazam.com/db/item.html?witem=1679
DELETE FROM `reference_loot_template` WHERE `item` = 1679;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1142, 1679, 0.8, 9, 1, 1), -- 1 vs 0.52
(14488, 1679, 0.6, 9, 1, 1); -- 0.8 vs NA

-- https://www.wowhead.com/classic/item=1926/weighted-sap
-- https://web.archive.org/web/20080506031950/http://wow.allakhazam.com/db/item.html?witem=1926
DELETE FROM `reference_loot_template` WHERE `item` = 1926;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(824, 1926, 1.5, 9, 1, 1); -- 2 vs 1.15

-- https://www.wowhead.com/classic/item=1927/deadmines-cleaver
-- https://web.archive.org/web/20080502142835/http://wow.allakhazam.com/db/item.html?witem=1927
DELETE FROM `reference_loot_template` WHERE `item` = 1927;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(594, 1927, 4, 9, 1, 1); -- 5 vs 3.27

-- https://www.wowhead.com/classic/item=1933/staff-of-conjuring
-- https://web.archive.org/web/20060523062833/http://wow.allakhazam.com/db/item.html?witem=1933
-- https://web.archive.org/web/20060524025758/http://wow.allakhazam.com/db/mob.html?wmob=619
DELETE FROM `reference_loot_template` WHERE `item` = 1933;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(619, 1933, 4, 9, 1, 1); -- 6 vs 3.31

-- https://www.wowhead.com/classic/item=1958/petrified-shinbone
-- https://web.archive.org/web/20080506052350/http://wow.allakhazam.com/db/item.html?witem=1958
DELETE FROM `reference_loot_template` WHERE `item` = 1958;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(625, 1958, 4, 9, 1, 1); -- 5 vs 3.26

-- https://www.wowhead.com/classic/item=1959/cold-iron-pick
-- https://web.archive.org/web/20080506052355/http://wow.allakhazam.com/db/item.html?witem=1959
DELETE FROM `reference_loot_template` WHERE `item` = 1959;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(623, 1959, 4, 9, 1, 1); -- 5 vs 3.18

-- https://www.wowhead.com/classic/item=1986/gutrender
-- https://web.archive.org/web/20080506082228/http://wow.allakhazam.com/db/item.html?witem=1986
DELETE FROM `reference_loot_template` WHERE `item` = 1986;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(709, 1986, 2, 9, 1, 1); -- 3 vs 1.58

-- https://www.wowhead.com/classic/item=1991/goblin-power-shovel
-- https://web.archive.org/web/20080306011051/http://wow.allakhazam.com/db/item.html?witem=1991
DELETE FROM `reference_loot_template` WHERE `item` = 1991;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1094, 1991, 0.6, 9, 1, 1); -- 0.8 vs 0.41

-- https://www.wowhead.com/classic/item=1993/ogremind-ring
-- https://web.archive.org/web/20080402103008/http://wow.allakhazam.com/db/item.html?witem=1993
DELETE FROM `reference_loot_template` WHERE `item` = 1993;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2570, 1993, 2, 9, 1, 1), -- 3 vs 1.24
(2255, 1993, 1.5, 9, 1, 1), -- 2 vs 1.13
(2567, 1993, 0.9, 9, 1, 1), -- 1.3 vs 0.54
(2907, 1993, 0.8, 9, 1, 1); -- 1 vs 0.48

-- https://www.wowhead.com/classic/item=1996/voodoo-band
-- https://web.archive.org/web/20080318215731/http://wow.allakhazam.com/db/item.html?witem=1996
DELETE FROM `reference_loot_template` WHERE `item` = 1996;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(660, 1996, 0.7, 9, 1, 1); -- 0.9 vs 0.54

-- https://www.wowhead.com/classic/item=1997/pressed-felt-robe
-- https://web.archive.org/web/20080318154149/http://wow.allakhazam.com/db/item.html?witem=1997
DELETE FROM `reference_loot_template` WHERE `item` = 1997;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(701, 1997, 0.6, 9, 1, 1); -- 0.8 vs 0.53

-- https://www.wowhead.com/classic/item=1998/bloodscalp-channeling-staff
-- https://web.archive.org/web/20080411074825/http://wow.allakhazam.com/db/item.html?witem=1998
DELETE FROM `reference_loot_template` WHERE `item` = 1998;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(697, 1998, 0.6, 9, 1, 1); -- 0.8 vs 0.5

-- https://www.wowhead.com/classic/item=2013/cryptbone-staff
-- https://web.archive.org/web/20080324001024/http://wow.allakhazam.com/db/item.html?witem=2013
DELETE FROM `reference_loot_template` WHERE `item` = 2013;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(787, 2013, 0.9, 9, 1, 1); -- 1.3 vs 0.5

-- https://www.wowhead.com/classic/item=2014/black-metal-greatsword
-- https://web.archive.org/web/20080324001029/http://wow.allakhazam.com/db/item.html?witem=2014
DELETE FROM `reference_loot_template` WHERE `item` = 2014;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1270, 2014, 0.6, 9, 1, 1); -- 0.7 vs 0.48

-- https://www.wowhead.com/classic/item=2015/black-metal-war-axe
-- https://web.archive.org/web/20080324001034/http://wow.allakhazam.com/db/item.html?witem=2015
DELETE FROM `reference_loot_template` WHERE `item` = 2015;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(570, 2015, 0.7, 9, 1, 1); -- 0.9 vs 0.52

-- https://www.wowhead.com/classic/item=2017/glowing-leather-bracers
-- https://web.archive.org/web/20080323042950/http://wow.allakhazam.com/db/item.html?witem=2017
DELETE FROM `reference_loot_template` WHERE `item` = 2017;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(785, 2017, 0.9, 9, 1, 1); -- 1.2 vs 0.58

-- https://www.wowhead.com/classic/item=2018/skeletal-longsword
-- https://web.archive.org/web/20080316204824/http://wow.allakhazam.com/db/item.html?witem=2018
DELETE FROM `reference_loot_template` WHERE `item` = 2018;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1110, 2018, 0.9, 9, 1, 1); -- 1.3 vs 0.54

-- https://www.wowhead.com/classic/item=2020/hollowfang-blade
-- https://web.archive.org/web/20080316075311/http://wow.allakhazam.com/db/item.html?witem=2020
DELETE FROM `reference_loot_template` WHERE `item` = 2020;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(539, 2020, 1.1, 9, 1, 1); -- 1.1 vs 1.09

-- https://www.wowhead.com/classic/item=2021/green-carapace-shield
-- https://web.archive.org/web/20080316075316/http://wow.allakhazam.com/db/item.html?witem=2021
DELETE FROM `reference_loot_template` WHERE `item` = 2021;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(569, 2021, 1.1, 9, 1, 1); -- 1.2 vs 1.07

-- https://www.wowhead.com/classic/item=2046/bluegill-kukri
-- https://web.archive.org/web/20080318130557/http://wow.allakhazam.com/db/item.html?witem=2046
DELETE FROM `reference_loot_template` WHERE `item` = 2046;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1027, 2046, 1.1, 9, 1, 1); -- 1.2 vs 0.99

-- https://www.wowhead.com/classic/item=2084/darksteel-bastard-sword
-- https://web.archive.org/web/20080316134457/http://wow.allakhazam.com/db/item.html?witem=2084
DELETE FROM `reference_loot_template` WHERE `item` = 2084;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1054, 2084, 3, 9, 1, 1); -- 4 vs 1.90

-- https://www.wowhead.com/classic/item=2087/hard-crawler-carapace
-- https://web.archive.org/web/20080330061830/http://wow.allakhazam.com/db/item.html?witem=2087
DELETE FROM `reference_loot_template` WHERE `item` = 2087;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(830, 2087, 2.1, 9, 1, 1); -- 2 vs 2.34

-- https://www.wowhead.com/classic/item=2088/long-crawler-limb
-- https://web.archive.org/web/20080316061416/http://wow.allakhazam.com/db/item.html?witem=2088
DELETE FROM `reference_loot_template` WHERE `item` = 2088;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(831, 2088, 2.1, 9, 1, 1); -- 2 vs 2.18

-- https://www.wowhead.com/classic/item=2166/foremans-leggings
-- https://web.archive.org/web/20080306232851/http://wow.allakhazam.com/db/item.html?witem=2166
DELETE FROM `reference_loot_template` WHERE `item` = 2166;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(626, 2166, 0.7, 9, 1, 1); -- 0.7 vs 0.7

-- https://www.wowhead.com/classic/item=2167/foremans-gloves
-- https://web.archive.org/web/20080306085142/http://wow.allakhazam.com/db/item.html?witem=2167
DELETE FROM `reference_loot_template` WHERE `item` = 2167;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(626, 2167, 0.7, 9, 1, 1); -- 0.7 vs 0.73

-- https://www.wowhead.com/classic/item=2168/foremans-boots
-- https://web.archive.org/web/20080308003406/http://wow.allakhazam.com/db/item.html?witem=2168
DELETE FROM `reference_loot_template` WHERE `item` = 2168;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(626, 2168, 0.85, 9, 1, 1); -- 0.9 vs 0.83

-- https://www.wowhead.com/classic/item=2175/shadowhide-battle-axe
-- https://web.archive.org/web/20080317004125/http://wow.allakhazam.com/db/item.html?witem=2175
DELETE FROM `reference_loot_template` WHERE `item` = 2175;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(568, 2175, 1.5, 9, 1, 1); -- 2 vs 1.09

-- https://www.wowhead.com/classic/item=2226/ogremage-staff
-- https://web.archive.org/web/20080324001054/http://wow.allakhazam.com/db/item.html?witem=2226
DELETE FROM `reference_loot_template` WHERE `item` = 2226;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(891, 2226, 1, 9, 1, 1), -- 1.4 vs 0.51
(1251, 2226, 0.8, 9, 1, 1); -- 1.1 vs 0.50

-- https://www.wowhead.com/classic/item=2227/heavy-ogre-war-axe
-- https://web.archive.org/web/20080323043227/http://wow.allakhazam.com/db/item.html?witem=2227
DELETE FROM `reference_loot_template` WHERE `item` = 2227;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(892, 2227, 0.8, 9, 1, 1); -- 1.1 vs 0.54

-- https://www.wowhead.com/classic/item=2232/dark-runner-boots
-- https://web.archive.org/web/20080330223627/http://wow.allakhazam.com/db/item.html?witem=2232
DELETE FROM `reference_loot_template` WHERE `item` = 2232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(205, 2232, 1.6, 9, 1, 1); -- 2 vs 0.38

-- https://www.wowhead.com/classic/item=2233/shadow-weaver-leggings
-- https://web.archive.org/web/20080324001100/http://wow.allakhazam.com/db/item.html?witem=2233
DELETE FROM `reference_loot_template` WHERE `item` = 2233;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(533, 2233, 1.2, 9, 1, 1); -- 2 vs 0.37

-- https://www.wowhead.com/classic/item=2234/nightwalker-armor
-- https://web.archive.org/web/20080324001104/http://wow.allakhazam.com/db/item.html?witem=2234
DELETE FROM `reference_loot_template` WHERE `item` = 2234;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(920, 2234, 1.1, 9, 1, 1); -- 1.8 vs 0.4

-- https://www.wowhead.com/classic/item=2265/stonesplinter-axe
-- https://web.archive.org/web/20080308075713/http://wow.allakhazam.com/db/item.html?witem=2265
DELETE FROM `reference_loot_template` WHERE `item` = 2265;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1163, 2265, 3, 9, 1, 1); -- 4 vs 2.14

-- https://www.wowhead.com/classic/item=2266/stonesplinter-dagger
-- https://web.archive.org/web/20080316061511/http://wow.allakhazam.com/db/item.html?witem=2266
DELETE FROM `reference_loot_template` WHERE `item` = 2266;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1166, 2266, 3, 9, 1, 1); -- 4 vs 2.06

-- https://www.wowhead.com/classic/item=2267/stonesplinter-mace
-- https://web.archive.org/web/20080308105134/http://wow.allakhazam.com/db/item.html?witem=2267
DELETE FROM `reference_loot_template` WHERE `item` = 2267;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1197, 2267, 3, 9, 1, 1); -- 4 vs 2.18

-- https://www.wowhead.com/classic/item=2300/embossed-leather-vest#created-by-spell
DELETE FROM `reference_loot_template` WHERE `item` = 2300;

-- https://www.wowhead.com/classic/item=2566/sacrificial-robes
-- https://web.archive.org/web/20080318182442/http://wow.allakhazam.com/db/item.html?witem=2566
DELETE FROM `reference_loot_template` WHERE `item` = 2566;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(397, 2566, 0.65, 9, 1, 1); -- 0.6 vs 0.69

-- https://www.wowhead.com/classic/item=2620/augural-shroud
-- https://web.archive.org/web/20080415101815/http://wow.allakhazam.com/db/item.html?witem=2620
DELETE FROM `reference_loot_template` WHERE `item` = 2620;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4684, 2620, 1.25, 9, 1, 1); -- 1.5 vs 1.04

-- https://www.wowhead.com/classic/item=2621/cowl-of-necromancy
-- https://web.archive.org/web/20080402113211/http://wow.allakhazam.com/db/item.html?witem=2621
DELETE FROM `reference_loot_template` WHERE `item` = 2621;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2740, 2621, 0.8, 9, 1, 1); -- 1 vs 0.53

-- https://www.wowhead.com/classic/item=2623/holy-diadem
-- https://web.archive.org/web/20080405025121/http://wow.allakhazam.com/db/item.html?witem=2623
DELETE FROM `reference_loot_template` WHERE `item` = 2623;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2780, 2623, 3, 9, 1, 1), -- 5 vs 1.08
(2782, 2623, 2.5, 9, 1, 1), -- 4 vs 1.07
(2781, 2623, 2.1, 9, 1, 1); -- 3 vs 1.19

-- https://www.wowhead.com/classic/item=2624/thinking-cap
-- https://web.archive.org/web/20080402113216/http://wow.allakhazam.com/db/item.html?witem=2624
DELETE FROM `reference_loot_template` WHERE `item` = 2624;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2718, 2624, 0.7, 9, 1, 1); -- 0.9 vs 0.51

-- https://www.wowhead.com/classic/item=2822/mogrosh-toothpick
-- https://web.archive.org/web/20080330232440/http://wow.allakhazam.com/db/item.html?witem=2822
DELETE FROM `reference_loot_template` WHERE `item` = 2822;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1178, 2822, 3, 9, 1, 1); -- 4 vs 2.12

-- https://www.wowhead.com/classic/item=2823/mogrosh-can-opener
-- https://web.archive.org/web/20080330232204/http://wow.allakhazam.com/db/item.html?witem=2823
DELETE FROM `reference_loot_template` WHERE `item` = 2823;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1180, 2823, 3, 9, 1, 1); -- 4 vs 2.22

-- https://www.wowhead.com/classic/item=2955/first-mate-hat
-- https://web.archive.org/web/20080314043750/http://wow.allakhazam.com/db/item.html?witem=2955
DELETE FROM `reference_loot_template` WHERE `item` = 2955;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1653, 2955, 0.03, 9, 1, 1), -- 0.03 vs ~0
(1561, 2955, 0.02, 9, 1, 1), -- 0.02 vs ~0
(4506, 2955, 0.02, 9, 1, 1), -- 0.02 vs ~0
(1564, 2955, 0.01, 9, 1, 1), -- 0.01 vs ~0
(1563, 2955, 0.01, 9, 1, 1), -- 0.01 vs ~0
(1562, 2955, 0.01, 9, 1, 1), -- 0.01 vs ~0
(1565, 2955, 0.01, 9, 1, 1); -- 0.01 vs ~0

-- https://www.wowhead.com/classic/item=3053/humberts-chestpiece
-- https://web.archive.org/web/20080323045206/http://wow.allakhazam.com/db/item.html?witem=3053
DELETE FROM `reference_loot_template` WHERE `item` = 3053;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2344, 3053, 3, 9, 1, 1), -- 4 vs 1.74
(14275, 3053, 1.4, 9, 1, 1); -- 2 vs 0.72

-- https://www.wowhead.com/classic/item=3072/smoldering-robe
-- https://web.archive.org/web/20080324001400/http://wow.allakhazam.com/db/item.html?witem=3072
DELETE FROM `reference_loot_template` WHERE `item` = 3072;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1044, 3072, 0.75, 9, 1, 1); -- 1.3 vs 0.22

-- https://www.wowhead.com/classic/item=3073/smoldering-pants
-- https://web.archive.org/web/20080324001405/http://wow.allakhazam.com/db/item.html?witem=3073
DELETE FROM `reference_loot_template` WHERE `item` = 3073;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1069, 3073, 1.1, 9, 1, 1); -- 1.8 vs 0.43

-- https://www.wowhead.com/classic/item=3074/smoldering-gloves
-- https://web.archive.org/web/20080330232511/http://wow.allakhazam.com/db/item.html?witem=3074
DELETE FROM `reference_loot_template` WHERE `item` = 3074;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1043, 3074, 0.75, 9, 1, 1); -- 1.1 vs 0.41

-- https://www.wowhead.com/classic/item=3076/smoldering-boots
-- https://web.archive.org/web/20080330233019/http://wow.allakhazam.com/db/item.html?witem=3076
DELETE FROM `reference_loot_template` WHERE `item` = 3076;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1042, 3076, 0.75, 9, 1, 1); -- 1.1 vs 0.41

-- https://www.wowhead.com/classic/item=3204/deepwood-bracers
-- https://web.archive.org/web/20080319042031/http://wow.allakhazam.com/db/item.html?witem=3204
DELETE FROM `reference_loot_template` WHERE `item` = 3204;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2372, 3204, 1.5, 9, 1, 1); -- 2 vs 1.01

-- https://www.wowhead.com/classic/item=3336/flesh-piercer
-- https://web.archive.org/web/20080316090104/http://wow.allakhazam.com/db/item.html?witem=3336
DELETE FROM `reference_loot_template` WHERE `item` = 3336;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2368, 3336, 1.25, 9, 1, 1), -- 1.5 vs 1.07
(2370, 3336, 1, 9, 1, 1); -- 1.1 vs 0.84

-- https://www.wowhead.com/classic/item=3341/gauntlets-of-ogre-strength
-- https://web.archive.org/web/20080412210028/http://wow.allakhazam.com/db/item.html?witem=3341
DELETE FROM `reference_loot_template` WHERE `item` = 3341;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2564, 3341, 1, 9, 1, 1), -- 1.2 vs 0.5
(2562, 3341, 1, 9, 1, 1); -- 1.2 vs 0.51

-- https://www.wowhead.com/classic/item=3345/silk-wizard-hat
-- https://web.archive.org/web/20080415103207/http://wow.allakhazam.com/db/item.html?witem=3345
DELETE FROM `reference_loot_template` WHERE `item` = 3345;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2591, 3345, 2, 9, 1, 1); -- 3 vs 1.18

-- https://www.wowhead.com/classic/item=3429/guardsman-belt
-- https://web.archive.org/web/20080318182907/http://wow.allakhazam.com/db/item.html?witem=3429
DELETE FROM `reference_loot_template` WHERE `item` = 3429;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2427, 3429, 0.7, 9, 1, 1), -- 0.8 vs 0.59
(2428, 3429, 0.6, 9, 1, 1); -- 0.6 vs 0.6

-- https://www.wowhead.com/classic/item=3569/vicars-robe
-- https://web.archive.org/web/20080418002826/http://wow.allakhazam.com/db/item.html?witem=3569
DELETE FROM `reference_loot_template` WHERE `item` = 3569;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4517, 3569, 2.1, 9, 1, 1); -- 3 vs 1.23

-- https://www.wowhead.com/classic/item=4676/skeletal-gauntlets
-- https://web.archive.org/web/20080506104912/http://wow.allakhazam.com/db/item.html?witem=4676
DELETE FROM `reference_loot_template` WHERE `item` = 4676;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(624, 4676, 4, 9, 1, 1); -- 5 vs 3.18

-- https://www.wowhead.com/classic/item=4723/humberts-pants
-- https://web.archive.org/web/20080519040937/http://wow.allakhazam.com/db/item.html?witem=4723
DELETE FROM `reference_loot_template` WHERE `item` = 4723;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2346, 4723, 2.5, 9, 1, 1); -- 3 vs 1.69

-- https://www.wowhead.com/classic/item=4724/humberts-helm
-- https://web.archive.org/web/20080523100639/http://wow.allakhazam.com/db/item.html?witem=4724
DELETE FROM `reference_loot_template` WHERE `item` = 4724;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2345, 4724, 3, 9, 1, 1); -- 4 vs 1.77

-- https://www.wowhead.com/classic/item=4767/coppercloth-gloves
-- https://web.archive.org/web/20080330062554/http://wow.allakhazam.com/db/item.html?witem=4767
DELETE FROM `reference_loot_template` WHERE `item` = 4767;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3578, 4767, 3, 9, 1, 1); -- 6 vs https://web.archive.org/web/20181026100044/https://www.wowhead.com/item=4767/coppercloth-gloves#comments:id=634936 (3% in wotlk due to stat changes)

-- https://www.wowhead.com/classic/item=4788/agile-boots#sold-by
DELETE FROM `reference_loot_template` WHERE `item` = 4788;
UPDATE `npc_vendor` SET `incrtime` = 10800 WHERE `entry` IN (3552,3684,1669,954) AND `item` = 4788;

-- https://www.wowhead.com/classic/item=4949/orcish-cleaver
-- https://web.archive.org/web/20080318183017/http://wow.allakhazam.com/db/item.html?witem=4949
DELETE FROM `reference_loot_template` WHERE `item` = 4949;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(7170, 4949, 100, 9, 1, 1); -- 100 vs given

-- https://www.wowhead.com/classic/item=5319/bashing-pauldrons
-- https://web.archive.org/web/20080414225538/http://wow.allakhazam.com/db/item.html?witem=5319
DELETE FROM `reference_loot_template` WHERE `item` = 5319;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2478, 5319, 100, 9, 1, 1); -- 100 vs given

-- https://www.wowhead.com/classic/item=5079/cold-basilisk-eye
-- https://web.archive.org/web/20080506021114/http://wow.allakhazam.com/db/item.html?witem=5079
DELETE FROM `reference_loot_template` WHERE `item` = 5079;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(690, 5079, 1, 9, 1, 1); -- 1.3 vs 0.78

-- https://www.wowhead.com/classic/item=5245/summoners-wand
-- https://web.archive.org/web/20080516092948/http://wow.allakhazam.com/db/item.html?witem=5245
DELETE FROM `reference_loot_template` WHERE `item` = 5245;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2358, 5245, 0.75, 9, 1, 1); -- 0.8 vs 0.54

-- https://www.wowhead.com/classic/item=5608/living-cowl
-- https://web.archive.org/web/20080415103244/http://wow.allakhazam.com/db/item.html?witem=5608
DELETE FROM `reference_loot_template` WHERE `item` = 5608;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(766, 5608, 2, 9, 1, 1), -- 3 vs 1.03
(14448, 5608, 1, 9, 1, 1); -- 1.3 vs 0.82

-- https://www.wowhead.com/classic/item=5624/circlet-of-the-order
-- https://web.archive.org/web/20080412210428/http://wow.allakhazam.com/db/item.html?witem=5624
DELETE FROM `reference_loot_template` WHERE `item` = 5624;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2584, 5624, 1.6, 9, 1, 1); -- 2 vs 1.19

-- https://www.wowhead.com/classic/item=5755/onyx-shredder-plate
-- https://web.archive.org/web/20080401085244/http://wow.allakhazam.com/db/item.html?witem=5755
DELETE FROM `reference_loot_template` WHERE `item` = 5755;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(4260, 5755, 0.75, 9, 1, 1); -- 0.9 vs 0.57

-- https://www.wowhead.com/classic/item=6315/steelarrow-crossbow
-- https://web.archive.org/web/20080321235454/http://wow.allakhazam.com/db/item.html?witem=6315
DELETE FROM `reference_loot_template` WHERE `item` = 6315;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(6523, 6315, 2.5, 9, 1, 1); -- 3 vs 1.78

-- https://www.wowhead.com/classic/item=18337/orphic-bracers
-- https://web.archive.org/web/20080318215615/http://wow.allakhazam.com/db/item.html?witem=18337
DELETE FROM `reference_loot_template` WHERE `item` = 18337; -- Orphic Bracers
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(14399, 18337, 0.8, 9, 1, 1), -- 0.9 vs 0.71
(11483, 18337, 0.75, 9, 1, 1), -- 0.8 vs 0.79
(11484, 18337, 0.75, 9, 1, 1), -- 0.8 vs 0.72
(11480, 18337, 0.7, 9, 1, 1); -- 0.7 vs 0.74

-- https://www.wowhead.com/classic/item=18339/eidolon-cloak
-- https://web.archive.org/web/20080317102011/http://wow.allakhazam.com/db/item.html?witem=18339
DELETE FROM `reference_loot_template` WHERE `item` = 18339; -- Eidolon Cloak
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(11473, 18339, 1.25, 9, 1, 1), -- 1.1 vs 0.58
(11471, 18339, 0.75, 9, 1, 1), -- 1 vs 0.50
(11472, 18339, 0.75, 9, 1, 1), -- 0.9 vs 0.66
(11475, 18339, 0.7, 9, 1, 1); -- 0.8 vs 0.62

-- https://www.wowhead.com/classic/item=18343/petrified-band
-- https://web.archive.org/web/20080318154047/http://wow.allakhazam.com/db/item.html?witem=18343
DELETE FROM `reference_loot_template` WHERE `item` = 18343; -- Petrified Band
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(11459, 18343, 1, 9, 1, 1), -- 1.5 vs 0.52
(14303, 18343, 0.6, 9, 1, 1), -- 1 vs 0.33
(11458, 18343, 0.5, 9, 1, 1); -- 0.6 vs 0.38

-- TBC+
-- https://github.com/cmangos/issues/issues/3230
UPDATE `broadcast_text` SET `ChatTypeId` = 2 WHERE `Id` = 14265; -- Anok'suten 16357

-- Extra:

-- Thanks Neotmiren for researching and fixing

-- Updated loot table of Lady Vespira (rare naga, Darkshore)
-- Source: http://www.wowwiki.com/Lady_Vespira
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 7016 AND `item` = 6333; -- handled in reference_loot_template 65139
-- INSERT INTO `creature_loot_template` VALUES (7016, 6333, 60, 2, 1, 1, 0);
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 7016 AND `item` = 6332; -- mutually exclusive group for rare Black Pearl Ring
-- Item 6333 (Spikelash Dagger) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6333) AND `entry` != 65139;
-- Updated rank of Lady Vespira (creature 7016) as she is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7016; -- already correct

-- Updated loot table of Skhowl (rare yeti, Alterac Mountains)
-- Source: http://www.wowwiki.com/Skhowl
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 2452 AND `item` = 3011; -- handled in reference_loot_template 65064
-- INSERT INTO `creature_loot_template` VALUES (2452, 3011, 75, 2, 1, 1, 0);
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2452 AND `item` = 6331; -- mutually exclusive group for rare Howling Blade
-- Item 3011 (Feathered Headdress) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (3011) AND `entry` != 65064;
-- Updated rank of Skhowk (creature 2452) as he is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2452; -- already correct

-- Lo'Grosh (rare ogre, Alterac Mountains)
-- Source: http://www.wowwiki.com/Lo%27Grosh?oldid=538294
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 2453 AND `item` = 4810; -- handled in reference_loot_template 65065
-- INSERT INTO `creature_loot_template` VALUES (2453, 4810, 50, 2, 1, 1, 0); -- uncommon Boulder Pads
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 35 WHERE `entry` = 2453 AND `item` = 1678; -- mutually exclusive group for rare Black Ogre Kickers
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2453 AND `item` = 6327; -- mutually exclusive group for rare The Pacifier
-- Item 4810 (Boulder Pads) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (4810) AND `entry` != 65065;
-- Updated rank of Lo'Grosh (creature 2453) as he is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2453; -- already correct

-- Mosh'Ogg Butcher (rare elite ogre, Stranglethorn Vale)
-- Source: http://www.wowwiki.com/Mosh%27Ogg_Butcher
-- DELETE FROM `creature_loot_template` WHERE `entry` = 723 AND `item` = 1680; -- As this is no raremob anymore at some point, it doesnt have a unique reference_loot_template at the moment
-- INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (723, 1680, 40, 0, 1, 1, 0, 'Headchopper'); -- uncommon Headchopper IL 44 [39] 2H-Axe
-- Item 1680 (Headchopper) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (1680) AND `entry` != 65281; -- NPC LOOT (Rare NPC Loot) - Mosh'Ogg Butcher - Special Items
-- Updated rank of Mosh'Ogg Butcher (creature 723) as he is rare and elite
-- UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 723; -- not legit via wotlk sniff (rank = 0), i guess they were changed with the Mosh'Ogg Lords in patch 2.3

