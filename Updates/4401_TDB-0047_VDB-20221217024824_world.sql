-- Add your query below.
-- https://github.com/vmangos/core/commit/29ad9a622ba501fe2492407f9a77ef70a94a7281

-- Correct drop chance of Turtle Meat from Snapjaw.
-- Classic 15%, TBC 25%, WOTLK 50% stack of 1-2
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item`=3712 && `entry`=2408;

-- Correct drop chance of Aged Gorilla Sinew.
-- https://web.archive.org/web/20080501181154/http://wow.allakhazam.com/db/item.html?witem=3862
-- https://www.wowhead.com/wotlk/item=3862/aged-gorilla-sinew
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-5 WHERE `item`=3862; -- down from 10%, 1.6 bit too harsh due to kills of nonquest players and it's a horde quest only.

-- End of migration.

