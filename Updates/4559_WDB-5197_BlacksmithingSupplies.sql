-- <Blacksmithing Supplies>
-- They all have the same vendor list - so can be moved to template (already exist):

-- Thrawn Boltar 1690
-- Hurklor 2844
-- Jansen Underwood 2847
-- Taur Stonehoof 2999
-- Grelkor 3343
-- Hraq 3477
-- Lana Thunderbrew 4257
-- Thurgrum Deepforge 4259
-- Samuel Van Brunt 4597
-- Elisa Steelhand 6300
-- Smith Slagtree 14737
-- Craftsman Wilhelm 16376
-- 14624
DELETE FROM npc_vendor WHERE entry IN (1690,2844,2847,2999,3343,3477,4257,4259,4597,6300,14737,16376);
UPDATE creature_template SET VendorTemplateId = 116 WHERE entry IN (1690,2844,2847,2999,3343,3477,4257,4259,4597,6300,14737,16376,14624);
DELETE FROM npc_vendor where entry = 14624 and item IN (2901,5956,2880,3466,18567,3857);

DELETE FROM `npc_vendor_template` WHERE `entry` = 116;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(116, 2901, 0, 0, 1, 0, 'Mining Pick'),
(116, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(116, 2880, 0, 0, 3, 0, 'Weak Flux'),
(116, 3466, 0, 0, 4, 0, 'Strong Flux'),
(116, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(116, 3857, 0, 0, 6, 0, 'Coal');

-- Below - all NPCs that have same base + few addons
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` IN (3356,5512,5411,8161,8176,9179,15176);

DELETE FROM `npc_vendor` WHERE `entry` IN (3356,5512,5411,8161,8176,9179,15176);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
-- Sumi 3356 - 7
(3356, 2901, 0, 0, 1, 0, 'Mining Pick'),
(3356, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(3356, 2880, 0, 0, 3, 0, 'Weak Flux'),
(3356, 3466, 0, 0, 4, 0, 'Strong Flux'),
(3356, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(3356, 3857, 0, 0, 6, 0, 'Coal'),
(3356, 12162, 1, 7200, 7, 0, 'Plans: Hardened Iron Shortsword'),
-- Kaita Deepforge 5512 - 7
(5512, 2901, 0, 0, 1, 0, 'Mining Pick'),
(5512, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(5512, 2880, 0, 0, 3, 0, 'Weak Flux'),
(5512, 3466, 0, 0, 4, 0, 'Strong Flux'),
(5512, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(5512, 3857, 0, 0, 6, 0, 'Coal'),
(5512, 12162, 1, 7200, 7, 0, 'Plans: Hardened Iron Shortsword'),
-- Krinkle Goodsteel 5411 - 7
(5411, 2901, 0, 0, 1, 0, 'Mining Pick'),
(5411, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(5411, 2880, 0, 0, 3, 0, 'Weak Flux'),
(5411, 3466, 0, 0, 4, 0, 'Strong Flux'),
(5411, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(5411, 3857, 0, 0, 6, 0, 'Coal'),
(5411, 6047, 1, 7200, 7, 0, 'Plans: Golden Scale Coif'),
-- Harggan 8161 - 7
(8161, 2901, 0, 0, 1, 0, 'Mining Pick'),
(8161, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(8161, 2880, 0, 0, 3, 0, 'Weak Flux'),
(8161, 3466, 0, 0, 4, 0, 'Strong Flux'),
(8161, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(8161, 3857, 0, 0, 6, 0, 'Coal'),
(8161, 7995, 1, 9000, 7, 0, 'Plans: Mithril Scale Bracers'),
-- Gharash 8176 - 7
(8176, 2901, 0, 0, 1, 0, 'Mining Pick'),
(8176, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(8176, 2880, 0, 0, 3, 0, 'Weak Flux'),
(8176, 3466, 0, 0, 4, 0, 'Strong Flux'),
(8176, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(8176, 3857, 0, 0, 6, 0, 'Coal'),
(8176, 7995, 1, 9000, 7, 0, 'Plans: Mithril Scale Bracers'),
-- Jazzrik 9179 - 7
(9179, 2901, 0, 0, 1, 0, 'Mining Pick'),
(9179, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(9179, 2880, 0, 0, 3, 0, 'Weak Flux'),
(9179, 3466, 0, 0, 4, 0, 'Strong Flux'),
(9179, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(9179, 3857, 0, 0, 6, 0, 'Coal'),
(9179, 10858, 1, 36600, 7, 0, 'Plans: Solid Iron Maul'),
-- Master Smith Burninate 14624 - 34/38
-- (14624, 159, 0, 0, 1, 0, 'Refreshing Spring Water'),
-- (14624, 1205, 0, 0, 2, 0, 'Melon Juice'),
-- (14624, 1708, 0, 0, 3, 0, 'Sweet Nectar'),
-- (14624, 1645, 0, 0, 4, 0, 'Moonberry Juice'),
-- (14624, 4498, 0, 0, 5, 0, 'Brown Leather Satchel'),
-- (14624, 4497, 0, 0, 6, 0, 'Heavy Brown Bag'),
-- (14624, 2515, 0, 0, 7, 0, 'Sharp Arrow'),
-- (14624, 3030, 0, 0, 8, 0, 'Razor Arrow'),
-- (14624, 11285, 0, 0, 9, 0, 'Jagged Arrow'),
-- (14624, 28053, 0, 0, 10, 0, 'Wicked Arrow'), -- tbc+
-- (14624, 2519, 0, 0, 11, 0, 'Heavy Shot'),
-- (14624, 3033, 0, 0, 12, 0, 'Solid Shot'),
-- (14624, 11284, 0, 0, 13, 0, 'Accurate Slugs'),
-- (14624, 28060, 0, 0, 14, 0, 'Impact Shot'), -- tbc+
-- (14624, 25873, 0, 0, 15, 0, 'Keen Throwing Knife'), -- 3107,25873
-- (14624, 29009, 0, 0, 16, 0, 'Heavy Throwing Dagger'), -- 3108,29009
-- (14624, 29010, 0, 0, 17, 0, 'Wicked Throwing Dagger'), -- 15327,29010
-- (14624, 29014, 0, 0, 18, 0, 'Blacksteel Throwing Dagger'), -- tbc+
-- (14624, 29008, 0, 0, 19, 0, 'Sharp Throwing Axe'), -- 3135,29008
-- (14624, 25875, 0, 0, 20, 0, 'Deadly Throwing Axe'), -- 3137,25875
-- (14624, 25876, 0, 0, 21, 0, 'Gleaming Throwing Axe'), -- 15326,25876
-- (14624, 29013, 0, 0, 22, 0, 'Jagged Throwing Axe'), -- tbc+
-- (14624, 4470, 0, 0, 23, 0, 'Simple Wood'),
-- (14624, 4471, 0, 0, 24, 0, 'Flint and Tinder'), -- template 436 Flint and Tinder!
-- (14624, 117, 0, 0, 25, 0, 'Tough Jerky'),
-- (14624, 2287, 0, 0, 26, 0, 'Haunch of Meat'),
-- (14624, 3770, 0, 0, 27, 0, 'Mutton Chop'),
-- (14624, 3771, 0, 0, 28, 0, 'Wild Hog Shank'),
-- (14624, 4599, 0, 0, 29, 0, 'Cured Ham Steak'),
-- (14624, 8952, 0, 0, 30, 0, 'Roasted Quail'),
-- (14624, 1179, 0, 0, 31, 0, 'Ice Cold Milk'),
-- (14624, 8766, 0, 0, 32, 0, 'Morning Glory Dew'),
-- (14624, 2901, 0, 0, 33, 0, 'Mining Pick'),
-- (14624, 5956, 0, 0, 34, 0, 'Blacksmith Hammer'),
-- (14624, 2880, 0, 0, 35, 0, 'Weak Flux'),
-- (14624, 3466, 0, 0, 36, 0, 'Strong Flux'),
-- (14624, 18567, 0, 0, 37, 0, 'Elemental Flux'),
-- (14624, 3857, 0, 0, 38, 0, 'Coal'),
-- Vargus 15176 - 11
(15176, 2901, 0, 0, 1, 0, 'Mining Pick'),
(15176, 5956, 0, 0, 2, 0, 'Blacksmith Hammer'),
(15176, 2880, 0, 0, 3, 0, 'Weak Flux'),
(15176, 3466, 0, 0, 4, 0, 'Strong Flux'),
(15176, 18567, 0, 0, 5, 0, 'Elemental Flux'),
(15176, 3857, 0, 0, 6, 0, 'Coal'),
(15176, 22209, 0, 0, 7, 0, 'Plans: Heavy Obsidian Belt'),
(15176, 22214, 0, 0, 8, 0, 'Plans: Light Obsidian Belt'),
(15176, 22766, 0, 0, 9, 0, 'Plans: Ironvine Breastplate'),
(15176, 22767, 0, 0, 10, 0, 'Plans: Ironvine Gloves'),
(15176, 22768, 0, 0, 11, 0, 'Plans: Ironvine Belt');

-- Master Smith Burninate
UPDATE `npc_vendor` SET `slot`=21 WHERE `entry`=14624 && `item`=117; -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=14624 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=27 WHERE `entry`=14624 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=14624 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=14624 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=14624 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=22 WHERE `entry`=14624 && `item`=2287; -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=14624 && `item`=2515; -- Sharp Arrow
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=14624 && `item`=2519; -- Heavy Shot
UPDATE `npc_vendor` SET `slot`=31 WHERE `entry`=14624 && `item`=2880; -- Weak Flux
UPDATE `npc_vendor` SET `slot`=29 WHERE `entry`=14624 && `item`=2901; -- Mining Pick
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=14624 && `item`=3030; -- Razor Arrow
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=14624 && `item`=3033; -- Solid Shot
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=14624 && `item` IN (3107,25873); -- Keen Throwing Knife
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=14624 && `item` IN (3108,29009); -- Heavy Throwing Dagger
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=14624 && `item` IN (3135,29008); -- Sharp Throwing Axe
UPDATE `npc_vendor` SET `slot`=17 WHERE `entry`=14624 && `item` IN (3137,25875); -- Deadly Throwing Axe
UPDATE `npc_vendor` SET `slot`=32 WHERE `entry`=14624 && `item`=3466; -- Strong Flux
UPDATE `npc_vendor` SET `slot`=23 WHERE `entry`=14624 && `item`=3770; -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=24 WHERE `entry`=14624 && `item`=3771; -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=33 WHERE `entry`=14624 && `item`=3857; -- Coal
UPDATE `npc_vendor` SET `slot`=19 WHERE `entry`=14624 && `item`=4470; -- Simple Wood
UPDATE `npc_vendor` SET `slot`=20 WHERE `entry`=14624 && `item`=4471; -- Flint and Tinder
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=14624 && `item`=4497; -- Heavy Brown Bag
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=14624 && `item`=4498; -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=25 WHERE `entry`=14624 && `item`=4599; -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=30 WHERE `entry`=14624 && `item`=5956; -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=28 WHERE `entry`=14624 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=26 WHERE `entry`=14624 && `item`=8952; -- Roasted Quail
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=14624 && `item`=11284; -- Accurate Slugs
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=14624 && `item`=11285; -- Jagged Arrow
UPDATE `npc_vendor` SET `slot`=18 WHERE `entry`=14624 && `item` IN (15326,25876); -- Gleaming Throwing Axe
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=14624 && `item` IN (15327,29010); -- Wicked Throwing Dagger
UPDATE `npc_vendor` SET `slot`=34 WHERE `entry`=14624 && `item`=18567; -- Elemental Flux

