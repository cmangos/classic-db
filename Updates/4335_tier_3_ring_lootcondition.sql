-- Add race condition for shaman/paladin t3 rings (classic only)
-- Based on https://github.com/lh-server/core/commit/d019a497bfe4f9cb85e6b1f772880f92359532af
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `item` = 23065 AND `entry` = 34044; -- Ring of the Earthshatterer (Horde)
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `item` = 23066 AND `entry` = 34044; -- Ring of Redemption (Alliance)

