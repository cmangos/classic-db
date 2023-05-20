-- correct some min/max count values for chest loot items.
-- 2280
-- 2849 Battered Chest - https://www.wowhead.com/tbc/object=2849/battered-chest
-- 111095 Tattered Chest - https://www.wowhead.com/tbc/object=111095/tattered-chest
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 8 WHERE `entry` = 2280 AND `item` = 1179; -- Ice Cold Milk
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2280 AND `item` = 2455; -- Minor Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2280 AND `item` = 858; -- Lesser Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2280 AND `item` = 414; -- Dalaran Sharp
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 7 WHERE `entry` = 2280 AND `item` = 2287; -- Haunch of Meat
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2280 AND `item` = 4537; -- Tel'Abim Banana
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2280 AND `item` = 4541; -- Freshly Baked Bread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2280 AND `item` = 4605; -- Red-speckled Mushroom
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2280 AND `item` = 2318; -- Light Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2280 AND `item` = 2996; -- Bolt of Linen Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 2842; -- Silver Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2280 AND `item` = 2836; -- Coarse Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2280 AND `item` = 2770; -- Copper Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2280 AND `item` = 2771; -- Tin Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2280 AND `item` = 2592; -- Wool Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2280 AND `item` = 2450; -- Briarthorn
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 2453; -- Bruiseweed
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 783; -- Light Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2280 AND `item` = 785; -- Mageroyal
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 2452; -- Swiftthistle
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 1210; -- Shadowgem
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 2775; -- Silver Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2280 AND `item` = 818; -- Tigerseye
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2280 AND `item` IN (
422, -- Dwarven Mild
1205, -- Melon Juice
3770, -- Mutton Chop
4538, -- Snapvine Watermelon
4542, -- Moist Cornbread
4606, -- Spongy Morel

2319, -- Medium Leather
2772, -- Iron Ore
2776, -- Gold Ore
2838, -- Heavy Stone
2997, -- Bolt of Woolen Cloth
3355, -- Wild Steelbloom
3356, -- Kingsblood
3357, -- Liferoot
4232, -- Medium Hide
4234, -- Heavy Leather
4235, -- Heavy Hide
4306, -- Silk Cloth
5503, -- Clam Meat
5504, -- Tangy Clam Meat

929, -- Healing Potion
3385); -- Lesser Mana Potion
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(2280, 2589, 2, 1, 7, 0), -- Linen Cloth
(2280, 2835, 2, 2, 8, 0), -- Rough Stone
(2280, 2449, 2, 2, 8, 0), -- Earthroot
(2280, 2447, 2, 2, 7, 0), -- Peacebloom
(2280, 765, 2, 2, 8, 0), -- Silverleaf
(2280, 1206, 0, 1, 1, 0.5), -- Moss Agate
(2280, 5498, 0, 1, 1, 0.5), -- Small Lustrous Pearl
(2280, 5500, 0, 1, 1, 0.5), -- Iridescent Pearl
(2280, 1705, 0, 1, 1, 0.5); -- Lesser Moonstone

-- 2281
-- 2850 Solid Chest - https://www.wowhead.com/tbc/object=2850/solid-chest
-- 3714 Alliance Strongbox - https://www.wowhead.com/tbc/object=3714/alliance-strongbox
-- 3715 Tattered Chest - https://www.wowhead.com/tbc/object=3715/tattered-chest
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 1205; -- Melon Juice
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2281 AND `item` = 3770; -- Mutton Chop
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 4538; -- Snapvine Watermelon
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2281 AND `item` = 4542; -- Moist Cornbread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 4606; -- Spongy Morel
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2281 AND `item` = 422; -- Dwarven Mild
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2281 AND `item` = 858; -- Lesser Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2281 AND `item` = 2455; -- Minor Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2281 AND `item` = 929; -- Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2281 AND `item` = 3385; -- Lesser Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2281 AND `item` = 2318; -- Light Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 2319; -- Medium Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2281 AND `item` = 2592; -- Wool Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 3577; -- Gold Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 2996; -- Bolt of Linen Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 2997; -- Bolt of Woolen Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2281 AND `item` = 2836; -- Coarse Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2281 AND `item` = 2770; -- Copper Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2281 AND `item` = 2771; -- Tin Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2281 AND `item` = 2450; -- Briarthorn
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 3356; -- Kingsblood
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2281 AND `item` = 785; -- Mageroyal
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2281 AND `item` = 2452; -- Swiftthistle
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2281 AND `item` = 3355; -- Wild Steelbloom
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 1206; -- Moss Agate
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 2842; -- Silver Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2281 AND `item` = 2453; -- Bruiseweed
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 783; -- Light Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 1705; -- Lesser Moonstone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 1210; -- Shadowgem
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2281 AND `item` = 2775; -- Silver Ore
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2281 AND `item` IN (
414, -- Dalaran Sharp
1179, -- Ice Cold Milk
2287, -- Haunch of Meat
4537, -- Tel'Abim Banana
4541, -- Freshly Baked Bread
4605, -- Red-speckled Mushroom

2772, -- Iron Ore
2776, -- Gold Ore
2838, -- Heavy Stone
3357, -- Liferoot
4232, -- Medium Hide
4234, -- Heavy Leather
4235, -- Heavy Hide
4306, -- Silk Cloth
5503, -- Clam Meat
5504, -- Tangy Clam Meat

818); -- Tigerseye
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(2281, 2589, 2, 1, 8, 0), -- Linen Cloth
(2281, 2835, 2, 2, 8, 0), -- Rough Stone
(2281, 2449, 2, 2, 8, 0), -- Earthroot
(2281, 5498, 0, 1, 1, 0.5), -- Small Lustrous Pearl
(2281, 5500, 0, 1, 1, 0.5), -- Iridescent Pearl
(2281, 1529, 0, 1, 1, 0.5); -- Jade

-- 2282
-- 2852 Solid Chest - https://www.wowhead.com/tbc/object=2852/solid-chest
-- 4095 Alliance Strongbox - https://www.wowhead.com/classic/object=4095/alliance-strongbox
-- 4096 Tattered Chest - https://www.wowhead.com/tbc/object=4096/tattered-chest
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 8 WHERE `entry` = 2282 AND `item` = 1205; -- Melon Juice
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2282 AND `item` = 929; -- Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2282 AND `item` = 3385; -- Lesser Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 422; -- Dwarven Mild
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 4542; -- Moist Cornbread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 3770; -- Mutton Chop
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 4606; -- Spongy Morel
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 4538; -- Snapvine Watermelon
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2282 AND `item` = 2319; -- Medium Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2282 AND `item` = 3577; -- Gold Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2282 AND `item` = 2997; -- Bolt of Woolen Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2282 AND `item` = 2838; -- Heavy Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2282 AND `item` = 3357; -- Liferoot
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2282 AND `item` = 2453; -- Bruiseweed
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2282 AND `item` = 2772; -- Iron Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2282 AND `item` = 3356; -- Kingsblood
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2282 AND `item` = 4306; -- Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2282 AND `item` = 2771; -- Tin Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2282 AND `item` = 3355; -- Wild Steelbloom
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2282 AND `item` = 1705; -- Lesser Moonstone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2282 AND `item` = 4232; -- Medium Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2282 AND `item` = 1206; -- Moss Agate
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2282 AND `item` IN (
1707, -- Stormwind Brie
1708, -- Sweet Nectar
3771, -- Wild Hog Shank
4539, -- Goldenbark Apple
4544, -- Mulgore Spice Bread
4607, -- Delicious Cave Mold

3821, -- Goldthorn
4234, -- Heavy Leather
4235, -- Heavy Hide
4305, -- Bolt of Silk Cloth
5504, -- Tangy Clam Meat

3827, -- Mana Potion
1710, -- Greater Healing Potion
1210); -- Shadowgem
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(2282, 858, 0, 3, 4, 10), -- Lesser Healing Potion
(2282, 2455, 0, 3, 4, 10), -- Minor Mana Potion
(2282, 2592, 2, 2, 11, 0), -- Wool Cloth
(2282, 2318, 2, 2, 6, 0), -- Light Leather
(2282, 2450, 2, 2, 6, 0), -- Briarthorn
(2282, 2836, 2, 2, 6, 0), -- Coarse Stone
(2282, 2770, 2, 2, 8, 0), -- Copper Ore
(2282, 783, 2, 1, 2, 0), -- Light Hide
(2282, 785, 2, 2, 8, 0), -- Mageroyal
(2282, 2452, 2, 2, 5, 0), -- Swiftthistle
(2282, 2775, 2, 2, 3, 0), -- Silver Ore
(2282, 1529, 0, 1, 1, 0.5), -- Jade
(2282, 6037, 2, 1, 1, 0), -- Truesilver Bar
(2282, 5500, 0, 1, 1, 0.5), -- Iridescent Pearl
(2282, 3864, 0, 1, 1, 0.5); -- Citrine

-- 2283
-- 2855 Solid Chest - https://www.wowhead.com/tbc/object=2855/solid-chest#contains
-- 105570 Alliance Strongbox - https://www.wowhead.com/tbc/object=105570/alliance-strongbox#contains
-- 105578 Tattered Chest - https://www.wowhead.com/classic/object=105578/horde-chest
-- 105579 Tattered Chest - https://www.wowhead.com/classic/object=105579/alliance-chest#contains
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2283 AND `item` = 1708; -- Sweet Nectar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 4539; -- Goldenbark Apple
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 4607; -- Delicious Cave Mold
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 4544; -- Mulgore Spice Bread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 1707; -- Stormwind Brie
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 3771; -- Wild Hog Shank
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2283 AND `item` = 929; -- Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2283 AND `item` = 3385; -- Lesser Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2283 AND `item` = 3827; -- Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2283 AND `item` = 1710; -- Greater Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2283 AND `item` = 4234; -- Heavy Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2283 AND `item` = 2319; -- Medium Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 2997; -- Bolt of Woolen Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2283 AND `item` = 4306; -- Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2283 AND `item` = 3577; -- Gold Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2283 AND `item` = 2838; -- Heavy Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2283 AND `item` = 2772; -- Iron Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2283 AND `item` = 2771; -- Tin Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 3, `maxcount` = 8 WHERE `entry` = 2283 AND `item` = 2453; -- Bruiseweed
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2283 AND `item` = 3818; -- Fadeleaf
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2283 AND `item` = 3356; -- Kingsblood
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2283 AND `item` = 3357; -- Liferoot
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2283 AND `item` = 3355; -- Wild Steelbloom
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2283 AND `item` = 1529; -- Jade
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2283 AND `item` = 4305; -- Bolt of Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2283 AND `item` = 4232; -- Medium Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2283 AND `item` = 1705; -- Lesser Moonstone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2283 AND `item` = 2776; -- Gold Ore
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2283 AND `item` IN (
422, -- Dwarven Mild
1205, -- Melon Juice
1645, -- Moonberry Juice
3770, -- Mutton Chop
3927, -- Fine Aged Cheddar
4538, -- Snapvine Watermelon
4542, -- Moist Cornbread
4599, -- Cured Ham Steak
4601, -- Soft Banana Bread
4602, -- Moon Harvest Pumpkin
4606, -- Spongy Morel
4608, -- Raw Black Truffle

3821, -- Goldthorn
4235, -- Heavy Hide
4304, -- Thick Leather
4338, -- Mageweave Cloth
4339, -- Bolt of Mageweave
4625, -- Firebloom
5504, -- Tangy Clam Meat
7911, -- Truesilver Ore
8146, -- Wicked Claw
8169, -- Thick Hide
8831, -- Purple Lotus

1206, -- Moss Agate
5500, -- Iridescent Pearl
1210, -- Shadowgem

7339); -- Miniscule Diamond Ring (classicmangos corruption)

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(2283, 2592, 2, 2, 8, 0), -- Wool Cloth
(2283, 2836, 2, 2, 8, 0), -- Coarse Stone
(2283, 2450, 2, 3, 10, 0), -- Briarthorn
(2283, 2452, 2, 2, 8, 0), -- Swiftthistle
(2283, 2775, 2, 2, 6, 0), -- Silver Ore
(2283, 6037, 2, 1, 1, 0), -- Truesilver Bar
(2283, 3864, 0, 1, 1, 0.5), -- Citrine
(2283, 7909, 0, 1, 1, 0.5), -- Aquamarine
(2283, 7971, 0, 1, 1, 0.5); -- Black Pearl

-- 2284
-- 2857 Solid Chest - https://www.wowhead.com/classic/object=2857/solid-chest#contains
-- 105581 Tattered Chest - https://www.wowhead.com/classic/object=105581/alliance-chest#contains
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 7 WHERE `entry` = 2284 AND `item` = 1708; -- Sweet Nectar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2284 AND `item` = 4539; -- Goldenbark Apple
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2284 AND `item` = 1710; -- Greater Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2284 AND `item` = 3827; -- Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2284 AND `item` = 1707; -- Stormwind Brie
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 2284 AND `item` = 4607; -- Delicious Cave Mold
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 7 WHERE `entry` = 2284 AND `item` = 4544; -- Mulgore Spice Bread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 2284 AND `item` = 3771; -- Wild Hog Shank
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2284 AND `item` = 929; -- Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 2284 AND `item` = 3385; -- Lesser Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 8 WHERE `entry` = 2284 AND `item` = 4234; -- Heavy Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 10 WHERE `entry` = 2284 AND `item` = 4306; -- Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 6037; -- Truesilver Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 4305; -- Bolt of Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2284 AND `item` = 2836; -- Coarse Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2284 AND `item` = 2838; -- Heavy Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 9 WHERE `entry` = 2284 AND `item` = 2772; -- Iron Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2284 AND `item` = 4338; -- Mageweave Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 2284 AND `item` = 2319; -- Medium Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2284 AND `item` = 2771; -- Tin Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 3577; -- Gold Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 3, `maxcount` = 10 WHERE `entry` = 2284 AND `item` = 2453; -- Bruiseweed
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 2284 AND `item` = 3818; -- Fadeleaf
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2284 AND `item` = 3358; -- Khadgar's Whisker
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 3, `maxcount` = 10 WHERE `entry` = 2284 AND `item` = 3356; -- Kingsblood
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 2284 AND `item` = 3357; -- Liferoot
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 9 WHERE `entry` = 2284 AND `item` = 3355; -- Wild Steelbloom
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 3864; -- Citrine
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 4232; -- Medium Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 2284 AND `item` = 1529; -- Jade
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 4 WHERE `entry` = 2284 AND `item` = 2775; -- Silver Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 4 WHERE `entry` = 2284 AND `item` = 4235; -- Heavy Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `entry` = 2284 AND `item` = 2776; -- Gold Ore
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2284 AND `item` IN (
1645, -- Moonberry Juice
3927, -- Fine Aged Cheddar
4599, -- Cured Ham Steak
4601, -- Soft Banana Bread
4602, -- Moon Harvest Pumpkin
4608, -- Raw Black Truffle

3821, -- Goldthorn
4304, -- Thick Leather
4339, -- Bolt of Mageweave
4625, -- Firebloom
7911, -- Truesilver Ore
8146, -- Wicked Claw
8169, -- Thick Hide
8831, -- Purple Lotus

1705, -- Lesser Moonstone

7339); -- Miniscule Diamond Ring (classicmangos corruption)

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(2284, 7909, 0, 1, 1, 0.5), -- Aquamarine
(2284, 7971, 0, 1, 1, 0.5), -- Black Pearl
(2284, 7910, 0, 1, 1, 0.5); -- Star Ruby

-- 5278
-- 4149 Solid Chest -- https://www.wowhead.com/classic/object=4149/solid-chest#contains
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 8 WHERE `entry` = 5278 AND `item` = 1645; -- Moonberry Juice
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 5278 AND `item` = 1710; -- Greater Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 5278 AND `item` = 3827; -- Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 4601; -- Soft Banana Bread
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 7 WHERE `entry` = 5278 AND `item` = 4599; -- Cured Ham Steak
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 3927; -- Fine Aged Cheddar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 4602; -- Moon Harvest Pumpkin
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 4608; -- Raw Black Truffle
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 5278 AND `item` = 6149; -- Greater Mana Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `entry` = 5278 AND `item` = 3928; -- Superior Healing Potion
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `entry` = 5278 AND `item` = 8169; -- Thick Hide
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 6037; -- Truesilver Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 4234; -- Heavy Leather
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 4305; -- Bolt of Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 5278 AND `item` = 2772; -- Iron Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 4338; -- Mageweave Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 6 WHERE `entry` = 5278 AND `item` = 3858; -- Mithril Ore
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 9 WHERE `entry` = 5278 AND `item` = 4306; -- Silk Cloth
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 9 WHERE `entry` = 5278 AND `item` = 7912; -- Solid Stone
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 8 WHERE `entry` = 5278 AND `item` = 3818; -- Fadeleaf
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 3821; -- Goldthorn
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 5278 AND `item` = 3358; -- Khadgar's Whisker
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 5278 AND `item` = 3357; -- Liferoot
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 2, `maxcount` = 7 WHERE `entry` = 5278 AND `item` = 8831; -- Purple Lotus
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 7909; -- Aquamarine
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 3577; -- Gold Bar
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 3864; -- Citrine
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `entry` = 5278 AND `item` = 4339; -- Bolt of Mageweave
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 5278 AND `item` = 7911; -- Truesilver Ore
DELETE FROM `gameobject_loot_template` WHERE `entry` = 5278 AND `item` IN (
1707, -- Stormwind Brie
4607, -- Delicious Cave Mold
3771, -- Wild Hog Shank
4544, -- Mulgore Spice Bread
1708, -- Sweet Nectar
4539, -- Goldenbark Apple

8839, -- Blindweed
4625, -- Firebloom
8838, -- Sungrass
4304, -- Thick Leather
8146, -- Wicked Claw

1529, -- Jade
1705); -- Lesser Moonstone
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`, `ChanceOrQuestChance`) VALUES
(5278, 2838, 2, 2, 11, 0), -- Heavy Stone
(5278, 3356, 2, 3, 10, 0), -- Kingsblood
(5278, 2776, 2, 2, 4, 0); -- Gold Ore

-- item wrong GROUP
UPDATE `gameobject_loot_template` SET `groupid` = 0, `ChanceOrQuestChance` = 0.01 WHERE `entry` IN (2283,2284,5278) AND `item` = 9719; -- Broken Blade of Heroes (was even chanced in grp 2 (gathering materials)

-- tbcmangos+ has corrupted data1 for these PTR gameobjects (terokkar forest quest that was cut from content)
-- https://www.wowhead.com/tbc/quest=10014/the-firewing-point-project
-- https://www.wowhead.com/tbc/quest=10015/the-firewing-point-project
-- UPDATE `gameobject_template` SET `data1` = `entry` WHERE `entry` IN (
-- 184619, -- Mana Bomb Code Sheet 1 (2281)
-- 184620, -- Mana Bomb Code Sheet 2 (2281)
-- 184621, -- Mana Bomb Code Sheet 3 (2281)
-- 184622); -- Mana Bomb Code Sheet 4 (2281)
-- REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
-- (184619, 25754, -100),  -- Mana Bomb Code Sheet 1
-- (184620, 25755, -100), -- Mana Bomb Code Sheet 2
-- (184621, 25756, -100), -- Mana Bomb Code Sheet 3
-- (184622, 25757, -100); -- Mana Bomb Code Sheet 4

