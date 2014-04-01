-- Updated loot table of bosses in Scholomance. Added missing items, updated drop rate, added reference tables.
-- Thanks scotty0100 for pointing. This closes #226 

-- Lord Alexei Barov (10504): added missing entries, increased chance to drop rare item (blue item) to 100%
-- Source: http://www.wowwiki.com/Lord_Alexei_Barov#Patch_changes
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 10504 AND `item` = 35031;
DELETE FROM `creature_loot_template` WHERE `entry` = 10504 AND `item` IN (5759, 8766, 8932, 13444, 13446, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(10504, 5759, 0.3419, 0, 1, 1, 0), -- Thorium Lockbox
(10504, 8766, 1.9034, 0, 1, 1, 0), -- Morning Glory Dew
(10504, 8932, 3.7725, 0, 1, 1, 0), -- Alterac Swiss
(10504, 13444, 0.4787, 0, 1, 1, 0), -- Major mana potion
(10504, 13446, 0.7864, 0, 1, 1, 0), -- Major healing potion
(10504, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Lady Illucia Barov (10502): added missing entries (some generic and some specific like dark rune)
-- Source: http://www.wowwiki.com/Lady_Illucia_Barov#Loot
DELETE FROM `creature_loot_template` WHERE `entry` = 10502 AND `item` IN (5759, 7972, 8766, 8948, 12808, 13444, 13446, 18335, 20520, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(10502, 5759, 0.3419, 0, 1, 1, 0), -- Thorium Lockbox
(10502, 7972, 4.1203, 0, 1, 1, 0), -- Ichor of Undeath
(10502, 8766, 1.9034, 0, 1, 1, 0), -- Morning Glory Dew
(10502, 8948, 3.7725, 0, 1, 1, 0), -- Dried King Bolete
(10502, 12808, 1.9921, 0, 1, 1, 0), -- Essence of Undeath
(10502, 13444, 0.4787, 0, 1, 1, 0), -- Major mana potion
(10502, 13446, 0.7864, 0, 1, 1, 0), -- Major healing potion
(10502, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10502, 20520, 51.4353, 0, 1, 1, 0), -- Dark runes
(10502, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Jandice Barov (10503) : added missing entries, especially item 14543 (Darkshade Gloves)
-- Source: http://www.wowwiki.com/Jandice_Barov#Loot
DELETE FROM `creature_loot_template` WHERE `entry` = 10503 AND `item` IN (7972, 8766, 8948, 12808, 13444, 13446, 14543, 18335, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(10503, 7972, 3.5331, 0, 1, 1, 0), -- Ichor of Undeath
(10503, 8766, 1.4798, 0, 1, 1, 0), -- Morning Glory Dew
(10503, 8948, 2.7747, 0, 1, 1, 0), -- Dried King Bolete
(10503, 12808, 2.2383, 0, 1, 1, 0), -- Essence of Undeath
(10503, 13444, 0.444, 0, 1, 1, 0), -- Major mana potion
(10503, 13446, 0.7584, 0, 1, 1, 0), -- Major healing potion
(10503, 14543, 0, 1, 1, 1, 0), -- Darkshade Gloves
(10503, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10503, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Ras Frostwhisper (10508): updated reference table as some element in it shouldn't be in (like Alanna's Embrace)
-- added missing entries (mostly generic entries)
-- http://www.wowwiki.com/Ras_Frostwhisper#Loot
DELETE FROM `reference_loot_template` WHERE `item` = 13314;
DELETE FROM `creature_loot_template` WHERE `entry` = 10508 AND `item` IN (5760, 7972, 8766, 8948, 12808, 13314, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(10508, 5760, 0.379, 0, 1, 1, 0), -- Eternium lock box
(10508, 7972, 3.596, 0, 1, 1, 0), -- Ichor of Undeath
(10508, 8766, 1.56, 0, 1, 1, 0), -- Morning Glory Dew
(10508, 8948, 3.358, 0, 1, 1, 0), -- Dried King Bolete
(10508, 12808, 2.3621, 0, 1, 1, 0), -- Essence of Undeath
(10508, 13314, 2, 0, 1, 1, 0), -- Alanna's Embrace
(10508, 13444, 0.4319, 0, 1, 1, 0), -- Major mana potion
(10508, 13446, 0.9607, 0, 1, 1, 0), -- Major healing potion
(10508, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10508, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Rattlegore (11622) : added missing item and reference table, updated drop chance of scourge stone to 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11622 AND `item` = 12841;
DELETE FROM `creature_loot_template` WHERE `entry` = 11622 AND `item` IN (5760, 7972, 8766, 8948, 12808, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(11622, 5760, 0.2309, 0, 1, 1, 0), -- Eternium lock box
(11622, 7972, 3.4268, 0, 1, 1, 0), -- Ichor of Undeath
(11622, 8766, 1.5729, 0, 1, 1, 0), -- Morning Glory Dew
(11622, 8948, 3.0585, 0, 1, 1, 0), -- Dried King Bolete
(11622, 12808, 2.1472, 0, 1, 1, 0), -- Essence of Undeath
(11622, 13444, 0.3308, 0, 1, 1, 0), -- Major mana potion
(11622, 13446, 0.8863, 0, 1, 1, 0), -- Major healing potion
(11622, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(11622, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Doctor Theolen Krastinov (11261) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 11261 AND `item` IN (5759, 8766, 8932, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(11261, 5759, 0.2865, 0, 1, 1, 0), -- Thorium Lockbox
(11261, 8766, 1.687, 0, 1, 1, 0), -- Morning Glory Dew
(11261, 8932, 3.0663, 0, 1, 1, 0), -- Alterac Swiss
(11261, 13444, 0.4668, 0, 1, 1, 0), -- Major mana potion
(11261, 13446, 1.008, 0, 1, 1, 0), -- Major healing potion
(11261, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(11261, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Darkmaster Gandling (1853) : added/moved missing items and reference table and especially items 13937 (Headmaster's Charge) and 21525 (Winter Veil hat)
DELETE FROM `creature_loot_template` WHERE `entry` = 1853 AND `item` IN (13937, 5759, 5760, 21525);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1853, 13937, 2, 0, 1, 1, 0), -- Headmaster's Charge
(1853, 5759, 10, 0, -5759, 1, 0), -- world loot reference table for similar bosses
(1853, 5760, 0.2309, 0, 1, 1, 0), -- Eternium lock box
(1853, 21525, 20, 0, 1, 1, 32); -- Winter veil hat

-- Blood Stewart of Kirtonos (14861) : added missing items, reference table and increased drop chance of scourge stone to 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 14861 AND `item` = 12841;
DELETE FROM `creature_loot_template` WHERE `entry` = 14861 AND `item` IN (5760, 7972, 8766, 8948, 24024);
INSERT INTO `creature_loot_template` VALUES
(14861, 5760, 0.3245, 0, 1, 1, 0), -- Eternium lock box
(14861, 7972, 6.7938, 0, 1, 1, 0), -- Ichor of Undeath
(14861, 8766, 2.7986, 0, 1, 1, 0), -- Morning Glory Dew
(14861, 8948, 5.9826, 0, 1, 1, 0), -- Dried King Bolete
(14861, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Kirtonos the Herald (10506) : added missing items
DELETE FROM `creature_loot_template` WHERE `entry` = 10506 AND `item` IN (5759, 8146, 24024);
INSERT INTO `creature_loot_template` VALUES
(10506, 5759, 0.2655, 0, 1, 1, 0), -- Thorium Lockbox
(10506, 8146, 3.3561, 0, 1, 1, 0), -- Wicked Claw
(10506, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- The Ravenian (10507) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 10507 AND `item` IN (5759, 7972, 8766, 8948, 12808, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` VALUES
(10507, 5759, 0.2865, 0, 1, 1, 0), -- Thorium Lockbox
(10507, 7972, 3.4268, 0, 1, 1, 0), -- Ichor of Undeath
(10507, 8766, 1.5729, 0, 1, 1, 0), -- Morning Glory Dew
(10507, 8948, 3.0585, 0, 1, 1, 0), -- Dried King Bolete
(10507, 12808, 2.4319, 0, 1, 1, 0), -- Essence of Undeath
(10507, 13444, 0.5404, 0, 1, 1, 0), -- Major mana potion
(10507, 13446, 1.0245, 0, 1, 1, 0), -- Major healing potion
(10507, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10507, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Instructor Malicia (10505) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 10505 AND `item` IN (5759, 8766, 8932, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` VALUES
(10505, 5759, 0.3389, 0, 1, 1, 0), -- Thorium Lockbox
(10505, 8766, 1.8637, 0, 1, 1, 0), -- Morning Glory Dew
(10505, 8932, 3.1829, 0, 1, 1, 0), -- Alterac Swiss
(10505, 13444, 0.6898, 0, 1, 1, 0), -- Major mana potion
(10505, 13446, 1.1376, 0, 1, 1, 0), -- Major healing potion
(10505, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10505, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses

-- Lorekeeper Polkelt (10901) : added missing items and reference table and increased drop chance of scourge stone to 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 10901 AND `item` = 12841;
DELETE FROM `creature_loot_template` WHERE `entry` = 10901 AND `item` IN (5759, 7972, 8766, 8948, 12808, 13444, 13446, 18335, 24024);
INSERT INTO `creature_loot_template` VALUES
(10901, 5759, 0.22, 0, 1, 1, 0), -- Thorium Lockbox
(10901, 7972, 3.8907, 0, 1, 1, 0), -- Ichor of Undeath
(10901, 8766, 1.8527, 0, 1, 1, 0), -- Morning Glory Dew
(10901, 8948, 3.358, 0, 1, 1, 0), -- Dried King Bolete
(10901, 12808, 1.7485, 0, 1, 1, 0), -- Essence of Undeath
(10901, 13444, 0.4053, 0, 1, 1, 0), -- Major mana potion
(10901, 13446, 1.0306, 0, 1, 1, 0), -- Major healing potion
(10901, 18335, 1, 0, 1, 1, 0), -- Pristine black diamond
(10901, 24024, 10, 0, -24024, 1, 0); -- world loot reference table for similar bosses
