-- Add loot and correct some stats for scourge invasion instance bosses
-- https://wowwiki-archive.fandom.com/wiki/Scourge_Invasion#New_bosses

-- https://wowwiki-archive.fandom.com/wiki/Sever - 25
-- https://tbc.wowhead.com/npc=14682/sever#comments:id=3266938
-- https://web.archive.org/web/20060820172215/http://wow.allakhazam.com/db/mob.html?wmob=14682
UPDATE creature_template SET MinLevel=25, MaxLevel=25, MechanicImmuneMask=MechanicImmuneMask|4194304|33554432 WHERE entry=14682;
DELETE FROM creature_loot_template WHERE entry=14682 AND item IN (1484,4606,1205,1206,1705,1210,50600,60443,50611,60004,60432,60126,50502,60202);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14682, 1484, 0.1, 0, 1, 1, 0, 'Witching Stave'), -- Random Shadowfang Keep Item
(14682, 4606, 5.50, 2, 1, 1, 0, 'Spongy Morel'),
(14682, 1205, 2.41, 2, 1, 1, 0, 'Melon Juice'),
(14682, 1206, 0.69, 3, 1, 1, 0, 'Moss Agate'),
(14682, 1705, 0.34, 3, 1, 1, 0, 'Lesser Moonstone'),
(14682, 1210, 0.17, 3, 1, 1, 0, 'Shadowgem'),
(14682, 50600, 1, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(14682, 60443, 0.5, 0, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(14682, 50611, 1.5, 0, -50611, 1, 0, 'NPC LOOT (Healing Potion / Lesser Mana Potion)'),
(14682, 60004, 15, 0, -60004, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)'), -- 12-16%
(14682, 60440, 0.5, 0, -60440, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 24) - (NPC Levels: 25)'),
(14682, 60134, 2, 0, -60134, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)'),
(14682, 50502, 0.5, 0, -50502, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'); -- we dont have a level 21+ yet

-- https://wowwiki-archive.fandom.com/wiki/Scorn - 34
-- https://tbc.wowhead.com/npc=14693/scorn#comments:id=3265790
-- https://web.archive.org/web/20070224000319/http://wow.allakhazam.com:80/db/mob.html?wmob=14693
DELETE FROM conditions WHERE condition_entry=6089; -- spawn condition
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(6089, 12, 89, 0, 0, 0, 0, 'Event ID 89 Active'); -- go c id 4543
UPDATE creature_template SET MinLevel=34, MaxLevel=34, MovementType=2, MechanicImmuneMask=MechanicImmuneMask|4194304|33554432 WHERE entry=14693; -- Movement on Spawn
DELETE FROM creature_loot_template WHERE entry=14693 AND item IN (4634,7787,4606,1205,1529,1705,4306,2592,50601,60444,50612,60006,60152);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14693, 4634, 1, 0, 1, 1, 0, 'Iron Lockbox'),
(14693, 7787, 0.1, 0, 1, 1, 0, 'Resplendent Guardian'), -- Random Scarlet Monastery Item
(14693, 4606, 3, 2, 1, 1, 0, 'Delicious Cave Mold'),
(14693, 1205, 2, 2, 1, 1, 0, 'Sweet Nectar'),
(14693, 1529, 0.58, 3, 1, 1, 0, 'Jade'),
(14693, 1705, 0.14, 3, 1, 1, 0, 'Lesser Moonstone'),
(14693, 4306, 20, 4, 1, 4, 0, 'Silk Cloth'),
(14693, 2592, 3, 4, 2, 5, 0, 'Wool Cloth'),
(14693, 50601, 0.5, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'),
(14693, 60444, 0.2, 0, -60444, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)'),
(14693, 50612, 2, 0, -50612, 1, 0, 'NPC LOOT (Greater Healing Potion / Mana Potion)'),
(14693, 60006, 9, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)'), -- 8.8 - 9.12
(14693, 60152, 4, 0, -60152, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 33-37) - (NPC Levels: 34)');

-- https://wowwiki-archive.fandom.com/wiki/Lady_Falther%27ess - 40
-- https://tbc.wowhead.com/npc=14686/lady-faltheress#comments:id=3277093
UPDATE creature_template SET MinLevel=40, MaxLevel=40, Faction=35, SpeedWalk=1, MechanicImmuneMask=113983455 WHERE entry=14686;
UPDATE broadcast_text SET ChatTypeId=1 WHERE Id=12429;
DELETE FROM creature_loot_template WHERE entry=14686 AND item IN (4636,10572,4606,1205,1529,4306,2592,50601,60444,50612,60006,60158);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14686, 4636, 1, 0, 1, 1, 0, 'Strong Iron Lockbox'),
(14686, 10572, 0.1, 0, 1, 1, 0, 'Freezing Shard'), -- Random Razorfen Downs Item, was not in the list
(14686, 4606, 6, 2, 1, 1, 0, 'Delicious Cave Mold'),
(14686, 1205, 2, 2, 1, 1, 0, 'Sweet Nectar'),
(14686, 1529, 0.48, 3, 1, 1, 0, 'Jade'),
(14686, 4306, 20, 4, 1, 4, 0, 'Silk Cloth'),
(14686, 2592, 4, 4, 2, 2, 0, 'Mageweave Cloth'),
(14686, 50601, 0.5, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'),
(14686, 60444, 0.2, 0, -60444, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)'),
(14686, 50612, 2, 0, -50612, 1, 0, 'NPC LOOT (Greater Healing Potion / Mana Potion)'),
(14686, 60006, 9, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)'),
(14686, 60164, 2, 0, -60164, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)');
-- profession patterns level 40 range

-- https://wowwiki-archive.fandom.com/wiki/Balzaphon - 60
-- https://tbc.wowhead.com/npc=14684/balzaphon#comments:id=3266947
-- https://web.archive.org/web/20071021032732/http://wow.allakhazam.com/db/mob.html?wmob=14684
UPDATE creature_template SET MechanicImmuneMask=113983455 WHERE entry=14684;
DELETE FROM creature_loot_template WHERE entry=14684 AND item IN (18742,5759,8948,8766,7910,7909,14047,17682,17683,17413,17414,18600,22393,22890,22891,50505,60446,50615,50603,60008,49003,60280,60340,60294);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14684, 18742, 0.1, 0, 1, 1, 0, 'Stratholme Militia Shoulderguard'), -- Random Stratholme Item
(14684, 5759, 0.2, 0, 1, 1, 0, 'Thorium Lockbox'),
(14684, 8948, 6, 2, 1, 1, 0, 'Dried King Bolete'),
(14684, 8766, 2, 2, 1, 1, 0, 'Morning Glory Dew'),
(14684, 7910, 0.3, 3, 1, 1, 0, 'Star Ruby'),
(14684, 7909, 0.2, 3, 1, 1, 0, 'Aquamarine'),
(14684, 14047, 12, 4, 2, 5, 0, 'Runecloth'),
(14684, 17682, 0.01, 5, 1, 1, 0, 'Book: Gift of the Wild'), -- built a refloot for these, but doesnt seem to easy, condition with npc level as restriction?
(14684, 17683, 0.01, 5, 1, 1, 0, 'Book: Gift of the Wild II'),
(14684, 17413, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(14684, 17414, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Fortitude II'),
(14684, 18600, 0.01, 5, 1, 1, 0, 'Tome of Arcane Brilliance'),
(14684, 22393, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Shadow Protection'),
(14684, 22890, 0.01, 5, 1, 1, 0, 'Tome of Frost Ward V'),
(14684, 22891, 0.01, 5, 1, 1, 0, 'Grimoire of Shadow Ward IV'),
(14684, 50505, 0.5, 0, -50505, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 19-52)'),
(14684, 60446, 0.1, 1, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'), -- 16 slot bag refloot with conditioned game_event bags (Pumpkin Bag) (revamp loot for c.1853 refloot 5759)
(14684, 50615, 2, 0, -50615, 1, 0, 'NPC LOOT (Major Healing Potion / Major Mana Potion)'),
(14684, 50603, 1, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(14684, 60008, 4, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(14684, 49003, 0.3, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+)'),
(14684, 60280, 0.1, 0, -60280, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60)'),
(14684, 60340, 0.01, 0, -60340, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60)'),
(14684, 60294, 2, 0, -60294, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)');

-- https://wowwiki-archive.fandom.com/wiki/Revanchion - 60
-- https://tbc.wowhead.com/npc=14690/revanchion#comments:id=3266955
-- https://web.archive.org/web/20071102213214/http://wow.allakhazam.com/db/mob.html?wmob=14690
UPDATE creature_template SET MechanicImmuneMask=113983455 WHERE entry=14690;
DELETE FROM creature_loot_template WHERE entry=14690 AND item IN (22224,18338,18332,18335,5759,7972,12808,8948,8766,14047,60446,50603,60008,60280,60340,60294);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14690, 22224, -20, 0, 1, 1, 0, 'Jeering Spectre''s Essence'),
(14690, 18338, 0.1, 0, 1, 1, 0, 'Wand of Arcane Potency'), -- Random Dire Maul Item
(14690, 18332, 0.5, 0, 1, 1, 0, 'Libram of Rapidity'),
(14690, 18335, 0.5, 0, 1, 1, 0, 'Pristine Black Diamond'),
(14690, 5759, 0.5, 0, 1, 1, 0, 'Thorium Lockbox'),
(14690, 7972, 1.33, 0, 1, 1, 0, 'Ichor of Undeath'),
(14690, 12808, 1.33, 0, 1, 1, 0, 'Essence of Undeath'),
(14690, 8948, 6, 2, 1, 1, 0, 'Dried King Bolete'),
(14690, 8766, 2, 2, 1, 1, 0, 'Morning Glory Dew'),
(14690, 14047, 10, 3, 2, 5, 0, 'Runecloth'),
(14690, 60446, 0.1, 1, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'),
(14690, 50603, 0.5, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(14690, 60008, 3, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(14690, 60280, 0.1, 0, -60280, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60)'),
(14690, 60340, 0.01, 0, -60340, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60)'),
(14690, 60294, 2, 0, -60294, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)');

-- https://wowwiki-archive.fandom.com/wiki/Lord_Blackwood - 60
-- https://tbc.wowhead.com/npc=14695/lord-blackwood#drops;mode:normal
-- https://web.archive.org/web/20071025053942/http://wow.allakhazam.com/db/mob.html?wmob=14695
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304|33554432 WHERE entry=14695;	
DELETE FROM creature_loot_template WHERE entry=14695 AND item IN (22526,18698,5759,18335,7972,12808,8948,8766,7910,7909,14047,17682,17683,17413,17414,18600,22393,22890,22891,50505,60446,50615,50603,60008,49003,60280,60340,60294);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(14695, 22526, 33, 0, 2, 4, 0, 'Bone Fragments'),
(14695, 18698, 0.1, 0, 1, 1, 0, 'Tattered Leather Hood'), -- Random Scholomance Item
(14695, 5759, 0.13, 0, 1, 1, 0, 'Thorium Lockbox'),
(14695, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(14695, 7972, 2.35, 0, 1, 1, 0, 'Ichor of Undeath'),
(14695, 12808, 1.2, 0, 1, 1, 0, 'Essence of Undeath'),
(14695, 8948, 2, 2, 1, 1, 0, 'Dried King Bolete'),
(14695, 8766, 1, 2, 1, 1, 0, 'Morning Glory Dew'),
(14695, 7910, 0.13, 3, 1, 1, 0, 'Star Ruby'),
(14695, 7909, 0.18, 3, 1, 1, 0, 'Aquamarine'),
(14695, 14047, 5, 4, 2, 5, 0, 'Runecloth'),
(14695, 17682, 0.01, 5, 1, 1, 0, 'Book: Gift of the Wild'), -- built a refloot for these, but doesnt seem to easy, condition with npc level as restriction?
(14695, 17683, 0.01, 5, 1, 1, 0, 'Book: Gift of the Wild II'),
(14695, 17413, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Fortitude'),
(14695, 17414, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Fortitude II'),
(14695, 18600, 0.01, 5, 1, 1, 0, 'Tome of Arcane Brilliance'),
(14695, 22393, 0.01, 5, 1, 1, 0, 'Codex: Prayer of Shadow Protection'),
(14695, 22890, 0.01, 5, 1, 1, 0, 'Tome of Frost Ward V'),
(14695, 22891, 0.01, 5, 1, 1, 0, 'Grimoire of Shadow Ward IV'),
(14695, 50505, 0.5, 0, -50505, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 19-52)'),
(14695, 60446, 0.1, 1, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'), -- 16 slot bag refloot with conditioned game_event bags (Pumpkin Bag) (revamp loot for c.1853 refloot 5759)
(14695, 50615, 1, 0, -50615, 1, 0, 'NPC LOOT (Major Healing Potion / Major Mana Potion)'),
(14695, 50603, 0.5, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(14695, 60008, 3.5, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(14695, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+)'),
(14695, 60280, 0.1, 0, -60280, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60)'),
(14695, 60340, 0.01, 0, -60340, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60)'),
(14695, 60294, 2, 0, -60294, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)');

-- Bonus: Classic Darkmoon Cards
-- 2-4 drop from normal highlevel mobs ~50+
-- 5-8 drop from elite highlevel mobs ~50+
DELETE FROM reference_loot_template_names WHERE entry IN (49003,49004,60446);
INSERT INTO reference_loot_template_names (entry, name) VALUES
(49003, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+)'),
(49004, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+)'),
(60446, '16 Slot Bag - (NPC Levels: 48+)');

DELETE FROM reference_loot_template WHERE entry IN (49003,49004,60446);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- 49003 Beasts, Elementals, Portals, Warlords 5-8
(49003, 19233, 0, 1, 1, 1, 0, 'Five of Beasts'),
(49003, 19234, 0, 1, 1, 1, 0, 'Six of Beasts'),
(49003, 19235, 0, 1, 1, 1, 0, 'Seven of Beasts'),
(49003, 19236, 0, 1, 1, 1, 0, 'Eight of Beasts'),

(49003, 19272, 0, 1, 1, 1, 0, 'Five of Elementals'),
(49003, 19273, 0, 1, 1, 1, 0, 'Six of Elementals'),
(49003, 19274, 0, 1, 1, 1, 0, 'Seven of Elementals'),
(49003, 19275, 0, 1, 1, 1, 0, 'Eight of Elementals'),

(49003, 19281, 0, 1, 1, 1, 0, 'Five of Portals'),
(49003, 19282, 0, 1, 1, 1, 0, 'Six of Portals'),
(49003, 19283, 0, 1, 1, 1, 0, 'Seven of Portals'),
(49003, 19284, 0, 1, 1, 1, 0, 'Eight of Portals'),

(49003, 19262, 0, 1, 1, 1, 0, 'Five of Warlords'),
(49003, 19263, 0, 1, 1, 1, 0, 'Six of Warlords'),
(49003, 19264, 0, 1, 1, 1, 0, 'Seven of Warlords'),
(49003, 19265, 0, 1, 1, 1, 0, 'Eight of Warlords'),
-- 49004 Beasts, Elementals, Portals, Warlords 2-4
(49004, 19230, 0, 1, 1, 1, 0, 'Two of Beasts'),
(49004, 19231, 0, 1, 1, 1, 0, 'Three of Beasts'),
(49004, 19232, 0, 1, 1, 1, 0, 'Four of Beasts'),

(49004, 19269, 0, 1, 1, 1, 0, 'Two of Elementals'),
(49004, 19270, 0, 1, 1, 1, 0, 'Three of Elementals'),
(49004, 19271, 0, 1, 1, 1, 0, 'Four of Elementals'),

(49004, 19278, 0, 1, 1, 1, 0, 'Two of Portals'),
(49004, 19279, 0, 1, 1, 1, 0, 'Three of Portals'),
(49004, 19280, 0, 1, 1, 1, 0, 'Four of Portals'),

(49004, 19259, 0, 1, 1, 1, 0, 'Two of Warlords'),
(49004, 19260, 0, 1, 1, 1, 0, 'Three of Warlords'),
(49004, 19261, 0, 1, 1, 1, 0, 'Four of Warlords'),

(60446, 4500, 0, 1, 1, 1, 0, 'Traveler''s Backpack'),
(60446, 20400, 0, 1, 1, 1, 162, 'Pumpkin Bag'); -- Event 12 active


DELETE FROM creature_loot_template WHERE item IN (49004,19230,19231,19232,19233,19234,19235,19236,19269,19270,19271,19272,19273,19274,19275,19278,19279,19280,19281,19282,19283,19284,19259,19260,19261,19262,19263,19264,19265) AND entry IN (
-- convert most farmed normal mobs (wowhead) to only drop 2-4, most had all cards
1783, -- skeletal-flayer
4494, -- scarlet-spellbinder
6200, -- legashi-satyr
6201, -- legashi-rogue
7107, -- jadefire-trickster
7108, -- jadefire-betrayer
7111, -- jadefire-hellcaller
7156, -- deadwood-den-watcher
7438, -- winterfall-ursa
7439, -- winterfall-shaman
7440, -- winterfall-den-watcher
7441, -- winterfall-totemic
7442, -- winterfall-pathfinder
8896, -- shadowforge-peasant
8904, -- shadowforge-senator
8920, -- weapon-technician
9862, -- jaedenar-legionnaire
10390, -- skeletal-guardian
10391, -- skeletal-berserker
10485, -- risen-aberration
10916, -- winterfall-runner
11880, -- twilight-avenger
11881, -- twilight-geolord
11882, -- twilight-stonecaller
11883, -- twilight-master
12178, -- tortured-druid
12179, -- tortured-sentinel
13276, -- wildspawn-imp
15213 -- twilight-overlord
);

INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 49004, 0.1, 1, -49004, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+)' FROM creature_template WHERE entry IN (
1783,4494,6200,6201,7107,7108,7111,7156,7438,7439,7440,7441,7442,8896,8904,8920,9862,10390,10391,10485,10916,11880,11881,11882,11883,12178,12179,13276,15213
);

DELETE FROM dbscripts_on_go_template_use WHERE id IN (157819);
INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(157819, 0, 0, 14, 28533, 0, 0, 14686, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Holding Pen - Lady Falther''ess 14686 - Remove Transform 28533'),
(157819, 0, 1, 22, 21, 0, 0, 14686, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Holding Pen - Lady Falther''ess 14686 - Set Faction 21'),
(157819, 0, 2, 0, 0, 0, 0, 14686, 20, 0, 12429, 0, 0, 0, 0, 0, 0, 0, 0, 'Holding Pen - Lady Falther''ess 14686 - Yell');

DELETE FROM creature_movement_template WHERE entry IN (14693);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(14693, 1, 1, 1798.01, 1312.39, 18.69, 100, 0, 0),
(14693, 1, 2, 1805.39, 1323.66, 18.91, 100, 0, 0),
(14693, 1, 3, 1797.70, 1383.27, 18.76, 100, 0, 0),
(14693, 1, 4, 1805.39, 1323.66, 18.91, 100, 0, 0),
(14693, 1, 5, 1798.01, 1312.39, 18.69, 100, 0, 0),
(14693, 1, 6, 1798.01, 1223.17, 18.274, 100, 0, 0); -- spawn point

DELETE FROM dbscripts_on_creature_death WHERE id IN (4543);
INSERT INTO dbscripts_on_creature_death (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(4543, 1000, 0, 10, 14693, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1798.01, 1223.17, 18.274, 4.71161, 6089, 'Bloodmage Thalnos - Spawn Scorn on Death (Event 89');

UPDATE creature SET position_x=-106.303, position_y=551.276, position_z=-4.39701, orientation=6.08718 WHERE id=14690;
