-- Add your query below.
-- https://github.com/vmangos/core/commit/6288656564c7eafec666893d6b63a565d1871de7

-- Pirate's Footlocker
-- sources: https://www.wowhead.com/classic/item=9276/pirates-footlocker#contains , https://youtu.be/uLYj_OFIdyo?t=681
-- https://web.archive.org/web/20090221093224/http://wow.allakhazam.com:80/db/item.html?witem=9276#Contains_Items
UPDATE `item_template` SET `MinMoneyLoot`=47, `MaxMoneyLoot`=302 WHERE `entry`=9276; -- Add missing money loot (min/max from video) - 0 0

DELETE FROM `item_loot_template` WHERE `entry` = 9276;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(9276, 9250, 15, 1, 1, 1, 0, 'Ship Schedule'),
(9276, 9249, 10, 1, 1, 1, 0, 'Captain\'s Key'),
(9276, 9252, 0, 1, 1, 1, 0, 'Lower Map Fragment'),
(9276, 9251, 0, 1, 1, 1, 0, 'Upper Map Fragment'),
(9276, 9253, 0, 1, 1, 1, 0, 'Middle Map Fragment'),
(9276, 9358, 0, 2, 1, 1, 0, 'A Head Rag'),
(9276, 9356, 0, 2, 1, 1, 0, 'A Wooden Leg'),
(9276, 9357, 0, 2, 1, 1, 0, 'A Parrot Skeleton'),
(9276, 9355, 0, 2, 1, 1, 0, 'Hoop Earring'),
(9276, 9359, 1, 2, 1, 1, 0, 'Wirt\'s Third Leg');

-- Drop chance of Pirate's Footlocker
-- source: https://www.wowhead.com/classic/item=9276/pirates-footlocker
-- 8.08, 7.75, 8.08 7.74, 7.93 = 7.916
-- 26 / (192+150+88+62) = 5,2%
-- Southsea Pirate	39 - 45 	16,649of 417,164	3.99
-- Southsea Freebooter	39 - 45 	24,696of 608,020	4.06
-- Southsea Dock Worker	39 - 45 	11,976of 284,327	4.21
-- Southsea Swashbuckler	39 - 45 	14,610of 353,841	4.13
-- Southsea Kidnapper	41 - 45 	424of 8,007	5.30
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry` = 7855 AND `item`= 9276; -- 6.32
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry` = 7856 AND `item`= 9276; -- 6.48
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry` = 7857 AND `item`= 9276; -- 6.84
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry` = 7858 AND `item`= 9276; -- 3.96
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry` = 15685 AND `item`= 9276; -- 5.29
-- 5.058, 5.2, 7.916 / 3 = 6

-- End of migration.

