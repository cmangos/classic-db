-- Improve Loot for item Battered Junkbox (16882)
-- Add your query below.
-- https://github.com/lh-server/core/commit/72d0691a6bf5de11bee28b40214186e7b63f4197
-- .learn 1804 .add 5060 .setskill 633 300 .add 16882 100
-- update spell_template set castingtimeindex = 1 where id = 1804;

-- Battered Junkbox should drop money.
-- https://classicdb.ch/?item=16882#comments
-- "They also contain a few copper."
-- "don't let it get out, but some how i looted this boy twice! got 1s 23c twice from it. dunno how though."
-- "Even though they have a small chance of dropping a nice B.o.E weapon, most of the boxes contain a pitiful amount of cash"
-- "A sum total of 17 silver 69 copper (ranging between 25 copper and 1 silver 21 copper)"
-- https://web.archive.org/web/20071115120358/http://wow.allakhazam.com:80/db/item.html?witem=16882
-- "I have found these few things from them:
-- 1:some copper-few silver (less than 3s) "
UPDATE `item_template` SET `minMoneyLoot`=25, `maxMoneyLoot`=125 WHERE `entry` = 16882; -- ~75 wowhead - https://www.wowhead.com/classic/item=16882/battered-junkbox#contains

-- see how chances slowly increased:
-- https://web.archive.org/web/20090102041940/http://wow.allakhazam.com:80/db/item.html?witem=16882#Contains_Items
-- https://web.archive.org/web/20110923162215/http://www.wowhead.com:80/item=16882#contains
-- https://youtu.be/mRHF06PIgLo?t=98

-- https://xpoff.com/threads/battered-junkbox-farm-thread.62051/
-- There is a tiny chance to get a blue dagger. These 2 are missing, other 4 are there.
-- "I looted Blackvenom Blade from one of these today. I too didn't have the addon, so can't add to the statistics, but these are worth gathering and opening!"
-- "I got the ziggler from this "junkbox"... @ lvl 37 rouge this was much obliged^^"
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (16882, 'Battered Junkbox (16882) - (Daggers, Rings & Necklace, Patterns)');
DELETE FROM `reference_loot_template` WHERE `entry` = 16882;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES
(16882, 1935, 0, 1), -- https://www.wowhead.com/tbc/item=1935/assassins-blade#comments:id=2640111
(16882, 2236, 0, 1), -- https://www.wowhead.com/wotlk/item=2236/blackfang#comments
(16882, 2567, 0, 1), -- https://www.wowhead.com/wotlk/item=2567/evocators-blade#comments
(16882, 3413, 0, 1), -- https://www.wowhead.com/wotlk/item=3413/doomspike#comments:id=2640766
(16882, 4446, 0, 1); -- https://www.wowhead.com/wotlk/item=4446/blackvenom-blade#comments:id=2646514
-- (16882, 8006, 0, 1); -- https://www.wowhead.com/wotlk/item=8006/the-ziggler#comments:id=2720809

DELETE FROM `reference_loot_template` WHERE `entry` = 16882;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Rings dropped from Battered Junkbox.
(16882, 4999, 0, 2, 1, 1, 0, 'Azora\'s Will'),
(16882, 5001, 0, 2, 1, 1, 0, 'Heart Ring'),
(16882, 11967, 0, 2, 1, 1, 0, 'Zircon Band'),
(16882, 11969, 0, 2, 1, 1, 0, 'Jacinth Circle'),
(16882, 11983, 0, 2, 1, 1, 0, 'Chrome Ring'),
(16882, 11984, 0, 2, 1, 1, 0, 'Cobalt Ring'),
(16882, 11993, 0, 2, 1, 1, 0, 'Clay Ring'),
(16882, 11994, 0, 2, 1, 1, 0, 'Coral Band'),
(16882, 11995, 0, 2, 1, 1, 0, 'Ivory Band'),
(16882, 12006, 0, 2, 1, 1, 0, 'Meadow Ring'),
(16882, 12007, 0, 2, 1, 1, 0, 'Prairie Ring'),
(16882, 12008, 0, 2, 1, 1, 0, 'Savannah Ring'),
(16882, 12052, 0, 2, 1, 1, 0, 'Ring of the Moon'),
(16882, 12053, 0, 2, 1, 1, 0, 'Volcanic Rock Ring'),
(16882, 12054, 0, 2, 1, 1, 0, 'Demon Band'),
-- vmangos
(16882, 4998, 0, 2, 1, 1, 0, ''),
(16882, 11968, 0, 2, 1, 1, 0, ''),
(16882, 11982, 0, 2, 1, 1, 0, ''),
-- video
(16882, 12047, 0, 2, 1, 1, 0, ''), -- https://youtu.be/mRHF06PIgLo?t=149
-- Recipes dropped from Battered Junkbox.
(16882, 2883, 0, 3, 1, 1, 0, 'Plans: Deadly Bronze Poniard'),
(16882, 3393, 0, 3, 1, 1, 0, 'Recipe: Minor Magic Resistance Potion'),
(16882, 3608, 0, 3, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
(16882, 3874, 0, 3, 1, 1, 0, 'Plans: Polished Steel Boots'),
(16882, 4348, 0, 3, 1, 1, 0, 'Pattern: Phoenix Gloves'),
(16882, 4350, 0, 3, 1, 1, 0, 'Pattern: Spider Silk Slippers'),
(16882, 4410, 0, 3, 1, 1, 0, 'Schematic: Shadow Goggles'),
(16882, 4412, 0, 3, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(16882, 5578, 0, 3, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'),
(16882, 6046, 0, 3, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(16882, 6391, 0, 3, 1, 1, 0, 'Pattern: Stylish Green Shirt'),
(16882, 7363, 0, 3, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16882, 11098, 0, 3, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
-- allakhazam
(16882, 3396, 0, 3, 1, 1, 0, ''), -- also on wowhead
(16882, 7091, 0, 3, 1, 1, 0, ''),
-- wowhead
(16882, 3611, 0, 3, 1, 1, 0, ''),
(16882, 4294, 0, 3, 1, 1, 0, ''),
(16882, 6390, 0, 3, 1, 1, 0, ''),
(16882, 11038, 0, 3, 1, 1, 0, ''), -- also vmangos
-- vmangos
(16882, 11039, 0, 3, 1, 1, 0, ''),
(16882, 10316, 0, 3, 1, 1, 0, ''),
(16882, 6044, 0, 3, 1, 1, 0, ''),
(16882, 2601, 0, 3, 1, 1, 0, ''),
(16882, 4296, 0, 3, 1, 1, 0, ''),
(16882, 6375, 0, 3, 1, 1, 0, ''),
(16882, 6211, 0, 3, 1, 1, 0, ''),
(16882, 7360, 0, 3, 1, 1, 0, '');
-- wotlk+ (wotlk might've changed/removed % of certain groups like rings/necklace in favor of the following grp)
-- ~50% ~260/516 - added in wotlk expansion
-- https://www.wowhead.com/wotlk/item=16882/battered-junkbox#contains
-- (16882, 2892, 0, 4, 1, 1, 0, ''),
-- (16882, 6949, 0, 4, 1, 1, 0, ''),
-- (16882, 3775, 0, 4, 1, 1, 0, ''),
-- (16882, 6947, 0, 4, 1, 1, 0, ''),
-- (16882, 5237, 0, 4, 1, 1, 0, '');

DELETE FROM `item_loot_template` WHERE `entry` = 16882;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16882, 929, 10, 0, 1, 1, 0, 'Healing Potion'), -- 10.1% befor -> 10.8% 49/516 -> 11% - https://youtu.be/mRHF06PIgLo?t=113 potion and pocket
(16882, 5374, 11, 0, 1, 1, 0, 'Small Pocket Watch'), -- 10.8% befor -> 11.2% 58/516 -> 11% - https://youtu.be/mRHF06PIgLo?t=132 pocket + gem
-- ~3% 13/516 (dont create refloot for this yet.)
(16882, 1206, 1.3, 1, 1, 1, 0, 'Moss Agate'), -- 1.3 -> 2% 5/516
(16882, 1705, 1.7, 1, 1, 1, 0, 'Lesser Moonstone'), -- 1.7 -> 1.3% ~ 2:3 8/516, together ~3%
-- refloot
(16882, 1, 0.1, 1, -16882, 1, 0, ''), -- daggers
(16882, 2, 1, 2, -16882, 1, 0, ''), -- rings (itemlevel 21-29)
(16882, 3, 1, 3, -16882, 1, 0, ''); -- patterns (ilvel 21-38)
-- wotlk+
-- (16882, 4, 50, 4, -16882, 1, 0, ''); -- poison (wotlk+) - https://youtu.be/mRHF06PIgLo?t=131 poison and pocket

-- End of migration.

