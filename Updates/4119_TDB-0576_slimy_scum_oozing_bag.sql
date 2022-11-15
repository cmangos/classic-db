-- https://www.wowhead.com/tbc/item=20766/slimy-bag
UPDATE `item_template` SET `minMoneyLoot` = 100, `maxMoneyLoot` = 1000 WHERE `entry` = 20766;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((6.65 + 18.05 + 9.301) / 3)   WHERE `item` = 20766 AND `entry` = 4392; -- Corrosive Swamp Ooze (9.301)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((5.92 + 15.06 + 8.592) / 3)   WHERE `item` = 20766 AND `entry` = 4393; -- Acidic Swamp Ooze (8.592)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((5.53 + 15.58 + 10.331) / 3)   WHERE `item` = 20766 AND `entry` = 4391; -- Swamp Ooze (10.331)

DELETE FROM `item_loot_template` WHERE `entry` = 20766;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20766, 2450, 4.6, 1, 1, 1, 0, 'Briarthorn'),
(20766, 2449, 1.7, 1, 1, 1, 0, 'Earthroot'),
(20766, 3818, 5.2, 1, 1, 1, 0, 'Fadeleaf'),
(20766, 3357, 2.3, 1, 1, 1, 0, 'Liferoot'),
(20766, 2447, 1.2, 1, 1, 1, 0, 'Peacebloom'),
(20766, 765, 5.8, 1, 1, 1, 0, 'Silverleaf'),
(20766, 2453, 1.7, 1, 1, 1, 0, 'Bruiseweed'),
(20766, 3356, 5.2, 1, 1, 1, 0, 'Kingsblood'),
(20766, 2452, 2.9, 1, 1, 1, 0, 'Swiftthistle'),
(20766, 785, 0.6, 1, 1, 1, 0, 'Mageroyal'),

(20766, 929, 5.2, 2, 2, 4, 0, 'Healing Potion'),
(20766, 3385, 5.8, 2, 2, 4, 0, 'Lesser Mana Potion'),
(20766, 1710, 5.8, 2, 1, 2, 0, 'Greater Healing Potion'),
(20766, 3827, 6.9, 2, 1, 2, 0, 'Mana Potion'),

(20766, 3864, 1.7, 3, 1, 1, 0, 'Citrine'),
(20766, 7909, 0.6, 3, 1, 1, 0, 'Aquamarine'),
(20766, 1529, 1.2, 3, 1, 1, 0, 'Jade'),
(20766, 1705, 0.6, 3, 1, 1, 0, 'Lesser Moonstone'),
(20766, 7910, 0.1, 3, 1, 1, 0, 'Star Ruby'),
-- more research befor adding predefined refloot
(20766, 3608, 0.1, 4, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
(20766, 4300, 0.1, 4, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(20766, 5774, 0.1, 4, 1, 1, 0, 'Pattern: Green Silk Pack'),
(20766, 7090, 0.1, 4, 1, 1, 0, 'Pattern: Green Silk Armor'),
(20766, 11167, 0.1, 4, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit');

-- https://web.archive.org/web/20090325163929/http://wow.allakhazam.com/db/item.html?witem=20767#Dropped
-- https://www.wowhead.com/tbc/item=20767/scum-covered-bag#dropped-by;0+3-10-9+1
UPDATE `item_template` SET `minMoneyLoot` = 500, `maxMoneyLoot` = 1500 WHERE `entry` = 20767;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.31 + 10.58 + 6.0209) / 3)   WHERE `item` = 20767 AND `entry` = 8766; -- Forest Ooze (6.0209)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((11.23 + 26.37 + 15.0943) / 3) WHERE `item` = 20767 AND `entry` = 8212; -- The Reak (15.0943)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((5.41 + 11.56 + 8.9766) / 3)   WHERE `item` = 20767 AND `entry` = 7086; -- Cursed Ooze (8.9766)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((7.54 + 18.14 + 12.7864) / 3)  WHERE `item` = 20767 AND `entry` = 5235; -- Fungal Ooze (12.7864)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((5.22 + 14.78 + 11.2079) / 3)  WHERE `item` = 20767 AND `entry` = 5228; -- Saturated Ooze (11.2079)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((9.08 + 17.90 + 11.0883) / 3)  WHERE `item` = 20767 AND `entry` = 4469; -- Emerald Ooze (11.0883)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((11.82 + 19.59 + 11.911) / 3)  WHERE `item` = 20767 AND `entry` = 4394; -- Bubbling Swamp Ooze (11.911)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.28 + 9.58 + 7.6584) / 3)    WHERE `item` = 20767 AND `entry` = 6556; -- Muculent Ooze (7.6584)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.82 + 10.88 + 9.1922) / 3)   WHERE `item` = 20767 AND `entry` = 6557; -- Primal Ooze (9.1922)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((5.53 + 16.22 + 9.1358) / 3)   WHERE `item` = 20767 AND `entry` = 2656; -- Jade Ooze (9.1358)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((4.66 + 15.55 + 7.8762) / 3)   WHERE `item` = 20767 AND `entry` = 2655; -- Green Sludge (7.8762)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((8.65 + 16.84 + 12.4224) / 3)  WHERE `item` = 20767 AND `entry` = 4468; -- Jade Sludge (12.4224)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((6.19 + 13.55 + 13.1915) / 3)  WHERE `item` = 20767 AND `entry` = 12221; -- Noxious Slime (13.1915)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((4.43 + 13.86 + 11.5072) / 3)  WHERE `item` = 20767 AND `entry` = 12222; -- Creeping Sludge (11.5072)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((11.53 + 17.30 + 17.949) / 3)  WHERE `item` = 20767 AND `entry` = 14235; -- The Rot (17.949)

DELETE FROM `reference_loot_template` WHERE `entry` = 44001;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 44001;
DELETE FROM `reference_loot_template` WHERE `entry` IN (24707); -- high level patterns with 4.2% chance items (7989,7990,7991,7993,8028,8029,8389,8390,8398,8399,8400,8401,9295,9296,9297,9298,10312,10315,10320,10605,10606,10608,11206,11208,11224,11225)
DELETE FROM `item_loot_template` WHERE `entry` = 20767;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20767, 8831, 2.1, 1, 1, 1, 0, 'Purple Lotus'),
(20767, 8836, 2.1, 1, 1, 1, 0, 'Arthas\' Tears'),
(20767, 2450, 2, 1, 1, 1, 0, 'Briarthorn'),
(20767, 2453, 2.2, 1, 1, 1, 0, 'Bruiseweed'),
(20767, 2449, 2.3, 1, 1, 1, 0, 'Earthroot'),
(20767, 3818, 2.2, 1, 1, 1, 0, 'Fadeleaf'),
(20767, 4625, 2.4, 1, 1, 1, 0, 'Firebloom'),
(20767, 3821, 2.2, 1, 1, 1, 0, 'Goldthorn'),
(20767, 3358, 2.7, 1, 1, 1, 0, 'Khadgar\'s Whisker'),
(20767, 3357, 2.7, 1, 1, 1, 0, 'Liferoot'),
(20767, 785, 1.8, 1, 1, 1, 0, 'Mageroyal'),
(20767, 2447, 2.6, 1, 1, 1, 0, 'Peacebloom'),
(20767, 765, 2.1, 1, 1, 1, 0, 'Silverleaf'),
(20767, 3820, 2.4, 1, 1, 1, 0, 'Stranglekelp'),
(20767, 2452, 2.2, 1, 1, 1, 0, 'Swiftthistle'),
(20767, 3819, 2.6, 1, 1, 1, 0, 'Wintersbite'),

(20767, 1710, 8.4, 2, 2, 4, 0, 'Greater Healing Potion'),
(20767, 3827, 8.2, 2, 2, 4, 0, 'Mana Potion'),
(20767, 6149, 4.2, 2, 2, 3, 0, 'Greater Mana Potion'),
(20767, 3928, 4.5, 2, 2, 3, 0, 'Superior Healing Potion'),

(20767, 7909, 1.9, 3, 1, 1, 0, 'Aquamarine'),
(20767, 7910, 1.4, 3, 1, 1, 0, 'Star Ruby'),
(20767, 3864, 0.5, 3, 1, 1, 0, 'Citrine'),
-- more research befor adding predefined refloot
(20767, 8029, 0.1, 4, 1, 1, 0, 'Plans: Wicked Mithril Blade'), -- see bonding doesnt seem to be relevant for drop?
(20767, 8389, 0.1, 4, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(20767, 7993, 0.1, 4, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(20767, 7975, 0.1, 4, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(20767, 9295, 0.1, 4, 1, 1, 0, 'Recipe: Invisibility Potion'),
(20767, 8387, 0.1, 4, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(20767, 7990, 0.1, 4, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(20767, 7992, 0.1, 4, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(20767, 8390, 0.1, 4, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(20767, 8386, 0.1, 4, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(20767, 10312, 0.1, 4, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(20767, 10315, 0.1, 4, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(20767, 3395, 0.1, 4, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(20767, 8385, 0.1, 4, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(20767, 11225, 0.1, 4, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(20767, 10320, 0.1, 4, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(20767, 10301, 0.1, 4, 1, 1, 0, 'Pattern: White Bandit Mask');

-- https://www.wowhead.com/tbc/item=20768/oozing-bag
-- https://web.archive.org/web/20080531141128/http://wow.allakhazam.com/db/item.html?witem=20768
UPDATE `item_template` SET `minMoneyLoot` = 1000, `maxMoneyLoot` = 2500 WHERE `entry` = 20768;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((1.76 + 8.30 + 4.3995) / 3)   WHERE `item` = 20768 AND `entry` = 9477; -- Cloned Ooze (4.3995)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((1.57 + 0 + 7.9545) / 3)   WHERE `item` = 20768 AND `entry` = 9621; -- Gargantuan Ooze (7.9545)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((2.77 + 5.82 + 3.7706) / 3)   WHERE `item` = 20768 AND `entry` = 7092; -- Tainted Ooze (3.7706)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((15.36 + 14.93 + 10.5263) / 3)   WHERE `item` = 20768 AND `entry` = 14345; -- The Ongar (10.5263)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((1.78 + 5.88 + 4.0918) / 3)   WHERE `item` = 20768 AND `entry` = 6559; -- Glutinous Ooze (4.0918)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((2.10 + 8.01 + 4.2585) / 3)   WHERE `item` = 20768 AND `entry` = 7093; -- Vile Ooze (4.2585)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.30 + 9.14 + 5.0638) / 3)   WHERE `item` = 20768 AND `entry` = 8607; -- Rotting Sludge (5.0638)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.75 + 10.19 + 4.4426) / 3)   WHERE `item` = 20768 AND `entry` = 1806; -- Vile Slime (4.4426)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.95 + 10.62 + 4.9862) / 3)   WHERE `item` = 20768 AND `entry` = 1808; -- Devouring Ooze (4.9862)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((3.99 + 9.96 + 5.706) / 3)   WHERE `item` = 20768 AND `entry` = 8606; -- Living Decay (5.706)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((4.97 + 13.19 + 4.8128) / 3)   WHERE `item` = 20768 AND `entry` = 12387; -- Large Vile Slime (4.8128)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((4.67 + 2.54 + 7.2727) / 3)   WHERE `item` = 20768 AND `entry` = 16243; -- Plague Slime (7.2727)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ((10.09 + 6.91 + 12.7407) / 3)   WHERE `item` = 20768 AND `entry` = 15335; -- Flesh Hunter (12.7407)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6557, 20768, 0.1, 0, 1, 1, 0, 'Oozing Bag'); -- Primal Ooze

DELETE FROM `item_loot_template` WHERE `entry` = 20768;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20768, 8836, 2.1, 1, 1, 1, 0, 'Arthas\' Tears'),
(20768, 8839, 1.7, 1, 1, 1, 0, 'Blindweed'),
(20768, 2450, 1.5, 1, 1, 1, 0, 'Briarthorn'),
(20768, 13463, 2.5, 1, 1, 1, 0, 'Dreamfoil'),
(20768, 2449, 1.8, 1, 1, 1, 0, 'Earthroot'),
(20768, 3818, 1.3, 1, 1, 1, 0, 'Fadeleaf'),
(20768, 4625, 0.9, 1, 1, 1, 0, 'Firebloom'),
(20768, 8845, 1.4, 1, 1, 1, 0, 'Ghost Mushroom'),
(20768, 13464, 0.9, 1, 1, 1, 0, 'Golden Sansam'),
(20768, 3821, 0.9, 1, 1, 1, 0, 'Goldthorn'),
(20768, 8846, 1.3, 1, 1, 1, 0, 'Gromsblood'),
(20768, 3358, 2.7, 1, 1, 1, 0, 'Khadgar\'s Whisker'),
(20768, 3357, 2.5, 1, 1, 1, 0, 'Liferoot'),
(20768, 785, 1.3, 1, 1, 1, 0, 'Mageroyal'),
(20768, 2447, 0.9, 1, 1, 1, 0, 'Peacebloom'),
(20768, 8831, 1.4, 1, 1, 1, 0, 'Purple Lotus'),
(20768, 765, 1.7, 1, 1, 1, 0, 'Silverleaf'),
(20768, 3820, 1.6, 1, 1, 1, 0, 'Stranglekelp'),
(20768, 8838, 2, 1, 1, 1, 0, 'Sungrass'),
(20768, 2452, 2.9, 1, 1, 1, 0, 'Swiftthistle'),
(20768, 3819, 1.6, 1, 1, 1, 0, 'Wintersbite'),
(20768, 2453, 1.8, 1, 1, 1, 0, 'Bruiseweed'),

(20768, 3928, 8.7, 2, 2, 3, 0, 'Superior Healing Potion'),
(20768, 6149, 8.8, 2, 2, 3, 0, 'Greater Mana Potion'),
(20768, 1710, 5.2, 2, 2, 4, 0, 'Greater Healing Potion'),
(20768, 3827, 4.5, 2, 2, 4, 0, 'Mana Potion'),

(20768, 7909, 1.5, 3, 1, 1, 0, 'Aquamarine'),
(20768, 7910, 1.6, 3, 1, 1, 0, 'Star Ruby'),
-- more research befor adding predefined refloot
(20768, 15746, 0.1, 4, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(20768, 14496, 0.1, 4, 1, 1, 0, 'Pattern: Felcloth Hood'),
(20768, 14506, 0.1, 4, 1, 1, 0, 'Pattern: Felcloth Robe'),
(20768, 14474, 0.1, 4, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(20768, 14466, 0.1, 4, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(20768, 14504, 0.1, 4, 1, 1, 0, 'Pattern: Runecloth Shoulders'),
(20768, 12683, 0.1, 4, 1, 1, 0, 'Plans: Thorium Belt'),
(20768, 12704, 0.1, 4, 1, 1, 0, 'Plans: Thorium Leggings'),
(20768, 14484, 0.1, 4, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(20768, 14494, 0.1, 4, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(20768, 15737, 0.1, 4, 1, 1, 0, 'Pattern: Chimeric Boots'),
(20768, 14508, 0.1, 4, 1, 1, 0, 'Pattern: Felcloth Shoulders'),
(20768, 14470, 0.1, 4, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(20768, 15757, 0.1, 4, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(20768, 12684, 0.1, 4, 1, 1, 0, 'Plans: Thorium Bracers'),
-- https://youtu.be/37IM_kWPz1k?t=343 - lots of items same time
-- https://www.wowhead.com/tbc/item=20768/oozing-bag#contains
(20768, 20769, 2, 5, 1, 1, 0, 'Disgusting Oozeling'); -- https://web.archive.org/web/20101125235736/http://wow.allakhazam.com/db/item.html?witem=20769#Found_in_Items

