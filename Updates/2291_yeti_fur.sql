-- based on https://github.com/cmangos/classic-db/commit/7857ccef0b3b8fbef097f2158fea65af7fe6895c

-- Also decrease Chance for Yeti Fur for Unique Npcs
-- https://web.archive.org/web/20050116053614/http://wow.allakhazam.com:80/db/item.html?witem=3720
UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE item=3720 AND entry IN (2452, 4504);
