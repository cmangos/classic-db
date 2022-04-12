-- https://github.com/vmangos/core/commit/5d1acfdb6cecbb22cf78a5d5b75e6347f8219698

-- Correct drop rate of Helcular's Rod
-- https://tbc.wowhead.com/item=3708/helculars-rod#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-6 WHERE item=3708 && entry IN (2248, 2249, 2250, 2251); -- -8

-- Correct drop rate of Murloc Head
-- https://tbc.wowhead.com/item=3716/murloc-head#comments
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=3716 && entry IN (2377, 2375, 2374, 2376, 14276); -- -80

-- Correct drop rate of Young Crocolisk Skin
-- https://tbc.wowhead.com/item=3397/young-crocolisk-skin#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE item=3397; -- -80

-- Correct drop rate of Satyr Horns
-- https://tbc.wowhead.com/item=5481/satyr-horns#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-50 WHERE item=5481 && entry IN (3771, 3770, 3767, 3762, 3765, 3759, 3758, 3763, 3755, 3752, 3754, 3757, 10647, 3898, 4619, 3899, 3900); -- -80

-- Correct drop rate of Corroded Shrapnel
-- https://tbc.wowhead.com/item=5664/corroded-shrapnel#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=5664 && entry IN (4029, 4028, 4030); -- -80

-- Correct drop rate of Crystalized Scales
-- https://tbc.wowhead.com/item=5675/crystalized-scales#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=5675 && entry IN (4044, 4041, 4042, 4147); -- -80

-- Correct drop rate of Smoldering Embers
-- https://tbc.wowhead.com/item=5659/smoldering-embers#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item=5659; -- -80

-- Correct drop rate of Intact Elemental Bracer
-- https://tbc.wowhead.com/item=12220/intact-elemental-bracer#objective-of
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=12220 && entry IN (3917,12759); -- -80

-- Correct drop rate of Battleworn Axe
-- https://tbc.wowhead.com/item=3014/battleworn-axe#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-50 WHERE item=3014 && entry IN (440, 485, 437, 4463, 615, 435, 4064, 4065, 4462, 436, 4464); -- -80

-- Correct drop rate of Snapjaw Crocolisk Skin
-- https://tbc.wowhead.com/item=4104/snapjaw-crocolisk-skin#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE item=4104 AND entry=1152; -- -80

-- Correct drop rate of Gaffer Jack
-- https://tbc.wowhead.com/item=6717/gaffer-jack#comments:id=3162385
UPDATE reference_loot_template SET ChanceOrQuestChance=-10 WHERE item=6717 AND entry=11104; -- -25

-- Unstuck Highland Razormaw
UPDATE creature SET position_x=-3114.49, position_y=-3255.39, position_z=65.3258  WHERE guid=9981;

-- Correct race requirements for quests
-- Nightelf Only
UPDATE quest_template SET RequiredRaces=8 WHERE entry IN (
6344, -- https://tbc.wowhead.com/quest=6344/nessa-shadowsong#comments:id=2769698
6341
); -- 1101
-- UPDATE quest_template SET RequiredRaces=68 WHERE entry IN (6387, 6391, 6388, 6392); -- already corrected
-- UPDATE quest_template SET RequiredRaces=16 WHERE entry IN (6321, 6323, 6322, 6324); -- same
-- Human Only
UPDATE quest_template SET RequiredRaces=1 WHERE entry IN (6181, 6281, 6261, 6285); -- 1101

-- Unstuck Thistle Bear
UPDATE creature SET position_x=7065.88, position_y=54.4393, position_z=15.3227 WHERE guid=37115;
