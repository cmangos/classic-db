-- Correct Green Item Loot for Vile Sting 5937 (Level 35)
-- https://web.archive.org/web/20060305052427/http://wow.allakhazam.com:80/db/mob.html?wmob=5937
-- (5937, 24052, 1, 1, -24052, 1, 0, '');
-- (5937, 24054, 1, 1, -24054, 1, 0, '');
-- (5937, 24056, 1, 1, -24056, 1, 0, ''); -- classic-db
DELETE FROM creature_loot_template WHERE item=60154 AND entry=5937;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(5937, 60154, 75, 1, -60154, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)');

-- Correct Green Item Loot for Siege Golem 2749 (Level 40)
-- https://web.archive.org/web/20071102063305/http://wow.allakhazam.com:80/db/mob.html?wmob=2749
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60164 AND entry=2749; -- NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)

-- Correct Green Item Loot for Kashoch the Reaver 10198 (Level 60)
-- https://web.archive.org/web/20050216032525/http://wow.allakhazam.com/db/mob.html?wmob=10198
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60294 AND entry=10198; -- NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)

-- Correct Green Item Loot for Lady Hederine 10201 (Level 61)
-- https://web.archive.org/web/20060831112703/http://wow.allakhazam.com:80/db/mob.html?wmob=10201
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60296 AND entry=10201; -- NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61)

-- Correct Green Item Loot for General Colbatann 10196 (Level 56-57)
-- https://web.archive.org/web/20060831112651/http://wow.allakhazam.com/db/mob.html?wmob=10196
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60197 AND entry=10196; -- NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)

-- Correct Green Item Loot for Putridius 1850 (Level 58)
-- https://web.archive.org/web/20050223093117/http://wow.allakhazam.com/db/mob.html?wmob=1850
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60290 AND entry=1850; -- NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58)
