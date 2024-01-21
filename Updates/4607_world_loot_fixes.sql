-- Rebuilt Loot Templates for Skeletal Flayer 1783, Firegut Ogre 7033, Anvilrage Guardsman 8891, Anvilrage Footman 8892
-- Create New World Loot Template: LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)
-- Rebult Loot Template for Broken Tooth 2850 - most cluttered loot template with over 150 item rows, down to 6!
-- Add loot condition_id for Plans: Wicked Mithril Blade 8029 - soulbound
-- Rework loot drop chances for highlevel vanilla grey drops.
-- Remove grey drops from some animals that should not drop grey armor/weapon trash items
-- Adjust Solid Chest 153453 grey drop chance.
-- Blood of the Mountain 11382 only drops from one npc.
-- Recipe: Gift of Arthas 9296 is not part of world loot.

-- SELECT entry,count(*) from creature_loot_template where item > 0 GROUP BY entry HAVING count(*) > 100 ORDER BY count(*),entry ASC;
-- https://github.com/cmangos/tbc-db/commit/0dfdab48cf8cedddcc66fc48caf31f69dc1f8f6f - apply again, some made it back into classic, wotlk still has over 600 rows with this.
-- Bolt of Linen Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 2996;
-- Bolt of Woolen Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 2997;
-- Bolt of Silk Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 4305;
-- Bolt of Mageweave
DELETE FROM `creature_loot_template` WHERE `item` = 4339;
-- Bolt of Runecloth
DELETE FROM `creature_loot_template` WHERE `item` = 14048;

-- Npcs of same ~level with alot of items in their creature_loot_template:
-- name, entry, minlvl, maxlvl, count
-- Skeletal Flayer 1783 50 51 111
-- Firegut Ogre 7033 50 51 101
-- Anvilrage Guardsman 8891 50 51 120
-- Anvilrage Footman 8892 50 51 101
-- https://www.wowhead.com/classic/npc=1783/skeletal-flayer
-- https://web.archive.org/web/20080422034942/http://wow.allakhazam.com/db/mob.html?wmob=1783
DELETE FROM `creature_loot_template` WHERE `entry` = 1783; -- 22 down from 111
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1783, 12840, 50, 0, 1, 1, 237, 'Minion\'s Scourgestone'),
(1783, 14619, -80, 0, 1, 1, 0, 'Skeletal Fragments'),
(1783, 22526, 33.1501, 0, 1, 1, 0, 'Bone Fragments'),
(1783, 13357, 50, 0, 1, 1, 208, 'Osseous Agitator'),
(1783, 14047, 23.5637, 0, 1, 2, 0, 'Runecloth'),
(1783, 7972, 4.5115, 0, 1, 1, 0, 'Ichor of Undeath'),
(1783, 8948, 4.7643, 0, 1, 1, 0, 'Dried King Bolete'),
(1783, 8766, 2.3813, 0, 1, 1, 0, 'Morning Glory Dew'),
(1783, 13446, 2.86, 0, 1, 1, 0, 'Major Healing Potion'),
(1783, 13443, 1.38, 0, 1, 1, 0, 'Superior Mana Potion'),
(1783, 5758, 0.0481, 0, 1, 1, 0, 'Mithril Lockbox'),
(1783, 4638, 0.0457, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(1783, 9296, 0.9, 9, 1, 1, 0, 'Recipe: Gift of Arthas'),
(1783, 50551, 1.66, 0, -50551, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)'),
(1783, 49004, 0.1, 0, -49004, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+) - VANILLA NPC ONLY'),
(1783, 50498, 0.04, 0, -50498, 1, 0, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),
(1783, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(1783, 60008, 3, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'), -- 6%
(1783, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(1783, 60261, 0.1, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(1783, 60321, 0.01, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(1783, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- https://www.wowhead.com/classic/npc=7033/firegut-ogre
-- https://web.archive.org/web/20080418053736/http://wow.allakhazam.com/db/mob.html?wmob=7033
DELETE FROM `creature_loot_template` WHERE `entry` = 7033; -- 20 down from 101
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(7033, 22528, 34.1254, 0, 1, 1, 0, 'Dark Iron Scraps'),
(7033, 14047, 24.3294, 0, 1, 2, 0, 'Runecloth'),
(7033, 8952, 4.9554, 0, 1, 1, 0, 'Roasted Quail'),
(7033, 8766, 2.2959, 0, 1, 1, 0, 'Morning Glory Dew'),
(7033, 13446, 2.76, 0, 1, 1, 0, 'Major Healing Potion'),
(7033, 13443, 1.44, 0, 1, 1, 0, 'Superior Mana Potion'),
(7033, 5758, 0.0574, 0, 1, 1, 0, 'Mithril Lockbox'),
(7033, 4638, 0.0536, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(7033, 7910, 0.0268, 0, 1, 1, 0, 'Star Ruby'),
(7033, 7909, 0.0383, 0, 1, 1, 0, 'Aquamarine'),
(7033, 49004, 0.1, 0, -49004, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+) - VANILLA NPC ONLY'),
(7033, 50498, 0.1106, 0, -50498, 1, 0, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),
(7033, 50551, 1.22, 0, -50551, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)'),
(7033, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(7033, 60008, 3, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'), -- 6, grey drop chance too high across the board
(7033, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(7033, 60261, 0.1, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(7033, 60321, 0.01, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(7033, 60445, 0.05, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(7033, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- https://www.wowhead.com/classic/npc=8891/anvilrage-guardsman
-- https://web.archive.org/web/20080418053736/http://wow.allakhazam.com/db/mob.html?wmob=7033 - elite higher grey drop %
DELETE FROM `creature_loot_template` WHERE `entry` = 8891; -- 27 down from 120
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8891, 18945, 18.1475, 0, 1, 10, 0, 'Dark Iron Residue'),
(8891, 11754, 3.1194, 0, 1, 1, 0, 'Black Diamond'),
(8891, 11468, -80, 0, 1, 1, 0, 'Dark Iron Fanny Pack'),
(8891, 22528, 13.6836, 0, 2, 4, 0, 'Dark Iron Scraps'),
(8891, 11446, 25, 0, 1, 1, 210, 'A Crumpled Up Note'), -- Quest ID 4242 Rewarded -> hmm might need better condition!
(8891, 14047, 30.3583, 0, 1, 4, 0, 'Runecloth'),
(8891, 11078, 8.5173, 0, 1, 1, 0, 'Relic Coffer Key'),
(8891, 8950, 5.1436, 0, 1, 1, 0, 'Homemade Cherry Pie'),
(8891, 8766, 2.3138, 0, 1, 1, 0, 'Morning Glory Dew'),
(8891, 13446, 2.14, 0, 1, 1, 0, 'Major Healing Potion'),
(8891, 13443, 1.28, 0, 1, 1, 0, 'Superior Mana Potion'),
(8891, 7909, 0.2971, 0, 1, 1, 0, 'Aquamarine'),
(8891, 7910, 0.3323, 0, 1, 1, 0, 'Star Ruby'),
(8891, 5758, 0.2442, 0, 1, 1, 0, 'Mithril Lockbox'),
(8891, 4638, 0.2291, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8891, 30010, 0.25, 0, -30010, 1, 0, 'Blackrock Depths - Zone Drop'),
(8891, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(8891, 50498, 0.1585, 0, -50498, 1, 0, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),
(8891, 50499, 0.58, 0, -50499, 1, 0, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'),
(8891, 50551, 1.88, 0, -50551, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)'),
(8891, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(8891, 60008, 9, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'), -- 6
(8891, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(8891, 60261, 0.1, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(8891, 60321, 0.01, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)'),
(8891, 60445, 0.05, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(8891, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- https://www.wowhead.com/classic/npc=8892/anvilrage-footman
-- https://web.archive.org/web/20080417220435/http://wow.allakhazam.com/db/mob.html?wmob=8892
DELETE FROM `creature_loot_template` WHERE `entry` = 8892; -- 26 down from 101
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8892, 18945, 18.7324, 0, 1, 10, 0, 'Dark Iron Residue'),
(8892, 11754, 2.9924, 0, 1, 1, 0, 'Black Diamond'),
(8892, 11468, -80, 0, 1, 1, 0, 'Dark Iron Fanny Pack'),
(8892, 22528, 13.3895, 0, 2, 4, 0, 'Dark Iron Scraps'),
(8892, 11446, 25, 0, 1, 1, 210, 'A Crumpled Up Note'), -- Quest ID 4242 Rewarded -> hmm might need better condition!
(8892, 14047, 30.8316, 0, 1, 4, 0, 'Runecloth'),
(8892, 11078, 8.439, 0, 1, 1, 0, 'Relic Coffer Key'),
(8892, 8950, 5.1418, 0, 1, 1, 0, 'Homemade Cherry Pie'),
(8892, 8766, 2.4704, 0, 1, 1, 0, 'Morning Glory Dew'),
(8892, 13446, 2.08, 0, 1, 1, 0, 'Major Healing Potion'),
(8892, 13443, 1.34, 0, 1, 1, 0, 'Superior Mana Potion'),
(8892, 5758, 0.4247, 0, 1, 1, 0, 'Mithril Lockbox'),
(8892, 7909, 0.2756, 0, 1, 1, 0, 'Aquamarine'),
(8892, 7910, 0.3015, 0, 1, 1, 0, 'Star Ruby'),
(8892, 50498, 0.1847, 0, -50498, 1, 0, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),
(8892, 50499, 0.54, 0, -50499, 1, 0, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'),
(8892, 30010, 0.25, 0, -30010, 1, 0, 'Blackrock Depths - Zone Drop'),
(8892, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(8892, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(8892, 50551, 1.66, 0, -50551, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)'),
(8892, 60008, 9, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(8892, 60187, 2, 0, -60187, 1, 0, 'Green World Drop'), -- 60185 tbc+
(8892, 60263, 0.1, 0, -60263, 1, 0, 'Blue World Drop'), -- 60261 tbc+
(8892, 60323, 0.01, 0, -60323, 1, 0, 'Purple World Drop'), -- 60323 tbc+
(8892, 60445, 0.05, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(8892, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50551;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50551, 'LOOT (World Drop) - (RequiredSkillRank: 205-~295 (Profession Recipes)) - (NPC Levels ~51)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50551;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Skeletal Flayer 1783 50 51
(50551, 3395, 0, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(50551, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'), -- ø 8892
(50551, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'), -- ø 7033,8892
(50551, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50551, 7990, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(50551, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'), -- ø 7033
(50551, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'), -- ø 8892
(50551, 7993, 0, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(50551, 8028, 0, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'),
(50551, 8029, 0, 1, 1, 1, 198, 'Plans: Wicked Mithril Blade'), -- Has Skill ID 164, Minimum Skill Value 1 ø 8892
(50551, 8385, 0, 1, 1, 1, 0, 'Pattern: Turtle Scale Gloves'), -- ø 7033,8892
(50551, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'), -- ø 8892
(50551, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'), -- ø 8892
(50551, 8389, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(50551, 8390, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(50551, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'), -- ø 7033,8892
(50551, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
-- (50551, 9296, 0, 1, 1, 1, 0, 'Recipe: Gift of Arthas'), -- ø 7033,8891,8892 -> no world loot
(50551, 9297, 0, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'), -- ø 7033,8891
(50551, 9298, 0, 1, 1, 1, 0, 'Recipe: Elixir of Giants'),
(50551, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'), -- ø 8892
(50551, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'), -- ø 8892
(50551, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'), -- ø 7033,8892
(50551, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'), -- ø 7033,8892
(50551, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50551, 10320, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(50551, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'), -- ø 8892
(50551, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'), -- ø 8892
(50551, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'), -- ø 7033,8891,8892
(50551, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak'), -- ø 8892
(50551, 10608, 0, 1, 1, 1, 0, 'Schematic: Sniper Scope'), -- ø 8892
(50551, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'), -- ø 8892
(50551, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'), -- ø 8892
(50551, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50551, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'), -- ø 7033
(50551, 11225, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(50551, 11226, 0, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'), -- ø 7033,8892
(50551, 12682, 0, 1, 1, 1, 0, 'Plans: Thorium Armor'),
(50551, 12683, 0, 1, 1, 1, 0, 'Plans: Thorium Belt'),
(50551, 12684, 0, 1, 1, 1, 0, 'Plans: Thorium Bracers'),
(50551, 12685, 0, 1, 1, 1, 0, 'Plans: Radiant Belt'), -- ø 7033
(50551, 12689, 0, 1, 1, 1, 0, 'Plans: Radiant Breastplate'),
(50551, 12691, 0, 1, 1, 1, 0, 'Plans: Wildthorn Mail'),
(50551, 12692, 0, 1, 1, 1, 0, 'Plans: Thorium Shield Spike'), -- ø 8891
(50551, 12694, 0, 1, 1, 1, 0, 'Plans: Thorium Helm'),
(50551, 12695, 0, 1, 1, 1, 0, 'Plans: Radiant Gloves'), -- ø 7033
(50551, 12697, 0, 1, 1, 1, 0, 'Plans: Radiant Boots'), -- ø 7033
(50551, 12704, 0, 1, 1, 1, 0, 'Plans: Thorium Leggings'),
(50551, 13486, 0, 1, 1, 1, 0, 'Recipe: Transmute Undeath to Water'), -- ø 7033
(50551, 13487, 0, 1, 1, 1, 0, 'Recipe: Transmute Water to Undeath'), -- ø 7033,8891
(50551, 13488, 0, 1, 1, 1, 0, 'Recipe: Transmute Life to Earth'), -- ø 7033
(50551, 13489, 0, 1, 1, 1, 0, 'Recipe: Transmute Earth to Life'), -- ø 7033
(50551, 13490, 0, 1, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(50551, 13492, 0, 1, 1, 1, 0, 'Recipe: Purification Potion'),
(50551, 14466, 0, 1, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(50551, 14467, 0, 1, 1, 1, 0, 'Pattern: Frostweave Robe'),
(50551, 14470, 0, 1, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(50551, 14474, 0, 1, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(50551, 14478, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(50551, 14479, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(50551, 14484, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(50551, 14489, 0, 1, 1, 1, 0, 'Pattern: Frostweave Pants'),
(50551, 14491, 0, 1, 1, 1, 0, 'Pattern: Runecloth Pants'),
(50551, 14492, 0, 1, 1, 1, 0, 'Pattern: Felcloth Boots'),
(50551, 14494, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(50551, 14496, 0, 1, 1, 1, 0, 'Pattern: Felcloth Hood'),
(50551, 14498, 0, 1, 1, 1, 0, 'Pattern: Runecloth Headband'),
(50551, 14499, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Bag'), -- ø 7033
(50551, 14507, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Shoulders'), -- ø 7033,8892
(50551, 15731, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(50551, 15737, 0, 1, 1, 1, 0, 'Pattern: Chimeric Boots'),
(50551, 15742, 0, 1, 1, 1, 0, 'Pattern: Warbear Harness'), -- ø 7033,8891,8892
(50551, 15743, 0, 1, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(50551, 15745, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(50551, 15746, 0, 1, 1, 1, 0, 'Pattern: Chimeric Leggings'), -- ø 7033
(50551, 15755, 0, 1, 1, 1, 0, 'Pattern: Chimeric Vest'),
(50551, 15757, 0, 1, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(50551, 16043, 0, 1, 1, 1, 0, 'Schematic: Thorium Rifle'),
(50551, 16044, 0, 1, 1, 1, 0, 'Schematic: Lifelike Mechanical Toad'), -- ø 7033
(50551, 16051, 0, 1, 1, 1, 0, 'Schematic: Thorium Shells'), -- ø 7033
(50551, 16215, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(50551, 16218, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(50551, 16220, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Spirit'),
(50551, 16245, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
-- Firegut Ogre 7033 50 51
(50551, 13493, 0, 1, 1, 1, 0, 'Recipe: Greater Arcane Elixir'), -- ø 1783,8891
-- Anvilrage Guardsman 8891 50 51
(50551, 12693, 0, 1, 1, 1, 0, 'Plans: Thorium Boots'), -- ø 1783,7033
(50551, 12711, 0, 1, 1, 1, 0, 'Plans: Whitesoul Helm'), -- ø 1783,7033,8892
(50551, 14497, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Leggings'), -- ø 1783,7033,8892
(50551, 16055, 0, 1, 1, 1, 0, 'Schematic: Arcane Bomb'), -- ø 1783,7033
-- Anvilrage Footman 8892 50 51, up to 52 in classicmangos, keeping these though, not much difference
(50551, 12703, 0, 1, 1, 1, 0, 'Plans: Storm Gauntlets'), -- ø 1783,7033,8891
(50551, 13518, 0, 1, 1, 1, 0, 'Recipe: Flask of Petrification'), -- ø 1783,7033,8891
(50551, 14501, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Vest'), -- ø 1783,7033,8891
-- 250 - ~295 RequiredSkillRank
(50551, 12702, 0, 1, 1, 1, 0, 'Plans: Radiant Circlet');
-- 235 - ~295 RequiredSkillRank tbc+
-- (50551, 21944, 0, 1, 1, 1, 0, 'Design: Truesilver Boar'),
-- (50551, 21945, 0, 1, 1, 1, 0, 'Design: The Aquamarine Ward'),
-- (50551, 12698, 0, 1, 1, 1, 0, 'Plans: Dawnbringer Shoulders'),
-- (50551, 21947, 0, 1, 1, 1, 0, 'Design: Gem Studded Band'),
-- (50551, 21949, 0, 1, 1, 1, 0, 'Design: Ruby Serpent'),
-- (50551, 21953, 0, 1, 1, 1, 0, 'Design: Emerald Owl');

-- https://www.wowhead.com/classic/npc=2850/broken-tooth - most corrupted loot_template (151 items)
-- https://web.archive.org/web/20080415045319/http://wow.allakhazam.com:80/db/mob.html?wmob=2850
DELETE FROM `creature_loot_template` WHERE `entry` = 2850;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2850, 1688, 27.1318, 0, 1, 1, 0, 'Long Soft Tail'),
(2850, 4580, 9.3023, 0, 1, 1, 0, 'Sabertooth Fang'),
(2850, 8146, 1.5504, 0, 1, 1, 0, 'Wicked Claw'),
(2850, 7909, 0.48, 0, 1, 1, 0, 'Aquamarine'),
(2850, 60158, 100, 0, -60158, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)'),
(2850, 60234, 0.1, 0, -60234, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)');
-- displaced patterns, seemingly of two different level ranges, not belonging to broken-tooth
-- (2850, 2409, 0.02, 0, 1, 1, 0, 'Pattern: Dark Leather Tunic'),
-- (2850, 2601, 0.0172392, 0, 1, 1, 0, 'Pattern: Gray Woolen Robe'),
-- (2850, 2881, 0.02, 0, 1, 1, 0, 'Plans: Runed Copper Breastplate'),
-- (2850, 2882, 0.0145575, 0, 1, 1, 0, 'Plans: Silvered Bronze Shoulders'),
-- (2850, 2883, 0.0191547, 0, 1, 1, 0, 'Plans: Deadly Bronze Poniard'),
-- (2850, 3393, 0.0134083, 0, 1, 1, 0, 'Recipe: Minor Magic Resistance Potion'),
-- (2850, 3394, 0.0187716, 0, 1, 1, 0, 'Recipe: Elixir of Poison Resistance'), -- Name Change: Recipe: Potion of Curing
-- (2850, 3396, 0.0134083, 0, 1, 1, 0, 'Recipe: Elixir of Lesser Agility'),
-- (2850, 3608, 0.0107266, 0, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
-- (2850, 3611, 0.0157068, 0, 1, 1, 0, 'Plans: Green Iron Boots'),
-- (2850, 3612, 0.02, 0, 1, 1, 0, 'Plans: Green Iron Gauntlets'),
-- (2850, 3830, 0.0172392, 0, 1, 1, 0, 'Recipe: Elixir of Fortitude'),
-- (2850, 3831, 0.0134083, 0, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
-- (2850, 3832, 0.02, 0, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
-- (2850, 3866, 0.0149406, 0, 1, 1, 0, 'Plans: Jade Serpentblade'),
-- (2850, 3867, 0.0145575, 0, 1, 1, 0, 'Plans: Golden Iron Destroyer'),
-- (2850, 3868, 0.016473, 0, 1, 1, 0, 'Plans: Frost Tiger Blade'),
-- (2850, 3869, 0.0172392, 0, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
-- (2850, 3870, 0.0134083, 0, 1, 1, 0, 'Plans: Green Iron Shoulders'),
-- (2850, 3871, 0.02, 0, 1, 1, 0, 'Plans: Golden Scale Shoulders'),
-- (2850, 3872, 0.02, 0, 1, 1, 0, 'Plans: Golden Scale Leggings'),
-- (2850, 3873, 0.0187716, 0, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
-- (2850, 3874, 0.0153237, 0, 1, 1, 0, 'Plans: Polished Steel Boots'),
-- (2850, 4292, 0.02, 0, 1, 1, 0, 'Pattern: Green Woolen Bag'),
-- (2850, 4293, 0.02, 0, 1, 1, 0, 'Pattern: Hillman\'s Leather Vest'),
-- (2850, 4294, 0.0222194, 0, 1, 1, 0, 'Pattern: Hillman\'s Belt'),
-- (2850, 4296, 0.0153237, 0, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
-- (2850, 4297, 0.0176223, 0, 1, 1, 0, 'Pattern: Barbaric Gloves'),
-- (2850, 4298, 0.02, 0, 1, 1, 0, 'Pattern: Guardian Belt'),
-- (2850, 4299, 0.02, 0, 1, 1, 0, 'Pattern: Guardian Armor'),
-- (2850, 4300, 0.0160899, 0, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
-- (2850, 4301, 0.02, 0, 1, 1, 0, 'Pattern: Barbaric Belt'),
-- (2850, 4345, 0.02, 0, 1, 1, 0, 'Pattern: Red Woolen Boots'),
-- (2850, 4346, 0.02, 0, 1, 1, 0, 'Pattern: Heavy Woolen Cloak'),
-- (2850, 4347, 0.0160899, 0, 1, 1, 0, 'Pattern: Reinforced Woolen Shoulders'),
-- (2850, 4348, 0.0183885, 0, 1, 1, 0, 'Pattern: Phoenix Gloves'),
-- (2850, 4349, 0.0214532, 0, 1, 1, 0, 'Pattern: Phoenix Pants'),
-- (2850, 4350, 0.0118759, 0, 1, 1, 0, 'Pattern: Spider Silk Slippers'),
-- (2850, 4351, 0.02, 0, 1, 1, 0, 'Pattern: Shadow Hood'),
-- (2850, 4352, 0.0195378, 0, 1, 1, 0, 'Pattern: Boots of the Enchanter'),
-- (2850, 4353, 0.0195378, 0, 1, 1, 0, 'Pattern: Spider Belt'),
-- (2850, 4409, 0.02, 0, 1, 1, 0, 'Schematic: Small Seaforium Charge'),
-- (2850, 4410, 0.0229856, 0, 1, 1, 0, 'Schematic: Shadow Goggles'),
-- (2850, 4412, 0.020687, 0, 1, 1, 0, 'Schematic: Moonsight Rifle'),
-- (2850, 4414, 0.016473, 0, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
-- (2850, 4415, 0.02, 0, 1, 1, 0, 'Schematic: Craftsman\'s Monocle'),
-- (2850, 4416, 0.0149406, 0, 1, 1, 0, 'Schematic: Goblin Land Mine'),
-- (2850, 4417, 0.0210701, 0, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
-- (2850, 5543, 0.0176223, 0, 1, 1, 0, 'Plans: Iridescent Hammer'),
-- (2850, 5578, 0.0153237, 0, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'),
-- (2850, 5774, 0.0145575, 0, 1, 1, 0, 'Pattern: Green Silk Pack'),
-- (2850, 5972, 0.0187716, 0, 1, 1, 0, 'Pattern: Fine Leather Pants'),
-- (2850, 5974, 0.0187716, 0, 1, 1, 0, 'Pattern: Guardian Cloak'),
-- (2850, 6044, 0.0145575, 0, 1, 1, 0, 'Plans: Iron Shield Spike'),
-- (2850, 6045, 0.0141745, 0, 1, 1, 0, 'Plans: Iron Counterweight'),
-- (2850, 6211, 0.0145575, 0, 1, 1, 0, 'Recipe: Elixir of Ogre\'s Strength'),
-- (2850, 6344, 0.02, 0, 1, 1, 0, 'Formula: Enchant Bracer - Minor Spirit'),
-- (2850, 6347, 0.02, 0, 1, 1, 0, 'Formula: Enchant Bracer - Minor Strength'),
-- (2850, 6348, 0.02, 0, 1, 1, 0, 'Formula: Enchant Weapon - Minor Beastslayer'),
-- (2850, 6375, 0.0222194, 0, 1, 1, 0, 'Formula: Enchant Bracer - Lesser Spirit'),
-- (2850, 6390, 0.0199209, 0, 1, 1, 0, 'Pattern: Stylish Blue Shirt'),
-- (2850, 6391, 0.0172392, 0, 1, 1, 0, 'Pattern: Stylish Green Shirt'),
-- (2850, 6454, 0.0249011, 0, 1, 1, 0, 'Manual: Strong Anti-Venom'),
-- (2850, 6716, 0.02, 0, 1, 1, 0, 'Schematic: EZ-Thro Dynamite'),
-- (2850, 7084, 0.0191547, 0, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
-- (2850, 7085, 0.0203039, 0, 1, 1, 0, 'Pattern: Azure Shoulders'),
-- (2850, 7086, 0.016473, 0, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
-- (2850, 7090, 0.016473, 0, 1, 1, 0, 'Pattern: Green Silk Armor'),
-- (2850, 7091, 0.0145575, 0, 1, 1, 0, 'Pattern: Truefaith Gloves'),
-- (2850, 7092, 0.0157068, 0, 1, 1, 0, 'Pattern: Hands of Darkness'),
-- (2850, 7360, 0.0160899, 0, 1, 1, 0, 'Pattern: Dark Leather Gloves'),
-- (2850, 7363, 0.0130252, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
-- (2850, 7364, 0.0137914, 0, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'),
-- (2850, 7449, 0.016473, 0, 1, 1, 0, 'Pattern: Dusky Leather Leggings'),
-- (2850, 7450, 0.0153237, 0, 1, 1, 0, 'Pattern: Green Whelp Armor'),
-- (2850, 7452, 0.02, 0, 1, 1, 0, 'Pattern: Dusky Boots'),
-- (2850, 7453, 0.0153237, 0, 1, 1, 0, 'Pattern: Swift Boots'),
-- (2850, 7975, 0.0183885, 0, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
-- (2850, 7976, 0.02, 0, 1, 1, 0, 'Plans: Mithril Shield Spike'),
-- (2850, 7992, 0.0249011, 0, 1, 1, 0, 'Plans: Blue Glittering Axe'),
-- (2850, 8029, 0.0241349, 0, 1, 1, 198, 'Plans: Wicked Mithril Blade'), -- Soulbound
-- (2850, 8385, 0.0218363, 0, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
-- (2850, 8386, 0.0176223, 0, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
-- (2850, 8387, 0.0187716, 0, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
-- (2850, 9293, 0.0191547, 0, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
-- (2850, 10300, 0.0252842, 0, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
-- (2850, 10301, 0.0256673, 0, 1, 1, 0, 'Pattern: White Bandit Mask'),
-- (2850, 10302, 0.024518, 0, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
-- (2850, 10312, 0.0268165, 0, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
-- (2850, 10316, 0.0199209, 0, 1, 1, 0, 'Pattern: Colorful Kilt'),
-- (2850, 10424, 0.0183885, 0, 1, 1, 0, 'Plans: Silvered Bronze Leggings'),
-- (2850, 10601, 0.0149406, 0, 1, 1, 0, 'Schematic: Bright-Eye Goggles'),
-- (2850, 10603, 0.0176223, 0, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
-- (2850, 10604, 0.0180054, 0, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
-- (2850, 10605, 0.02, 0, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
-- (2850, 10606, 0.0199209, 0, 1, 1, 0, 'Schematic: Parachute Cloak'),
-- (2850, 11038, 0.0172392, 0, 1, 1, 0, 'Formula: Enchant 2H Weapon - Lesser Spirit'),
-- (2850, 11039, 0.0153237, 0, 1, 1, 0, 'Formula: Enchant Cloak - Minor Agility'),
-- (2850, 11081, 0.0210701, 0, 1, 1, 0, 'Formula: Enchant Shield - Lesser Protection'),
-- (2850, 11098, 0.012259, 0, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
-- (2850, 11164, 0.0137914, 0, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer'),
-- (2850, 11165, 0.012259, 0, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Elemental Slayer'),
-- (2850, 11167, 0.0168561, 0, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
-- (2850, 11168, 0.02, 0, 1, 1, 0, 'Formula: Enchant Shield - Lesser Block'),
-- (2850, 11202, 0.0298813, 0, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
-- (2850, 11204, 0.0172392, 0, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit');

-- Plans: Wicked Mithril Blade - bonding = 1
UPDATE `creature_loot_template` SET `condition_id` = 198 WHERE `item` = 8029; -- Has Skill ID 164, Minimum Skill Value 1
UPDATE `reference_loot_template` SET `condition_id` = 198 WHERE `item` = 8029;

-- entry,name,%,entry,minlevel,maxlevel,rank - legacy chance
-- nonelite in and outside dungeon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `item` = 60008 AND `entry` IN (SELECT `entry` FROM `creature_template` WHERE `rank` = 0); -- normal
-- 9545 Grim Patron 6 9545 48 52 0 - 3.30% https://web.archive.org/web/20080418043127/http://wow.allakhazam.com/db/mob.html?wmob=9545
-- 9547 Guzzling Patron 6 9547 48 52 0 - 2.91% https://web.archive.org/web/20080418054007/http://wow.allakhazam.com/db/mob.html?wmob=9547
-- 3094 Unseen 6 3094 49 51 0 - 2.91% https://web.archive.org/web/20080424080820/http://wow.allakhazam.com/db/mob.html?wmob=3094
-- 2648 Vilebranch Aman'zasi Guard 6 2648 50 51 0 - 38.50%-30.85%=7.65% ~9& made nonelite in tbc+ https://web.archive.org/web/20080421182541/http://wow.allakhazam.com/db/mob.html?wmob=2648
-- 6517 Tar Beast 6 6517 50 51 0 - 2.92% https://web.archive.org/web/20080418053721/http://wow.allakhazam.com/db/mob.html?wmob=6517
-- 6188 Timbermaw Shaman 6 6188 50 51 0 - 2.76% https://web.archive.org/web/20080418053701/http://wow.allakhazam.com/db/mob.html?wmob=6188
-- 7106 Jadefire Rogue 6 7106 50 51 0 - 2.90% https://web.archive.org/web/20080418072202/http://wow.allakhazam.com/db/mob.html?wmob=7106
-- 1783 Skeletal Flayer 6 1783 50 51 0 - 2.89% https://web.archive.org/web/20080422034942/http://wow.allakhazam.com/db/mob.html?wmob=1783
-- 8897 Doomforge Craftsman 6 8897 51 51 0 - 3.12% https://web.archive.org/web/20080417231040/http://wow.allakhazam.com/db/mob.html?wmob=8897
-- 6006 Shadowsworn Adept 6 6006 52 53 0 - 2.77% https://web.archive.org/web/20080421084855/http://wow.allakhazam.com/db/mob.html?wmob=6006
-- 1835 Scarlet Invoker 6 1835 53 54 0 - 3.12% https://web.archive.org/web/20080502070548/http://wow.allakhazam.com/db/mob.html?wmob=1835
-- 8553 Necromancer 6 8553 54 55 0 - 2.48% https://web.archive.org/web/20080501141032/http://wow.allakhazam.com/db/mob.html?wmob=8553
-- 10816 Wandering Skeleton 6 10816 55 55 0 - 2.67% https://web.archive.org/web/20080507203826/http://wow.allakhazam.com/db/mob.html?wmob=10816
-- 8526 Dark Caster 6 8526 56 57 0 - 2.90% https://web.archive.org/web/20080504142931/http://wow.allakhazam.com/db/mob.html?wmob=8526
-- 7438 Winterfall Ursa 6 7438 57 58 0 - 2.85% https://web.archive.org/web/20080418072212/http://wow.allakhazam.com/db/mob.html?wmob=7438
-- 10481 Reanimated Corpse 6 10481 58 59 0 - 1.71% https://web.archive.org/web/20080507050924/http://wow.allakhazam.com/db/mob.html?wmob=10481
-- 8532 Diseased Flayer 6 8532 58 59 0 - 2.87% https://web.archive.org/web/20080421161237/http://wow.allakhazam.com/db/mob.html?wmob=8532
-- 8550 Shadowmage 6 8550 59 60 0 - 2.91% https://web.archive.org/web/20080429231329/http://wow.allakhazam.com/db/mob.html?wmob=8550
-- 10399 Thuzadin Acolyte 6 10399 59 60 0 - 8.55% https://web.archive.org/web/20080429205222/http://wow.allakhazam.com/db/mob.html?wmob=10399 - shows there are exceptions to the normal rule. (3 / 9%)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `item` = 60008 AND `entry` IN (10399);
-- seems in real high levels for normal mobs the chance even falls off
-- 11880	Twilight Avenger - 1.44% https://web.archive.org/web/20080417181910/http://wow.allakhazam.com/db/mob.html?wmob=11880
-- 11883 Twilight Master 6 11883 60 60 0 - 1.44% https://web.archive.org/web/20080423113642/http://wow.allakhazam.com/db/mob.html?wmob=11883
-- 15213 Twilight Overlord 6 15213 60 61 0 - 1.45% https://web.archive.org/web/20080418100523/http://wow.allakhazam.com/db/mob.html?wmob=15213
-- 15201 Twilight Flamereaver 6 15201 60 60 0 - 1.50% https://web.archive.org/web/20080421212040/http://wow.allakhazam.com/db/mob.html?wmob=15201
-- 15542	Twilight Marauder 1.34% https://web.archive.org/web/20080422025956/http://wow.allakhazam.com/db/mob.html?wmob=15542
-- 11881	Twilight Geolord 1.43% https://web.archive.org/web/20080418042455/http://wow.allakhazam.com/db/mob.html?wmob=11881
-- 11882	Twilight Stonecaller 1.49% https://web.archive.org/web/20080418071024/http://wow.allakhazam.com/db/mob.html?wmob=11882
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `item` = 60008 AND `entry` IN (11880,11883,15213,15201,15542,11881,11882);

-- entry,name,%,entry,minlevel,maxlevel,rank - legacy chance
-- elite in and outside dungeon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 9 WHERE `item` = 60008 AND `entry` IN (SELECT `entry` FROM `creature_template` WHERE `rank` = 1); -- elite
-- 8889 Anvilrage Overseer 6 8889 48 49 1 - 8.30% https://web.archive.org/web/20080417220419/http://wow.allakhazam.com/db/mob.html?wmob=8889
-- 8894 Anvilrage Medic 6 8894 50 51 1 - 8.62% https://web.archive.org/web/20080417231035/http://wow.allakhazam.com/db/mob.html?wmob=8894
-- 8913 Twilight Emissary 6 8913 51 52 1 - 3.33% https://web.archive.org/web/20080418043022/http://wow.allakhazam.com/db/mob.html?wmob=8913 - shows there are exceptions to the elite rule. (3 / 9%)
-- 6131 Draconic Mageweaver 6 6131 51 52 1 - 5.81% https://web.archive.org/web/20080417230821/http://wow.allakhazam.com/db/mob.html?wmob=6131 - elite outside dungeon 6%?
-- 9398 Twilight's Hammer Executioner 6 9398 52 52 1 - 3.11% https://web.archive.org/web/20080418053942/http://wow.allakhazam.com/db/mob.html?wmob=9398 - shows there are exceptions to the elite rule. (3 / 9%)
-- 6130 Blue Scalebane 6 6130 52 53 1 - 5.84% https://web.archive.org/web/20080417185233/http://wow.allakhazam.com/db/mob.html?wmob=6130
-- 8899 Doomforge Dragoon 6 8899 53 54 1 - 8.34% https://web.archive.org/web/20080418053806/http://wow.allakhazam.com/db/mob.html?wmob=8899
-- 9452 Scarlet Enchanter 6 9452 53 55 1 - 8.68% https://web.archive.org/web/20080502005251/http://wow.allakhazam.com/db/mob.html?wmob=9452 - elite outside with 9%
-- 11355 Gurubashi Warrior 6 11355 54 55 1 - 9.02% https://web.archive.org/web/20080420120618/http://wow.allakhazam.com/db/mob.html?wmob=11355 - elite outside with 9%
-- 9045 Scarshield Acolyte 6 9045 54 55 1 - 8.43% https://web.archive.org/web/20080421183634/http://wow.allakhazam.com/db/mob.html?wmob=9045
-- 11454 Wildspawn Betrayer 6 11454 55 56 1 - 8.86% https://web.archive.org/web/20080421224034/http://wow.allakhazam.com/db/mob.html?wmob=11454
-- 10382 Mangled Cadaver 6 10382 55 56 1 - 7.14% https://web.archive.org/web/20080501161207/http://wow.allakhazam.com/db/mob.html?wmob=10382
-- 11346 Hakkari Oracle 6 11346 55 56 1 - 9.42% https://web.archive.org/web/20080418042440/http://wow.allakhazam.com/db/mob.html?wmob=11346
-- 7435 Cobalt Wyrmkin 6 7435 55 56 1 - 6.44% https://web.archive.org/web/20080421145203/http://wow.allakhazam.com/db/mob.html?wmob=7435
-- 10384 Spectral Citizen 6 10384 55 56 1 - 9.42% https://web.archive.org/web/20080505062633/http://wow.allakhazam.com/db/mob.html?wmob=10384
-- 9265 Smolderthorn Shadow Hunter 6 9265 56 57 1 - 9.15% https://web.archive.org/web/20080504143943/http://wow.allakhazam.com/db/mob.html?wmob=9265
-- 10419 Crimson Conjuror 6 10419 57 58 1 - 9.54% https://web.archive.org/web/20080501140910/http://wow.allakhazam.com/db/mob.html?wmob=10419
-- 7071 Cursed Paladin 6 7071 57 58 1 - 5.46% https://web.archive.org/web/20080422114425/http://wow.allakhazam.com/db/mob.html?wmob=7071 - outside
-- 11444 Gordok Mage-Lord 6 11444 57 58 1 - 8.53% https://web.archive.org/web/20080418063457/http://wow.allakhazam.com/db/mob.html?wmob=11444
-- 10489 Risen Guard 6 10489 57 59 1 - 7.96% https://web.archive.org/web/20080430022654/http://wow.allakhazam.com/db/mob.html?wmob=10489
-- 10464 Wailing Banshee 6 10464 58 59 1 - 8.64% https://web.archive.org/web/20080429205307/http://wow.allakhazam.com/db/mob.html?wmob=10464
-- 10258 Rookery Guardian 6 10258 58 59 1 - 5.51% https://web.archive.org/web/20080506063753/http://wow.allakhazam.com/db/mob.html?wmob=10258
-- 10996 Fallen Hero 6 10996 58 60 1 - 9.42% https://web.archive.org/web/20080420122438/http://wow.allakhazam.com/db/mob.html?wmob=10996 - outside
-- 9818 Blackhand Summoner 6 9818 59 60 1 - 8.35% https://web.archive.org/web/20080504054602/http://wow.allakhazam.com/db/mob.html?wmob=9818
-- 11257 Scholomance Handler 6 11257 59 60 1 - 8.70% https://web.archive.org/web/20080430022724/http://wow.allakhazam.com/db/mob.html?wmob=11257
-- 7461 Hederine Initiate 6 7461 59 60 1 - 8.05% https://web.archive.org/web/20080421225218/http://wow.allakhazam.com/db/mob.html?wmob=7461
-- 10762 Blackhand Thug 6 10762 60 60 1 - 9.28% https://web.archive.org/web/20080516034417/http://wow.allakhazam.com/db/mob.html?wmob=10762
-- 10400 Thuzadin Necromancer 6 10400 60 61 1 - 8.89% https://web.archive.org/web/20080421160204/http://wow.allakhazam.com/db/mob.html?wmob=10400
-- 12129 Onyxian Warder 6 12129 60 63 1 - 6.48% https://web.archive.org/web/20080506053533/http://wow.allakhazam.com/db/mob.html?wmob=12129
-- 11663 Flamewaker Healer 6 11663 60 60 1 - 9.74% https://web.archive.org/web/20080421224044/http://wow.allakhazam.com/db/mob.html?wmob=11663 raid
-- 12128 Crimson Elite 6 12128 60 60 1 - 8.53% https://web.archive.org/web/20080505194509/http://wow.allakhazam.com/db/mob.html?wmob=12128 - outside
-- 10366 Rage Talon Dragon Guard 6 10366 60 61 1 - 5.47% https://web.archive.org/web/20080430022629/http://wow.allakhazam.com/db/mob.html?wmob=10366
-- 1852 Araj the Summoner 6 1852 61 61 1 - 4.96% https://web.archive.org/web/20080421191532/http://wow.allakhazam.com/db/mob.html?wmob=1852 - outside
-- 1050 Scalebane Royal Guard 6 1050 61 62 1 - 5.63% https://web.archive.org/web/20080506034015/http://wow.allakhazam.com/db/mob.html?wmob=1050 - outside
-- 12396 Doomguard Commander 6 12396 61 61 1 - 5.28% https://web.archive.org/web/20080420122448/http://wow.allakhazam.com/db/mob.html?wmob=12396 - outside
-- 11622 Rattlegore 3 11622 61 61 1 - 2.64% https://web.archive.org/web/20080502001254/http://wow.allakhazam.com/db/mob.html?wmob=11622 - boss: shows there are exceptions to the elite rule. (3 / 9%)
-- 11664 Flamewaker Elite 6 11664 62 62 1 - 8.97% https://web.archive.org/web/20080421211838/http://wow.allakhazam.com/db/mob.html?wmob=11664
-- 8716 Dreadlord 6 8716 62 62 1 - 6.35% https://web.archive.org/web/20080421213444/http://wow.allakhazam.com/db/mob.html?wmob=8716 - outside

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `item` = 60008 AND `entry` IN ( -- elite map 0,1
466,1045,1046,1047,1048,1049,1050,1559,1788,1805,1827,1832,1834,1836,1842,1846,1852,2648,4364,4366,4368,4370,4371,5317,5319,5320,6129,6130,6131,6143,6144,6146,6147,6148,6560,7040,7041,7042,7043,7068,7069,
7070,7071,7072,7075,7428,7429,7435,7436,7437,7461,7463,7665,7666,7667,7728,7851,7995,8716,8717,9043,9044,9447,9448,9449,9450,9451,9516,9520,10608,10738,10802,11346,11383,11440,11442,11443,11878,
11898,12262,12263,12337,12339,12396,12474,12475,12476,12477,12478,12479,13776,13841,14284,14285,15162,15541,15591,16072);

-- Leave CREATURE_ELITE_RAREELITE, CREATURE_ELITE_WORLDBOSS,CREATURE_ELITE_RARE for now. (6% for most)

DELETE FROM `creature_loot_template` WHERE `item` = 60008
AND `entry` IN ( -- animals with other grey items do not drop grey armor pieces! - shake up botting meta
1815, -- Diseased Black Bear
1816, -- Diseased Grizzly
7055, -- Blackrock Worg
7432, -- Frostsaber Stalker
7434, -- Frostsaber Pride Watcher
7443, -- Shardtooth Mauler
7444, -- Shardtooth Bear
7445, -- Elder Shardtooth
7446, -- Rabid Shardtooth
8957, -- Angerclaw Grizzly
9701, -- Spire Scorpid
10806); -- Ursius

-- Solid Chest 153453 - https://www.wowhead.com/classic/object=153453/solid-chest
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 9932 AND `item` = 60008; -- 5

-- https://www.wowhead.com/classic/item=11382/blood-of-the-mountain#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 11382 AND `entry` != 11659;

-- not part of world loot - https://www.wowhead.com/classic/item=9296/recipe-gift-of-arthas#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 9296; -- 1791,1783 hold the item.

-- Design: Citrine Pendant of Golden Healing - bonding = 1 - tbc+
-- UPDATE `creature_loot_template` SET `condition_id` = 204 WHERE `item` = 20976; -- Has Skill ID 755, Minimum Skill Value 1
-- UPDATE `reference_loot_template` SET `condition_id` = 204 WHERE `item` = 20976;

