-- Rework loot of NPC 2184 (Lady Moongazer) in Darkshore
-- Thanks @adellaci for reporting
-- Sources: https://classic.wowhead.com/npc=2184/lady-moongazer
-- https://web.archive.org/web/20060114031736/http://wow.allakhazam.com/db/mob.html?wmob=2184
-- This closes https://github.com/cmangos/issues/issues/1945
DELETE FROM creature_loot_template WHERE entry=2184;
INSERT INTO creature_loot_template VALUES
(2184, 858, 1.1, 0, 1, 1, 0, 'Lesser Healing Potion'),
(2184, 1179, 2.5157, 0, 1, 1, 0, 'Ice Cold Milk'),
(2184, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(2184, 2455, 0.87, 0, 1, 1, 0, 'Minor Mana Potion'),
(2184, 2589, 21, 0, 1, 1, 0, 'Linen Cloth'),
(2184, 2592, 19, 0, 1, 1, 0, 'Wool Cloth'),
(2184, 4537, 4.74, 0, 1, 1, 0, 'Tel\'Abim Banana'),
(2184, 4605, 4, 0, 1, 1, 0, 'Red-speckled Mushroom'),
(2184, 50502, 0.8, 0, -50502, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'),
(2184, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(2184, 60003, 9, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(2184, 60118, 100, 0, -60118, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-20) - (NPC Levels: 17)'),
(2184, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');
