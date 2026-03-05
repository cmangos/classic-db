-- clams have no loot groups restricting pearls to one per clam
-- partly reverts https://github.com/cmangos/tbc-db/commit/ba9e99e3e98c04c21d7fd241060eace1d3f8e034 & dropchance review

-- https://www.wowhead.com/tbc/item=5523/small-barnacled-clam#contains - wotlk Small Barnacled Clam spell 58172 different system! - https://www.wowhead.com/wotlk/spell=58172/small-barnacled-clam
-- https://web.archive.org/web/20090505130501/http://wow.allakhazam.com/db/item.html?witem=5523#Contains_Items 5%
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 5523 AND `item` = 5498; -- Small Lustrous Pearl

-- https://www.wowhead.com/classic/item=5524/thick-shelled-clam#contains - wotlk Thick-shelled Clam spell 58168
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 5524 AND `item` = 5498; -- Small Lustrous Pearl
UPDATE `item_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 2.5 WHERE `entry` = 5524 AND `item` = 5500; -- Iridescent Pearl (2000 / 80000) - down from 3%

-- https://www.wowhead.com/classic/item=7973/big-mouth-clam#contains - wotlk Big-mouth Clam spell 58165
-- https://web.archive.org/web/20081220231138/http://wow.allakhazam.com/db/item.html?witem=7973#Contains_Items
UPDATE `item_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 4 WHERE `entry` = 7973 AND `item` = 7971; -- Black Pearl - same
UPDATE `item_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 2.5 WHERE `entry` = 7973 AND `item` = 5500; -- Iridescent Pearl - classicmangos had 3 chance, tbcmangos had 2 chance
UPDATE `item_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 1.5 WHERE `entry` = 7973 AND `item` = 13926; -- Golden Pearl - classicmangos had 2 chance, tbcmangos had 0.5 chance
UPDATE `item_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 1 WHERE `entry` = 7973 AND `item` = 5498; -- Small Lustrous Pearl - classicmangos had 2 chance

-- https://www.wowhead.com/tbc/object=19017/giant-clam
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 2954 AND `item` = 5498; -- Small Lustrous Pearl

-- https://www.wowhead.com/tbc/object=19018/giant-clam
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 2959 AND `item` = 5498; -- Small Lustrous Pearl
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 2959 AND `item` = 5500; -- Iridescent Pearl

