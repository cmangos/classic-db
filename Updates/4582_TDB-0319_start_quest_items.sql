-- Improve dropchance for some items that start quests
-- Also add some missing ones!
-- SELECT * FROM item_template where startquest != 0 ORDER BY entry;

-- Captain Sander's Treasure Map 1357
-- https://web.archive.org/web/20080513173018/http://wow.allakhazam.com/db/item.html?witem=1357
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 1357; -- vmangos 0.75

-- An Old History Book 2794
-- https://web.archive.org/web/20080531121235/http://wow.allakhazam.com/db/item.html?witem=2794
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(412, 2794, 1, 0, 1, 1, 4, 'An Old History Book'), -- Stitches - beware condition!
(534, 2794, 1, 0, 1, 1, 4, 'An Old History Book'), -- Nefaru - WDB
(1200, 2794, 1, 0, 1, 1, 4, 'An Old History Book'); -- Morbent Fel - WDB

-- A Talking Head 3317
-- https://web.archive.org/web/20060324063856/http://wow.allakhazam.com/db/item.html?witem=3317
-- https://www.wowhead.com/tbc/item=3317/a-talking-head#comments:id=3373095
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 460; -- 178 classic
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2, `condition_id` = 0 WHERE `item` = 3317; -- lootable by alliance but not startable

-- Monogrammed Sash 3985
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 3985; -- (86.5031)

-- Pendant of Myzrael 4614
-- https://web.archive.org/web/20080620100938/http://wow.allakhazam.com/db/item.html?witem=4614
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.5 WHERE `item` = 4614 AND `entry` = 14487; -- much too high
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`) SELECT `entry`, 4614, 0.05, 0, 1, 1 FROM `creature_template` WHERE `entry` IN (
813, -- Colonel Kurzen
877, -- Saltscale Forager
2412, -- Alina
2414, -- Kegan Darkmar
2440, -- Drunken Footpad
2545, -- "Pretty Boy" Duncan
2624, -- Gazban
2714, -- Forsaken Courier
2783, -- Marez Cowl
3974, -- Houndmaster Loksey
3975, -- Herod
3976, -- Scarlet Commander Mograine
3977, -- High Inquisitor Whitemane
3983, -- Interrogator Vishas
4385, -- Withervine Rager
4401, -- Muckshell Clacker
4460, -- Murkgill Lord
4481, -- Marcel Dabyrie
4542, -- High Inquisitor Fairbanks
4543, -- Bloodmage Thalnos
4652, -- Gelkis Mauler
5085, -- Sentry Point Guard
5601, -- Khan Jehn
6238, -- Big Will
6487, -- Arcanist Doan
6489, -- Ironspine
6908, -- Olaf
6910, -- Revelosh
7358, -- Amnennar the Coldbringer
7895, -- Ambassador Bloodrage
8567, -- Glutton
12976); -- Kolkar Waylayer
-- tbc+
-- 18241, -- Crusty
-- 23555, -- Risen Husk
-- 23592, -- Grimtotem Breaker
-- 23593, -- Grimtotem Spirit-Shifter
-- 23594, -- Grimtotem Destroyer
-- 23701, -- Mirefin Ambusher
-- 23714, -- Grimtotem Elder
-- 23786, -- Stonemaul Spirit
-- 23841); -- Razorspine

DELETE FROM `creature_loot_template` WHERE `entry` IN (1094,1096,1097,1142,1144,1561,1562,24477) AND `item` = 4614; -- missing from either WDB or TDB
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- missing in WDB
(1094, 4614, 0.06, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Venture Co. Miner
(1096, 4614, 0.0249, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Venture Co. Geologist
(1097, 4614, 0.0362, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Venture Co. Mechanic
(1142, 4614, 0.0162, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Mosh'Ogg Brute
(1144, 4614, 0.0214, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Mosh'Ogg Witch Doctor
(1561, 4614, 0.0346, 0, 1, 1, 0, 'Pendant of Myzrael'), -- Bloodsail Raider
(1562, 4614, 0.0381, 0, 1, 1, 0, 'Pendant of Myzrael'); -- Bloodsail Mage
-- missing in TDB
-- (24477, 4614, 0.0245, 0, 1, 1, 0, 'Pendant of Myzrael'); -- Syndicate Thief

-- Demon Scarred Cloak 4854 - simply missing, backport from 
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (3056, 4854, 100, 0, 1, 1, 0, 'Demon Scarred Cloak');

-- Moss-twined Heart 5179 - simply missing, backport from 
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (3535, 5179, 100, 0, 1, 1, 0, 'Moss-twined Heart');

-- OOX-17/TN Distress Beacon 8623
-- https://web.archive.org/web/20080621110402/http://wow.allakhazam.com/db/item.html?witem=8623
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`) SELECT `entry`, 8623, 1, 0, 1, 1 FROM `creature_template` WHERE `entry` IN (
5432, -- Giant Surf Glider
5467, -- Deep Dweller
7267, -- Chief Ukorz Sandscalp
7271, -- Witch Doctor Zum'rah
7275, -- Shadowpriest Sezz'ziz
7805, -- Wastewander Scofflaw
7901, -- Treasure Hunting Swashbuckler
8127, -- Antu'sul
8204, -- Soriid the Devourer
8207, -- Greater Firebird
15685); -- Southsea Kidnapper

-- OOX-09/HL Distress Beacon 8704
-- https://web.archive.org/web/20080604093840/http://wow.allakhazam.com/db/item.html?witem=8704
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`) SELECT `entry`, 8704, 1, 0, 1, 1 FROM `creature_template` WHERE `entry` IN (
8212, -- The Reak
8213, -- Ironback
8215, -- Grimungous
8216, -- Retherokk the Berserker
8218); -- Witherheart the Stalker

-- OOX-22/FE Distress Beacon 8705
-- https://web.archive.org/web/20080621093156/http://wow.allakhazam.com/db/item.html?witem=8705
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`) VALUES (5345, 8705, 1, 0, 1, 1); -- Diamond Head

-- Grime-Encrusted Ring 9326
-- https://web.archive.org/web/20080630195017/http://wow.allakhazam.com/db/item.html?witem=9326
-- https://www.wowhead.com/tbc/npc=6212/dark-iron-agent
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 9326; -- 10

-- A Mangled Journal 11116
-- https://www.wowhead.com/tbc/item=11116/a-mangled-journal#comments:id=2631469
-- https://web.archive.org/web/20080621165850/http://wow.allakhazam.com/db/item.html?witem=11116
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `item` = 11116; -- prob higher but ok

-- Grimesilt Outhouse Key 11818
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `item` = 11818; -- vmangos

-- Blue-feathered Necklace 12558
-- https://www.wowhead.com/tbc/item=12558/blue-feathered-necklace#comments:id=3171755
UPDATE `creature_loot_template` SET `condition_id` = 9039 WHERE `item` = 12558;
DELETE FROM `conditions` WHERE `condition_entry` = 9039 AND `type` = 8;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9039, 8, 4741, 0, 0, 0, 0, 'Quest ID 4741 Rewarded');

-- Blood Red Key 13140
-- https://www.wowhead.com/tbc/item=13140/blood-red-key#dropped-by;comments:id=3171755
UPDATE `creature` SET `spawntimesecsmin` = 600, `spawntimesecsmax` = 900 WHERE `id` IN (9516,14522);
UPDATE `creature_template` SET `CallForHelp` = 5, `LootId` = 14522 WHERE `entry` = 14522; -- can somehow be killed without pulling Lord Banehollow
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` = 12922; -- imp minion, maybe even smaller or even none as linked to their owners, other minions should also be looked at.
DELETE FROM `creature_loot_template` WHERE `entry` = 14522; -- copy of 14523, level adjusted to 54
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14522, 11515, 35, 0, 1, 1, 987, 'Corrupted Soul Shard'), -- condition!
(14522, 13140, 3.0488, 0, 1, 1, 0, 'Blood Red Key'),
(14522, 4338, 35.6707, 0, 1, 3, 0, 'Mageweave Cloth'),
(14522, 4599, 7.3171, 0, 1, 1, 0, 'Cured Ham Steak'),
(14522, 1645, 3.9634, 0, 1, 1, 0, 'Moonberry Juice'),
(14522, 3928, 2.4, 0, 1, 1, 0, 'Superior Healing Potion'),
(14522, 6149, 1.2195, 0, 1, 1, 0, 'Greater Mana Potion'),
(14522, 5759, 0.3049, 0, 1, 1, 0, 'Thorium Lockbox'),
(14522, 7909, 0.3049, 0, 1, 1, 0, 'Aquamarine'),
(14522, 7910, 0.04, 0, 1, 1, 0, 'Star Ruby'),
(14522, 15737, 0.26, 0, 1, 1, 0, 'Pattern: Chimeric Boots'),
(14522, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(14522, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(14522, 60192, 2, 0, -60192, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)'),
(14522, 60268, 0.1, 0, -60268, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)'),
(14522, 60328, 0.01, 0, -60328, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)'),
(14522, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `item` = 13140;

-- Pristine Yeti Hide 18969 - changed condition missing commit
DELETE FROM `creature_loot_template` WHERE `item` = 18969 AND `entry` = 7848; -- Lurking Feral Scar for classic/wotlkmangos
-- Perfect Yeti Hide 18972 - changed condition missing commit
DELETE FROM `creature_loot_template` WHERE `item` = 18972 AND `entry` = 7848; -- Lurking Feral Scar for classic/wotlkmangos

-- Ancient Qiraji Artifact 21230
-- old data, wayback, wowhead / 3
-- Vekniss Warrior 15230		- 9.1954: 6.96% (1,339) L: 56 - 61 Elite 4.0 -> 6.71847
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (9.1954 + 6.96 + 4.0) / 3 WHERE `entry` = 15230 AND `item` = 21230;
-- Vekniss Guardian 15233		- 7.5017: 5.95% (4,485) L: 56 - 61 Elite 3.8 -> 5.75057
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (7.5017 + 5.95 + 3.8) / 3 WHERE `entry` = 15233 AND `item` = 21230;
-- Vekniss Wasp 15236			- 6.2812: 5.46% (1,236) L: 55 - 60 Elite 4.0 -> 5.24707
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (6.2812 + 5.46 + 4.0) / 3 WHERE `entry` = 15236 AND `item` = 21230;
-- Vekniss Soldier 15229		- 7.6682: 5.03% (1,141) L: 56 - 61 Elite 4.0 -> 5.56607
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (7.6682 + 5.03 + 4.0) / 3 WHERE `entry` = 15229 AND `item` = 21230;
-- Vekniss Stinger 15235		- 5.5556: 4.70% (619) L: 57 - 62 Elite 4.2 -> 4.81853
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (5.5556 + 4.70 + 4.2) / 3 WHERE `entry` = 15235 AND `item` = 21230;
-- Anubisath Sentinel 15264		- 4.0379: 3.85% (1,890) L: 56 - 61 Elite 2.0 -> 3.29597
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4.0379 + 3.85 + 2.0) / 3 WHERE `entry` = 15264 AND `item` = 21230;
-- Qiraji Lasher 15249			- 5.7831: 3.55% (239) L: 56 - 61 Elite 2.0 -> 3.7777
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (5.7831 + 3.55 + 2.0) / 3 WHERE `entry` = 15249 AND `item` = 21230;
-- Vekniss Hive Crawler 15240	- 3.6849: 3.44% (557) L: 57 - 62 Elite 2.2 -> 3.1083
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.6849 + 3.44 + 2.2) / 3 WHERE `entry` = 15240 AND `item` = 21230;
-- Qiraji Brainwasher 15247		- 3.2184: 2.86% (559) L: 56 - 61 Elite 1.5 -> 2.52613
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.2184 + 2.86 + 1.5) / 3 WHERE `entry` = 15247 AND `item` = 21230;
-- Obsidian Eradicator 15262	- 3.1295: 2.76% (752) L: 55 - 60 Elite 1.2 -> 2.36317
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.1295 + 2.76 + 1.2) / 3 WHERE `entry` = 15262 AND `item` = 21230;
-- Qiraji Slayer 15250			- 3.2233: 2.60% (372) L: 57 - 61 Elite 1.9 -> 2.57443
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.2233 + 2.60 + 1.9) / 3 WHERE `entry` = 15250 AND `item` = 21230;
-- Qiraji Mindslayer 15246		- 2.8771: 2.48% (431) L: 56 - 61 Elite 2.3 -> 2.55237
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2.8771 + 2.48 + 2.3) / 3 WHERE `entry` = 15246 AND `item` = 21230;
-- Anubisath Warder 15311		- 1.9531: 2.37% (148) L: 60 - 63 Elite 1.4 -> 1.9077
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.9531 + 2.37 + 1.4) / 3 WHERE `entry` = 15311 AND `item` = 21230;
-- Anubisath Defender 15277 	- 3.0928: 2.32% (449) L: 57 - 62 Elite 1.7 -> 2.37093
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.0928 + 2.32 + 1.7) / 3 WHERE `entry` = 15277 AND `item` = 21230;
-- Obsidian Nullifier 15312 	- 1.4754: 2.00% (165) L: 58 - 61 Elite 1.6 -> 1.6918
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.4754 + 2.00 + 1.6) / 3 WHERE `entry` = 15312 AND `item` = 21230;
-- Qiraji Champion 15252		- 3.2688: 1.95% (200) L: 58 - 63 Elite 1.8 -> 2.3396
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3.2688 + 1.95 + 1.8) / 3 WHERE `entry` = 15252 AND `item` = 21230;

