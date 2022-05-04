-- https://web.archive.org/web/20071226221101/http://wow.allakhazam.com/db/mob.html?wmob=2186
-- https://classic.wowhead.com/npc=2186/carnivous-the-breaker#drops;100
-- Revamp Loot Template for Carnivous the Breaker 2186 & add more spawn locations
-- Part of https://github.com/cmangos/issues/issues/1858
DELETE FROM creature WHERE id=2186 AND guid IN (36938,51900,51901,51902,51903,51904); -- Part of pool 1214 (Carnivous the Breaker - 2186)
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(51900, 2186, 1, 5863.11, 311.4, 20.81, 0.333024, 7200, 10800, 1, 1),
(51901, 2186, 1, 4904.43, 328.846, 36.7678, 6.16146, 7200, 10800, 1, 1), -- old 36938, keep all data as ccsdb does not indicate towards far movement
(51902, 2186, 1, 4635.37, 136.123, 59.4614, 1.12623, 7200, 10800, 1, 1),
(51903, 2186, 1, 4902.5, 327.758, 36.8694, 1.33243, 7200, 10800, 1, 1),
(51904, 2186, 1, 5998.99, 363.164, 21.5867, 0.183858, 7200, 10800, 1, 1);

DELETE FROM creature_loot_template WHERE entry=2186;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2186, 2589, 19, 0, 1, 3, 0, 'Linen Cloth'), -- taken as was
(2186, 2592, 27.1739, 0, 1, 2, 0, 'Wool Cloth'), -- taken as was
(2186, 4537, 4, 0, 1, 1, 0, 'Tel\'Abim Banana'), -- converted from meat, was probably from chest and assumed to be his loot
(2186, 1179, 3.8, 0, 1, 1, 0, 'Ice Cold Milk'), -- taken as was
(2186, 1210, 0.5, 0, 1, 1, 0, 'Shadowgem'), -- unsure about gems for now, if they are a group like potions for humanoids
(2186, 1206, 0.08, 0, 1, 1, 0, 'Moss Agate'),
(2186, 5578, 0.26, 0, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'), -- taken as was, 50505 needs to be split up further
(2186, 6342, 0.07, 0, 1, 1, 0, 'Formula: Enchant Chest - Minor Mana'), -- new, added for 50505 purpose
(2186, 50610, 2, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(2186, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(2186, 50502, 0.3, 0, -50502, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes) - (NPC Levels: 6-20)'), -- taken as was
(2186, 50600, 0.5, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'), -- was 100% befor lol
(2186, 60003, 5, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'), -- taken as was
(2186, 60116, 100, 0, -60116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'); -- upgraded from 15-16 to 16

-- Remove unreffed green items that he and other rare mobs still had in their tables.

-- (2186, 10287, 0.7, 0, 1, 1, 0, 'Greenweave Mantle');
DELETE FROM creature_loot_template WHERE item=10287 AND entry IN (7017,2192,2186); -- included in 60129-60139

-- (2186, 9812, 0.6, 0, 1, 1, 0, 'Fortified Cloak');
DELETE FROM creature_loot_template WHERE item=9812 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 9781, 0.5, 0, 1, 1, 0, 'Bandit Pants');
DELETE FROM creature_loot_template WHERE item=9781 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 9772, 0.5, 0, 1, 1, 0, 'Greenweave Leggings');
DELETE FROM creature_loot_template WHERE item=9772 AND entry IN (7017,2192,2186); -- included in 60131-60141

-- (2186, 6582, 0.8, 0, 1, 1, 0, 'Scouting Boots');
DELETE FROM creature_loot_template WHERE item=6582 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 6576, 0.8, 0, 1, 1, 0, 'Defender Girdle');
DELETE FROM creature_loot_template WHERE item=6576 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 6574, 1, 0, 1, 1, 0, 'Defender Bracers');
DELETE FROM creature_loot_template WHERE item=6574 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 6570, 0.8, 0, 1, 1, 0, 'Shimmering Sash');
DELETE FROM creature_loot_template WHERE item=6570 AND entry IN (7017,2186); -- included in 60121-60131

-- (2186, 6565, 0.9, 0, 1, 1, 0, 'Shimmering Gloves');
DELETE FROM creature_loot_template WHERE item=6565 AND entry IN (7017,2186); -- included in 60121-60131
