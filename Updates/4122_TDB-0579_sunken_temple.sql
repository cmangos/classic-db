-- Revamp Loot & other Stats for Sunken Temple
-- Review with care due to level changes in tbc+

-- Based on https://github.com/lh-server/core/commit/123d8b103cc3a8364d154cf50732e3c2b67b4e64
-- https://www.youtube.com/watch?v=VGtKRUTk8WA&ab_channel=DannyGaminGnC
-- https://www.youtube.com/watch?v=myWl275NVOQ&ab_channel=SoupaSoka
-- https://www.youtube.com/watch?v=7pFzEpnVTdM&ab_channel=InstanceTV
-- https://www.youtube.com/watch?v=weRijAFhzPU&ab_channel=DistrictGamers
-- https://www.youtube.com/watch?v=jk6-MYMAkhs
-- https://www.youtube.com/watch?v=OYx76CCu2Y4
-- https://www.youtube.com/watch?v=UuhP8ZF7oZI&ab_channel=spacious94
-- https://www.youtube.com/watch?v=QWy94I5Gxlo&ab_channel=Timira
-- https://www.youtube.com/watch?v=NCtLm9w542Q&ab_channel=DurendilLeHunt
-- https://docs.google.com/spreadsheets/d/1YB6PRBP9iLuHgGnLFgFnSufkMXD4TfFdDkWhioVHixo/edit#gid=1129711487
-- Continue Building Pattern Refloots
UPDATE `creature_loot_template` SET `item` = 50563, `mincountOrRef` = -50563, `ChanceOrQuestChance` = 0.5, `groupid` = 0, `comments` = 'LOOT (World Drop) - (RequiredSkillRank: 250-300 (Profession Recipes)) - (NPC Levels ~50-63) (Split me up)' WHERE `item` = 50505 AND `entry` IN (15756,14684,14695);

UPDATE `reference_loot_template` SET `entry` = 50563 WHERE `entry` = 50505; -- LOOT (World Drop) - (RequiredSkillRank: 180-300 (Profession Recipes)) - (NPC Levels ~31-63) (Split me up)
UPDATE `reference_loot_template_names` SET `entry` = 50563, `name` = 'LOOT (World Drop) - (RequiredSkillRank: 250-300 (Profession Recipes)) - (NPC Levels ~50-63) (Split me up)' WHERE `entry` = 50505;
DELETE FROM `reference_loot_template` WHERE `entry` = 50563 AND `item` IN (7975,7989,7992,7993,8029,8386,8387,8389,8390,9293,9295,9298,10300,10301,10302,10312,10315,10320,
10603,10604,10606,10608,11202,11204,11208,11225,15733,3831,4353,3874,4354,4415,5974,6046,7084,7085,11167,12261,20976,3832,3873,4300,4416,7086,11168,3868,3869,3875,4301,
4356,4417,7452,7453,8384,21940,8385,7976,10605,7991,11224,21944,9297,7990,8028,21945,3830); -- lower then 250

UPDATE `reference_loot_template` SET `entry` = 50526 WHERE `entry` = 50504;
UPDATE `reference_loot_template_names` SET `entry` = 50526, `name` = 'LOOT (World Drop) - (RequiredSkillRank: 105-175 (Profession Recipes)) - (NPC Levels ~26)' WHERE `entry` = 50504; -- down from 110minrank
UPDATE `creature_loot_template` SET `item` = 50526, `mincountOrRef` = -50526, `comments` = 'LOOT (World Drop) - (RequiredSkillRank: 105-175 (Profession Recipes)) - (NPC Levels ~26)'  WHERE `item` = 50504; -- 1 LOOT (World Drop) - (RequiredSkillRank: 110-175 (Profession Recipes)) - (NPC Levels ~20-30)

UPDATE `reference_loot_template_names` SET `name` = 'LOOT (World Drop) - (RequiredSkillRank: 20-90 (Profession Recipes)) - (NPC Levels ~5-10)' WHERE `entry` = 50502;

-- nonhumanoids normally dont drop patterns and old says no patterns (except for maybe wrongly added in tbc) - https://web.archive.org/web/20080422114335/http://wow.allakhazam.com/db/mob.html?wmob=5983
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.5, `item` = 50548, `mincountOrRef` = -50548, `comments` = 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)', `groupid` = 0
WHERE `entry` = 5983 AND `item` = 50505; -- lvl 49-50

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50548;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50548, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50548;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50548, 3831, 0, 1, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
(50548, 4353, 0, 1, 1, 1, 0, 'Pattern: Spider Belt'),
(50548, 3874, 0, 1, 1, 1, 0, 'Plans: Polished Steel Boots'),
(50548, 4354, 0, 1, 1, 1, 0, 'Pattern: Rich Purple Silk Shirt'),
(50548, 4415, 0, 1, 1, 1, 0, 'Schematic: Craftsman\'s Monocle'),
(50548, 5974, 0, 1, 1, 1, 0, 'Pattern: Guardian Cloak'),
(50548, 6046, 0, 1, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(50548, 7084, 0, 1, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
(50548, 7085, 0, 1, 1, 1, 0, 'Pattern: Azure Shoulders'),
(50548, 11167, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
(50548, 12261, 0, 1, 1, 1, 0, 'Plans: Searing Golden Blade'),
(50548, 3832, 0, 1, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
(50548, 3873, 0, 1, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(50548, 4300, 0, 1, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(50548, 4416, 0, 1, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(50548, 7086, 0, 1, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(50548, 11168, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Lesser Block'),
(50548, 3868, 0, 1, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(50548, 3869, 0, 1, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(50548, 3875, 0, 1, 1, 1, 0, 'Plans: Golden Scale Boots'),
(50548, 4301, 0, 1, 1, 1, 0, 'Pattern: Barbaric Belt'),
(50548, 4356, 0, 1, 1, 1, 0, 'Pattern: Star Belt'),
(50548, 4417, 0, 1, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(50548, 7452, 0, 1, 1, 1, 0, 'Pattern: Dusky Boots'),
(50548, 7453, 0, 1, 1, 1, 0, 'Pattern: Swift Boots'),
(50548, 8384, 0, 1, 1, 1, 0, 'Pattern: Comfortable Leather Hat'),
(50548, 8385, 0, 1, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(50548, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(50548, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(50548, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(50548, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'),
(50548, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(50548, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(50548, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'),
(50548, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(50548, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(50548, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(50548, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(50548, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(50548, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(50548, 8029, 0, 1, 1, 1, 0, 'Plans: Wicked Mithril Blade'), -- https://www.wowhead.com/tbc/item=8029/plans-wicked-mithril-blade#comments NOT CONDITION LOOT
(50548, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(50548, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
(50548, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak'),
(50548, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50548, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50548, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'),
(50548, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
(50548, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50548, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(50548, 7993, 0, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(50548, 8389, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(50548, 8390, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(50548, 9297, 0, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'),
(50548, 10320, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(50548, 10608, 0, 1, 1, 1, 0, 'Schematic: Sniper Scope'),
(50548, 7990, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(50548, 8028, 0, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'),
(50548, 9298, 0, 1, 1, 1, 0, 'Recipe: Elixir of Giants'),
(50548, 11225, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(50548, 3395, 0, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(50548, 11226, 0, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(50548, 12682, 0, 1, 1, 1, 0, 'Plans: Thorium Armor'),
(50548, 12683, 0, 1, 1, 1, 0, 'Plans: Thorium Belt'),
(50548, 12684, 0, 1, 1, 1, 0, 'Plans: Thorium Bracers'),
(50548, 14466, 0, 1, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(50548, 14467, 0, 1, 1, 1, 0, 'Pattern: Frostweave Robe'),
(50548, 12685, 0, 1, 1, 1, 0, 'Plans: Radiant Belt'),
(50548, 14470, 0, 1, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(50548, 16043, 0, 1, 1, 1, 0, 'Schematic: Thorium Rifle'),
(50548, 16215, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(50548, 14474, 0, 1, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(50548, 16044, 0, 1, 1, 1, 0, 'Schematic: Lifelike Mechanical Toad'),
(50548, 12689, 0, 1, 1, 1, 0, 'Plans: Radiant Breastplate'),
(50548, 12691, 0, 1, 1, 1, 0, 'Plans: Wildthorn Mail'),
(50548, 14478, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(50548, 14479, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(50548, 15731, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(50548, 16218, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(50548, 12692, 0, 1, 1, 1, 0, 'Plans: Thorium Shield Spike'),
(50548, 13486, 0, 1, 1, 1, 0, 'Recipe: Transmute Undeath to Water'),
(50548, 13487, 0, 1, 1, 1, 0, 'Recipe: Transmute Water to Undeath'),
(50548, 13488, 0, 1, 1, 1, 0, 'Recipe: Transmute Life to Earth'),
(50548, 13489, 0, 1, 1, 1, 0, 'Recipe: Transmute Earth to Life'),
(50548, 14484, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(50548, 15737, 0, 1, 1, 1, 0, 'Pattern: Chimeric Boots'),
(50548, 15742, 0, 1, 1, 1, 0, 'Pattern: Warbear Harness'),
(50548, 16220, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Spirit');
-- TBC+
-- (50548, 20976, 0, 1, 1, 1, 0, 'Design: Citrine Pendant of Golden Healing'),
-- (50548, 21940, 0, 1, 1, 1, 0, 'Design: Golden Hare'),
-- (50548, 21944, 0, 1, 1, 1, 0, 'Design: Truesilver Boar'),
-- (50548, 21945, 0, 1, 1, 1, 0, 'Design: The Aquamarine Ward'),
-- (50548, 21947, 0, 1, 1, 1, 0, 'Design: Gem Studded Band'),
-- (50548, 21949, 0, 1, 1, 1, 0, 'Design: Ruby Serpent');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50549;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50549, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50549;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50549, 3868, 0, 1, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(50549, 3869, 0, 1, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(50549, 3875, 0, 1, 1, 1, 0, 'Plans: Golden Scale Boots'),
(50549, 4301, 0, 1, 1, 1, 0, 'Pattern: Barbaric Belt'),
(50549, 4356, 0, 1, 1, 1, 0, 'Pattern: Star Belt'),
(50549, 4417, 0, 1, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(50549, 7452, 0, 1, 1, 1, 0, 'Pattern: Dusky Boots'),
(50549, 7453, 0, 1, 1, 1, 0, 'Pattern: Swift Boots'),
(50549, 8384, 0, 1, 1, 1, 0, 'Pattern: Comfortable Leather Hat'),
-- (50549, 21940, 0, 1, 1, 1, 0, 'Design: Golden Hare'),
(50549, 8385, 0, 1, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(50549, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(50549, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(50549, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(50549, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'),
(50549, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(50549, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(50549, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'),
(50549, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(50549, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(50549, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(50549, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(50549, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(50549, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(50549, 8029, 0, 1, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(50549, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(50549, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
(50549, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak'),
(50549, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50549, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50549, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'),
(50549, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
(50549, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50549, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
-- (50549, 21944, 0, 1, 1, 1, 0, 'Design: Truesilver Boar'),
(50549, 7993, 0, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(50549, 8389, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(50549, 8390, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(50549, 9297, 0, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'),
(50549, 10320, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(50549, 10608, 0, 1, 1, 1, 0, 'Schematic: Sniper Scope'),
(50549, 7990, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(50549, 8028, 0, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'),
(50549, 9298, 0, 1, 1, 1, 0, 'Recipe: Elixir of Giants'),
(50549, 11225, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
-- (50549, 21945, 0, 1, 1, 1, 0, 'Design: The Aquamarine Ward'),
(50549, 3395, 0, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(50549, 11226, 0, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(50549, 12682, 0, 1, 1, 1, 0, 'Plans: Thorium Armor'),
(50549, 12683, 0, 1, 1, 1, 0, 'Plans: Thorium Belt'),
-- (50549, 21947, 0, 1, 1, 1, 0, 'Design: Gem Studded Band'),
(50549, 12684, 0, 1, 1, 1, 0, 'Plans: Thorium Bracers'),
(50549, 14466, 0, 1, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(50549, 14467, 0, 1, 1, 1, 0, 'Pattern: Frostweave Robe'),
(50549, 12685, 0, 1, 1, 1, 0, 'Plans: Radiant Belt'),
(50549, 14470, 0, 1, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(50549, 16043, 0, 1, 1, 1, 0, 'Schematic: Thorium Rifle'),
(50549, 16215, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
-- (50549, 21949, 0, 1, 1, 1, 0, 'Design: Ruby Serpent'),
(50549, 14474, 0, 1, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(50549, 16044, 0, 1, 1, 1, 0, 'Schematic: Lifelike Mechanical Toad'),
(50549, 12689, 0, 1, 1, 1, 0, 'Plans: Radiant Breastplate'),
(50549, 12691, 0, 1, 1, 1, 0, 'Plans: Wildthorn Mail'),
(50549, 14478, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(50549, 14479, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(50549, 15731, 0, 1, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(50549, 16218, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(50549, 12692, 0, 1, 1, 1, 0, 'Plans: Thorium Shield Spike'),
(50549, 13486, 0, 1, 1, 1, 0, 'Recipe: Transmute Undeath to Water'),
(50549, 13487, 0, 1, 1, 1, 0, 'Recipe: Transmute Water to Undeath'),
(50549, 13488, 0, 1, 1, 1, 0, 'Recipe: Transmute Life to Earth'),
(50549, 13489, 0, 1, 1, 1, 0, 'Recipe: Transmute Earth to Life'),
(50549, 14484, 0, 1, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(50549, 15737, 0, 1, 1, 1, 0, 'Pattern: Chimeric Boots'),
(50549, 15742, 0, 1, 1, 1, 0, 'Pattern: Warbear Harness'),
(50549, 16220, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Spirit');

-- https://web.archive.org/web/20080418053600/http://wow.allakhazam.com/db/mob.html?wmob=4295
-- https://www.wowhead.com/tbc/npc=4295/scarlet-myrmidon
DELETE FROM `creature_loot_template` WHERE `entry` = 4295 AND `item` IN ( -- 160 - 225 for level ~36, 37-38 in classic)
3870,4414,6045,7090,7449,3867,3872,4351,3866,3871,11165,7450,4299,10601,4352,3830,11164,5774,4353,3831,5974,4415,4354,3874,12261,7084,9719,6046,11167,20976,7085,
4300,4416,3873,11168,7086,3832,7452,3868,4356,7453,8384,4417,3869,8385,11202,9293,7975,10300,10302,8386,10301,10603,7992,8387,11204,10604,10606,10312,10605,8029);

DELETE FROM `creature_loot_template` WHERE `entry` = 4295 AND `item` = 50536;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4295, 50536, 1, 0, -50536, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 160-225 (Profession Recipes)) - (NPC Levels ~36)');

-- Use Level appropriate template for Half-Buried Bottle (2560) now that only requiredskill 250+ are left in the template
UPDATE `gameobject_loot_template` SET `item` = 50536, `mincountOrRef` = -50536, `comments` = 'LOOT (World Drop) - (RequiredSkillRank: 160-225 (Profession Recipes)) - (NPC Levels ~36)' WHERE `item` = 50505 AND `entry` = 2032; -- Half-Buried Bottle (2560)
DELETE FROM `reference_loot_template` WHERE `entry` = 50536;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50536, 3870, 0, 1, 1, 1, 0, 'Plans: Green Iron Shoulders'),
(50536, 4414, 0, 1, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(50536, 6045, 0, 1, 1, 1, 0, 'Plans: Iron Counterweight'),
(50536, 7090, 0, 1, 1, 1, 0, 'Pattern: Green Silk Armor'),
(50536, 7449, 0, 1, 1, 1, 0, 'Pattern: Dusky Leather Leggings'),
(50536, 3867, 0, 1, 1, 1, 0, 'Plans: Golden Iron Destroyer'),
(50536, 3872, 0, 1, 1, 1, 0, 'Plans: Golden Scale Leggings'),
(50536, 4298, 0, 1, 1, 1, 0, 'Pattern: Guardian Belt'),
(50536, 4351, 0, 1, 1, 1, 0, 'Pattern: Shadow Hood'),
(50536, 3830, 0, 1, 1, 1, 0, 'Recipe: Elixir of Fortitude'),
(50536, 3866, 0, 1, 1, 1, 0, 'Plans: Jade Serpentblade'),
(50536, 3871, 0, 1, 1, 1, 0, 'Plans: Golden Scale Shoulders'),
(50536, 4299, 0, 1, 1, 1, 0, 'Pattern: Guardian Armor'),
(50536, 4352, 0, 1, 1, 1, 0, 'Pattern: Boots of the Enchanter'),
(50536, 5774, 0, 1, 1, 1, 0, 'Pattern: Green Silk Pack'),
(50536, 7450, 0, 1, 1, 1, 0, 'Pattern: Green Whelp Armor'),
(50536, 10601, 0, 1, 1, 1, 0, 'Schematic: Bright-Eye Goggles'),
(50536, 11164, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer'),
(50536, 11165, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Elemental Slayer'),
(50536, 3831, 0, 1, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
(50536, 4353, 0, 1, 1, 1, 0, 'Pattern: Spider Belt'),
(50536, 3874, 0, 1, 1, 1, 0, 'Plans: Polished Steel Boots'),
(50536, 4354, 0, 1, 1, 1, 0, 'Pattern: Rich Purple Silk Shirt'),
(50536, 4415, 0, 1, 1, 1, 0, 'Schematic: Craftsman\'s Monocle'),
(50536, 5974, 0, 1, 1, 1, 0, 'Pattern: Guardian Cloak'),
(50536, 6046, 0, 1, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(50536, 7084, 0, 1, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
(50536, 7085, 0, 1, 1, 1, 0, 'Pattern: Azure Shoulders'),
(50536, 11167, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
(50536, 12261, 0, 1, 1, 1, 0, 'Plans: Searing Golden Blade'),
(50536, 3832, 0, 1, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
(50536, 3873, 0, 1, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(50536, 4300, 0, 1, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(50536, 4416, 0, 1, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(50536, 7086, 0, 1, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(50536, 11168, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Lesser Block'),
(50536, 3868, 0, 1, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(50536, 3869, 0, 1, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(50536, 3875, 0, 1, 1, 1, 0, 'Plans: Golden Scale Boots'),
(50536, 4301, 0, 1, 1, 1, 0, 'Pattern: Barbaric Belt'),
(50536, 4356, 0, 1, 1, 1, 0, 'Pattern: Star Belt'),
(50536, 4417, 0, 1, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(50536, 7452, 0, 1, 1, 1, 0, 'Pattern: Dusky Boots'),
(50536, 7453, 0, 1, 1, 1, 0, 'Pattern: Swift Boots'),
(50536, 8384, 0, 1, 1, 1, 0, 'Pattern: Comfortable Leather Hat'),
(50536, 8385, 0, 1, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(50536, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(50536, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(50536, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(50536, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'),
(50536, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(50536, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(50536, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'),
(50536, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(50536, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(50536, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(50536, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(50536, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(50536, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(50536, 8029, 0, 1, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(50536, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(50536, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
(50536, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak');
-- TBC+
-- (50536, 20974, 0, 1, 1, 1, 0, 'Design: Jade Pendant of Blasting'),
-- (50536, 20976, 0, 1, 1, 1, 0, 'Design: Citrine Pendant of Golden Healing'), -- soulbound, but should not have condition_id!
-- (50536, 21940, 0, 1, 1, 1, 0, 'Design: Golden Hare');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50536;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50536, 'LOOT (World Drop) - (RequiredSkillRank: 160-225 (Profession Recipes)) - (NPC Levels ~36)');

-- second reference npc for 40-45 patterns
-- https://web.archive.org/web/20080422013603/http://wow.allakhazam.com/db/mob.html?wmob=7286
-- https://www.wowhead.com/tbc/npc=7286/zulfarrak-zombie (43-44) -> 180 - 250 same as 5429 (180-245) and 5426 (180-250)
DELETE FROM `creature_loot_template` WHERE `entry` = 7286 AND `item` = 50545;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(7286, 50545, 1, 0, -50545, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-250 (Profession Recipes)) - (NPC Levels ~45)');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 50545;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(50545, 'LOOT (World Drop) - (RequiredSkillRank: 180-250 (Profession Recipes)) - (NPC Levels ~45)');
UPDATE `creature_loot_template` SET `item` = 50545, `mincountOrRef` = -50545, `comments` = 'LOOT (World Drop) - (RequiredSkillRank: 180-250 (Profession Recipes)) - (NPC Levels ~45)', `ChanceOrQuestChance` = 1, `groupid` = 0 WHERE `item` = 50502 AND `entry` IN (5429,5426);
-- Remove patterns from direct loot templates for these 3 npcs
DELETE FROM `creature_loot_template` WHERE `entry` IN (5429,5426,7286) AND `item` IN (3395,3831,3832,3868,3869,3873,3874,3875,4300,4301,4353,4354,4356,4415,4416,4417,5974,6046,7084,7085,7086,7452,7453,7975,7976,7989,7990,7991,7992,7993,8028,8029,8384,8385,8386,8387,8389,8390,9293,9295,9297,9298,10300,10301,10302,10312,10315,10320,10603,10604,10605,10606,10608,11167,11168,11202,11204,11208,11224,11225,11226,12261,12682,12683,20976,21940,21944,21945,21947);
DELETE FROM `reference_loot_template` WHERE `entry` = 50545;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50545, 3395, 0, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(50545, 3831, 0, 1, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
(50545, 3832, 0, 1, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
(50545, 3868, 0, 1, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(50545, 3869, 0, 1, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(50545, 3873, 0, 1, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(50545, 3874, 0, 1, 1, 1, 0, 'Plans: Polished Steel Boots'),
(50545, 3875, 0, 1, 1, 1, 0, 'Plans: Golden Scale Boots'),
(50545, 4300, 0, 1, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(50545, 4301, 0, 1, 1, 1, 0, 'Pattern: Barbaric Belt'),
(50545, 4353, 0, 1, 1, 1, 0, 'Pattern: Spider Belt'),
(50545, 4354, 0, 1, 1, 1, 0, 'Pattern: Rich Purple Silk Shirt'),
(50545, 4356, 0, 1, 1, 1, 0, 'Pattern: Star Belt'),
(50545, 4415, 0, 1, 1, 1, 0, 'Schematic: Craftsman\'s Monocle'),
(50545, 4416, 0, 1, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(50545, 4417, 0, 1, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(50545, 5974, 0, 1, 1, 1, 0, 'Pattern: Guardian Cloak'),
(50545, 6046, 0, 1, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(50545, 7084, 0, 1, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
(50545, 7085, 0, 1, 1, 1, 0, 'Pattern: Azure Shoulders'),
(50545, 7086, 0, 1, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(50545, 7452, 0, 1, 1, 1, 0, 'Pattern: Dusky Boots'),
(50545, 7453, 0, 1, 1, 1, 0, 'Pattern: Swift Boots'),
(50545, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(50545, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'),
(50545, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50545, 7990, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(50545, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'),
(50545, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(50545, 7993, 0, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(50545, 8028, 0, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'),
(50545, 8029, 0, 1, 1, 1, 0, 'Plans: Wicked Mithril Blade'), -- no condition_id!
(50545, 8384, 0, 1, 1, 1, 0, 'Pattern: Comfortable Leather Hat'),
(50545, 8385, 0, 1, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(50545, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(50545, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(50545, 8389, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(50545, 8390, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(50545, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(50545, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
(50545, 9297, 0, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'),
(50545, 9298, 0, 1, 1, 1, 0, 'Recipe: Elixir of Giants'),
(50545, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(50545, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'),
(50545, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(50545, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(50545, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50545, 10320, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(50545, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(50545, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(50545, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
(50545, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak'),
(50545, 10608, 0, 1, 1, 1, 0, 'Schematic: Sniper Scope'),
(50545, 11167, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
(50545, 11168, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Lesser Block'),
(50545, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(50545, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(50545, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50545, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(50545, 11225, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(50545, 11226, 0, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(50545, 12261, 0, 1, 1, 1, 0, 'Plans: Searing Golden Blade'),
(50545, 12682, 0, 1, 1, 1, 0, 'Plans: Thorium Armor'),
(50545, 12683, 0, 1, 1, 1, 0, 'Plans: Thorium Belt');
-- TBC+
-- (50545, 20976, 0, 1, 1, 1, 0, 'Design: Citrine Pendant of Golden Healing'),
-- (50545, 21940, 0, 1, 1, 1, 0, 'Design: Golden Hare'),
-- (50545, 21944, 0, 1, 1, 1, 0, 'Design: Truesilver Boar'),
-- (50545, 21945, 0, 1, 1, 1, 0, 'Design: The Aquamarine Ward'),
-- (50545, 21947, 0, 1, 1, 1, 0, 'Design: Gem Studded Band');

-- =============
-- Sunken Temple
-- =============

UPDATE `reference_loot_template_names` SET `name` = 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop' WHERE `entry` = 30009;
-- Murk Worm 5226 (47-48)
-- https://web.archive.org/web/20080417132153/http://wow.allakhazam.com:80/db/mob.html?wmob=5226
-- https://www.wowhead.com/classic/npc=5226/murk-worm
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 5226;
DELETE FROM `creature_loot_template` WHERE `entry` = 5226;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5226, 6444, 27.6591, 0, 1, 1, 0, 'Forked Tongue'),
(5226, 6826, 40.4767, 0, 1, 1, 0, 'Brilliant Scale'),
(5226, 11318, -40, 0, 1, 1, 0, 'Atal\'ai Haze'), -- not 100%
(5226, 15733, 2, 0, 1, 1, 0, 'Pattern: Green Dragonscale Leggings'),
(5226, 4638, 0.9445, 0, 1, 1, 0, 'Reinforced Steel Lockbox'), -- 0.37
(5226, 7909, 0.2249, 0, 1, 1, 0, 'Aquamarine'), -- 0.32
(5226, 7910, 0.5622, 0, 1, 1, 0, 'Star Ruby'), -- 0.32
(5226, 17413, 0.26, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'), -- 0.15
(5226, 17682, 0.24, 0, 1, 1, 0, 'Book: Gift of the Wild'), -- 0.13
(5226, 50548, 1, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5226, 60315, 0.01, 1, -60315, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)'),
(5226, 60255, 0.1, 1, -60255, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)'),
(5226, 60179, 1, 1, -60179, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)'),
(5226, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5226, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Saturated Ooze 5228 (47-48)
-- https://www.wowhead.com/tbc/npc=5228/saturated-ooze
-- https://web.archive.org/web/20080417220209/http://wow.allakhazam.com/db/mob.html?wmob=5228
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5228;
DELETE FROM `creature_loot_template` WHERE `entry` = 5228;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5228, 3673, 22.595, 0, 1, 1, 0, 'Broken Arrow'),
(5228, 7296, 22.962, 0, 1, 1, 0, 'Extinguished Torch'),
(5228, 3670, 20.725, 0, 1, 1, 0, 'Large Slimy Bone'),
(5228, 20763, 36.0532, 0, 1, 1, 0, 'Broken Weapon'), -- see %distribution minmaxcount
(5228, 3676, 22.5533, 0, 1, 1, 0, 'Slimy Ichor'),
(5228, 3671, 12.9498, 0, 1, 1, 0, 'Lifeless Skull'),
(5228, 3674, 22.858, 0, 1, 1, 0, 'Decomposed Boot'),
(5228, 3669, 21.246, 0, 1, 1, 0, 'Gelatinous Goo'),
-- https://www.wowhead.com/tbc/item=20767/scum-covered-bag#dropped-by;0+3-10-9+1 - adjusted below
(5228, 20767, 10.4026, 0, 1, 1, 0, 'Scum Covered Bag'), -- altered by commit befor -- down from 11.2079
(5228, 4638, 0.1834, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5228, 3419, 0.01, 0, 1, 1, 0, 'Red Rose'),
(5228, 7909, 0.1834, 0, 1, 1, 0, 'Aquamarine'),
(5228, 7910, 0.2521, 0, 1, 1, 0, 'Star Ruby'),
(5228, 11318, -40, 0, 1, 1, 0, 'Atal\'ai Haze'),
(5228, 17413, 0.09, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5228, 17682, 0.104, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5228, 60007, 9, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5228, 50548, 1, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5228, 60315, 0.01, 1, -60315, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)'),
(5228, 60255, 0.1, 1, -60255, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)'),
(5228, 60179, 2, 1, -60179, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)'),
(5228, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5228, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Cursed Atal'ai 5243 (45-46) - Nonelite in TBC+ - remove strange resistances (no entry in bestiary 30 N 70 A)
-- https://www.wowhead.com/tbc/npc=5243
-- https://web.archive.org/web/20080418035655/http://wow.allakhazam.com/db/mob.html?wmob=5243
UPDATE `creature_template` SET `UnitFlags` = 32768, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `DamageMultiplier` = 1, `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5243;
DELETE FROM `creature_loot_template` WHERE `entry` = 5243;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5243, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5243, 4338, 26.0498, 0, 1, 2, 0, 'Mageweave Cloth'),
(5243, 8152, 9.7644, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5243, 4599, 4.7798, 0, 1, 1, 0, 'Cured Ham Steak'),
(5243, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5243, 1520, 31.9222, 0, 1, 1, 0, 'Troll Sweat'),
(5243, 1645, 2.1509, 0, 1, 1, 0, 'Moonberry Juice'),
(5243, 3864, 0.14, 0, 1, 1, 0, 'Citrine'),
(5243, 7909, 0.239, 0, 1, 1, 0, 'Aquamarine'),
(5243, 7910, 0.1366, 0, 1, 1, 0, 'Star Ruby'),
(5243, 4637, 0.0683, 0, 1, 1, 0, 'Steel Lockbox'),
(5243, 4638, 0.1366, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5243, 50548, 0.5, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5243, 30009, 0.1, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5243, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5243, 60007, 5, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5243, 60175, 2, 0, -60175, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)'),
(5243, 60251, 0.05, 0, -60251, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 43-48) - (NPC Levels: 45-46)'),
(5243, 60311, 0.004, 0, -60311, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 44-47) - (NPC Levels: 45-46)'),
(5243, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Warrior 5256 (48-48) - classic 48-49 - remove strange resistances (exists in bestiary with no resistances 30 N 70 A)
-- https://www.wowhead.com/classic/npc=5256
-- https://web.archive.org/web/20080417220214/http://wow.allakhazam.com/db/mob.html?wmob=5256
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (1.666669964790344238 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5256;
DELETE FROM `creature_loot_template` WHERE `entry` = 5256;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5256, 1520, 33.0418, 0, 1, 1, 0, 'Troll Sweat'),
(5256, 6181, -80, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5256, 4338, 26.4988, 0, 1, 4, 0, 'Mageweave Cloth'),
(5256, 8152, 9.6723, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5256, 4599, 5.3314, 0, 1, 1, 0, 'Cured Ham Steak'),
(5256, 1645, 2.3074, 0, 1, 1, 0, 'Moonberry Juice'),
(5256, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5256, 4638, 0.4741, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5256, 7909, 0.2739, 0, 1, 1, 0, 'Aquamarine'),
(5256, 7910, 0.3898, 0, 1, 1, 0, 'Star Ruby'),
(5256, 17413, 0.28, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5256, 17682, 0.16, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5256, 50548, 1, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5256, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5256, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5256, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5256, 60181, 2, 0, -60181, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 48-49)'),
(5256, 60257, 0.05, 0, -60257, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-51) - (NPC Levels: 48-49)'),
(5256, 60317, 0.004, 0, -60317, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 48-49)'),
(5256, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Witch Doctor 5259 (47-48) - classic 49-50 - remove strange resistances (exists in bestiary with no resistances 30 N 70 A)
-- https://www.wowhead.com/classic/npc=5259/atalai-witch-doctor
-- https://web.archive.org/web/20080417132158/http://wow.allakhazam.com/db/mob.html?wmob=5259
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5259;
DELETE FROM `creature_loot_template` WHERE `entry` = 5259;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5259, 1520, 32.7888, 0, 1, 1, 0, 'Troll Sweat'),
(5259, 6181, -80, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5259, 4338, 26.1407, 0, 1, 4, 0, 'Mageweave Cloth'),
(5259, 8152, 9.6292, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5259, 4599, 4.6044, 0, 1, 1, 0, 'Cured Ham Steak'),
(5259, 1645, 2.3263, 0, 1, 1, 0, 'Moonberry Juice'),
(5259, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5259, 4638, 0.3515, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5259, 7909, 0.2516, 0, 1, 1, 0, 'Aquamarine'),
(5259, 7910, 0.2412, 0, 1, 1, 0, 'Star Ruby'),
(5259, 17413, 0.26, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5259, 17682, 0.24, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5259, 50548, 1, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5259, 16216, 1.48, 9, 1, 1, 0, 'Formula: Enchant Cloak - Greater Resistance'), -- unique!
(5259, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5259, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5259, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5259, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(5259, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(5259, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(5259, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Enthralled Atal'ai 5261 (45-46) - nonelite in tbc+ hence dmgmulti adjusting, same strange resistances
-- https://www.wowhead.com/classic/npc=5261/enthralled-atalai
-- https://web.archive.org/web/20080418035700/http://wow.allakhazam.com/db/mob.html?wmob=5261
UPDATE `creature_template` SET `UnitFlags` = 32768, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `DamageMultiplier` = 1, `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5261;
DELETE FROM `creature_loot_template` WHERE `entry` = 5261;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5261, 6181, -80, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5261, 4338, 25.8777, 0, 1, 2, 0, 'Mageweave Cloth'),
(5261, 8152, 8.5776, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5261, 4599, 4.7774, 0, 1, 1, 0, 'Cured Ham Steak'),
(5261, 1645, 3.0402, 0, 1, 1, 0, 'Moonberry Juice'),
(5261, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5261, 1520, 31.4151, 0, 1, 1, 0, 'Troll Sweat'),
(5261, 3864, 0.18, 0, 1, 1, 0, 'Citrine'),
(5261, 7909, 0.4343, 0, 1, 1, 0, 'Aquamarine'),
(5261, 7910, 0.0724, 0, 1, 1, 0, 'Star Ruby'),
(5261, 4637, 0.0724, 0, 1, 1, 0, 'Steel Lockbox'),
(5261, 4638, 0.3619, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5261, 50548, 0.5, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(5261, 30009, 0.1, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5261, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5261, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5261, 60175, 2, 0, -60175, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)'),
(5261, 60251, 0.05, 0, -60251, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 43-48) - (NPC Levels: 45-46)'),
(5261, 60311, 0.004, 0, -60311, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 44-47) - (NPC Levels: 45-46)'),
(5261, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

UPDATE `creature_template` SET `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5263;
UPDATE `creature_template` SET `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5598; -- Atal'ai Exile
DELETE FROM `creature_template_addon` WHERE `entry` = 5263; -- no longer in instance
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `emote`, `moveflags`, `auras`) VALUES
(5263, 0, 0, 1, 0, 0, NULL); -- Mummified Atal'ai

-- Unliving Atal'ai 5267 (47-48) - 48-49 in classic
-- https://www.wowhead.com/tbc/npc=5267/unliving-atalai
-- https://web.archive.org/web/20080417220224/http://wow.allakhazam.com/db/mob.html?wmob=5267
UPDATE `creature_template` SET `UnitFlags` = 32768, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5267;
DELETE FROM `creature_loot_template` WHERE `entry` = 5267;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5267, 6181, -80, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5267, 1520, 33.3585, 0, 1, 1, 0, 'Troll Sweat'),
(5267, 4338, 26.3368, 0, 1, 4, 0, 'Mageweave Cloth'),
(5267, 8152, 9.4125, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5267, 4599, 4.7666, 0, 1, 1, 0, 'Cured Ham Steak'),
(5267, 1645, 2.2174, 0, 1, 1, 0, 'Moonberry Juice'),
(5267, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5267, 4638, 0.4525, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5267, 7909, 0.2187, 0, 1, 1, 0, 'Aquamarine'),
(5267, 7910, 0.2112, 0, 1, 1, 0, 'Star Ruby'),
(5267, 17413, 0.22, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5267, 17682, 0.18, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5267, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 200-275
(5267, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5267, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'), -- 1.5, seems % was doubled in classic?
(5267, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5267, 60181, 2, 0, -60181, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 48-49)'),
(5267, 60257, 0.05, 0, -60257, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-51) - (NPC Levels: 48-49)'),
(5267, 60317, 0.004, 0, -60317, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 48-49)'),
(5267, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Priest 5269 (46-47) - nonelite in tbc - OUTSIDE, found in bestiary and has no strange resistances
-- https://www.wowhead.com/tbc/npc=5269/atalai-priest
-- https://web.archive.org/web/20080417220229/http://wow.allakhazam.com/db/mob.html?wmob=5269
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5269;

DELETE FROM `creature_template_addon` WHERE `entry` = 5269; -- no longer in instance
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `emote`, `moveflags`, `auras`) VALUES
(5269, 0, 0, 1, 0, 0, NULL); -- Atal'ai Priest

-- rough recheck as they are now not found in instance anymore.
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, `id` as `entry` FROM `creature` WHERE `guid` IN (38954,38956,38964,38948,38950,38957,31844,38960,38949,38947,38925,38938,38942,38792,38791,38928,38934,38678,38677,38676,38671,38672,38675,38670,38674,38683,38679,38680);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 5269 FROM `creature` WHERE `guid` IN (38954,38956,38964,38948,38950,38957,31844,38960,38949,38947,38925,38938,38942,38792,38791,38928,38934,38678,38677,38676,38671,38672,38675,38670,38674,38683,38679,38680);
UPDATE `creature` SET `id` = 0 WHERE `guid` IN (38954,38956,38964,38948,38950,38957,31844,38960,38949,38947,38925,38938,38942,38792,38791,38928,38934,38678,38677,38676,38671,38672,38675,38670,38674,38683,38679,38680);
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (38954,38956,38964,38948,38950,38957,31844,38960,38949,38947,38925,38938,38942,38792,38791,38928,38934,38678,38677,38676,38671,38672,38675,38670,38674,38683,38679,38680) AND `entry` = 0;

DELETE FROM `creature_loot_template` WHERE `entry` = 5269;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5269, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5269, 4338, 28.4938, 0, 1, 2, 0, 'Mageweave Cloth'),
(5269, 8152, 8.8439, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5269, 4599, 4.9804, 0, 1, 1, 0, 'Cured Ham Steak'),
(5269, 1645, 2.7769, 0, 1, 1, 0, 'Moonberry Juice'),
(5269, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5269, 1520, 32.0857, 0, 1, 1, 0, 'Troll Sweat'),
(5269, 4638, 0.4829, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5269, 7909, 0.3622, 0, 1, 1, 0, 'Aquamarine'),
(5269, 7910, 0.4528, 0, 1, 1, 0, 'Star Ruby'),
(5269, 17413, 0.22, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5269, 17682, 0.16, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5269, 50549, 0.5, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-275 from old data
(5269, 30009, 0.1, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5269, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5269, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5269, 60177, 2, 0, -60177, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 46-50) - (NPC Levels: 46-47)'),
(5269, 60253, 0.05, 0, -60253, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46-47)'),
(5269, 60313, 0.004, 0, -60313, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 45-48) - (NPC Levels: 46-47)'),
(5269, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Corpse Eater 5270 (48-48) - 49-50 in classic, remove strange resistances
-- https://www.wowhead.com/tbc/npc=5270/atalai-corpse-eater
-- https://web.archive.org/web/20080417073756/http://wow.allakhazam.com/db/mob.html?wmob=5270
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5270;
DELETE FROM `creature_loot_template` WHERE `entry` = 5270;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5270, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5270, 1520, 34.6665, 0, 1, 1, 0, 'Troll Sweat'),
(5270, 4338, 25.4483, 0, 1, 4, 0, 'Mageweave Cloth'),
(5270, 8152, 9.46, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5270, 4599, 4.7552, 0, 1, 1, 0, 'Cured Ham Steak'),
(5270, 1645, 2.2869, 0, 1, 1, 0, 'Moonberry Juice'),
(5270, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5270, 4638, 0.4433, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5270, 7909, 0.2216, 0, 1, 1, 0, 'Aquamarine'),
(5270, 7910, 0.3627, 0, 1, 1, 0, 'Star Ruby'),
(5270, 17413, 0.32, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5270, 17682, 0.24, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5270, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-275 from old data
(5270, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5270, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5270, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5270, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(5270, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(5270, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(5270, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Deathwalker 5271 (48-49) - 50-51 in classic - also wrong strange resistances
-- https://www.wowhead.com/tbc/npc=5271/atalai-deathwalker
-- https://web.archive.org/web/20080417094423/http://wow.allakhazam.com/db/mob.html?wmob=5271
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5271;
DELETE FROM `creature_loot_template` WHERE `entry` = 5271;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5271, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5271, 1520, 36.0284, 0, 1, 1, 0, 'Troll Sweat'),
(5271, 4338, 26.584, 0, 1, 4, 0, 'Mageweave Cloth'),
(5271, 8152, 9.4863, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5271, 4599, 5.2485, 0, 1, 1, 0, 'Cured Ham Steak'),
(5271, 1645, 2.1607, 0, 1, 1, 0, 'Moonberry Juice'),
(5271, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5271, 4638, 0.1743, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5271, 7909, 0.1952, 0, 1, 1, 0, 'Aquamarine'),
(5271, 7910, 0.2161, 0, 1, 1, 0, 'Star Ruby'),
(5271, 5758, 0.1812, 0, 1, 1, 0, 'Mithril Lockbox'),
(5271, 17413, 0.2, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5271, 17682, 0.2, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5271, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-300 from old data
(5271, 12693, 0.02, 0, 1, 1, 0, 'Plans: Thorium Boots'), -- leaving 275+ out for now due to complexity issue with what should be available, already cut down the loot template by 2/3
(5271, 12694, 0.02, 0, 1, 1, 0, 'Plans: Thorium Helm'),
(5271, 12695, 0.02, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(5271, 12697, 0.02, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(5271, 12704, 0.02, 0, 1, 1, 0, 'Plans: Thorium Leggings'),
(5271, 13492, 0.02, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(5271, 14489, 0.02, 0, 1, 1, 0, 'Pattern: Frostweave Pants'),
(5271, 14491, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(5271, 14494, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(5271, 14499, 0.02, 0, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(5271, 15745, 0.02, 0, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(5271, 15746, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(5271, 15755, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Vest'),
(5271, 16245, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(5271, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5271, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5271, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5271, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(5271, 60261, 0.05, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)'),
(5271, 60321, 0.004, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)'),
(5271, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Atal'ai High Priest 5273 (48-49) - 50-51 in classic
-- https://www.wowhead.com/tbc/npc=5273/atalai-high-priest
-- https://web.archive.org/web/20080418035705/http://wow.allakhazam.com/db/mob.html?wmob=5273
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5273;
DELETE FROM `creature_loot_template` WHERE `entry` = 5273;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5273, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5273, 1520, 35.3629, 0, 1, 1, 0, 'Troll Sweat'),
(5273, 4338, 24.4238, 0, 1, 4, 0, 'Mageweave Cloth'),
(5273, 8152, 9.2535, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5273, 4599, 5.7104, 0, 1, 1, 0, 'Cured Ham Steak'),
(5273, 1645, 2.064, 0, 1, 1, 0, 'Moonberry Juice'),
(5273, 7909, 0.2064, 0, 1, 1, 0, 'Aquamarine'),
(5273, 7910, 0.2064, 0, 1, 1, 0, 'Star Ruby'),
(5273, 4638, 0.0688, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5273, 5758, 0.2408, 0, 1, 1, 0, 'Mithril Lockbox'),
(5273, 17413, 0.16, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5273, 17682, 0.2, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5273, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5273, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-295 from old data
(5273, 12693, 0.02, 0, 1, 1, 0, 'Plans: Thorium Boots'), -- leaving 275+ out for now due to complexity issue with what should be available, already cut down the loot template by 2/3
(5273, 12695, 0.02, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(5273, 13490, 0.02, 0, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(5273, 13492, 0.02, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(5273, 14491, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(5273, 14494, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(5273, 14496, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Hood'),
(5273, 14498, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Headband'),
(5273, 15743, 0.02, 0, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(5273, 15755, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Vest'),
(5273, 16245, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(5273, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5273, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5273, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5273, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(5273, 60261, 0.05, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)'),
(5273, 60321, 0.004, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)'),
(5273, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Nightmare Scalebane 5277 (49-49) - 50-51 in classic
-- https://www.wowhead.com/tbc/npc=5277/nightmare-scalebane
-- https://web.archive.org/web/20080417220235/http://wow.allakhazam.com/db/mob.html?wmob=5277
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 200 WHERE `entry` = 5277;
DELETE FROM `creature_loot_template` WHERE `entry` = 5277;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5277, 15412, 10, 0, 1, 1, 0, 'Green Dragonscale'),
(5277, 4599, 5.7054, 0, 1, 1, 0, 'Cured Ham Steak'),
(5277, 1645, 2.4498, 0, 1, 1, 0, 'Moonberry Juice'),
(5277, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5277, 7909, 0.3976, 0, 1, 1, 0, 'Aquamarine'),
(5277, 7910, 0.2794, 0, 1, 1, 0, 'Star Ruby'),
(5277, 4638, 0.2041, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5277, 5758, 0.2149, 0, 1, 1, 0, 'Mithril Lockbox'),
(5277, 17413, 0.2, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5277, 17682, 0.26, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5277, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-300 from old data
(5277, 12693, 0.02, 0, 1, 1, 0, 'Plans: Thorium Boots'), -- leaving 275+ out for now due to complexity issue
(5277, 12695, 0.02, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(5277, 12697, 0.02, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(5277, 12704, 0.02, 0, 1, 1, 0, 'Plans: Thorium Leggings'),
(5277, 13490, 0.02, 0, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(5277, 13492, 0.02, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(5277, 14489, 0.02, 0, 1, 1, 0, 'Pattern: Frostweave Pants'),
(5277, 14491, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(5277, 14492, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Boots'),
(5277, 14494, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(5277, 14496, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Hood'),
(5277, 14498, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Headband'),
(5277, 15743, 0.02, 0, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(5277, 15745, 0.02, 0, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(5277, 15746, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(5277, 15757, 0.02, 0, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(5277, 16055, 0.02, 0, 1, 1, 0, 'Schematic: Arcane Bomb'),
(5277, 16245, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(5277, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5277, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5277, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5277, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(5277, 60261, 0.05, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)'),
(5277, 60321, 0.004, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)'),
(5277, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Nightmare Wyrmkin 5280 (48-49) - 50-51
-- https://www.wowhead.com/tbc/npc=5280/nightmare-wyrmkin
-- https://web.archive.org/web/20080417220239/http://wow.allakhazam.com/db/mob.html?wmob=5280
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 200 WHERE `entry` = 5280;
DELETE FROM `creature_loot_template` WHERE `entry` = 5280;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5280, 15412, 10, 0, 1, 1, 0, 'Green Dragonscale'),
(5280, 4599, 5.955, 0, 1, 1, 0, 'Cured Ham Steak'),
(5280, 1645, 2.7939, 0, 1, 1, 0, 'Moonberry Juice'),
(5280, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5280, 7909, 0.3005, 0, 1, 1, 0, 'Aquamarine'),
(5280, 7910, 0.4564, 0, 1, 1, 0, 'Star Ruby'),
(5280, 4638, 0.3673, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5280, 5758, 0.2894, 0, 1, 1, 0, 'Mithril Lockbox'),
(5280, 17413, 0.12, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5280, 17682, 0.11, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5280, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-300 from old data
(5280, 12693, 0.02, 0, 1, 1, 0, 'Plans: Thorium Boots'),
(5280, 12695, 0.02, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(5280, 12697, 0.02, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(5280, 12704, 0.02, 0, 1, 1, 0, 'Plans: Thorium Leggings'),
(5280, 13492, 0.02, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(5280, 14491, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(5280, 14492, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Boots'),
(5280, 14496, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Hood'),
(5280, 14498, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Headband'),
(5280, 14499, 0.02, 0, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(5280, 15745, 0.02, 0, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(5280, 15755, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Vest'),
(5280, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5280, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5280, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5280, 60185, 2, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(5280, 60261, 0.05, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)'),
(5280, 60321, 0.004, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)'),
(5280, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Nightmare Wanderer 5283 - 49-50 in classic
-- https://www.wowhead.com/tbc/npc=5283/nightmare-wanderer
-- https://web.archive.org/web/20080417132203/http://wow.allakhazam.com/db/mob.html?wmob=5283
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceNature` = 200 WHERE `entry` = 5283;
DELETE FROM `creature_loot_template` WHERE `entry` = 5283;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5283, 15412, 10, 0, 1, 1, 0, 'Green Dragonscale'),
(5283, 4599, 5.6503, 0, 1, 1, 0, 'Cured Ham Steak'),
(5283, 1645, 2.8192, 0, 1, 1, 0, 'Moonberry Juice'),
(5283, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5283, 4638, 0.616, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5283, 7909, 0.3435, 0, 1, 1, 0, 'Aquamarine'),
(5283, 7910, 0.2961, 0, 1, 1, 0, 'Star Ruby'),
(5283, 17413, 0.14, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5283, 17682, 0.15, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5283, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5283, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5283, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5283, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5283, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(5283, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(5283, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(5283, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Hakkari Frostwing 5291 (49-50)
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0, `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 150, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 5291;
DELETE FROM `creature_loot_template` WHERE `entry` = 5291;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5291, 6826, 50.3876, 0, 1, 1, 0, 'Brilliant Scale'),
(5291, 6444, 35.7697, 0, 1, 1, 0, 'Forked Tongue'),
(5291, 4638, 0.5537, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5291, 7909, 0.594, 0, 1, 1, 0, 'Aquamarine'),
(5291, 7910, 0.3322, 0, 1, 1, 0, 'Star Ruby'),
(5291, 17413, 0.13, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5291, 17682, 0.103, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5291, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5291, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5291, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(5291, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(5291, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(5291, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Veyzhak the Cannibal 5399 (48)
-- https://www.wowhead.com/tbc/npc=5399
-- https://web.archive.org/web/20080417132213/http://wow.allakhazam.com/db/mob.html?wmob=5399
UPDATE `creature` SET `position_x` = -10291.1, `position_y` = -4030.77, `position_z` = -76.3541, `spawndist` = 5, `MovementType` = 1 WHERE `id` = 5399;
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 5399;
DELETE FROM `creature_loot_template` WHERE `entry` = 5399;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5399, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5399, 1520, 9.0909, 0, 1, 1, 0, 'Troll Sweat'),
(5399, 4338, 18.1818, 0, 1, 2, 0, 'Mageweave Cloth'),
(5399, 8152, 9.18, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5399, 1645, 3.66, 0, 1, 1, 0, 'Moonberry Juice'),
(5399, 4599, 5.5, 0, 1, 1, 0, 'Cured Ham Steak'),
(5399, 7910, 0.6, 0, 1, 1, 0, 'Star Ruby'),
(5399, 14466, 1.84, 0, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(5399, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5399, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5399, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5399, 60180, 80, 0, -60180, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)'),
(5399, 60256, 0.05, 0, -60256, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)'),
(5399, 60316, 0.004, 0, -60316, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)'),
(5399, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Zekkis 5400 (48)
-- https://www.wowhead.com/tbc/npc=5400/zekkis#drops;mode:normal
-- https://web.archive.org/web/20080417220244/http://wow.allakhazam.com/db/mob.html?wmob=5400
UPDATE `creature` SET `position_x` = -10223.4, `position_y` = -4000.48, `position_z` = -109.798, `orientation` = 1.16937 WHERE `id` = 5400;
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 5400;
DELETE FROM `creature_loot_template` WHERE `entry` = 5400;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5400, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5400, 1520, 10, 0, 1, 1, 0, 'Troll Sweat'),
(5400, 4338, 20, 0, 1, 2, 0, 'Mageweave Cloth'),
(5400, 8152, 5, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5400, 1645, 0.72, 0, 1, 1, 0, 'Moonberry Juice'),
(5400, 4599, 5.06, 0, 1, 1, 0, 'Cured Ham Steak'),
(5400, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5400, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5400, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5400, 60180, 80, 0, -60180, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)'),
(5400, 60256, 0.05, 0, -60256, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)'),
(5400, 60316, 0.004, 0, -60316, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)'),
(5400, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Kazkaz the Unholy 5401 (48)
-- https://www.wowhead.com/tbc/npc=5401/kazkaz-the-unholy#drops;mode:normal
-- https://web.archive.org/web/20080421025614/http://wow.allakhazam.com/db/mob.html?wmob=5401
UPDATE `creature` SET `position_x` = -10362.70, `position_y` = -3966.57, `position_z` = -84.5870, `spawndist` = 1, `MovementType` = 1 WHERE `id` = 5401;
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 5401;
DELETE FROM `creature_loot_template` WHERE `entry` = 5401;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5401, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5401, 1520, 34.3066, 0, 1, 1, 0, 'Troll Sweat'),
(5401, 4338, 33.5766, 0, 1, 2, 0, 'Mageweave Cloth'),
(5401, 8152, 5.1095, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5401, 4599, 8.0292, 0, 1, 1, 0, 'Cured Ham Steak'),
(5401, 1645, 5.78, 0, 1, 1, 0, 'Moonberry Juice'),
(5401, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5401, 4638, 0.48, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(5401, 17413, 0.16, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5401, 17682, 0.32, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5401, 7909, 0.48, 0, 1, 1, 0, 'Aquamarine'),
(5401, 7910, 0.7299, 0, 1, 1, 0, 'Star Ruby'),
(5401, 50549, 0.5, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5401, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5401, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5401, 60180, 2, 0, -60180, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)'),
(5401, 60256, 0.05, 0, -60256, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)'),
(5401, 60316, 0.004, 0, -60316, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)'),
(5401, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Spawn of Hakkar 5708 (49) - 51 in classic
-- https://www.wowhead.com/tbc/npc=5708/spawn-of-hakkar
-- https://web.archive.org/web/20080417132249/http://wow.allakhazam.com/db/mob.html?wmob=5708
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 5708;

DELETE FROM `reference_loot_template_names` WHERE `entry` = 35012;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(35012, 'Sunken Temple (Boss Loot) - Spawn of Hakkar');

DELETE FROM `reference_loot_template` WHERE `entry` = 35012;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35012, 10801, 50, 1, 1, 1, 0, 'Slitherscale Boots'),
(35012, 10802, 25, 1, 1, 1, 0, 'Wingveil Cloak');
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) SELECT 35012 AS `entry`, `item`, 0, 1, 1, 1 FROM `reference_loot_template` WHERE `entry` = 60186; -- NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)

DELETE FROM `creature_loot_template` WHERE `entry` = 5708;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5708, 6444, 7.2553, 0, 1, 1, 0, 'Forked Tongue'),
(5708, 6826, 12.731, 0, 1, 1, 0, 'Brilliant Scale'),
(5708, 35012, 100, 1, -35012, 1, 0, 'Sunken Temple (Boss Loot) - Spawn of Hakkar'),
(5708, 5758, 0.2053, 0, 1, 1, 0, 'Mithril Lockbox'),
(5708, 17413, 0.07, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5708, 17682, 0.06, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(5708, 7909, 0.3, 0, 1, 1, 0, 'Aquamarine'),
(5708, 7910, 0.2738, 0, 1, 1, 0, 'Star Ruby'),
(5708, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5708, 12697, 0.02, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(5708, 14499, 0.02, 0, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(5708, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5708, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'),
(5708, 30009, 0.25, 1, -30009, 1, 0, 'Sunken Temple (Temple of Atal\'Hakkar) - Zone Drop'),
(5708, 60262, 0.05, 0, -60262, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(5708, 60322, 0.004, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)');

-- Shade of Eranikus 5709 (50) 55 in classicmangos
-- https://www.wowhead.com/tbc/npc=5709/shade-of-eranikus
-- https://web.archive.org/web/20080802031848/http://wow.allakhazam.com/db/mob.html?wmob=5709
UPDATE `creature_template` SET `UnitFlags` = 320, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7), `MechanicImmuneMask` = 42090354, `SchoolImmuneMask` = 8, `minlootgold` = 1000, `ExtraFlags` = 0, `Detection` = 35 WHERE `entry` = 5709; -- pEranikus->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5709, 0, 1, 33),(5709, 0, 1, 138),(5709, 0, 1, 140),(5709, 0, 1, 216); -- "Haste"
-- https://youtu.be/tvkTTyNgseM?t=1342
DELETE FROM `reference_loot_template` WHERE `entry` = 35013;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 35013;
DELETE FROM `creature_loot_template` WHERE `entry` = 5709;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5709, 10454, 100, 0, 1, 1, 0, 'Essence of Eranikus'),
(5709, 4460, 3.51, 0, 1, 1, 0, 'Ripped Wing Webbing'),
(5709, 4557, 2.15, 0, 1, 1, 0, 'Fiery Gland'),
(5709, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5709, 7910, 0.26, 0, 1, 1, 0, 'Star Ruby'),
(5709, 7909, 0.22, 0, 1, 1, 0, 'Aquamarine'),
(5709, 8146, 1.5, 0, 1, 1, 0, 'Wicked Claw'),
(5709, 15412, 5, 0, 1, 1, 0, 'Green Dragonscale'),
-- g1
(5709, 10829, 0, 1, 1, 1, 0, 'Dragon\'s Eye'), -- confirmed group 1, attempt 1, attempt 4
(5709, 10833, 0, 1, 1, 1, 0, 'Horns of Eranikus'), -- attempt 2, attempt 3
(5709, 10828, 20, 1, 1, 1, 0, 'Dire Nail'), -- guessed
-- g2
(5709, 10835, 0, 2, 1, 1, 0, 'Crest of Supremacy'), -- confirmed group 2, attempt 1, attempt 3
(5709, 10836, 0, 2, 1, 1, 0, 'Rod of Corrosion'), -- attempt 4
(5709, 10837, 20, 2, 1, 1, 0, 'Tooth of Eranikus'), -- guessed
(5709, 10847, 0.5, 2, 1, 1, 0, 'Dragon\'s Call'), -- (1), attempt 2 - https://web.archive.org/web/20080430101946/http://wow.allakhazam.com/db/item.html?witem=10847
(5709, 60330, 0.01, 1, -60330, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-56) - (NPC Levels: 55)'),
(5709, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5709, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)');

-- Jammal'an the Prophet 5710 (50) - 54 in classic
-- https://www.wowhead.com/tbc/npc=5710/jammalan-the-prophet
-- https://web.archive.org/web/20080420162958/http://wow.allakhazam.com/db/mob.html?wmob=5710
UPDATE `creature_template` SET `UnitFlags` = 320, `Faction` = 37, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 579026803 WHERE `entry` = 5710;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5710, 0, 1, 33),(5710, 0, 1, 138),(5710, 0, 1, 140),(5710, 0, 1, 216); -- "Haste"
DELETE FROM `creature_loot_template` WHERE `entry` = 5710;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5710, 10806, 0, 1, 1, 1, 0, 'Vestments of the Atal\'ai Prophet'),
(5710, 10807, 0, 1, 1, 1, 0, 'Kilt of the Atal\'ai Prophet'),
(5710, 10808, 0, 1, 1, 1, 0, 'Gloves of the Atal\'ai Prophet'),
(5710, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5710, 6212, -100, 0, 1, 1, 0, 'Head of Jammal\'an'),
(5710, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5710, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5710, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5710, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5710, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5710, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5710, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5710, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5710, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5710, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5710, 17414, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude II'),
(5710, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5710, 17683, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild II'),
(5710, 18600, 0.1, 2, 1, 1, 0, 'Tome of Arcane Brilliance'),
(5710, 22393, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Shadow Protection'),
(5710, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5710, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5710, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5710, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(5710, 60192, 2, 0, -60192, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)'),
(5710, 60268, 0.05, 0, -60268, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 52-56) - (NPC Levels: 54)'),
(5710, 60328, 0.01, 0, -60328, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 53-55) - (NPC Levels: 54)'),
(5710, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5710, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Ogom the Wretched 5711 (49)
-- https://www.wowhead.com/tbc/npc=5711/ogom-the-wretched
-- https://web.archive.org/web/20080417132254/http://wow.allakhazam.com/db/mob.html?wmob=5711
UPDATE `creature_template` SET `UnitFlags` = 33088, `Faction` = 37, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 13252178 WHERE `entry` = 5711;
DELETE FROM `creature_loot_template` WHERE `entry` = 5711;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5711, 10803, 0, 1, 1, 1, 0, 'Blade of the Wretched'),
(5711, 10804, 0, 1, 1, 1, 0, 'Fist of the Damned'),
(5711, 10805, 0, 1, 1, 1, 0, 'Eater of the Dead'),
(5711, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5711, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5711, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5711, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5711, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5711, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5711, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5711, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5711, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5711, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5711, 17414, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude II'),
(5711, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5711, 17683, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild II'),
(5711, 18600, 0.1, 2, 1, 1, 0, 'Tome of Arcane Brilliance'),
(5711, 22393, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Shadow Protection'),
(5711, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5711, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5711, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5711, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5711, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(5711, 60190, 2, 0, -60190, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)'),
(5711, 60266, 0.05, 0, -60266, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)'),
(5711, 60326, 0.01, 0, -60326, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)'),
(5711, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5711, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items (Also all undead so share same immunities not just 12,13,15)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 35010 AND `item` IN (10783,10784,10785); -- 2

-- Zolo 5712 (49) 51
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5712;
DELETE FROM `creature_loot_template` WHERE `entry` = 5712;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5712, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5712, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5712, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5712, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5712, 20608, -100, 0, 1, 1, 0, 'Green Voodoo Feather'),
(5712, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5712, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5712, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5712, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5712, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5712, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5712, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5712, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5712, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5712, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5712, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5712, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5712, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5712, 60186, 2, 0, -60186, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)'),
(5712, 60262, 0.05, 0, -60262, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(5712, 60322, 0.01, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)'),
(5712, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5712, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Gasher 5713 (49) 51
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5713;
DELETE FROM `creature_loot_template` WHERE `entry` = 5713;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5713, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5713, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5713, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5713, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5713, 20606, -100, 0, 1, 1, 0, 'Amber Voodoo Feather'),
(5713, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5713, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5713, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5713, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5713, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5713, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5713, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5713, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5713, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5713, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5713, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5713, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5713, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5713, 60186, 2, 0, -60186, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)'),
(5713, 60262, 0.05, 0, -60262, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(5713, 60322, 0.01, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)'),
(5713, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5713, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Loro 5714 (49) 51
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5714;
DELETE FROM `creature_loot_template` WHERE `entry` = 5714;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5714, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5714, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5714, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5714, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5714, 20608, -100, 0, 1, 1, 0, 'Green Voodoo Feather'),
(5714, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5714, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5714, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5714, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5714, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5714, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5714, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5714, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5714, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5714, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5714, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5714, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5714, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5714, 60186, 2, 0, -60186, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)'),
(5714, 60262, 0.05, 0, -60262, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(5714, 60322, 0.01, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)'),
(5714, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5714, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Hukku 5715 (49) 52
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5715;
DELETE FROM `creature_loot_template` WHERE `entry` = 5715;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5715, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5715, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5715, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5715, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5715, 20607, -100, 0, 1, 1, 0, 'Blue Voodoo Feather'),
(5715, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5715, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5715, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5715, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5715, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5715, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5715, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5715, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5715, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5715, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5715, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5715, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5715, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5715, 60188, 2, 0, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)'),
(5715, 60264, 0.05, 0, -60264, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 52)'),
(5715, 60324, 0.01, 0, -60324, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 52)'),
(5715, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5715, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Zul'Lor 5716 (49) 52
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5716;
DELETE FROM `creature_loot_template` WHERE `entry` = 5716;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5716, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5716, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5716, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5716, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5716, 20606, -100, 0, 1, 1, 0, 'Amber Voodoo Feather'),
(5716, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5716, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5716, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5716, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5716, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5716, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5716, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5716, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5716, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5716, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5716, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5716, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5716, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5716, 60188, 2, 0, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)'),
(5716, 60264, 0.05, 0, -60264, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 52)'),
(5716, 60324, 0.01, 0, -60324, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 52)'),
(5716, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5716, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Mijan 5717 (49) 52
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 8389136 WHERE `entry` = 5716;
DELETE FROM `creature_loot_template` WHERE `entry` = 5717;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5717, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(5717, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(5717, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(5717, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(5717, 20607, -100, 0, 1, 1, 0, 'Blue Voodoo Feather'),
(5717, 35010, 40, 1, -35010, 1, 0, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),

(5717, 4599, 1, 0, 1, 1, 0, 'Cured Ham Steak'),
(5717, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(5717, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(5717, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(5717, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5717, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5717, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5717, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5717, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(5717, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5717, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5717, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5717, 60188, 2, 0, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)'),
(5717, 60264, 0.05, 0, -60264, 1, 0, 'PC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 52)'),
(5717, 60324, 0.01, 0, -60324, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 52)'),
(5717, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(5717, 60446, 0.05, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- Morphaz 5719 (50) 52
-- https://www.wowhead.com/tbc/npc=5719/morphaz
-- https://web.archive.org/web/20080420163003/http://wow.allakhazam.com/db/mob.html?wmob=5719
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354 WHERE `entry` = 5719;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5719, 0, 1, 33),(5719, 0, 1, 138),(5719, 0, 1, 140),(5719, 0, 1, 216); -- "Haste"
DELETE FROM `creature_loot_template` WHERE `entry` = 5719;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5719, 20085, -100, 0, 1, 1, 0, 'Arcane Shard'),
(5719, 20019, -100, 0, 1, 1, 0, 'Tooth of Morphaz'),
(5719, 20025, -100, 0, 1, 1, 0, 'Blood of Morphaz'),
(5719, 20022, -100, 0, 1, 1, 0, 'Azure Key'),
(5719, 8146, 2.5, 0, 1, 1, 0, 'Wicked Claw'),
(5719, 7910, 0.5, 0, 1, 1, 0, 'Star Ruby'),
(5719, 7909, 0.5, 0, 1, 1, 0, 'Aquamarine'),
(5719, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5719, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5719, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5719, 4460, 6, 0, 1, 1, 0, 'Ripped Wing Webbing'),
(5719, 4557, 4, 0, 1, 1, 0, 'Fiery Gland'),
(5719, 15412, 15, 0, 1, 1, 0, 'Green Dragonscale'),
(5719, 35011, 50, 1, -35011, 1, 0, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(5719, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5719, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5719, 60188, 2, 0, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 52)'),
(5719, 60264, 0.05, 0, -60264, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 52)'),
(5719, 60324, 0.01, 0, -60324, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 52)');

-- Weaver 5720 (50) 51
-- https://web.archive.org/web/20080421032831/http://wow.allakhazam.com/db/mob.html?wmob=5720
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354 WHERE `entry` = 5720;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5720, 0, 1, 33),(5720, 0, 1, 138),(5720, 0, 1, 140),(5720, 0, 1, 216); -- "Haste"
DELETE FROM `creature_loot_template` WHERE `entry` = 5720;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5720, 8146, 2.5, 0, 1, 1, 0, 'Wicked Claw'),
(5720, 7910, 0.5, 0, 1, 1, 0, 'Star Ruby'),
(5720, 7909, 0.5, 0, 1, 1, 0, 'Aquamarine'),
(5720, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5720, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5720, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5720, 4460, 6, 0, 1, 1, 0, 'Ripped Wing Webbing'),
(5720, 4557, 4, 0, 1, 1, 0, 'Fiery Gland'),
(5720, 15412, 30, 0, 1, 1, 0, 'Green Dragonscale'),
(5720, 35011, 50, 1, -35011, 1, 0, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(5720, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5720, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5720, 60186, 2, 0, -60186, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(5720, 60262, 0.05, 0, -60262, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 51)'),
(5720, 60322, 0.01, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 51)');

-- Dreamscythe 5721 (50) 53
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354 WHERE `entry` = 5721;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5721, 0, 1, 33),(5721, 0, 1, 138),(5721, 0, 1, 140),(5721, 0, 1, 216); -- "Haste"
DELETE FROM `creature_loot_template` WHERE `entry` = 5721;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5721, 8146, 2.5, 0, 1, 1, 0, 'Wicked Claw'),
(5721, 7910, 0.5, 0, 1, 1, 0, 'Star Ruby'),
(5721, 7909, 0.5, 0, 1, 1, 0, 'Aquamarine'),
(5721, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5721, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5721, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5721, 4460, 6, 0, 1, 1, 0, 'Ripped Wing Webbing'),
(5721, 4557, 4, 0, 1, 1, 0, 'Fiery Gland'),
(5721, 15412, 30, 0, 1, 1, 0, 'Green Dragonscale'),
(5721, 35011, 50, 1, -35011, 1, 0, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(5721, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5721, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5721, 60190, 2, 0, -60190, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 53)'),
(5721, 60266, 0.05, 0, -60266, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 53)'),
(5721, 60326, 0.01, 0, -60326, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 53)');

-- Hazzas 5722 (50) 53
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354 WHERE `entry` = 5722;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (5722, 0, 1, 33),(5722, 0, 1, 138),(5722, 0, 1, 140),(5722, 0, 1, 216); -- "Haste"
DELETE FROM `creature_loot_template` WHERE `entry` = 5722;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5722, 8146, 2.5, 0, 1, 1, 0, 'Wicked Claw'),
(5722, 7910, 0.5, 0, 1, 1, 0, 'Star Ruby'),
(5722, 7909, 0.5, 0, 1, 1, 0, 'Aquamarine'),
(5722, 5758, 0.1, 0, 1, 1, 0, 'Mithril Lockbox'),
(5722, 17413, 0.1, 2, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(5722, 17682, 0.1, 2, 1, 1, 0, 'Book: Gift of the Wild'),
(5722, 4460, 6, 0, 1, 1, 0, 'Ripped Wing Webbing'),
(5722, 4557, 4, 0, 1, 1, 0, 'Fiery Gland'),
(5722, 15412, 30, 0, 1, 1, 0, 'Green Dragonscale'),
(5722, 35011, 50, 1, -35011, 1, 0, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(5722, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(5722, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'),
(5722, 60190, 2, 0, -60190, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 53)'),
(5722, 60266, 0.05, 0, -60266, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 53)'),
(5722, 60326, 0.01, 0, -60326, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 53)');

-- Oozeling 8257 - 40
UPDATE `creature_template` SET `ResistanceArcane` = 0, `MechanicImmuneMask` = 0, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` = 8257;

-- Slime Maggot 8311 (45-46)
-- https://web.archive.org/web/20080417220344/http://wow.allakhazam.com/db/mob.html?wmob=8311
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 8311;
DELETE FROM `creature_loot_template` WHERE `entry` = 8311;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8311, 3669, 60.2298, 0, 1, 1, 0, 'Gelatinous Goo'),
(8311, 3676, 60.3806, 0, 1, 1, 0, 'Slimy Ichor'),
(8311, 4637, 0.1413, 0, 1, 1, 0, 'Steel Lockbox'),
(8311, 4638, 0.1884, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8311, 7909, 0.1413, 0, 1, 1, 0, 'Aquamarine'),
(8311, 7910, 0.0565, 0, 1, 1, 0, 'Star Ruby'),
(8311, 50548, 0.5, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)'),
(8311, 60175, 2, 0, -60175, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)'),
(8311, 60251, 0.05, 0, -60251, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 43-48) - (NPC Levels: 45-46)'),
(8311, 60311, 0.004, 0, -60311, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 44-47) - (NPC Levels: 45-46)'),
(8311, 60445, 0.05, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Deathwalker's Spirit 8317 (48-49) - haste, drain effects and taunt
UPDATE `creature_template` SET `SpeedWalk` = (2 / 2.5), `SpeedRun` = (2 / 7), `ResistanceNature` = 0, `ResistanceArcane` = 0, `SchoolImmuneMask` = 0, `MechanicImmuneMask` = 46825342 WHERE `entry` = 8317;
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (8317, 0, 1, 33),(8317, 0, 1, 138),(8317, 0, 1, 140),(8317, 0, 1, 216), -- "Haste"
(8317, 0, 0, 114), -- SPELL_EFFECT_ATTACK_ME
(8317, 0, 1, 11), -- SPELL_AURA_MOD_TAUNT
(8317, 0, 0, 9), -- SPELL_EFFECT_HEALTH_LEECH
(8317, 0, 1, 53); -- SPELL_AURA_PERIODIC_LEECH

-- Atal'ai Slave 8318 (46-47)
-- https://www.wowhead.com/tbc/npc=8318/atalai-slave
UPDATE `creature_template` SET `MechanicImmuneMask` = 8389137 WHERE `entry` = 8318;
DELETE FROM `creature_loot_template` WHERE `entry` = 8318;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8318, 4338, 35.1137, 0, 1, 3, 0, 'Mageweave Cloth'),
(8318, 4599, 5.0129, 0, 1, 1, 0, 'Cured Ham Steak'),
(8318, 1645, 2.453, 0, 1, 1, 0, 'Moonberry Juice'),
(8318, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(8318, 4638, 0.2255, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8318, 7909, 0.0514, 0, 1, 1, 0, 'Aquamarine'),
(8318, 7910, 0.0989, 0, 1, 1, 0, 'Star Ruby'),
(8318, 50549, 0.5, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-275 from old data
(8318, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(8318, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(8318, 60177, 1, 0, -60177, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 46-50) - (NPC Levels: 46-47)'),
(8318, 60253, 0.05, 0, -60253, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46-47)'),
(8318, 60313, 0.004, 0, -60313, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 45-48) - (NPC Levels: 46-47)'),
(8318, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Nightmare Whelp 8319 (48) - 49-50
-- https://www.wowhead.com/tbc/npc=8319/nightmare-whelp
-- https://web.archive.org/web/20080417132504/http://wow.allakhazam.com/db/mob.html?wmob=8319
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 8319;
DELETE FROM `creature_loot_template` WHERE `entry` = 8319;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8319, 15412, 1, 0, 1, 1, 0, 'Green Dragonscale'),
(8319, 4599, 5.8267, 0, 1, 1, 0, 'Cured Ham Steak'),
(8319, 1645, 2.8807, 0, 1, 1, 0, 'Moonberry Juice'),
(8319, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(8319, 4638, 0.2111, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8319, 7909, 0.1024, 0, 1, 1, 0, 'Aquamarine'),
(8319, 7910, 0.0714, 0, 1, 1, 0, 'Star Ruby'),
(8319, 50549, 0.5, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-275 from old data
(8319, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(8319, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(8319, 60183, 1, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(8319, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 49-50)'),
(8319, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 49-50)'),
(8319, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Atal'ai Skeleton 8324
UPDATE `creature_template` SET `ResistanceNature` = 0, `ResistanceArcane` = 0, `MechanicImmuneMask` = 8389136 WHERE `entry` = 8324;

-- Hakkari Sapper 8336 (48-49) - 49-50
-- https://www.wowhead.com/tbc/npc=8336/hakkari-sapper
-- https://web.archive.org/web/20080417220349/http://wow.allakhazam.com/db/mob.html?wmob=8336
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 8336;
DELETE FROM `creature_loot_template` WHERE `entry` = 8336;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8336, 6444, 33.6155, 0, 1, 1, 0, 'Forked Tongue'),
(8336, 6826, 52.237, 0, 1, 1, 0, 'Brilliant Scale'),
(8336, 7909, 0.3628, 0, 1, 1, 0, 'Aquamarine'),
(8336, 7910, 0.7255, 0, 1, 1, 0, 'Star Ruby'),
(8336, 4638, 1.451, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8336, 17413, 0.22, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(8336, 17682, 0.1, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(8336, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-270 from old data
(8336, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(8336, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 49-50)'),
(8336, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-51) - (NPC Levels: 49-50)'),
(8336, 60319, 0.01, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 49-50)'),
(8336, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Deep Lurker 8384 (47-48) - no zone loot (!?!)
-- https://www.wowhead.com/tbc/npc=8384/deep-lurker
-- https://web.archive.org/web/20080417220354/http://wow.allakhazam.com/db/mob.html?wmob=8384
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (1.666669964790344238 / 2.5), `SpeedRun` = (8 / 7), `MechanicImmuneMask` = 0 WHERE `entry` = 8384;
DELETE FROM `creature_loot_template` WHERE `entry` = 8384;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8384, 11318, -80, 0, 1, 1, 0, 'Atal\'ai Haze'),
(8384, 8839, 0.92, 1, 1, 1, 0, 'Blindweed'),
(8384, 10286, 8.539, 1, 1, 1, 0, 'Heart of the Wild'),
(8384, 8846, 0.96, 1, 1, 1, 0, 'Gromsblood'),
(8384, 8831, 1.04, 1, 1, 1, 0, 'Purple Lotus'),
(8384, 2450, 1.12, 1, 1, 1, 0, 'Briarthorn'),
(8384, 8845, 1.06, 1, 1, 1, 0, 'Ghost Mushroom'),
(8384, 3821, 1, 1, 1, 1, 0, 'Goldthorn'),
(8384, 3358, 0.96, 1, 1, 1, 0, 'Khadgar\'s Whisker'),
(8384, 785, 1.18, 1, 1, 1, 0, 'Mageroyal'),
(8384, 765, 1.04, 1, 1, 1, 0, 'Silverleaf'),
(8384, 3820, 0.9, 1, 1, 1, 0, 'Stranglekelp'),
(8384, 8836, 0.92, 1, 1, 1, 0, 'Arthas\' Tears'),
(8384, 2453, 1.02, 1, 1, 1, 0, 'Bruiseweed'),
(8384, 2449, 1.18, 1, 1, 1, 0, 'Earthroot'),
(8384, 4625, 0.98, 1, 1, 1, 0, 'Firebloom'),
(8384, 3357, 0.96, 1, 1, 1, 0, 'Liferoot'),
(8384, 8838, 0.9, 1, 1, 1, 0, 'Sungrass'),
(8384, 2452, 0.94, 1, 1, 1, 0, 'Swiftthistle'),
(8384, 3819, 0.98, 1, 1, 1, 0, 'Wintersbite'),
(8384, 3818, 0.96, 1, 1, 1, 0, 'Fadeleaf'),
(8384, 2447, 1.32, 1, 1, 1, 0, 'Peacebloom'),
(8384, 3356, 0.02, 1, 1, 1, 0, 'Kingsblood'),
(8384, 4608, 5.6612, 0, 1, 1, 0, 'Raw Black Truffle'),
(8384, 1645, 2.6993, 0, 1, 1, 0, 'Moonberry Juice'),
(8384, 50613, 2, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(8384, 4638, 0.2206, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8384, 7909, 0.0945, 0, 1, 1, 0, 'Aquamarine'),
(8384, 7910, 0.0945, 0, 1, 1, 0, 'Star Ruby'),
(8384, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
-- https://web.archive.org/web/20080417220354/http://wow.allakhazam.com/db/mob.html?wmob=8384 - i think our general grey with 9% is far too high 60000 and 60008
(8384, 60007, 9, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'), -- grey sitting at 3%
(8384, 60181, 2, 0, -60181, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 48-49)'),
(8384, 60257, 0.1, 0, -60257, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 48-49)'),
(8384, 60317, 0.01, 0, -60317, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 48-49)'),
(8384, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(8384, 50548, 1, 0, -50548, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 180-275 (Profession Recipes)) - (NPC Levels ~48)');

-- Hakkari Minion 8437 (45-46)
-- https://www.wowhead.com/tbc/npc=8437/hakkari-minion
-- https://web.archive.org/web/20080421134107/http://wow.allakhazam.com/db/mob.html?wmob=8437 - skinning_loot_template
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `SkinningLootId` = 8437 WHERE `entry` = 8437;
DELETE FROM `skinning_loot_template` WHERE `entry` = 8437;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8437, 4304, 70, 1, 1, 1, 0, 'Thick Leather'),
(8437, 4234, 20, 1, 1, 1, 0, 'Heavy Leather'),
(8437, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(8437, 8169, 5, 1, 1, 1, 0, 'Thick Hide');

-- Hakkari Bloodkeeper 8438 (49) - 49-50
-- https://www.wowhead.com/tbc/npc=8438/hakkari-bloodkeeper
-- https://web.archive.org/web/20080417220359/http://wow.allakhazam.com/db/mob.html?wmob=8438
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `SkinningLootId` = 8438 WHERE `entry` = 8438;

DELETE FROM `skinning_loot_template` WHERE `entry` = 8438;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8438, 4304, 70, 1, 1, 2, 0, 'Thick Leather'),
(8438, 8170, 25, 1, 1, 2, 0, 'Rugged Leather'),
(8438, 8169, 5, 1, 1, 1, 0, 'Thick Hide');

DELETE FROM `creature_loot_template` WHERE `entry` = 8438;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8438, 10460, 100, 0, 1, 1, 0, 'Hakkari Blood'),
(8438, 6444, 17.1575, 0, 1, 1, 0, 'Forked Tongue'),
(8438, 6826, 26.3764, 0, 1, 1, 0, 'Brilliant Scale'),
(8438, 4638, 0.2561, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8438, 7909, 0.3414, 0, 1, 1, 0, 'Aquamarine'),
(8438, 7910, 0.0854, 0, 1, 1, 0, 'Star Ruby'),
(8438, 17413, 0.28, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(8438, 17682, 0.2, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(8438, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(8438, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 205-275 from old data
(8438, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 49-50)'),
(8438, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-51) - (NPC Levels: 49-50)'),
(8438, 60319, 0.01, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 49-50)'),
(8438, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Shade of Hakkar 8440
UPDATE `creature_template` SET `UnitFlags` = 33554752, `MeleeBaseAttackTime` = 2000, `RegenerateStats` = 0 WHERE `entry` = 8440;

-- Avatar of Hakkar 8443 - had chance for 2x same item
-- https://web.archive.org/web/20080417220405/http://wow.allakhazam.com:80/db/mob.html?wmob=8443
UPDATE `creature_template` SET `UnitFlags` = 64, `MechanicImmuneMask` = 0 WHERE `entry` = 8384;
DELETE FROM `creature_loot_template` WHERE `entry` = 8443;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8443, 6444, 7, 0, 1, 1, 0, 'Forked Tongue'),
(8443, 6826, 12, 0, 1, 1, 0, 'Brilliant Scale'),
(8443, 10663, -100, 0, 1, 1, 0, 'Essence of Hakkar'),
(8443, 10838, 20, 1, 1, 1, 0, 'Might of Hakkar'), -- attempt 1, 2
(8443, 10842, 0, 1, 1, 1, 0, 'Windscale Sarong'), -- attempt 3, 5
(8443, 10843, 0, 1, 1, 1, 0, 'Featherskin Cape'), -- attempt 4
(8443, 10845, 0, 2, 1, 1, 0, 'Warrior\'s Embrace'), -- attempt 1, 2
(8443, 10846, 0, 2, 1, 1, 0, 'Bloodshot Greaves'), -- attempt 3
(8443, 10844, 20, 2, 1, 1, 0, 'Spire of Hakkar'), -- attempt 4, 5
(8443, 12462, 0.5, 2, 1, 1, 0, 'Embrace of the Wind Serpent'); -- 1% cmangos, vmangos has 2%, 0.15% atlasloot

-- Nightmare Suppressor 8497 (49) - 49-50
-- https://www.wowhead.com/tbc/npc=8497/nightmare-suppressor
-- https://web.archive.org/web/20080417220409/http://wow.allakhazam.com/db/mob.html?wmob=8497
UPDATE `creature_template` SET `UnitFlags` = 64, `MeleeBaseAttackTime` = 2000, `MechanicImmuneMask` = 0 WHERE `entry` = 8497;
DELETE FROM `creature_loot_template` WHERE `entry` = 8497;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8497, 15412, 5, 0, 1, 1, 0, 'Green Dragonscale'),
(8497, 4599, 6.0952, 0, 1, 1, 0, 'Cured Ham Steak'),
(8497, 1645, 2.2857, 0, 1, 1, 0, 'Moonberry Juice'),
(8497, 50613, 5, 0, -50613, 1, 0, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'),
(8497, 4638, 0.1905, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8497, 7909, 0.3175, 0, 1, 1, 0, 'Aquamarine'),
(8497, 7910, 0.127, 0, 1, 1, 0, 'Star Ruby'),
(8497, 17413, 0.16, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(8497, 17682, 0.2, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(8497, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-265 from old data
(8497, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(8497, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(8497, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(8497, 60183, 2, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 49-50)'),
(8497, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-51) - (NPC Levels: 49-50)'),
(8497, 60319, 0.01, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 49-50)'),
(8497, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

DELETE FROM `skinning_loot_template` WHERE `entry` = 8497;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8497, 4304, 48, 1, 1, 2, 0, 'Thick Leather'),
(8497, 15412, 25, 1, 1, 1, 0, 'Green Dragonscale'),
(8497, 8170, 15, 1, 1, 2, 0, 'Rugged Leather'),
(8497, 8169, 5, 1, 1, 1, 0, 'Thick Hide'),
(8497, 8165, 7, 1, 1, 2, 0, 'Worn Dragonscale');

-- Atal'ai Totem 8510 - TotemAI
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8510;

-- Atal'alarion 8580 (49) - 50
-- https://www.wowhead.com/tbc/npc=8580/atalalarion
-- https://web.archive.org/web/20080421134123/http://wow.allakhazam.com/db/mob.html?wmob=8580
UPDATE `creature_template` SET `MechanicImmuneMask` = 0, `MovementType` = 2 WHERE `entry` = 8580;
DELETE FROM `creature_loot_template` WHERE `entry` = 8580;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8580, 22444, -100, 0, 1, 1, 0, 'Putrid Vine'),
(8580, 6181, -40, 0, 1, 1, 0, 'Fetish of Hakkar'),
(8580, 10798, 0, 1, 1, 1, 0, 'Atal\'alarion\'s Tusk Ring'),
(8580, 10799, 20, 1, 1, 1, 0, 'Headspike'),
(8580, 10800, 0, 1, 1, 1, 0, 'Darkwater Bracers'),
(8580, 1520, 23, 0, 1, 1, 0, 'Troll Sweat'),
(8580, 4338, 21, 0, 1, 4, 0, 'Mageweave Cloth'),
(8580, 8152, 7, 0, 1, 1, 0, 'Flask of Big Mojo'),
(8580, 4638, 0.5, 0, 1, 1, 0, 'Reinforced Steel Lockbox'),
(8580, 4599, 2, 0, 1, 1, 0, 'Cured Ham Steak'),
(8580, 1645, 1, 0, 1, 1, 0, 'Moonberry Juice'),
(8580, 7909, 0.1, 0, 1, 1, 0, 'Aquamarine'),
(8580, 7910, 0.1, 0, 1, 1, 0, 'Star Ruby'),
(8580, 17413, 0.2, 0, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(8580, 17682, 0.2, 0, 1, 1, 0, 'Book: Gift of the Wild'),
(8580, 50549, 1, 0, -50549, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 200-275 (Profession Recipes)) - (NPC Levels ~49)'), -- this one was more like 210-265 from old data
(8580, 30009, 0.25, 1, -30009, 1, 0, 'Temple of Atal\'Hakkar - Zone Drop'),
(8580, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(8580, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(8580, 60184, 2, 0, -60184, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)'),
(8580, 60260, 0.05, 0, -60260, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-51) - (NPC Levels: 50)'),
(8580, 60320, 0.01, 0, -60320, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 50)'),
(8580, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- Hukku's Voidwalker 8656
-- Hukku's Succubus 8657
-- Hukku's Imp 8658

-- Malfurion Stormrage 15362
UPDATE `creature_template` SET `SpeedWalk` = 1, `UnitFlags` = 768, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15362;

-- Elder Starsong 15593

-- ======
-- Bonus:
-- ======

-- Fetish of Hakkar i.6181
-- https://www.wowhead.com/tbc/item=6181/fetish-of-hakkar#comments:id=3021887
-- https://www.wowhead.com/tbc/quest=1445/the-temple-of-atalhakkar#comments:id=3163949 - low %
-- https://web.archive.org/web/20080306090819/http://wow.allakhazam.com/db/item.html?witem=6181 - % drops further and further into data gathering due to only dropping on quest
-- "its taked to kill more than 40 trolls to get 20 Fetish of Hakkar"
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 6181; -- -80 (22 npcs)

-- Decrease Grey Loot, flat fix for 9% cases which was old default, much too high (2610 lines overall, 2336 lines touched with this)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6 WHERE (`mincountOrRef` BETWEEN -60008 AND -60000) AND `ChanceOrQuestChance` = 9;

