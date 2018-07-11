-- Add your query below.
-- https://github.com/lh-server/core/commit/a6efe8cf58f0a9a554f39ece68ddf41216a3e382
-- https://web.archive.org/web/20100820060912/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
-- https://www.wowhead.com/classic/item=16885
-- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
-- .learn 1804 .add 5060 .setskill 633 300 .add 16885 100
-- update spell_template set castingtimeindex = 1 where id = 1804;

-- Comments from WoWHead below.
/*
Just for fun, I decided to see what the most valuable items in the junkboxes were so it was easy to tell what to leave in the junkboxes and what to loot.
Using the loot data here on Wowhead, each box contains an average of 3.75s (Actual money contained appears to fluctuate between 1.5-6s).
Five of the items in the Heavy Junkbox loot table vendor for more than 3.75s on average, and therefore take priority over money: Star Ruby (Vendors for 50s each, averages 5g on Auction House),
Rogue's Diary (45.62s), Major Healing Potion (10s, 50s on AH), Shabby Knot (2.25s each, 2-4 per drop), and Humanoid Skull (6.67s).
The remaining items all vendor for less than 3.75s on average, including the rogue poisons. Money should usually take priority over these.

I also found Pattern:Chimeric Leggings, and Formula: Enchant Bracer - Superior Spirit inside my heavy lockboxes.

 Looted inside:
- Plans: Wildthorn Mail
- Quicksilver Ring
- Jungle Necklace

Recieved Plans: Raidant Boots out of one of these.

Just got Alcor's Sunrazor from one of these.

I looted a Shadowblade( http://classicdb.ch/?item=2163 ) from one of the junkboxes...wierd that it's not even on the list :D

picked 1500 of theese for the insane rep farm. opened up every one of em, HAPPY to see 3 x teebu's blazing longswords. Would recommend checking the boxes for loots ;p

Got a Alcor's Sunrazor while grinding boxes for the Insane Achiev about 1/2 way on boxes was surprised as rare as it is.

Got a [Pattern: Chimeric Vest] from this junkbox just a minut ago

Got a Formula: Enchant Boots - Greater Stamina!

I've been farming for the Insane title, and after three bars into revered, I opened one of my heavy junkboxes and got a Shadowblade. :)
I know its not near enough to make it worth farming them, but it was such a nice little surprise. Keep opening them while you farm. You might really get an epic out of it.

Day before Cata ships, I have run BRD several times.
I got 12 Sturdy Junkboxes: nothing of value.
And 8 Heavy Junkboxes: Of which my last one game me Alcor's Sunrazor

-- Comments from Thottbot below.
Junkboxes are pickpocketed off mobs occasionally, and they usually just have money. Every so often they have vendor junk or a potion.
And one time I got a heavy junkbox with a Dragonscale Band... thought it was a bug at first, now I see it's just a very rare occurence. 
*/

-- Loot for Heavy Junkbox.
-- Heavy Junkbox should contain a few copper.
UPDATE `item_template` SET `minMoneyLoot`=150, `maxMoneyLoot`=600 WHERE `entry`=16885;

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(16885, 'Heavy Junkbox (16885) - (Daggers, Jewellery, Patterns, Poisons)');

DELETE FROM `reference_loot_template` WHERE `entry` = 16885;
-- Blues and Epics dropped from Heavy Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16885 AND `groupid` = 1;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D::A
(16885, 1728, 0, 1, 1, 1, 0, 'Teebu\'s Blazing Longsword'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:6
(16885, 2163, 0, 1, 1, 1, 0, 'Shadowblade'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:6
-- (16885, 13046, 0, 1, 1, 1, 0, 'Blanchard\'s Stout'), -- doubt!
(16885, 14555, 0, 1, 1, 1, 0, 'Alcor\'s Sunrazor'); -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:6

-- Rings dropped from Heavy Junkbox.
-- Greens dropped from Heavy Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16885 AND `groupid` = 2;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16885, 11977, 0, 2, 1, 1, 0, 'Serpentine Loop'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 11990, 0, 2, 1, 1, 0, 'Selenium Loop'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 11991, 0, 2, 1, 1, 0, 'Quicksilver Ring'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12002, 0, 2, 1, 1, 0, 'Marble Circle'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12026, 0, 2, 1, 1, 0, 'Quicksilver Pendant'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12035, 0, 2, 1, 1, 0, 'Obsidian Pendant'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12046, 0, 2, 1, 1, 0, 'Jungle Necklace'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12057, 0, 2, 1, 1, 0, 'Dragonscale Band'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
-- (16885, 11999, 0, 2, 1, 1, 0, 'Lodestone Hoop'), -- too low level, unconfirmed
-- (16885, 7553, 0, 0, 2, 1, 0, 'Band of the Unicorn'), -- too low level, unconfirmed

-- vmangos
(16885, 11976, 0, 2, 1, 1, 0, 'Sardonyx Knuckle'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 11978, 0, 2, 1, 1, 0, 'Jasper Link'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 11989, 0, 2, 1, 1, 0, 'Vanadium Loop'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12004, 0, 2, 1, 1, 0, 'Obsidian Band'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12014, 0, 2, 1, 1, 0, 'Arctic Ring'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12015, 0, 2, 1, 1, 0, 'Swamp Ring'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12025, 0, 2, 1, 1, 0, 'Selenium Chain'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12034, 0, 2, 1, 1, 0, 'Marble Necklace'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12044, 0, 2, 1, 1, 0, 'Arctic Pendant'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12045, 0, 2, 1, 1, 0, 'Swamp Pendant'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12055, 0, 2, 1, 1, 0, 'Stardust Band'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12056, 0, 2, 1, 1, 0, 'Ring of the Heavens'); -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items

-- Recipes dropped from Heavy Junkbox.
DELETE FROM `reference_loot_template` WHERE `entry` = 16885 AND `groupid` = 3;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16885, 12691, 0, 3, 1, 1, 0, 'Plans: Wildthorn Mail'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12693, 0, 3, 1, 1, 0, 'Plans: Thorium Boots'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12695, 0, 3, 1, 1, 0, 'Plans: Radiant Gloves'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 13490, 0, 3, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 14499, 0, 3, 1, 1, 0, 'Pattern: Mooncloth Bag'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 16215, 0, 3, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 16220, 0, 3, 1, 1, 0, 'Formula: Enchant Boots - Spirit'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 11224, 0, 3, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(16885, 14478, 0, 3, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(16885, 14484, 0, 3, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(16885, 14498, 0, 3, 1, 1, 0, 'Pattern: Runecloth Headband'),
(16885, 15731, 0, 3, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(16885, 15745, 0, 3, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(16885, 15757, 0, 3, 1, 1, 0, 'Pattern: Wicked Leather Pants'),

-- vmangos
(16885, 12682, 0, 3, 1, 1, 0, 'Plans: Thorium Armor'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12683, 0, 3, 1, 1, 0, 'Plans: Thorium Belt'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12684, 0, 3, 1, 1, 0, 'Plans: Thorium Bracers'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12689, 0, 3, 1, 1, 0, 'Plans: Radiant Breastplate'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12694, 0, 3, 1, 1, 0, 'Plans: Thorium Helm'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 12697, 0, 3, 1, 1, 0, 'Plans: Radiant Boots'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 12704, 0, 3, 1, 1, 0, 'Plans: Thorium Leggings'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 14467, 0, 3, 1, 1, 0, 'Pattern: Frostweave Robe'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 14494, 0, 3, 1, 1, 0, 'Pattern: Brightcloth Pants'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 15737, 0, 3, 1, 1, 0, 'Pattern: Chimeric Boots'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 15743, 0, 3, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 15746, 0, 3, 1, 1, 0, 'Pattern: Chimeric Leggings'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 15755, 0, 3, 1, 1, 0, 'Pattern: Chimeric Vest'), -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items
(16885, 16218, 0, 3, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
(16885, 11208, 0, 3, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'); -- I found an enchanting recipe in one of these, demonslaying :)
-- tbc+
-- (16885, 21949, 0, 3, 1, 1, 0, 'Design: Ruby Serpent'), -- https://web.archive.org/web/20090313074825/http://thottbot.com:80/i16885#D:2
-- (16885, 21953, 0, 3, 1, 1, 0, 'Design: Emerald Owl'); -- https://web.archive.org/web/20100822064243/http://wow.allakhazam.com/db/item.html?witem=16885#Contains_Items

DELETE FROM `reference_loot_template` WHERE `entry` = 16885 AND `groupid` = 4;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(16885, 5173, 0, 4, 2, 5, 'Deathweed'),
(16885, 8923, 0, 4, 2, 5, 'Essence of Agony'),
(16885, 2930, 0, 4, 2, 5, 'Essence of Pain'),
(16885, 2928, 0, 4, 2, 5, 'Dust of Decay');
-- (16885, 8924, 0, 4, 2, 5, 'Dust of Deterioration'); -- tbc+, hinting towards 2-5!

-- wotlk+
-- (16885, 3775, 0, 4, 1, 1, 'Crippling Poison'),
-- (16885, 8985, 0, 4, 1, 1, 'Deadly Poison IV'),
-- (16885, 10922, 0, 4, 1, 1, 'Wound Poison IV'),
-- (16885, 8927, 0, 4, 1, 1, 'Instant Poison V'),
-- (16885, 8928, 0, 4, 1, 1, 'Instant Poison VI'),
-- (16885, 20844, 0, 4, 1, 1, 'Deadly Poison V'),
-- (16885, 5237, 0, 4, 1, 1, 'Mind-numbing Poison');

-- Loot for Heavy Junkbox.
-- https://web.archive.org/web/20070518164222/http://www.thottbot.com:80/i16885
-- use double the % for Flash Powder and Blinding Powder.
DELETE FROM `item_loot_template` WHERE `entry` = 16885;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16885, 13446, 10, 0, 1, 1, 0, 'Major Healing Potion'),
(16885, 5140, 10, 0, 2, 5, 0, 'Flash Powder'), -- i think wowhead has an error here. with minmax, keeping old VALUES, not changing %
(16885, 5530, 16, 0, 2, 5, 0, 'Blinding Powder'), -- converted to Worthless Blinding Powder in wrath

(16885, 7910, 1, 0, 1, 1, 0, 'Star Ruby'), -- 0.9

(16885, 24281, 9, 0, 1, 1, 0, 'Carved Ivory Bone'),
(16885, 24231, 5, 0, 2, 3, 0, 'Coarse Snuff'),
(16885, 24232, 5, 0, 2, 2, 0, 'Shabby Knot'),
(16885, 24282, 2, 2, 1, 1, 0, 'Rogue''s Diary'),
(16885, 24283, 0.01, 0, 1, 1, 0, 'An Antique Gun'),
-- tbc+
-- (16885, 27729, 1, 0, 1, 1, 0, 'Humanoid Skull'),

-- refloot
(16885, 1, 0.1, 1, -16885, 1, 0, ''), -- daggers
(16885, 2, 1.5, 2, -16885, 1, 0, ''), -- rings & necklaces
(16885, 3, 1.5, 3, -16885, 1, 0, ''), -- patterns
(16885, 4, 100, 4, -16885, 1, 0, ''); -- poison/poison materials

-- End of migration.

