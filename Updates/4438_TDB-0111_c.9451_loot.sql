-- Add your query below.
-- Based on https://github.com/vmangos/core/commit/ad65a3af9877b0892e26874e6494532a1d4da506
-- Scarlet Archmage 9451 - AI will follow later.
-- https://www.wowhead.com/classic/npc=9451/scarlet-archmage

-- https://www.wowhead.com/tbc/npc=9451/scarlet-archmage#drops;mode:normal
-- https://web.archive.org/web/20080423203455/http://wow.allakhazam.com:80/db/mob.html?wmob=9451
-- General - not dropped by npcs.
DELETE FROM `creature_loot_template` WHERE `item` = 10620; -- Thorium Ore
DELETE FROM `creature_loot_template` WHERE `item` = 7911; -- Truesilver Ore
DELETE FROM `creature_loot_template` WHERE `item` = 12365; -- Dense Stone
DELETE FROM `creature_loot_template` WHERE `item` = 12698; -- https://www.wowhead.com/classic/item=12698/plans-dawnbringer-shoulders#comments

-- https://github.com/cmangos/tbc-db/commit/c3979a1e768be9cfa559df918a723fd60a7b8629 - might be more in wotlk, or not.
-- https://www.wowhead.com/wotlk/item=13463/dreamfoil#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 13463 AND `entry` NOT IN ( -- 32 left, 207 deleted. - wowhead has 32, slightly different and also corrupted again.
12237,12258,13196,13197,13022,14448,6512,7100,7101,6510,6511,6218,13021,11459,13285,12224,5481,6509,7149,11465,1031,6517,6527,6519,6518,1030,11461,11464,5881,1081,
7138,11458,1032,4020,7139,5055,12220,3931,8384,11462,12219,6219,13142,7584,5775,12223,13141,1033,1813,1812,5490,4541,5485,4021,4385,14424,14303,4029,3834,3919,1955,1956,
01,4387,4382,3535,17353,4028,2166,1954,765,3733,1953,17352,766,764,5761,4386,3784,3782,3783,2030,2029,1040,2027,2022,15636,1039,3780,3781,1041,2025,15637,15635,
7104,4030,9601,10641,2655,3640,5235,6556,6557,6559,7086,12836,5354,940);

DELETE FROM `creature_loot_template` WHERE `item` = 13464 AND `entry` NOT IN ( -- 34 left, 241 deleted. - wowhead has 16.
-- https://www.wowhead.com/wotlk/item=13464/golden-sansam#dropped-by
12237,12258,13196,13197,13022,14448,6512,7100,7101,6510,6511,6218,13021,11459,13285,12224,5481,6509,7149,11465,1031,6517,6527,6519,6518,1030,11461,11464,5881,1081,
7138,11458,1032,4020,7139,5055,12220,3931,8384,11462,12219,6219,13142,7584,5775,12223,13141,1033,1813,1812,5490,4541,5485,4021,4385,14424,14303,4029,3834,3919,1955,1956,
01,4387,4382,3535,17353,4028,2166,1954,765,3733,1953,17352,766,764,5761,4386,3784,3782,3783,2030,2029,1040,2027,2022,15636,1039,3780,3781,1041,2025,15637,15635,
7104,4030,9601,10641,2655,3640,5235,6556,6557,6559,7086,12836,5354,940);

-- https://www.wowhead.com/classic/item=13465/mountain-silversage#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 13465 AND `entry` NOT IN ( -- 20 left, 190 deleted. - wowhead has 7.
12237,12258,13196,13197,13022,14448,6512,7100,7101,6510,6511,6218,13021,11459,13285,12224,5481,6509,7149,11465,1031,6517,6527,6519,6518,1030,11461,11464,5881,1081,
7138,11458,1032,4020,7139,5055,12220,3931,8384,11462,12219,6219,13142,7584,5775,12223,13141,1033,1813,1812,5490,4541,5485,4021,4385,14424,14303,4029,3834,3919,1955,1956,
01,4387,4382,3535,17353,4028,2166,1954,765,3733,1953,17352,766,764,5761,4386,3784,3782,3783,2030,2029,1040,2027,2022,15636,1039,3780,3781,1041,2025,15637,15635,
7104,4030,9601,10641,2655,3640,5235,6556,6557,6559,7086,12836,5354,940);

-- https://www.wowhead.com/classic/item=2838/heavy-stone#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 2838 AND `ChanceOrQuestChance` < 0.5; -- 34 left, 562 deleted. - wowhead has 27.

DELETE FROM `creature_loot_template` WHERE `entry` = 9451;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(9451, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(9451, 60197, 2, 0, -60197, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)'),
(9451, 60273, 0.1, 0, -60273, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-65) - (NPC Levels: 56-57)'),
(9451, 60333, 0.01, 0, -60333, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 53-60) - (NPC Levels: 56-57)'),
(9451, 50614, 2, 0, -50614, 1, 0, 'NPC LOOT (Major Healing Potion / Superior Mana Potion)'),
(9451, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'),
(9451, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(9451, 50602, 0.5, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'), -- should be a mixed grp with ~1%, maybe create one
(9451, 50603, 0.5, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'), -- should be a mixed grp with ~1%, maybe create one
(9451, 50557, 1, 0, -50557, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: XXX-XXX (Profession Recipes)) - (NPC Levels ~57)'),
(9451, 50498, 0.1896, 0, -50498, 1, 0, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),

(9451, 8766, 2.5895, 0, 1, 1, 0, 'Morning Glory Dew'),
(9451, 8932, 4.6947, 0, 1, 1, 0, 'Alterac Swiss'),
(9451, 14047, 35.4421, 0, 1, 4, 0, 'Runecloth'),

(9451, 7909, 0.2737, 0, 1, 1, 0, 'Aquamarine'),
(9451, 7910, 0.3158, 0, 1, 1, 0, 'Star Ruby'),
(9451, 5758, 0.1789, 0, 1, 1, 0, 'Mithril Lockbox'),
(9451, 5759, 0.2316, 0, 1, 1, 0, 'Thorium Lockbox'),

(9451, 13479, 2, 0, 1, 1, 0, 'Recipe: Elixir of the Sages'); -- 2.52 old - classic 2%, or also 1%
-- tbc+ seemingly
-- (9451, 16252, 0.75, 0, 1, 1, 0, 'Formula: Enchant Weapon - Crusader'); -- classic 0%, the other has 0.75% too

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50557;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50557, 'LOOT (World Drop) - (RequiredSkillRank: 230-300 (Profession Recipes)) - (NPC Levels ~57)');
DELETE FROM `reference_loot_template` WHERE `entry` = 50557;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50557, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50557, 7993, 0, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(50557, 8389, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(50557, 8390, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(50557, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
(50557, 9298, 0, 1, 1, 1, 0, 'Recipe: Elixir of Giants'),
(50557, 3395, 0, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(50557, 10320, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(50557, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50557, 11225, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(50557, 12682, 0, 1, 1, 1, 0, 'Plans: Thorium Armor'),
(50557, 12683, 0, 1, 1, 1, 0, 'Plans: Thorium Belt'),
(50557, 12684, 0, 1, 1, 1, 0, 'Plans: Thorium Bracers'),
(50557, 12691, 0, 1, 1, 1, 0, 'Plans: Wildthorn Mail'),
(50557, 12693, 0, 1, 1, 1, 0, 'Plans: Thorium Boots'),
(50557, 12694, 0, 1, 1, 1, 0, 'Plans: Thorium Helm'),
(50557, 12695, 0, 1, 1, 1, 0, 'Plans: Radiant Gloves'),
(50557, 12697, 0, 1, 1, 1, 0, 'Plans: Radiant Boots'),
(50557, 12704, 0, 1, 1, 1, 0, 'Plans: Thorium Leggings'),
(50557, 12713, 0, 1, 1, 1, 0, 'Plans: Radiant Leggings'),
(50557, 13490, 0, 1, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(50557, 13492, 0, 1, 1, 1, 0, 'Recipe: Purification Potion'),
(50557, 13493, 0, 1, 1, 1, 0, 'Recipe: Greater Arcane Elixir'),
(50557, 13518, 0, 1, 1, 1, 0, 'Recipe: Flask of Petrification'),
(50557, 14466, 0, 1, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(50557, 14467, 0, 1, 1, 1, 0, 'Pattern: Frostweave Robe'),
(50557, 14470, 0, 1, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(50557, 14474, 0, 1, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(50557, 14478, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(50557, 14479, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(50557, 14484, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(50557, 14489, 0, 1, 1, 1, 0, 'Pattern: Frostweave Pants'),
(50557, 14491, 0, 1, 1, 1, 0, 'Pattern: Runecloth Pants'),
(50557, 14492, 0, 1, 1, 1, 0, 'Pattern: Felcloth Boots'),
(50557, 14494, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(50557, 14498, 0, 1, 1, 1, 0, 'Pattern: Runecloth Headband'),
(50557, 14499, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(50557, 14504, 0, 1, 1, 1, 0, 'Pattern: Runecloth Shoulders'),
(50557, 14506, 0, 1, 1, 1, 0, 'Pattern: Felcloth Robe'),
(50557, 14507, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Shoulders'),
(50557, 14508, 0, 1, 1, 1, 0, 'Pattern: Felcloth Shoulders'),
(50557, 15731, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(50557, 15737, 0, 1, 1, 1, 0, 'Pattern: Chimeric Boots'),
(50557, 15743, 0, 1, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(50557, 15745, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(50557, 15746, 0, 1, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(50557, 15755, 0, 1, 1, 1, 0, 'Pattern: Chimeric Vest'),
(50557, 15757, 0, 1, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(50557, 15765, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Pants'),
(50557, 16043, 0, 1, 1, 1, 0, 'Schematic: Thorium Rifle'),
(50557, 16044, 0, 1, 1, 1, 0, 'Schematic: Lifelike Mechanical Toad'),
(50557, 16051, 0, 1, 1, 1, 0, 'Schematic: Thorium Shells'),
(50557, 16215, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(50557, 16218, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(50557, 16220, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Spirit'),
(50557, 16245, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(50557, 16251, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina'),
(50557, 12689, 0, 1, 1, 1, 0, 'Plans: Radiant Breastplate'),
(50557, 14496, 0, 1, 1, 1, 0, 'Pattern: Felcloth Hood'),
-- from 50549 in 50557 selected by itemlevel and requiredskillrank
(50557, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50557, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'),
(50557, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(50557, 10608, 0, 1, 1, 1, 0, 'Schematic: Sniper Scope'),
(50557, 9297, 0, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'),
(50557, 7990, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(50557, 8028, 0, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'),
(50557, 11226, 0, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(50557, 12685, 0, 1, 1, 1, 0, 'Plans: Radiant Belt'),
(50557, 15742, 0, 1, 1, 1, 0, 'Pattern: Warbear Harness'),
(50557, 13488, 0, 1, 1, 1, 0, 'Recipe: Transmute Life to Earth'),
(50557, 12692, 0, 1, 1, 1, 0, 'Plans: Thorium Shield Spike'),
(50557, 13487, 0, 1, 1, 1, 0, 'Recipe: Transmute Water to Undeath'),
(50557, 13489, 0, 1, 1, 1, 0, 'Recipe: Transmute Earth to Life'),
(50557, 13486, 0, 1, 1, 1, 0, 'Recipe: Transmute Undeath to Water'),
-- from 50563 in 50557 selected by itemlevel and requiredskillrank
(50557, 14497, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Leggings'),
(50557, 12702, 0, 1, 1, 1, 0, 'Plans: Radiant Circlet'),
(50557, 12703, 0, 1, 1, 1, 0, 'Plans: Storm Gauntlets'),
(50557, 12711, 0, 1, 1, 1, 0, 'Plans: Whitesoul Helm'),
(50557, 16055, 0, 1, 1, 1, 0, 'Schematic: Arcane Bomb'),
(50557, 14501, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Vest'),
(50557, 12717, 0, 1, 1, 1, 0, 'Plans: Lionheart Helm'),
(50557, 22388, 0, 1, 1, 1, 0, 'Plans: Titanic Leggings'),
(50557, 12716, 0, 1, 1, 1, 0, 'Plans: Helm of the Great Chief'),
(50557, 12720, 0, 1, 1, 1, 0, 'Plans: Stronghold Gauntlets'),
(50557, 14510, 0, 1, 1, 1, 0, 'Pattern: Bottomless Bag'),
(50557, 14509, 0, 1, 1, 1, 0, 'Pattern: Mooncloth Circlet'),
(50557, 14511, 0, 1, 1, 1, 0, 'Pattern: Gloves of Spell Mastery'),
(50557, 16253, 0, 1, 1, 1, 0, 'Formula: Enchant Chest - Greater Stats'),
(50557, 12728, 0, 1, 1, 1, 0, 'Plans: Invulnerable Mail'),
(50557, 22390, 0, 1, 1, 1, 0, 'Plans: Persuader'),
(50557, 22389, 0, 1, 1, 1, 0, 'Plans: Sageblade'),
-- tbc+
(50557, 21944, 0, 1, 1, 1, 0, 'Design: Truesilver Boar'),
(50557, 21945, 0, 1, 1, 1, 0, 'Design: The Aquamarine Ward'),
(50557, 21947, 0, 1, 1, 1, 0, 'Design: Gem Studded Band'),
(50557, 21949, 0, 1, 1, 1, 0, 'Design: Ruby Serpent'),
(50557, 21953, 0, 1, 1, 1, 0, 'Design: Emerald Owl'),
(50557, 12698, 0, 1, 1, 1, 0, 'Plans: Dawnbringer Shoulders');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50498;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50498, 'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY');
DELETE FROM `reference_loot_template` WHERE `entry` = 50498;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- world loot? - 0.1896 sum
(50498, 11736, 0.0211, 0, 1, 1, 0, 'Libram of Resilience'),
(50498, 11733, 0.0316, 0, 1, 1, 0, 'Libram of Constitution'),
(50498, 11737, 0.0105, 0, 1, 1, 0, 'Libram of Voracity'),
(50498, 11732, 0.0632, 0, 1, 1, 0, 'Libram of Rumination'),
(50498, 11734, 0.0632, 0, 1, 1, 0, 'Libram of Tenacity');

-- End of migration.

