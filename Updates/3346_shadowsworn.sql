-- Improve Runecloth Dropchance for Shadowsworn Npcs in Blasted Lands
-- Shadowsworn Cultist 6004
-- Shadowsworn Thug 6005
-- Shadowsworn Adept 6006
-- Shadowsworn Enforcer 6007
-- Shadowsworn Warlock 6008
-- Shadowsworn Dreadweaver 6009
-- https://classic.wowhead.com/search?q=Shadowsworn#npcs
UPDATE creature_loot_template SET ChanceOrQuestChance=66 WHERE entry=6004 AND item=14047; -- (24.5598)
UPDATE creature_loot_template SET ChanceOrQuestChance=65 WHERE entry=6005 AND item=14047; -- (24.5314)
UPDATE creature_loot_template SET ChanceOrQuestChance=65 WHERE entry=6006 AND item=14047; -- (24.6488)
UPDATE creature_loot_template SET ChanceOrQuestChance=67 WHERE entry=6007 AND item=14047; -- (24.3243)
UPDATE creature_loot_template SET ChanceOrQuestChance=68 WHERE entry=6008 AND item=14047; -- (26.1285)
UPDATE creature_loot_template SET ChanceOrQuestChance=67 WHERE entry=6009 AND item=14047; -- (25.7284)
