-- Correct loot for open world drink/food gos
-- followup to https://github.com/cmangos/tbc-db/commit/8047e36f8a0e056fd13a7ad421db573cd37c0e5f
DELETE FROM gameobject_loot_template WHERE entry IN(
2502, -- 3658
2601, -- 3659
2578, -- 3662
2577, -- 3690
2574, -- 3691
2572, -- 3693
2575, -- 3694
2600, -- 3695
2579, -- 3705
2602, -- 3706
9955, -- 3707
2510, -- 3719
9956, -- 153470
9957, -- 153471
2509, -- 153472
2508 -- 153473
);

INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- https://tbc.wowhead.com/object=3658/water-barrel
(2502, 159, 100, 0, 1, 5, 0, 'Refreshing Spring Water'),
-- https://tbc.wowhead.com/object=3659/barrel-of-melon-juice
(2601, 1205, 100, 0, 2, 5, 0, 'Melon Juice'),
-- https://tbc.wowhead.com/object=3662/food-crate
(2578, 4592, 0, 1, 2, 4, 0, 'Longjaw Mud Snapper'),
(2578, 4537, 0, 1, 2, 4, 0, 'Tel\'Abim Banana'),
(2578, 414, 0, 1, 2, 4, 0, 'Dalaran Sharp'),
(2578, 2287, 0, 1, 2, 4, 0, 'Haunch of Meat'),
(2578, 4541, 0, 1, 2, 4, 0, 'Freshly Baked Bread'),
-- https://tbc.wowhead.com/object=3690/food-crate
(2577, 2287, 100, 0, 2, 4, 0, 'Haunch of Meat'),
-- https://tbc.wowhead.com/object=3691/food-crate
(2574, 4592, 100, 0, 2, 4, 0, 'Longjaw Mud Snapper'),
-- https://tbc.wowhead.com/object=3693/food-crate
(2572, 4541, 100, 0, 2, 4, 0, 'Freshly Baked Bread'),
-- https://tbc.wowhead.com/object=3694/food-crate
(2575, 4537, 100, 0, 2, 4, 0, 'Tel\'Abim Banana'),
-- https://tbc.wowhead.com/object=3695/food-crate
(2600, 3770, 0, 1, 2, 4, 0, 'Mutton Chop'),
(2600, 4593, 0, 1, 2, 4, 0, 'Bristle Whisker Catfish'),
(2600, 4542, 0, 1, 2, 4, 0, 'Moist Cornbread'),
(2600, 4538, 0, 1, 2, 4, 0, 'Snapvine Watermelon'),
(2600, 422, 0, 1, 2, 4, 0, 'Dwarven Mild'),
-- https://tbc.wowhead.com/object=3705/barrel-of-milk
(2579, 1179, 100, 0, 2, 5, 0, 'Ice Cold Milk'),
-- https://tbc.wowhead.com/object=3706/barrel-of-sweet-nectar
(2602, 1708, 100, 0, 2, 5, 0, 'Sweet Nectar'),
-- https://tbc.wowhead.com/object=3707/food-crate
(9955, 8364, 0, 1, 2, 4, 0, 'Mithril Head Trout'),
(9955, 1707, 0, 1, 2, 4, 0, 'Stormwind Brie'),
(9955, 4544, 0, 1, 2, 4, 0, 'Mulgore Spice Bread'),
(9955, 3771, 0, 1, 2, 4, 0, 'Wild Hog Shank'),
(9955, 4539, 0, 1, 2, 4, 0, 'Goldenbark Apple'),
-- https://tbc.wowhead.com/object=3719/food-crate
(2510, 4536, 40, 1, 1, 4, 0, 'Shiny Red Apple'),
(2510, 2070, 0, 1, 2, 4, 0, 'Darnassian Bleu'),
(2510, 787, 0, 1, 2, 4, 0, 'Slitherskin Mackerel'),
(2510, 4540, 0, 1, 2, 4, 0, 'Tough Hunk of Bread'),
-- https://tbc.wowhead.com/object=153470/food-crate
(9956, 4602, 0, 1, 2, 4, 0, 'Moon Harvest Pumpkin'),
(9956, 3927, 0, 1, 2, 4, 0, 'Fine Aged Cheddar'),
(9956, 4599, 0, 1, 2, 4, 0, 'Cured Ham Steak'),
(9956, 6887, 0, 1, 2, 4, 0, 'Spotted Yellowtail'),
(9956, 4601, 0, 1, 2, 4, 0, 'Soft Banana Bread'),
-- https://tbc.wowhead.com/object=153471/food-crate
(9957, 8950, 0, 1, 2, 4, 0, 'Homemade Cherry Pie'),
(9957, 8932, 0, 1, 2, 4, 0, 'Alterac Swiss'),
(9957, 8953, 0, 1, 2, 4, 0, 'Deep Fried Plantains'),
(9957, 8957, 0, 1, 2, 4, 0, 'Spinefin Halibut'),
(9957, 8952, 0, 1, 2, 4, 0, 'Roasted Quail'),
-- https://tbc.wowhead.com/object=153472/food-crate
(2509, 4604, 100, 0, 1, 4, 0, 'Forest Mushroom Cap'),
-- https://tbc.wowhead.com/object=153473/food-crate
(2508, 2070, 100, 0, 2, 4, 0, 'Darnassian Bleu');
