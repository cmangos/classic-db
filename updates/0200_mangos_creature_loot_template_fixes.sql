-- Added condition to paladin and shaman items of tier 1 and 2 to prevent them from dropping for opposite faction
-- The update is done on both reference_loot_template and creature_loot_template because somes creatures have
-- a different loot table structure (should be homogenised later, btw).
-- Thus, updating both tables avoid writing specific request for each creatures and ends with the same result
-- Condition 3: is Horde
-- Condition 4: is Alliance

-- Shaman
-- Earthfury Tier 1 (items from 16837 to 16844)
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16837 AND 16844;
UPDATE `creature_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16837 AND 16844;

-- Ten Storms Tier 2 (items from 16943 to 16950)
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16943 AND 16950;
UPDATE `creature_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16943 AND 16950;

-- Paladin
-- Lawbringer Tier 1 (items from 16853 to 16860)
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16853 AND 16860;
UPDATE `creature_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16853 AND 16860;

-- Judgement Tier 2 (items from 16951 to 16958)
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16951 AND 16958;
UPDATE `creature_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16951 AND 16958;
