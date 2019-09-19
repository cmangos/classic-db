-- Improve Solid Chest 153453 Loot due to Sniff Data
-- Should only have a Chance for Green, not 100% maybe 10% & in same group as all other equipable items with a maxchance of about ~30%
UPDATE gameobject_template SET mingold=800, maxgold=1600 WHERE entry=153453;
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8932; -- Alterac Swiss
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8766; -- Morning Glory Dew
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=1645; -- Moonberry Juice
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=3927; -- Fine Aged Cheddar
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=4599; -- Cured Ham Steak
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=4601; -- Soft Banana Bread
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=4602; -- Moon Harvest Pumpkin
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=4608; -- Raw Black Truffle
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8948; -- Dried King Bolete
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8950; -- Homemade Cherry Pie
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8952; -- Roasted Quail
UPDATE gameobject_loot_template SET maxcount=3 WHERE entry=9932 AND item=8953; -- Deep Fried Plantains

-- Effectivly Remove Group 3 (Gray Items) and Add Potion Group for it.
DELETE FROM gameobject_loot_template WHERE entry=9932 AND item IN (3937,3939,3940,3941,3942,3962,3964,3965,3967,3968,3986,4001,4002,4003,4004,4007,4017,4019,4020,4021,4022,4024,4025); -- Included in 60007
DELETE FROM gameobject_loot_template WHERE entry=9932 AND item IN (3944,3945,3946,3947,3948,3949,3950,3951,3969,3970,3971,3972,3973,3974,3975,3976,
3987,3990,3992,3993,3994,3995,3996,3997,3998,3999,8080,8081,8082,8083,8084,8085,8086,8752,8753,8754,8755,13816,13817,13818,13819,13820,13821,13822,13823,13824,13825); -- Included in 60008
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- Add Mana / Healing Potion Group
(9932, 1710, 10, 3, 2, 3, 0, 'Greater Healing Potion'),
(9932, 3928, 20, 3, 2, 3, 0, 'Superior Healing Potion'),
(9932, 3827, 10, 3, 2, 3, 0, 'Mana Potion'),
(9932, 6149, 20, 3, 2, 3, 0, 'Greater Mana Potion'),

-- Ore,Herb,Leather one group
(9932, 4305, 0, 2, 1, 1, 0, 'Bolt of Silk Cloth'),
(9932, 4338, 0, 2, 2, 3, 0, 'Mageweave Cloth'),
(9932, 4339, 0, 2, 1, 1, 0, 'Bolt of Mageweave'),
(9932, 2772, 0, 2, 3, 3, 0, 'Iron Ore'),
(9932, 3858, 0, 2, 2, 2, 0, 'Mithril Ore'),
(9932, 7911, 0, 2, 1, 1, 0, 'Truesilver Ore'),
(9932, 2838, 0, 2, 3, 3, 0, 'Heavy Stone'),
(9932, 7912, 0, 2, 3, 3, 0, 'Solid Stone'),
(9932, 6037, 0, 2, 1, 2, 0, 'Truesilver Bar'),
(9932, 4625, 0, 2, 1, 1, 0, 'Firebloom'),
(9932, 8831, 0, 2, 2, 3, 0, 'Purple Lotus'),
(9932, 8838, 0, 2, 2, 3, 0, 'Sungrass'),
(9932, 8839, 0, 2, 2, 3, 0, 'Blindweed'),
(9932, 13463, 0, 2, 1, 1, 0, 'Dreamfoil'),
(9932, 13464, 0, 2, 1, 1, 0, 'Golden Sansam'),
(9932, 13465, 0, 2, 1, 1, 0, 'Mountain Silversage'),
(9932, 4234, 0, 2, 2, 3, 0, 'Heavy Leather'),
(9932, 8169, 0, 2, 1, 2, 0, 'Thick Hide'),
(9932, 8146, 0, 2, 1, 1, 0, 'Wicked Claw'),
-- should share groupid/chance (not possible atm without creating new refloot) but still better than 100% chance
(9932, 60007, 5, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(9932, 60008, 5, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)');