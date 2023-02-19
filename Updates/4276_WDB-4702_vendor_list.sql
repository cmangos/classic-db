-- Godric Rothgar 1213
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 1213;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1213,2129,0,0,8,0,'Large Round Shield'),
(1213,2379,0,0,1,0,'Tarnished Chain Vest'),
(1213,2380,0,0,3,0,'Tarnished Chain Belt'),
(1213,2381,0,0,2,0,'Tarnished Chain Leggings'),
(1213,2383,0,0,4,0,'Tarnished Chain Boots'),
(1213,2384,0,0,5,0,'Tarnished Chain Bracers'),
(1213,2385,0,0,6,0,'Tarnished Chain Gloves'),
(1213,17184,0,0,7,0,'Small Shield');

-- Dermot Johns 190
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 190;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(190,2117,0,0,4,0,'Thin Cloth Shoes'),
(190,2119,0,0,6,0,'Thin Cloth Gloves'),
(190,2120,0,0,3,0,'Thin Cloth Pants'),
(190,2121,0,0,1,0,'Thin Cloth Armor'),
(190,2122,0,0,8,0,'Cracked Leather Belt'),
(190,2123,0,0,10,0,'Cracked Leather Boots'),
(190,2124,0,0,11,0,'Cracked Leather Bracers'),
(190,2125,0,0,12,0,'Cracked Leather Gloves'),
(190,2126,0,0,9,0,'Cracked Leather Pants'),
(190,2127,0,0,7,0,'Cracked Leather Vest'),
(190,3599,0,0,2,0,'Thin Cloth Belt'),
(190,3600,0,0,5,0,'Thin Cloth Bracers');

-- Brother Danil 152
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 152;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(152,159,0,0,2,0,'Refreshing Spring Water'),
(152,2512,0,0,3,0,'Rough Arrow'),
(152,2516,0,0,4,0,'Light Shot'),
(152,4540,0,0,1,0,'Tough Hunk of Bread'),
(152,3111,0,0,5,0,'Crude Throwing Axe'), -- diff entry
(152,2947,0,0,6,0,'Light Throwing Knife'); -- diff entry

-- Janos Hammerknuckle 78
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 78;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(78,1194,0,0,2,0,'Bastard Sword'),
(78,2130,0,0,5,0,'Club'),
(78,2131,0,0,1,0,'Shortsword'),
(78,2132,0,0,8,0,'Short Staff'),
(78,2134,0,0,3,0,'Hand Axe'),
(78,2139,0,0,7,0,'Dirk'),
(78,2479,0,0,4,0,'Broad Axe'),
(78,2480,0,0,6,0,'Large Club');

-- Kaita Deepforge 5512
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 5512;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(5512,2880,0,0,3,0,'Weak Flux'),
(5512,2901,0,0,1,0,'Mining Pick'),
(5512,3466,0,0,4,0,'Strong Flux'),
(5512,3857,0,0,6,0,'Coal'),
(5512,5956,0,0,2,0,'Blacksmith Hammer'),
(5512,12162,1,3600,7,0,'Plans: Hardened Iron Shortsword'),
(5512,18567,0,0,5,0,'Elemental Flux');

-- Roberto Pupellyverbos 277
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 277;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(277,1941,0,0,0,0,'Cask of Merlot'),
(277,2593,0,0,2,0,'Flask of Port'),
(277,2594,0,0,4,0,'Flagon of Mead'),
(277,2595,0,0,5,0,'Jug of Bourbon'),
(277,2596,0,0,3,0,'Skin of Dwarven Stout'),
(277,2723,0,0,1,0,'Bottle of Pinot Noir');

-- Julia Gallina 1301
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 1301;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1301,2593,0,0,2,0,'Flask of Port'),
(1301,2594,0,0,4,0,'Flagon of Mead'),
(1301,2595,0,0,5,0,'Jug of Bourbon'),
(1301,2596,0,0,3,0,'Skin of Dwarven Stout'),
(1301,2723,0,0,1,0,'Bottle of Pinot Noir');

-- Duokna 3158
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 3158;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3158,159,0,0,2,0,'Refreshing Spring Water'),
(3158,2512,0,0,3,0,'Rough Arrow'),
(3158,2516,0,0,4,0,'Light Shot'),
(3158,4540,0,0,1,0,'Tough Hunk of Bread'),
(3158,3111,0,0,5,0,'Crude Throwing Axe'),
(3158,2947,0,0,6,0,'Light Throwing Knife');

-- Olvia 3312
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 3312;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3312,117,0,0,1,0,'Tough Jerky'),
(3312,2287,0,0,2,0,'Haunch of Meat'),
(3312,3770,0,0,3,0,'Mutton Chop'),
(3312,3771,0,0,4,0,'Wild Hog Shank'),
(3312,4599,0,0,5,0,'Cured Ham Steak'),
(3312,8952,0,0,6,0,'Roasted Quail');

-- Veldan Lightfoot 896
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 896;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(896,796,0,0,4,0,'Rough Leather Boots'),
(896,797,0,0,6,0,'Rough Leather Gloves'),
(896,798,0,0,3,0,'Rough Leather Pants'),
(896,799,0,0,1,0,'Rough Leather Vest'),
(896,843,0,0,10,0,'Tanned Leather Boots'),
(896,844,0,0,12,0,'Tanned Leather Gloves'),
(896,845,0,0,9,0,'Tanned Leather Pants'),
(896,846,0,0,7,0,'Tanned Leather Jerkin'),
(896,1839,0,0,2,0,'Rough Leather Belt'),
(896,1840,0,0,5,0,'Rough Leather Bracers'),
(896,1843,0,0,8,0,'Tanned Leather Belt'),
(896,1844,0,0,11,0,'Tanned Leather Bracers');

-- Quartermaster Hicks 1645
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 1645;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1645,2520,0,0,1,0,'Broadsword'),
(1645,2521,0,0,2,0,'Flamberge'),
(1645,2522,0,0,3,0,'Crescent Axe'),
(1645,2523,0,0,4,0,'Bullova'),
(1645,2524,0,0,5,0,'Truncheon'),
(1645,2525,0,0,6,0,'War Hammer'),
(1645,2526,0,0,7,0,'Main Gauche'),
(1645,2527,0,0,8,0,'Battle Staff');

-- Sergeant De Vries 955
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 955;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(955,159,0,0,6,0,'Refreshing Spring Water'),
(955,1179,0,0,7,0,'Ice Cold Milk'),
(955,1205,0,0,8,0,'Melon Juice'),
(955,1645,0,0,10,0,'Moonberry Juice'),
(955,1708,0,0,9,0,'Sweet Nectar'),
(955,2593,0,0,2,0,'Flask of Port'),
(955,2594,0,0,4,0,'Flagon of Mead'),
(955,2595,0,0,5,0,'Jug of Bourbon'),
(955,2596,0,0,3,0,'Skin of Dwarven Stout'),
(955,2723,0,0,1,0,'Bottle of Pinot Noir'),
(955,8766,0,0,11,0,'Morning Glory Dew');

-- Kira Songshine 3937
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 3937;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3937,159,0,0,7,0,'Refreshing Spring Water'),
(3937,1179,0,0,8,0,'Ice Cold Milk'),
(3937,1205,0,0,9,0,'Melon Juice'),
(3937,1645,0,0,11,0,'Moonberry Juice'),
(3937,1708,0,0,10,0,'Sweet Nectar'),
(3937,4540,0,0,1,0,'Tough Hunk of Bread'),
(3937,4541,0,0,2,0,'Freshly Baked Bread'),
(3937,4542,0,0,3,0,'Moist Cornbread'),
(3937,4544,0,0,4,0,'Mulgore Spice Bread'),
(3937,4601,0,0,5,0,'Soft Banana Bread'),
(3937,8766,0,0,12,0,'Morning Glory Dew'),
(3937,8950,0,0,6,0,'Homemade Cherry Pie');

-- Corina Steele 54
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 54;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(54,2488,0,0,1,0,'Gladius'),
(54,2489,0,0,2,0,'Two-handed Sword'),
(54,2490,0,0,3,0,'Tomahawk'),
(54,2491,0,0,4,0,'Large Axe'),
(54,2492,0,0,5,0,'Cudgel'),
(54,2493,0,0,6,0,'Wooden Mallet'),
(54,2494,0,0,7,0,'Stiletto'),
(54,2495,0,0,8,0,'Walking Stick');

-- Kurran Steele 74
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 74;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(74,792,0,0,4,0,'Knitted Sandals'),
(74,793,0,0,6,0,'Knitted Gloves'),
(74,794,0,0,3,0,'Knitted Pants'),
(74,795,0,0,1,0,'Knitted Tunic'),
(74,796,0,0,10,0,'Rough Leather Boots'),
(74,797,0,0,12,0,'Rough Leather Gloves'),
(74,798,0,0,9,0,'Rough Leather Pants'),
(74,799,0,0,7,0,'Rough Leather Vest'),
(74,1839,0,0,8,0,'Rough Leather Belt'),
(74,1840,0,0,11,0,'Rough Leather Bracers'),
(74,3602,0,0,2,0,'Knitted Belt'),
(74,3603,0,0,5,0,'Knitted Bracers');

-- Antonio Perelli 844
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 844;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(844,785,2,7200,15,0,'Mageroyal'),
(844,858,3,7200,10,0,'Lesser Healing Potion'),
(844,2449,3,7200,14,0,'Earthroot'),
(844,2453,2,7200,17,0,'Bruiseweed'),
(844,3355,1,7200,16,0,'Wild Steelbloom'),
(844,3356,1,7200,18,0,'Kingsblood'),
(844,3357,1,7200,19,0,'Liferoot'),
(844,3371,0,0,1,0,'Empty Vial'),
(844,3372,0,0,2,0,'Leaded Vial'),
(844,4777,2,86400,11,0,'Ironwood Maul'),
(844,4778,2,86400,9,0,'Heavy Spiked Mace'),
(844,4794,1,86400,6,0,'Wolf Bracers'),
(844,4795,1,86400,7,0,'Bear Bracers'),
(844,4796,1,86400,8,0,'Owl Bracers'),
(844,4817,2,86400,12,0,'Blessed Claymore'),
(844,4818,2,86400,13,0,'Executioner\s Sword'),
(844,8925,0,0,3,0,'Crystal Vial'),
(844,18256,0,0,4,0,'Imbued Vial');

-- Lizzarik 3658
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 3658;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3658,851,0,0,1,0,'Cutlass'),
(3658,852,0,0,5,0,'Mace'),
(3658,853,0,0,3,0,'Hatchet'),
(3658,854,0,0,8,0,'Quarter Staff'),
(3658,858,3,9000,9,0,'Lesser Healing Potion'),
(3658,1196,0,0,4,0,'Tabar'),
(3658,1197,0,0,6,0,'Giant Mace'),
(3658,1198,0,0,2,0,'Claymore'),
(3658,2207,0,0,7,0,'Jambiya'),
(3658,2455,3,9000,10,0,'Minor Mana Potion'),
(3658,4765,2,14400,13,0,'Enamelled Broadsword'),
(3658,4766,2,14400,11,0,'Feral Blade'),
(3658,4777,2,14400,14,0,'Ironwood Maul'),
(3658,4778,2,14400,12,0,'Heavy Spiked Mace');

-- Trayexir 10369
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 10369;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(10369,2488,0,0,7,0,'Gladius'),
(10369,2489,0,0,8,0,'Two-handed Sword'),
(10369,2490,0,0,9,0,'Tomahawk'),
(10369,2491,0,0,10,0,'Large Axe'),
(10369,2492,0,0,11,0,'Cudgel'),
(10369,2493,0,0,12,0,'Wooden Mallet'),
(10369,2494,0,0,13,0,'Stiletto'),
(10369,2495,0,0,14,0,'Walking Stick'),
(10369,2506,0,0,5,0,'Hornwood Recurve Bow'),
(10369,2507,0,0,6,0,'Laminated Recurve Bow'),
(10369,2512,0,0,3,0,'Rough Arrow'),
(10369,2515,0,0,4,0,'Sharp Arrow'),
(10369,5439,0,0,1,0,'Small Quiver'),
(10369,11362,0,0,2,0,'Medium Quiver');

-- Zansoa 5942
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 5942;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(5942,6256,0,0,3,0,'Fishing Pole'),
(5942,6326,0,0,1,0,'Recipe: Slitherskin Mackerel'),
(5942,6365,1,7200,8,0,'Strong Fishing Pole'),
(5942,6368,0,0,2,0,'Recipe: Rainbow Fin Albacore'),
(5942,6529,0,0,4,0,'Shiny Bauble'),
(5942,6530,0,0,5,0,'Nightcrawlers'),
(5942,6532,0,0,6,0,'Bright Baubles'),
(5942,6533,2,9000,7,0,'Aquadynamic Fish Attractor');

-- ------------------------
-- Templates
-- Weapons/armor
-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (1249,2046,3613,5106) AND `item` IN (1201,2392,2393,2394,2395,2396,2397,17186);
DELETE FROM `npc_vendor_template` WHERE entry IN (233,1000); -- 233 had 2392,2393,2394,2395,2396,2397 was assigned to 1240,1249,3613,5106,17930
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1000,1201,0,0,8,0,'Dull Heater Shield'),
(1000,2392,0,0,1,0,'Light Mail Armor'),
(1000,2393,0,0,2,0,'Light Mail Belt'),
(1000,2394,0,0,3,0,'Light Mail Leggings'),
(1000,2395,0,0,4,0,'Light Mail Boots'),
(1000,2396,0,0,5,0,'Light Mail Bracers'),
(1000,2397,0,0,6,0,'Light Mail Gloves'),
(1000,17186,0,0,7,0,'Small Targe');
UPDATE `creature_template` SET `VendorTemplateId` = 1000 WHERE `entry` IN (1249,2046,3613,5106);
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 1240;

DELETE FROM `npc_vendor` WHERE entry = 1240;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1240,2392,0,0,1,0,'Light Mail Armor'),
(1240,2393,0,0,2,0,'Light Mail Belt'),
(1240,2394,0,0,3,0,'Light Mail Leggings'),
(1240,2395,0,0,4,0,'Light Mail Boots'),
(1240,2396,0,0,5,0,'Light Mail Bracers'),
(1240,2397,0,0,6,0,'Light Mail Gloves');

-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (54,1273,1698,2136,2265,3077,3163,3609,2404) AND `item` IN (2488,2489,2490,2491,2492,2493,2494,2495); -- 2404; -- no vendor
DELETE FROM `npc_vendor_template` WHERE entry IN (4,321,1001);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1001,2488,0,0,1,0,'Gladius'),
(1001,2489,0,0,2,0,'Two-handed Sword'),
(1001,2490,0,0,3,0,'Tomahawk'),
(1001,2491,0,0,4,0,'Large Axe'),
(1001,2492,0,0,5,0,'Cudgel'),
(1001,2493,0,0,6,0,'Wooden Mallet'),
(1001,2494,0,0,7,0,'Stiletto'),
(1001,2495,0,0,8,0,'Walking Stick');
UPDATE `creature_template` SET `VendorTemplateId` = 1001 WHERE `entry` IN (54,1273,1698,2136,2265,3077,3163,3609);

-- General goods
-- group moved to templates - items with different entries
-- 2946	Balanced Throwing Dagger
-- 2947	Small Throwing Knife
-- 3111	Crude Throwing Axe
-- 3131	Weighted Throwing Axe
DELETE FROM `npc_vendor` WHERE entry IN (151,1691,2134,3076,3164,3186,3608) AND `item` IN (159,2512,2516,4470,4471,4496,4498,5042,3111,2946,2947,3131);
DELETE FROM `npc_vendor_template` WHERE entry IN (430,1100);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1100,159,0,0,2,0,'Refreshing Spring Water'),
(1100,2512,0,0,4,0,'Rough Arrow'),
(1100,2516,0,0,5,0,'Light Shot'),
(1100,4470,0,0,6,0,'Simple Wood'),
(1100,4471,0,0,7,0,'Simple Wood'),
(1100,4496,0,0,1,0,'Small Brown Pouch'),
(1100,4498,0,0,3,0,'Brown Leather Satchel'),
(1100,5042,0,0,8,0,'Red Ribboned Wrapping Paper'),
(1100,3111,0,0,9,0,'Crude Throwing Axe'),
(1100,2946,0,0,12,0,'Balanced Throwing Dagger'),
(1100,2947,0,0,11,0,'Light Throwing Knife'),
(1100,3131,0,0,10,0,'Weighted Throwing Axe');
UPDATE `creature_template` SET `VendorTemplateId` = 1100 WHERE `entry` IN (151,1691,2134,3076,3164,3186,3608);

-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (1692,3168,3614);
DELETE FROM `npc_vendor_template` WHERE entry = 1101;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1101,2320,0,0,8,0,'Coarse Thread'),
(1101,2324,0,0,14,0,'Bleach'),
(1101,2604,0,0,13,0,'Red Dye'),
(1101,2678,0,0,6,0,'Mild Spices'),
(1101,2880,0,0,9,0,'Weak Flux'),
(1101,2901,0,0,2,0,'Mining Pick'),
(1101,3371,0,0,10,0,'Empty Vial'),
(1101,4289,0,0,11,0,'Salt'),
(1101,5956,0,0,3,0,'Blacksmith Hammer'),
(1101,6217,0,0,5,0,'Copper Rod'),
(1101,6256,0,0,4,0,'Fishing Pole'),
(1101,6260,0,0,15,0,'Blue Dye'),
(1101,6529,0,0,12,0,'Shiny Bauble'),
(1101,7005,0,0,1,0,'Skinning Knife'),
(1101,10648,0,0,16,0,'Common Parchment'),
(1101,30817,0,0,7,0,'Simple Flour'),
(1101,39354,0,0,17,0,'Light Parchment');
UPDATE `creature_template` SET `VendorTemplateId` = 1101 WHERE `entry` IN (1692,3168,3614);

-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (1250,1692,2118,3081,3168,3187,3614,4194) AND `item` IN (2320,2324,2604,2678,2880,2901,3371,4289,5956,6217,6256,6260,6529,7005);
DELETE FROM `npc_vendor_template` WHERE entry IN (112,1101);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1101,2320,0,0,8,0,'Coarse Thread'),
(1101,2324,0,0,14,0,'Bleach'),
(1101,2604,0,0,13,0,'Red Dye'),
(1101,2678,0,0,6,0,'Mild Spices'),
(1101,2880,0,0,9,0,'Weak Flux'),
(1101,2901,0,0,2,0,'Mining Pick'),
(1101,3371,0,0,10,0,'Empty Vial'),
(1101,4289,0,0,11,0,'Salt'),
(1101,5956,0,0,3,0,'Blacksmith Hammer'),
(1101,6217,0,0,5,0,'Copper Rod'),
(1101,6256,0,0,4,0,'Fishing Pole'),
(1101,6260,0,0,15,0,'Blue Dye'),
(1101,6529,0,0,12,0,'Shiny Bauble'),
(1101,7005,0,0,1,0,'Skinning Knife');
-- (1101,10648,0,0,16,0,'Common Parchment'), -- Blank Parchment, other vendor in classic/tbc
-- (1101,30817,0,0,7,0,0,'Simple Flour'); -- tbc+
-- (1101,39354,0,0,17,0,'Light Parchment'); -- wotlk+
UPDATE `creature_template` SET `VendorTemplateId` = 1101 WHERE `entry` IN (1250,1692,2118,3081,3168,3187,3614,4194);

-- Food
-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (2365,2814,3025,3089,3312,3368,3489,3705,3933,3935,3960,4954,5124,5870) AND `item` IN (117,2287,3770,3771,4599,8952);
DELETE FROM `npc_vendor_template` WHERE entry IN (425,1200);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1200,117,0,0,1,0,'Tough Jerky'),
(1200,2287,0,0,2,0,'Haunch of Meat'),
(1200,3770,0,0,3,0,'Mutton Chop'),
(1200,3771,0,0,4,0,'Wild Hog Shank'),
(1200,4599,0,0,5,0,'Cured Ham Steak'),
(1200,8952,0,0,6,0,'Roasted Quail');
UPDATE `creature_template` SET `VendorTemplateId` = 1200 WHERE `entry` IN (2365,2814,3025,3089,3312,3368,3489,3705,3933,3935,3960,4954,5124,5870);

-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (258,955,1328,1697,5112,5140) AND `item` IN (159,1179,1205,1645,1708,2593,2594,2595,2596,2723,8766);
DELETE FROM `npc_vendor_template` WHERE entry IN (404,1201);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1201,159,0,0,6,0,'Refreshing Spring Water'),
(1201,1179,0,0,7,0,'Ice Cold Milk'),
(1201,1205,0,0,8,0,'Melon Juice'),
(1201,1645,0,0,10,0,'Moonberry Juice'),
(1201,1708,0,0,9,0,'Sweet Nectar'),
(1201,2593,0,0,2,0,'Flask of Port'),
(1201,2594,0,0,4,0,'Flagon of Mead'),
(1201,2595,0,0,5,0,'Jug of Bourbon'),
(1201,2596,0,0,3,0,'Skin of Dwarven Stout'),
(1201,2723,0,0,1,0,'Bottle of Pinot Noir'),
(1201,8766,0,0,11,0,'Morning Glory Dew');
UPDATE `creature_template` SET `VendorTemplateId` = 1201 WHERE `entry` IN (258,955,1328,1697,5112,5140,19617);

-- group moved to templates
DELETE FROM `npc_vendor` WHERE entry IN (982,2388,3411,3621,3881,3882,4169,4782,4875,4879,4963,5611,6928,6929,7485,7731,7733,8125,9356,11118,12196) AND `item` IN (117,159,1179,1205,1645,1708,2287,3770,3771,4599,8766,8952);
DELETE FROM `npc_vendor_template` WHERE entry IN (410,1202);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES 
(1202,117,0,0,1,0,'Tough Jerky'),
(1202,159,0,0,7,0,'Refreshing Spring Water'),
(1202,1179,0,0,8,0,'Ice Cold Milk'),
(1202,1205,0,0,9,0,'Melon Juice'),
(1202,1645,0,0,11,0,'Moonberry Juice'),
(1202,1708,0,0,10,0,'Sweet Nectar'),
(1202,2287,0,0,2,0,'Haunch of Meat'),
(1202,3770,0,0,3,0,'Mutton Chop'),
(1202,3771,0,0,4,0,'Wild Hog Shank'),
(1202,4599,0,0,5,0,'Cured Ham Steak'),
(1202,8766,0,0,12,0,'Morning Glory Dew'),
(1202,8952,0,0,6,0,'Roasted Quail');
UPDATE `creature_template` SET `VendorTemplateId` = 1202 WHERE `entry` IN (982,2388,3411,3621,3881,3882,4169,4782,4875,4879,4963,5611,6928,6929,7485,7731,7733,8125,9356,11118,12196);

-- not a vendor - https://www.wowhead.com/wotlk/npc=4963/mikhail#comments:id=525125
DELETE FROM `npc_vendor` WHERE `entry` = 4963;
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 4963;

