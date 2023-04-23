-- Improve Dropchance for Distress Beacon Quest Start Items
-- (The Hinterlands, Feralas, Tanaris)
-- Based on https://github.com/lh-server/core/commit/0d23e6d9513c204cb5671019b5689519faf69b53

-- https://www.wowhead.com/classic/item=8704/oox-09-hl-distress-beacon - classic - 17235/17236
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 8704; -- most 2 some(one) corrupted as -value/ or 2.5

-- https://www.wowhead.com/classic/item=8705/oox-22-fe-distress-beacon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 8705; -- most 2 some(one) corrupted as -value/ or 2.5

-- https://www.wowhead.com/classic/item=8623/oox-17-tn-distress-beacon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 8623; -- between 0.2 and 1.2 mostly, some higher, wotlk already had flat 2%, which is a bit too high.

-- https://www.wowhead.com/classic/item=7971/black-pearl
-- https://web.archive.org/web/20080612081714/http://wow.allakhazam.com/db/item.html?witem=7971
DELETE FROM `creature_loot_template` WHERE `item` = 7971; -- not npc loot, sourced from diff with wotlk

-- https://www.wowhead.com/classic/item=3858/mithril-ore
-- https://web.archive.org/web/20080621120501/http://wow.allakhazam.com/db/item.html?witem=3858
DELETE FROM `creature_loot_template` WHERE `item` = 3858; -- not npc loot, sourced from diff with wotlk

-- https://www.wowhead.com/classic/npc=5358/cliff-giant - no Scrolls
-- https://web.archive.org/web/20080503185304/http://wow.allakhazam.com/db/mob.html?wmob=5358
DELETE FROM `creature_loot_template` WHERE `item` = 50602 AND `entry` IN (5358,14640); -- stone elemental, sourced from diff with wotlk

-- https://www.wowhead.com/classic/npc=5357/land-walker
-- https://web.archive.org/web/20080502023645/http://wow.allakhazam.com/db/mob.html?wmob=5357
DELETE FROM `creature_loot_template` WHERE `item` = 50602 AND `entry` IN (5357,14604); -- NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)

-- Zapped Deep Strider 14639 was deleted - 5360 base template
-- https://web.archive.org/web/20080430025719/http://wow.allakhazam.com/db/mob.html?wmob=5360
UPDATE `creature_template` SET `LootId` = 14639 WHERE `entry` = 14639;
DELETE FROM `creature_loot_template` WHERE `entry` = 14639;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14639, 18956, -100, 0, 1, 1, 0, 'Miniaturization Residue'),
(14639, 7910, 0.016, 0, 1, 1, 0, 'Star Ruby'),
(14639, 7989, 0.02, 0, 1, 1, 0, 'Plans: Mithril Spurs'),
(14639, 10608, 0.02, 0, 1, 1, 0, 'Schematic: Sniper Scope'),
(14639, 8389, 0.02, 0, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(14639, 8390, 0.02, 0, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(14639, 10320, 0.02, 0, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(14639, 9298, 0.02, 0, 1, 1, 0, 'Recipe: Elixir of Giants'),
(14639, 10302, 0.02, 0, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(14639, 11208, 0.02, 0, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(14639, 10315, 0.02, 0, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(14639, 12683, 0.02, 0, 1, 1, 0, 'Plans: Thorium Belt'),
(14639, 3395, 0.02, 0, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(14639, 11226, 0.02, 0, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(14639, 5500, 0.02, 0, 1, 1, 0, 'Iridescent Pearl'),
(14639, 3821, 0.02, 0, 1, 1, 0, 'Goldthorn'),
(14639, 14467, 0.02, 0, 1, 1, 0, 'Pattern: Frostweave Robe'),
(14639, 4638, 0.0481, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(14639, 8029, 0.07, 0, 1, 1, 10, 'Plans: Wicked Mithril Blade'),
(14639, 7909, 0.12, 0, 1, 1, 0, 'Aquamarine'),
(14639, 7971, 0.12, 0, 1, 1, 0, 'Black Pearl'),
(14639, 3928, 1.2977, 0, 1, 1, 0, 'Superior Healing Potion'),
(14639, 6149, 1.94, 0, 1, 1, 0, 'Greater Mana Potion'),
(14639, 8705, 1, 0, 1, 1, 0, 'OOX-22/FE Distress Beacon'), -- this brought this up as missing
(14639, 1645, 2.0987, 0, 1, 1, 0, 'Moonberry Juice'),
(14639, 4603, 4.8863, 0, 1, 3, 0, 'Raw Spotted Yellowtail'),
(14639, 4338, 33.6591, 0, 1, 3, 0, 'Mageweave Cloth'),
(14639, 7973, 37.0074, 0, 1, 1, 0, 'Big-mouth Clam'),
(14639, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(14639, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(14639, 60181, 2, 0, -60181, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 48-49)'),
(14639, 60257, 0.1, 0, -60257, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)'),
(14639, 60317, 0.01, 0, -60317, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)'),
(14639, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

