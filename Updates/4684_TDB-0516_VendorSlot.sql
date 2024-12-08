-- Correct more vendor `slot` values

-- ["Krinkle Goodsteel"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 5411 AND `item` = 2901; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 5411 AND `item` = 5956; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 5411 AND `item` = 2880; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 5411 AND `item` = 3466; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 5411 AND `item` = 3857; -- [5] 6 flipped?
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 5411 AND `item` = 18567; -- [6] 5 flipped?
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 5411 AND `item` = 6047; -- [7]

-- ["Plugger Spazzring"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 9499 AND `item` = 11325; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 9499 AND `item` = 11444; -- [2]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 9499 AND `item` = 13483; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 9499 AND `item` = 15759; -- [11]

-- ["Technician Halmaha"] = { - https://www.wowhead.com/tbc/npc=27711/technician-halmaha
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 133 AND `item` = 5956; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 133 AND `item` = 2901; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 133 AND `item` = 4399; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 133 AND `item` = 4400; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 133 AND `item` = 2880; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 133 AND `item` = 3466; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 133 AND `item` = 10648; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 133 AND `item` = 10647; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 133 AND `item` = 4404; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 133 AND `item` = 4361; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 133 AND `item` = 4363; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 133 AND `item` = 4371; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 133 AND `item` = 4382; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 133 AND `item` = 4357; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 133 AND `item` = 4364; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 133 AND `item` = 4389; -- [11]

-- ["Kaja"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3322; -- 311
DELETE FROM `npc_vendor` WHERE `entry` = 3322;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(3322, 5441, 1, 'Small Shot Pouch'),
(3322, 2509, 2, 'Ornate Blunderbuss'),
(3322, 2511, 3, 'Hunter\'s Boomstick'),
(3322, 2516, 4, 'Light Shot'),
(3322, 2519, 5, 'Heavy Shot'),
(3322, 3023, 6, 'Large Bore Blunderbuss'),
(3322, 3024, 7, 'BKP 2700 "Enforcer"'),
(3322, 3033, 9, 'Solid Shot'),
(3322, 11284, 10, 'Accurate Slugs');

-- ["Stomper Kreeg"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 14322 AND `item` = 18287; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 14322 AND `item` = 18269; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 14322 AND `item` = 18284; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 14322 AND `item` = 18288; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 14322 AND `item` = 9260; -- [5]

-- ["Narj Deepslice"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2814; -- 1200
DELETE FROM `npc_vendor` WHERE `entry` = 2814;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(2814, 117, 0, 0, 1, 0, 'Tough Jerky'),
(2814, 2287, 0, 0, 2, 0, 'Haunch of Meat'),
(2814, 3770, 0, 0, 3, 0, 'Mutton Chop'),
(2814, 3771, 0, 0, 4, 0, 'Wild Hog Shank'),
(2814, 4599, 0, 0, 5, 0, 'Cured Ham Steak'),
(2814, 8952, 0, 0, 6, 0, 'Roasted Quail'),
(2814, 4609, 0, 0, 7, 0, 'Recipe: Barbecued Buzzard Wing');

-- ["Hammon Karwn"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2810; -- 108
DELETE FROM `npc_vendor` WHERE `entry` = 2810;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(2810, 12228, 0, 0, 1, 0, 'Recipe: Roast Raptor'),
(2810, 5973, 1, 3600, 33, 0, 'Pattern: Barbaric Leggings'),
-- (2810, 3777, 0, 0, 35, 0, 'Lethargy Root'), -- stopped being sold
(2810, 2901, 0, 0, 6, 0, 'Mining Pick'),
(2810, 7005, 0, 0, 2, 0, 'Skinning Knife'),
(2810, 6256, 0, 0, 3, 0, 'Fishing Pole'),
(2810, 2880, 0, 0, 15, 0, 'Weak Flux'),
(2810, 6217, 0, 0, 3, 0, 'Copper Rod'),
(2810, 3466, 0, 0, 16, 0, 'Strong Flux'),
(2810, 3857, 0, 0, 17, 0, 'Coal'),
(2810, 2320, 0, 0, 7, 0, 'Coarse Thread'),
(2810, 2321, 0, 0, 8, 0, 'Fine Thread'),
(2810, 4291, 0, 0, 9, 0, 'Silken Thread'),
(2810, 8343, 0, 0, 10, 0, 'Heavy Silken Thread'),
(2810, 2678, 0, 0, 12, 0, 'Mild Spices'),
(2810, 2692, 0, 0, 13, 0, 'Hot Spices'),
(2810, 3713, 0, 0, 14, 0, 'Soothing Spices'),
(2810, 2928, 0, 0, 18, 0, 'Dust of Decay'),
(2810, 2604, 0, 0, 19, 0, 'Red Dye'),
(2810, 2325, 0, 0, 20, 0, 'Black Dye'),
(2810, 4341, 0, 0, 21, 0, 'Yellow Dye'),
(2810, 4342, 0, 0, 22, 0, 'Purple Dye'),
(2810, 4340, 0, 0, 23, 0, 'Gray Dye'),
(2810, 3371, 0, 0, 24, 0, 'Empty Vial'),
(2810, 3372, 0, 0, 25, 0, 'Leaded Vial'),
(2810, 8925, 0, 0, 26, 0, 'Crystal Vial'),
(2810, 4289, 0, 0, 28, 0, 'Salt'),
(2810, 4399, 0, 0, 29, 0, 'Wooden Stock'),
(2810, 4400, 0, 0, 30, 0, 'Heavy Stock'),
(2810, 6530, 0, 0, 31, 0, 'Nightcrawlers'),
(2810, 6532, 0, 0, 32, 0, 'Bright Baubles');

-- ["Jannos Ironwill"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 1471; -- 318
DELETE FROM `npc_vendor` WHERE `entry` = 1471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1471, 2524, 0, 0, 1, 0, 'Truncheon'),
(1471, 2532, 0, 0, 2, 0, 'Morning Star'),
(1471, 2525, 0, 0, 3, 0, 'War Hammer'),
(1471, 2533, 0, 0, 4, 0, 'War Maul'),
(1471, 2527, 0, 0, 5, 0, 'Battle Staff'),
(1471, 2535, 0, 0, 6, 0, 'War Staff'),
(1471, 10858, 1, 9000, 7, 0, 'Plans: Solid Iron Maul');

-- ["Drovnar Strongbrew"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2812; -- 127
DELETE FROM `npc_vendor` WHERE `entry` = 2812;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
-- (127, 3385, 3, 7200, 0, 0, 'Lesser Mana Potion'), - lots of vendors have these duplicated pots
-- (127, 858, 3, 7200, 0, 0, 'Lesser Healing Potion'),
(2812, 3371, 0, 0, 1, 0, 'Empty Vial'),
(2812, 3372, 0, 0, 2, 0, 'Leaded Vial'),
(2812, 8925, 0, 0, 3, 0, 'Crystal Vial'),
(2812, 18256, 0, 0, 4, 0, 'Imbued Vial'),
(2812, 3827, 3, 7200, 5, 0, 'Mana Potion'),
(2812, 1710, 3, 7200, 6, 0, 'Greater Healing Potion'),
(2812, 6056, 1, 7200, 7, 0, 'Recipe: Frost Protection Potion');

DELETE FROM `npc_vendor` WHERE `entry` = 3956 AND `item` = 3385;
DELETE FROM `npc_vendor` WHERE `entry` = 2481 AND `item` = 3385;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3956, 3385, 3, 7200, 0, 0, 'Lesser Mana Potion'),
(2481, 3385, 3, 7200, 0, 0, 'Lesser Mana Potion');

-- ["Craftsman Wilhelm"] = {
-- ["Gug"] = {
-- ["Samir"] = {
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 116 AND `item` = 2901; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 116 AND `item` = 5956; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 116 AND `item` = 2880; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 116 AND `item` = 3466; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 116 AND `item` = 3857; -- [5] 6 flipped?
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 116 AND `item` = 18567; -- [6] 5 flipped?

