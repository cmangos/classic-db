-- Fix the loot table for "Message in a Bottle" (i.6307) by creating a refloot of the same value.
-- Sources (wowhead-wotlk seems to be the most accurate for our purposes):
-- https://www.wowhead.com/wotlk/item=6307/message-in-a-bottle#contains (57 items, 1494 opens)
-- https://www.wowhead.com/tbc/item=6307/message-in-a-bottle#contains (52 items, 1084 opens)
-- https://www.wowhead.com/classic/item=6307/message-in-a-bottle#contains (52 items, 1034 opens)
-- https://www.wowhead.com/item=6307/message-in-a-bottle#contains (20 items, 7657 opens) -> points towards all being in one group, hence item_loot_template can be used for all.
DELETE FROM `item_loot_template` WHERE `entry` = 6307;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
(6307, 6307, 100, 0, -6307, 1, 0, 'Message in a Bottle (6307)');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 6307;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(6307, 'Message in a Bottle (6307)');

DELETE FROM `reference_loot_template` WHERE `entry` = 6307;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
-- 55%
(6307, 954, 11, 1, 1, 1, 0, 'Scroll of Strength'), -- 13 befor
(6307, 955, 11, 1, 1, 1, 0, 'Scroll of Intellect'), -- 12
(6307, 1181, 11, 1, 1, 1, 0, 'Scroll of Spirit'), -- 11
(6307, 3012, 11, 1, 1, 1, 0, 'Scroll of Agility'), -- 12
(6307, 3013, 11, 1, 1, 1, 0, 'Scroll of Protection'), -- 11
-- 15%
(6307, 1180, 5, 1, 1, 1, 0, 'Scroll of Stamina'), -- 6
(6307, 1478, 5, 1, 1, 1, 0, 'Scroll of Protection II'), -- 7
(6307, 1712, 5, 1, 1, 1, 0, 'Scroll of Spirit II'), -- 5
-- 1%
(6307, 1477, 0.25, 1, 1, 1, 0, 'Scroll of Agility II'), -- 0
(6307, 1711, 0.25, 1, 1, 1, 0, 'Scroll of Stamina II'), -- 0
(6307, 2289, 0.25, 1, 1, 1, 0, 'Scroll of Strength II'), -- 0
(6307, 2290, 0.25, 1, 1, 1, 0, 'Scroll of Intellect II'), -- 0
-- 17.5%
(6307, 6304, 10, 1, 1, 1, 0, 'Damp Diary Page (Day 4)'), -- 7
(6307, 6305, 5, 1, 1, 1, 0, 'Damp Diary Page (Day 87)'), -- 4
(6307, 6306, 2.5, 1, 1, 1, 0, 'Damp Diary Page (Day 512)'), -- 2
-- ~10% - 8.4 befor
(6307, 2406, 0, 1, 1, 1, 0, 'Pattern: Fine Leather Boots'),
(6307, 2407, 0, 1, 1, 1, 0, 'Pattern: White Leather Jerkin'),
(6307, 2409, 0, 1, 1, 1, 0, 'Pattern: Dark Leather Tunic'),
(6307, 2555, 0, 1, 1, 1, 0, 'Recipe: Swiftness Potion'),
(6307, 2601, 0, 1, 1, 1, 0, 'Pattern: Gray Woolen Robe'),
(6307, 2881, 0, 1, 1, 1, 0, 'Plans: Runed Copper Breastplate'),
(6307, 2882, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Shoulders'),
(6307, 2883, 0, 1, 1, 1, 0, 'Plans: Deadly Bronze Poniard'),
(6307, 3396, 0, 1, 1, 1, 0, 'Recipe: Elixir of Lesser Agility'),
(6307, 3608, 0, 1, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
(6307, 3610, 0, 1, 1, 1, 0, 'Plans: Gemmed Copper Gauntlets'),
(6307, 4292, 0, 1, 1, 1, 0, 'Pattern: Green Woolen Bag'),
(6307, 4293, 0, 1, 1, 1, 0, 'Pattern: Hillman\'s Leather Vest'),
(6307, 4294, 0, 1, 1, 1, 0, 'Pattern: Hillman\'s Belt'),
(6307, 4296, 0, 1, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(6307, 4345, 0, 1, 1, 1, 0, 'Pattern: Red Woolen Boots'),
(6307, 4346, 0, 1, 1, 1, 0, 'Pattern: Heavy Woolen Cloak'),
(6307, 4348, 0, 1, 1, 1, 0, 'Pattern: Phoenix Gloves'),
(6307, 4349, 0, 1, 1, 1, 0, 'Pattern: Phoenix Pants'),
(6307, 4409, 0, 1, 1, 1, 0, 'Schematic: Small Seaforium Charge'),
(6307, 4410, 0, 1, 1, 1, 0, 'Schematic: Shadow Goggles'),
(6307, 4412, 0, 1, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(6307, 5578, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'),
(6307, 5972, 0, 1, 1, 1, 0, 'Pattern: Fine Leather Pants'),
(6307, 6271, 0, 1, 1, 1, 0, 'Pattern: Red Linen Vest'),
(6307, 6342, 0, 1, 1, 1, 0, 'Formula: Enchant Chest - Minor Mana'),
(6307, 6344, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Minor Spirit'),
(6307, 6347, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Minor Strength'),
(6307, 6348, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Minor Beastslayer'),
(6307, 6375, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Lesser Spirit'),
(6307, 6390, 0, 1, 1, 1, 0, 'Pattern: Stylish Blue Shirt'),
(6307, 6716, 0, 1, 1, 1, 0, 'Schematic: EZ-Thro Dynamite'),
(6307, 7092, 0, 1, 1, 1, 0, 'Pattern: Hands of Darkness'),
(6307, 7288, 0, 1, 1, 1, 0, 'Pattern: Rugged Leather Pants'),
(6307, 7360, 0, 1, 1, 1, 0, 'Pattern: Dark Leather Gloves'),
(6307, 7364, 0, 1, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'),
(6307, 10316, 0, 1, 1, 1, 0, 'Pattern: Colorful Kilt'),
(6307, 10424, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Leggings'),
(6307, 11038, 0, 1, 1, 1, 0, 'Formula: Enchant 2H Weapon - Lesser Spirit'),
(6307, 11039, 0, 1, 1, 1, 0, 'Formula: Enchant Cloak - Minor Agility'),
(6307, 11081, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Lesser Protection'),
-- https://web.archive.org/web/20081010224717/http://wow.allakhazam.com/db/item.html?witem=6307 (23 items, 99 opens)
(6307, 3612, 0, 1, 1, 1, 0, 'Plans: Green Iron Gauntlets'),
(6307, 4297, 0, 1, 1, 1, 0, 'Pattern: Barbaric Gloves');

