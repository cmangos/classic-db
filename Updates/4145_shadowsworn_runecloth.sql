-- Revert/Fix wrong chances applied for shadowsworn runecloth droprate in earlier COMMIT
-- https://github.com/cmangos/classic-db/commit/8898e8d6e657ce0da641de7a961a6dbe80c19a94 - Chance for 1 or 2 cloth
-- https://classic.wowhead.com/search?q=Shadowsworn#npcs
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6004 AND item=14047; -- (24.5598)
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6005 AND item=14047; -- (24.5314)
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6006 AND item=14047; -- (24.6488)
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6007 AND item=14047; -- (24.3243)
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6008 AND item=14047; -- (26.1285)
UPDATE creature_loot_template SET ChanceOrQuestChance=33 WHERE entry=6009 AND item=14047; -- (25.7284)

