-- Rare Mob Loot - Part 1
-- https://github.com/cmangos/issues/issues/1858

-- https://web.archive.org/web/20060109225917/http://wow.allakhazam.com:80/db/mob.html?wmob=1851
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60298 AND entry=1851; -- The Husk

-- https://web.archive.org/web/20050208002934/http://wow.allakhazam.com/db/mob.html?wmob=2447
DELETE FROM creature_loot_template WHERE item IN (60172,60248) AND entry=2447; -- Narillasanz
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2447, 60172, 100, 1, -60172, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)'),
(2447, 60248, 0.05, 1, -60248, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 42-46) - (NPC Levels: 44)');

-- https://web.archive.org/web/20090114043902/http://wow.allakhazam.com/db/mob.html?wmob=2598
-- https://wowwiki.fandom.com/wiki/Patch_2.1.2 - Darbel Montrose: This creature now always drops at least a good quality item. 
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60162 AND entry=2598; -- Darbel Montrose

-- https://web.archive.org/web/20080107122702/http://wow.allakhazam.com:80/db/mob.html?wmob=2601
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=60168 AND entry=2601; -- Foulbelly

-- https://web.archive.org/web/20060114031803/http://wow.allakhazam.com/db/mob.html?wmob=2603
DELETE FROM creature_loot_template WHERE item=60156 AND entry=2603; -- Kovork
DELETE FROM reference_loot_template WHERE item=60156 AND entry=65069; -- NPC LOOT (Rare NPC Loot) - Kovork - Special Items
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, comments) VALUES
(65069, 60156, 75, 1, -60156, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 35-39) - (NPC Levels: 36)');

-- https://web.archive.org/web/20060111224524/http://wow.allakhazam.com/db/mob.html?wmob=2779
DELETE FROM creature_loot_template WHERE item=60166 AND entry=2779; -- Prince Nazjak
DELETE FROM reference_loot_template WHERE item=60166 AND entry=65078; -- NPC LOOT (Rare NPC Loot) - Prince Nazjak - Special Items
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, comments) VALUES
(65078, 60166, 50, 1, -60166, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 40-44) - (NPC Levels: 41)');

-- https://web.archive.org/web/20071226221458/http://wow.allakhazam.com/db/mob.html?wmob=2602
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=60162 AND entry=2602; -- Ruul Onestone

-- https://web.archive.org/web/20060109234512/http://wow.allakhazam.com/db/mob.html?wmob=6650
DELETE FROM creature_loot_template WHERE item=60185 AND entry=6650; -- General Fangferror
DELETE FROM reference_loot_template WHERE item=60185 AND entry=65135; -- NPC LOOT (Rare NPC Loot) - General Fangferror - Special Items
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, comments) VALUES
(65135, 60185, 75, 1, -60185, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)');

-- https://web.archive.org/web/20071104120659/http://wow.allakhazam.com/db/mob.html?wmob=6646
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60191 AND entry=6646; -- Monnos the Elder

-- https://web.archive.org/web/20071029193557/http://wow.allakhazam.com/db/mob.html?wmob=13896
DELETE FROM creature_loot_template WHERE item IN (60188,60264) AND entry=13896; -- Scalebeard
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(13896, 60188, 100, 1, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 51-55) - (NPC Levels: 52)'),
(13896, 60264, 0.05, 1, -60264, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)');

-- https://web.archive.org/web/20071020030229/http://wow.allakhazam.com/db/mob.html?wmob=2753
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60160 AND entry=2753; -- Barnabus

-- https://web.archive.org/web/20071028105950/http://wow.allakhazam.com/db/mob.html?wmob=2754
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60174 AND entry=2754; -- Anathemus

-- https://web.archive.org/web/20071027044100/http://wow.allakhazam.com/db/mob.html?wmob=2744
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60164 AND entry=2744; -- Shadowforge Commander

-- https://web.archive.org/web/20071027044100/http://wow.allakhazam.com/db/mob.html?wmob=2744
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60156 AND entry=2751; -- War Golem

-- https://web.archive.org/web/20071102041204/http://wow.allakhazam.com/db/mob.html?wmob=2931
DELETE FROM creature_loot_template WHERE item IN (60194,60270,60330) AND entry=2931; -- Zaricotl
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2931, 60194, 100, 1, -60194, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 54-58) - (NPC Levels: 55)'),
(2931, 60270, 0.05, 1, -60270, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-57) - (NPC Levels: 55)'),
(2931, 60330, 0.004, 1, -60330, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-56) - (NPC Levels: 55)');

-- https://web.archive.org/web/20080118094106/http://wow.allakhazam.com/db/mob.html?wmob=8924
DELETE FROM creature_loot_template WHERE item=60184 AND entry=8924; -- General Fangferror
UPDATE reference_loot_template SET ChanceOrQuestChance=50 WHERE item=11603 AND entry=60184;
DELETE FROM reference_loot_template WHERE item=60184 AND entry=65174; -- NPC LOOT (Rare NPC Loot) - The Behemoth - Special Items
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, comments) VALUES
(65174, 60184, 50, 1, -60184, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)');

-- https://web.archive.org/web/20071226222625/http://wow.allakhazam.com/db/mob.html?wmob=8304
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60198 AND entry=8304; -- Dreadscorn