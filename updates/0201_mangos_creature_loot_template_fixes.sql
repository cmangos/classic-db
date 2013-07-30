-- Add missing epic items and Tier2 pants from Ragnaros loot table. Data backported from UDB rev 406
-- Thanks to deskicio for pointing
-- Missing condition_id (irrelevant in WotLK) were added to shaman and paladin tier2 to prevent them from dropping for other faction
-- Update drop chance of Draconic for Dummies: 100% drop chance but wowhead data (and such) are misleading because the item was added later
-- UDB have also correct data

-- Creating the reference group for the 2 tier 2 pants and the 2 other epics
DELETE FROM `reference_loot_template` WHERE `entry` = 34030;
INSERT INTO `reference_loot_template` VALUES
-- Tier2 pants
(34030, 16901, 0, 2, 1, 1, 0),  -- druid
(34030, 16909, 0, 2, 1, 1, 0),  -- rogue
(34030, 16915, 0, 2, 1, 1, 0),  -- mage
(34030, 16922, 0, 2, 1, 1, 0),  -- priest
(34030, 16930, 0, 2, 1, 1, 0),  -- warlock
(34030, 16938, 0, 2, 1, 1, 0),  -- hunter
(34030, 16946, 0, 2, 1, 1, 3),  -- shaman => condition = horde
(34030, 16954, 0, 2, 1, 1, 4),  -- paladin => condition = alliance
(34030, 16962, 0, 2, 1, 1, 0),  -- warrior
-- Weapons
(34030, 17076, 0, 1, 1, 1, 0), -- Bonereaver's Edge
(34030, 17104, 0, 1, 1, 1, 0), -- Spinal Reaper
(34030, 18816, 0, 1, 1, 1, 0), -- Perdition's Blade
-- Other epics
(34030, 17063, 0, 1, 1, 1, 0),  -- Band of Accuria
(34030, 17082, 0, 1, 1, 1, 0),  -- Shard of the Flame
(34030, 17102, 0, 1, 1, 1, 0),  -- Cloak of the Shrouded Mists
(34030, 17106, 0, 1, 1, 1, 0),  -- Malistar's Defender
(34030, 17107, 0, 1, 1, 1, 0),  -- Dragon's Blood Cape
(34030, 18814, 0, 1, 1, 1, 0),  -- Choker of the Fire Lord
(34030, 18815, 0, 1, 1, 1, 0),  -- Essence of the Pure Flame
(34030, 18817, 0, 1, 1, 1, 0),  -- Crown of Destruction
(34030, 19137, 0, 1, 1, 1, 0),  -- Onslaught Girdle
(34030, 19138, 0, 1, 1, 1, 0);  -- Band of Sulfuras

-- Adding this referenced group to Ragnaros loot table (entry: 11502)
DELETE FROM `creature_loot_template` WHERE `entry` = 11502 AND `item` = 34030;
INSERT INTO `creature_loot_template` VALUES (11502, 34030, 100, 0, -34030, 2, 0);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11502 AND `item` = 21110;
