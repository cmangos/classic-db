-- Vendor lists added in WoTLKDBv1.8

-- slots will start now from 1 (prev. =0)

-- Roberto Pupellyverbos 277
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 277;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(277,1941,0,0,1,0,'Cask of Merlot'),
(277,2723,0,0,2,0,'Bottle of Pinot Noir'),
(277,2593,0,0,3,0,'Flask of Port'),
(277,2596,0,0,4,0,'Skin of Dwarven Stout'),
(277,2594,0,0,5,0,'Flagon of Mead'),
(277,2595,0,0,6,0,'Jug of Bourbon');

-- Tharynn Bouden 66
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 66;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(66,6270,1,9000,1,0,'Pattern: Blue Linen Vest'),
(66,7005,0,0,2,0,'Skinning Knife'),
(66,2901,0,0,3,0,'Mining Pick'),
(66,5956,0,0,4,0,'Blacksmith Hammer'),
(66,6256,0,0,5,0,'Fishing Pole'),
(66,6217,0,0,6,0,'Copper Rod'),
(66,2678,0,0,7,0,'Mild Spices'),
-- (66,30817,0,0,8,0,'Simple Flour'), -- tbc+
(66,2320,0,0,9,0,'Coarse Thread'),
(66,2880,0,0,10,0,'Weak Flux'),
(66,3371,0,0,11,0,'Empty Vial'),
(66,4289,0,0,12,0,'Salt'),
(66,6529,0,0,13,0,'Shiny Bauble'),
(66,2604,0,0,14,0,'Red Dye'),
(66,2324,0,0,15,0,'Bleach'),
(66,6260,0,0,16,0,'Blue Dye'),
-- (66,10648,0,0,17,0,'Common Parchment'), -- wotlk+
-- (66,39354,0,0,18,0,'Light Parchment'), -- wotlk+
(66,6325,0,0,19,0,'Recipe: Brilliant Smallfish'),
(66,6328,0,0,20,0,'Recipe: Longjaw Mud Snapper');

