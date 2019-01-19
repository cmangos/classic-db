-- Reapply loot (drop rates) changes from Classic DB that were swept when porting World Loot system from TBC-DB (changes were not ported to TBC-DB at the time)

-- Fixed loot table of creature 596 (Brainwashed Noble)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Brainwashed_Noble?oldid=1110892
-- Rates from UDB
DELETE FROM reference_loot_template_names WHERE entry=65278;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(65278, 'NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items');

-- Add Ref
DELETE FROM reference_loot_template WHERE entry=65278;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65278', '3902', '30', '1', '1', '1', '0', 'Staff of Nobles'),
('65278', '5967', '70', '1', '1', '1', '0', 'Girdle of Nobility');

-- Remove 65278	NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE item IN (3902,5967) AND entry != 65278;

-- Set NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18) to normal %, should not be 100% (other cases for 60120 are entry 599 and 14272)
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=596 AND item=60120;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='596' AND mincountOrRef='-65278';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('596', '65278', '100', '0', '-65278', '1', '0', 'NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items');

-- Fixed drop chance for item 1357 (Captain Sanders' Treasure Map) in Westfall because it previously was a 100% drop chance
-- Thanks Shubu for pointing. This closes #237 
-- Source: http://www.wowhead.com/item=1357#dropped-by
-- https://web.archive.org/web/20110629233505/http://www.wowhead.com:80/item=1357
UPDATE creature_loot_template SET ChanceOrQuestChance=15 WHERE item=1357 AND entry IN (515, 126);
UPDATE creature_loot_template SET ChanceOrQuestChance=11 WHERE item=1357 AND entry IN (456);
UPDATE creature_loot_template SET ChanceOrQuestChance=3 WHERE item=1357 AND entry IN (391, 127, 517, 458, 171, 513);
UPDATE creature_loot_template SET ChanceOrQuestChance=4.5 WHERE item=1357 AND entry IN (519, 520);

-- Fixed drop chance for item 5884 (Unpopped Darkmist Eye) in Dustwallow Marsh because it previously was a 100% drop chance
-- Source: http://wowhead.com/item=5884#dropped-by
-- https://web.archive.org/web/20141105084436/http://www.wowhead.com:80/item=5884
-- https://web.archive.org/web/20050108143744/http://wow.allakhazam.com:80/db/item.html?witem=5884
UPDATE creature_loot_template SET ChanceOrQuestChance=-45 WHERE item=5884 AND entry IN (4376, 4378); -- classic-db 4376, 4379
UPDATE creature_loot_template SET ChanceOrQuestChance=-35 WHERE item=5884 AND entry IN (4377, 4380, 4379); -- classic-db 4380, 4378

-- based on https://github.com/cmangos/classic-db/commit/40f1b36007907e0a6d94c6fe1cfea62d0a62752a - 599 part needs to be ported "again" sadly

-- Fixed loot table of creature 599 (Marisa du'Paige)
-- Removed related items from reference_loot_template
-- Source: http://wowwiki.wikia.com/wiki/Marisa_du%27Paige?direction=next&oldid=1478804
-- https://web.archive.org/web/20041227022927/http://wow.allakhazam.com:80/db/mob.html?wmob=599
-- Rates from UDB
DELETE FROM reference_loot_template_names WHERE entry=65279;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(65279, 'NPC LOOT (Rare NPC Loot) - Marisa du''Paige - Special Items');

-- Add Ref
DELETE FROM reference_loot_template WHERE entry=65279;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65279', '3019', '30', '1', '1', '1', '0', 'Noble''s Robe'),
('65279', '4660', '70', '1', '1', '1', '0', 'Walking Boots');

-- Remove 65278	NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE item IN (3019,4660) AND entry != 65279;

-- Set NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18) to normal %, should not be 100% (other cases for 60120 are entry 599 and 14272)
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=599 AND item=60120;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='599' AND mincountOrRef='-65279';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('599', '65279', '100', '0', '-65279', '1', '0', 'NPC LOOT (Rare NPC Loot) - Marisa du''Paige - Special Items');

-- Fixed loot table of creature 7057 (Digmaster Shovelphlange)
-- Removed related items from reference_loot_template
-- Source: http://wowwiki.wikia.com/wiki/Digmaster_Shovelphlange?direction=next&oldid=773095
-- https://web.archive.org/web/20050313133329/http://wow.allakhazam.com:80/db/mob.html?wmob=7057
DELETE FROM reference_loot_template_names WHERE entry=65280;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(65280, 'NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items');

-- Add Ref
DELETE FROM reference_loot_template WHERE entry=65280;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65280', '9375', '13', '1', '1', '1', '0', 'Expert Goldminer\'s Helmet'),
('65280', '9378', '17', '1', '1', '1', '0', 'Shovelphlange\'s Mining Axe'),
('65280', '9382', '70', '1', '1', '1', '0', 'Tromping Miner\'s Boots');

-- NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE item IN (9375,9378,9382) AND entry != 65280;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='7057' AND item IN (65280,60160,9375,9378,9382);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('7057', '65280', '100', '0', '-65280', '1', '0', 'NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items'),
('7057', '60160', '2', '0', '-60160', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 37-41) - (NPC Levels: 38)');

-- based on cmangos/classic-db@0332809#diff-fb1537d08eb70960928dd56ed369dee3R55
-- Mosh'Ogg Butcher (rare elite ogre, Stranglethorn Vale)
-- Source: http://www.wowwiki.com/Mosh%27Ogg_Butcher
DELETE FROM creature_loot_template WHERE entry=723 AND item IN (1680,60172); -- As this is no raremob anymore at some point, it doesnt have a unique reference_loot_template at the moment
	
-- Item 1680 (Headchopper) is not a world drop so removed it from reference_loot_template table
DELETE FROM reference_loot_template WHERE item IN (1680) AND entry != 65281;

DELETE FROM reference_loot_template_names WHERE entry=65281;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(65281, 'NPC LOOT (Rare NPC Loot) - Mosh''Ogg Butcher - Special Items');

-- Add Ref
DELETE FROM reference_loot_template WHERE entry=65281;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(65281, 1680, 20, 0, 1, 1, 0, 'Headchopper'), -- uncommon Headchopper IL 44 [39] 2H-Axe
(65281, 60172, 80, 0, -60172, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)');

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='723' AND mincountOrRef='-65281';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('723', '65281', '100', '0', '-65281', '1', '0', 'NPC LOOT (Rare NPC Loot) - Mosh''Ogg Butcher - Special Items');
