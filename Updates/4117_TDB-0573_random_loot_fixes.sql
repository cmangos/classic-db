-- https://www.wowhead.com/wotlk/npc=13456/noxxions-spawn - spawned adds are inable to be looted anyways, so this went by unnoticed for long
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 13456;
DELETE FROM `creature_loot_template` WHERE `entry` = 13456;

-- https://www.wowhead.com/tbc/item=4951/squealers-belt
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 3229 AND `item` = 4951; -- Squealer's Belt

-- https://web.archive.org/web/20060224060618/http://wow.allakhazam.com/db/item.html?witem=5107
-- https://web.archive.org/web/20080508061631/http://wow.allakhazam.com/db/item.html?witem=5107 vs https://www.wowhead.com/classic/item=5107/deckhands-shirt
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` IN (3381,3382,3383,3384) AND `item` = 5107; -- Deckhand's Shirt	

-- https://www.wowhead.com/tbc/item=2390/rusted-chain-bracers
-- DELETE FROM `creature_loot_template` WHERE `entry` = 17186 AND `item` = 2390;
	
-- https://www.wowhead.com/wotlk/item=287/scalemail-boots
DELETE FROM `creature_loot_template` WHERE `entry` = 11714 AND `item` = 287;

-- https://www.wowhead.com/wotlk/item=2143/cuirboulli-boots
DELETE FROM `creature_loot_template` WHERE `item` = 2143;

-- https://www.wowhead.com/wotlk/item=3330/dargols-hauberk
DELETE FROM `reference_loot_template` WHERE `item` = 3330;
DELETE FROM `creature_loot_template` WHERE `entry` = 1658 AND `item` = 3330;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1658, 3330, 2, 9, 1, 1, 0, 'Dargol\'s Hauberk');

-- https://www.wowhead.com/wotlk/item=2283/rat-cloth-belt
DELETE FROM `reference_loot_template` WHERE `item` = 2283;
DELETE FROM `creature_loot_template` WHERE `entry` = 1177 AND `item` = 2283;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1177, 2283, 2, 9, 1, 1, 0, 'Rat Cloth Belt');

-- https://www.wowhead.com/wotlk/item=892/gnoll-casting-gloves
DELETE FROM `reference_loot_template` WHERE `item` = 892;
DELETE FROM `creature_loot_template` WHERE `entry` = 1009 AND `item` = 892;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1009, 892, 2, 9, 1, 1, 0, 'Gnoll Casting Gloves');

-- https://www.wowhead.com/wotlk/item=3022/bluegill-breeches
DELETE FROM `reference_loot_template` WHERE `item` = 3022;
DELETE FROM `creature_loot_template` WHERE `entry` = 1028 AND `item` = 3022;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1028, 3022, 2, 9, 1, 1, 0, 'Bluegill Breeches');

-- https://www.wowhead.com/wotlk/item=2274/sappers-gloves
DELETE FROM `reference_loot_template` WHERE `item` = 2274;
DELETE FROM `creature_loot_template` WHERE `entry` = 1222 AND `item` = 2274;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1222, 2274, 1.1, 9, 1, 1, 0, 'Sapper\'s Gloves');

-- wotlk - https://www.wowhead.com/wotlk/item=2579/green-linen-shirt
-- UPDATE `creature_loot_template` SET `item` = 2589, `comments` = 'Linen Cloth' WHERE `entry` = 48 AND `item` = 2579; -- tbcmangos error only

