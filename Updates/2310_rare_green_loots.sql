-- Correct Green Item Loot for Azurous 10202
-- https://web.archive.org/web/20060527140513/http://wow.allakhazam.com:80/db/mob.html?wmob=10202
-- (10202, 24016, 1, 1, -24016, 1, 0, '');
-- (10202, 24018, 1, 1, -24018, 1, 0, '');
-- (10202, 24033, 1, 1, -24033, 1, 0, ''); -- in classic which is also wrong as its nowhere a feasable dropchance
DELETE FROM creature_loot_template WHERE item=60292 AND entry=10202;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(10202, 60292, 100, 1, -60292, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59)');

-- Correct Green Item Loot for Hematos 8976
-- https://web.archive.org/web/20060527134458/http://wow.allakhazam.com/db/mob.html?wmob=8976
-- (8976, 24016, 1, 1, -24016, 1, 0, '');
-- (8976, 24018, 1, 1, -24018, 1, 0, '');
-- (8976, 24033, 1, 1, -24033, 1, 0, '');
DELETE FROM creature_loot_template WHERE item=60294 AND entry=8976;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(8976, 60294, 100, 1, -60294, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)');

-- Correct Green Item Loot for Volchan 10119
-- https://web.archive.org/web/20060527140434/http://wow.allakhazam.com/db/mob.html?wmob=10119
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60294 AND entry=10119;
	