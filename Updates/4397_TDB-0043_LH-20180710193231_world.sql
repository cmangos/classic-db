-- Add your query below.
-- https://github.com/lh-server/core/commit/44bf0e678b62a41a60248e80a8f984c912d01b7b
-- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
-- https://www.wowhead.com/classic/item=16884/sturdy-junkbox
-- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
-- https://web.archive.org/web/20061027003634/http://www.thottbot.com:80/?i=11074
-- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074 - item ids wrong!
-- https://web.archive.org/web/20071013103143/http://thottbot.com:80/i16884#B:2;C:5
-- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074


-- .learn 1804 .add 5060 .setskill 633 300 .add 16884 100
-- update spell_template set castingtimeindex = 1 where id = 1804;

-- Sturdy Junkbox should contain 2 Silver 35 Copper on average. ~ 2-3s
-- https://web.archive.org/web/20071013103143/http://thottbot.com:80/i16884
UPDATE `item_template` SET `minMoneyLoot`=200, `maxMoneyLoot`=300 WHERE `entry`=16884;

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(16884, 'Sturdy Junkbox (16884) - (Daggers, Jewellery, Patterns, Poisons)');

DELETE FROM `reference_loot_template` WHERE `entry` = 16884;
DELETE FROM `reference_loot_template` WHERE `entry` = 16884 AND `groupid` = 1;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES
(16884, 2164, 0, 1), -- gut ripper
(16884, 4091, 0, 1); -- Widowmaker, so not just epic. . .

-- Rings dropped from Sturdy Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16884 AND `groupid` = 2;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16884, 7553, 0, 2, 1, 1, 0, 'Band of the Unicorn'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 12012, 0, 2, 1, 1, 0, 'Marsh Ring'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 12013, 0, 2, 1, 1, 0, 'Desert Ring'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 12032, 0, 2, 1, 1, 0, 'Onyx Choker'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 11974, 0, 2, 1, 1, 0, 'Aquamarine Ring'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
-- https://web.archive.org/web/20071013103143/http://thottbot.com:80/i16884#B:2,C:2
(16884, 12042, 0, 2, 1, 1, 0, 'Marsh Chain'),
(16884, 7552, 0, 2, 1, 1, 0, 'Falcon\'s Hook'), -- confirmed
(16884, 11999, 0, 2, 1, 1, 0, 'Lodestone Hoop'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 12001, 0, 2, 1, 1, 0, 'Onyx Ring'),
(16884, 11975, 0, 2, 1, 1, 0, 'Topaz Ring'),
(16884, 11973, 0, 2, 1, 1, 0, 'Hematite Link'),
(16884, 11987, 0, 2, 1, 1, 0, 'Iridium Circle'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 11988, 0, 2, 1, 1, 0, 'Tellurium Band'),
(16884, 12022, 0, 2, 1, 1, 0, 'Iridium Chain'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 12023, 0, 2, 1, 1, 0, 'Tellurium Necklace'),
(16884, 12024, 0, 2, 1, 1, 0, 'Vanadium Talisman'),
(16884, 12031, 0, 2, 1, 1, 0, 'Lodestone Necklace'),
(16884, 11998, 0, 2, 1, 1, 0, 'Jet Loop'),
(16884, 12043, 0, 2, 1, 1, 0, 'Desert Choker');

-- Recipes dropped from Sturdy Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16884 AND `groupid` = 3;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16884, 3395, 0, 3, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 7975, 0, 3, 1, 1, 0, 'Plans: Heavy Mithril Pants'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 7990, 0, 3, 1, 1, 0, 'Plans: Heavy Mithril Helm'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 7992, 0, 3, 1, 1, 0, 'Plans: Blue Glittering Axe'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 7993, 0, 3, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(16884, 8029, 0, 3, 1, 1, 0, 'Plans: Wicked Mithril Blade'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 8385, 0, 3, 1, 1, 0, 'Pattern: Turtle Scale Gloves'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 8387, 0, 3, 1, 1, 0, 'Pattern: Big Voodoo Mask'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 8389, 0, 3, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(16884, 9293, 0, 3, 1, 1, 0, 'Recipe: Magic Resistance Potion'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 9295, 0, 3, 1, 1, 0, 'Recipe: Invisibility Potion'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 10300, 0, 3, 1, 1, 0, 'Pattern: Red Mageweave Vest'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 10302, 0, 3, 1, 1, 0, 'Pattern: Red Mageweave Pants'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 10315, 0, 3, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 10320, 0, 3, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(16884, 10603, 0, 3, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 10606, 0, 3, 1, 1, 0, 'Schematic: Parachute Cloak'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 11202, 0, 3, 1, 1, 0, 'Formula: Enchant Shield - Stamina'), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 11208, 0, 3, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 4300, 0, 3, 1, 1, 0, ''), -- https://web.archive.org/web/20060427010147/http://thottbot.com/?i=11074
(16884, 10312, 0, 3, 1, 1, 0, ''), -- vmangos
(16884, 10604, 0, 3, 1, 1, 0, ''), -- vmangos
(16884, 11204, 0, 3, 1, 1, 0, ''), -- vmangos
(16884, 11225, 0, 3, 1, 1, 0, ''), -- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
-- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16884#Contains_Items
(16884, 7989, 0, 3, 1, 1, 0, '');
-- tbc+
-- (16884, 21944, 0, 3, 1, 1, 0, ''), -- unconfirmed
-- (16884, 21945, 0, 3, 1, 1, 0, ''), -- confirmed
-- (16884, 21947, 0, 3, 1, 1, 0, ''), -- confirmed
-- (16884, 21949, 0, 3, 1, 1, 0, ''); -- unconfirmed

DELETE FROM `reference_loot_template` WHERE `entry` = 16884 AND `groupid` = 4;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(16884, 5173, 0, 4, 2, 5, 'Deathweed'),
(16884, 8923, 0, 4, 2, 5, 'Essence of Agony'),
(16884, 2930, 0, 4, 2, 5, 'Essence of Pain'),
(16884, 2928, 0, 4, 2, 5, 'Dust of Decay');
-- (16884, 8924, 0, 4, 2, 5, 'Dust of Deterioration'); -- tbc+

-- wotlk+
-- (16884, 3775, 0, 4, 1, 1, ''),
-- (16884, 8984, 0, 4, 1, 1, ''),
-- (16884, 10921, 0, 4, 1, 1, ''),
-- (16884, 8926, 0, 4, 1, 1, ''),
-- (16884, 5237, 0, 4, 1, 1, '');

-- use double the % for Flash Powder and Blinding Powder.
DELETE FROM `item_loot_template` WHERE `entry` = 16884;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16884, 3928, 10, 0, 1, 1, 0, 'Superior Healing Potion'), -- 10% befor -> 10.7%/11.21% -> 10%
(16884, 5140, 8, 0, 1, 5, 0, 'Flash Powder'), -- i think wowhead has an error here. with minmax, keeping old VALUES, not changing %
(16884, 5530, 12, 0, 1, 6, 0, 'Blinding Powder'), -- converted to Worthless Blinding Powder in wrath

(16884, 7909, 1, 0, 1, 1, 0, 'Aquamarine'), -- 0.9
(16884, 7910, 1, 0, 1, 1, 0, 'Star Ruby'), -- 0.9

(16884, 24281, 6, 0, 1, 1, 0, 'Carved Ivory Bone'),
(16884, 24231, 4, 0, 2, 3, 0, 'Coarse Snuff'),
(16884, 24232, 5, 0, 2, 2, 0, 'Shabby Knot'),
(16884, 24282, 1.5, 2, 1, 1, 0, 'Rogue''s Diary'),
(16884, 24283, 0.01, 0, 1, 1, 0, 'An Antique Gun'),
-- tbc+
-- (16884, 27729, 0.8, 0, 1, 1, 0, 'Humanoid Skull'),

-- refloot
(16884, 1, 0.1, 1, -16884, 1, 0, ''), -- daggers
(16884, 2, 1.2, 2, -16884, 1, 0, ''), -- rings & necklaces
(16884, 3, 1.2, 3, -16884, 1, 0, ''), -- patterns
(16884, 4, 100, 4, -16884, 1, 0, ''); -- poison/poison materials


-- End of migration.