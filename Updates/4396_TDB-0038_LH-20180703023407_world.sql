-- Add your query below.
-- https://github.com/lh-server/core/commit/55c1470921af24e6f16855f835b5ac9f2b7baf7b
-- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
-- https://www.wowhead.com/tbc/item=16883/worn-junkbox#contains
-- https://web.archive.org/web/20060221031013/http://www.thottbot.com:80/?i=7285
-- .learn 1804 .add 5060 .setskill 633 300 .add 16883 100
-- update spell_template set castingtimeindex = 1 where id = 1804;

-- Worn Junkbox should contain a few copper.
UPDATE `item_template` SET `minMoneyLoot`=5, `maxMoneyLoot`=15 WHERE `entry`=16883;

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(16883, 'Worn Junkbox (16883) - (Daggers, Rings, Patterns, Poisons)');

DELETE FROM `reference_loot_template` WHERE `entry` = 16883;
DELETE FROM `reference_loot_template` WHERE `entry` = 16883 AND `groupid` = 1;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES
(16883, 8006, 0, 1), -- https://www.wowhead.com/wotlk/item=8006/the-ziggler#comments:id=2720809
(16883, 776, 0, 1); -- https://www.wowhead.com/wotlk/item=16883/worn-junkbox#comments:id=197325

-- Rings dropped from Worn Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16883 AND `groupid` = 2;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16883, 5003, 0, 2, 1, 1, 0, 'Crystal Starfire Medallion'), -- wowhead
(16883, 5007, 0, 2, 1, 1, 0, 'Band of Thorns'), -- wowhead + https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 5009, 0, 2, 1, 1, 0, ''), -- vmangos + https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 5011, 0, 2, 1, 1, 0, 'Welken Ring'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11970, 0, 2, 1, 1, 0, 'Spinel Ring'), -- wowhead + https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11971, 0, 2, 1, 1, 0, ''), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11972, 0, 2, 1, 1, 0, 'Carnelian Loop'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11985, 0, 2, 1, 1, 0, 'Cerulean Ring'),
(16883, 11986, 0, 2, 1, 1, 0, 'Thallium Hoop'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11996, 0, 2, 1, 1, 0, 'Basalt Ring'),
(16883, 11997, 0, 2, 1, 1, 0, 'Greenstone Circle'), -- wowhead
(16883, 12009, 0, 2, 1, 1, 0, 'Tundra Ring'),
(16883, 12010, 0, 2, 1, 1, 0, ''),
(16883, 12019, 0, 2, 1, 1, 0, 'Cerulean Talisman'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 12020, 0, 2, 1, 1, 0, 'Thallium Choker'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 12028, 0, 2, 1, 1, 0, 'Basalt Necklace'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 12029, 0, 2, 1, 1, 0, 'Greenstone Talisman'),
(16883, 12030, 0, 2, 1, 1, 0, 'Jet Chain'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 12039, 0, 2, 1, 1, 0, 'Tundra Necklace'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 12040, 0, 2, 1, 1, 0, 'Forest Pendant');

-- Recipes dropped from Worn Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16883 AND `groupid` = 3;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16883, 3831, 0, 3, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
(16883, 3866, 0, 3, 1, 1, 0, 'Plans: Jade Serpentblade'),
(16883, 3867, 0, 3, 1, 1, 0, 'Plans: Golden Iron Destroyer'),
(16883, 3868, 0, 3, 1, 1, 0, 'Plans: Frost Tiger Blade'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 3869, 0, 3, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(16883, 3870, 0, 3, 1, 1, 0, 'Plans: Green Iron Shoulders'),
(16883, 3872, 0, 3, 1, 1, 0, 'Plans: Golden Scale Leggings'),
(16883, 3873, 0, 3, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(16883, 3874, 0, 3, 1, 1, 0, 'Plans: Polished Steel Boots'),
(16883, 4299, 0, 3, 1, 1, 0, 'Pattern: Guardian Armor'),
(16883, 4300, 0, 3, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(16883, 4353, 0, 3, 1, 1, 0, 'Pattern: Spider Belt'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 4414, 0, 3, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(16883, 4416, 0, 3, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(16883, 5774, 0, 3, 1, 1, 0, 'Pattern: Green Silk Pack'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 5974, 0, 3, 1, 1, 0, 'Pattern: Guardian Cloak'),
(16883, 6045, 0, 3, 1, 1, 0, 'Plans: Iron Counterweight'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 7084, 0, 3, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
(16883, 7085, 0, 3, 1, 1, 0, 'Pattern: Azure Shoulders'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 7086, 0, 3, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(16883, 7090, 0, 3, 1, 1, 0, 'Pattern: Green Silk Armor'),
(16883, 7449, 0, 3, 1, 1, 0, 'Pattern: Dusky Leather Leggings'),
(16883, 7450, 0, 3, 1, 1, 0, 'Pattern: Green Whelp Armor'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 7453, 0, 3, 1, 1, 0, 'Pattern: Swift Boots'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 10601, 0, 3, 1, 1, 0, 'Schematic: Bright-Eye Goggles'),
(16883, 11164, 0, 3, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer'), -- https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 11167, 0, 3, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),

(16883, 3830, 0, 3, 1, 1, 0, 'Recipe: Elixir of Fortitude'), -- vmangos
(16883, 3832, 0, 3, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'), -- vmangos
(16883, 4352, 0, 3, 1, 1, 0, 'Pattern: Boots of the Enchanter'), -- vmangos
(16883, 4417, 0, 3, 1, 1, 0, 'Schematic: Large Seaforium Charge'), -- vmangos - https://web.archive.org/web/20100908090353/http://wow.allakhazam.com:80/db/item.html?witem=16883#Contains_Items
(16883, 7092, 0, 3, 1, 1, 0, 'Pattern: Hands of Darkness'); -- vmangos

-- tbc+
-- (16883, 20974, 0, 3, 1, 1, 0, 'Design: Jade Pendant of Blasting'),
-- (16883, 20976, 0, 3, 1, 1, 0, 'Design: Citrine Pendant of Golden Healing'),
-- (16883, 21940, 0, 3, 1, 1, 0, 'Design: Golden Hare');

DELETE FROM `reference_loot_template` WHERE `entry` = 16883 AND `groupid` = 4;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(16883, 2930, 0, 4, 2, 5, 'Essence of Pain'),
(16883, 2928, 0, 4, 2, 5, 'Dust of Decay'),
(16883, 8923, 0, 4, 2, 5, 'Essence of Agony'),
(16883, 5173, 0, 4, 2, 5, 'Deathweed');
-- (16883, 8924, 0, 4, 2, 5, 'Dust of Deterioration'); -- tbc+

-- wotlk+
-- (16883, 3775, 0, 4, 1, 1, ''),
-- (16883, 2893, 0, 4, 1, 1, ''),
-- (16883, 10920, 0, 4, 1, 1, ''),
-- (16883, 5237, 0, 4, 1, 1, ''),
-- (16883, 6950, 0, 4, 1, 1, ''),
-- (16883, 10918, 0, 4, 1, 1, '');

-- use double the % for Flash Powder and Blinding Powder.
DELETE FROM `item_loot_template` WHERE `entry` = 16883;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16883, 1710, 10, 0, 1, 1, 0, 'Greater Healing Potion'), -- 9.7% befor -> 11.09% -> 10%
(16883, 5140, 6, 0, 2, 5, 0, 'Flash Powder'),
(16883, 5530, 10, 0, 2, 5, 0, 'Blinding Powder'), -- converted to Worthless Blinding Powder in wrath

(16883, 1529, 1, 1, 1, 1, 0, 'Jade'), -- 0.8
(16883, 3864, 1, 1, 1, 1, 0, 'Citrine'), -- 1.1

(16883, 24281, 5, 2, 1, 1, 0, 'Carved Ivory Bone'),
(16883, 24231, 3, 2, 2, 3, 0, 'Coarse Snuff'),
(16883, 24232, 5, 2, 2, 2, 0, 'Shabby Knot'),
(16883, 24282, 1, 2, 1, 1, 0, 'Rogue''s Diary'),
-- tbc+
(16883, 27729, 0.5, 0, 1, 1, 0, 'Humanoid Skull'),

-- refloot
(16883, 1, 0.1, 1, -16883, 1, 0, ''), -- daggers
(16883, 2, 1, 2, -16883, 1, 0, ''), -- rings
(16883, 3, 1, 3, -16883, 1, 0, ''), -- patterns
(16883, 4, 100, 4, -16883, 1, 0, ''); -- poison/poison materials

-- End of migration.

