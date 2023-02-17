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

-- ------------------------
-- Templates
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

