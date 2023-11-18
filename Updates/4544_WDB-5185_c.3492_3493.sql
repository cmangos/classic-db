-- Vexspindle 3492
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3492; -- 220
DELETE FROM `npc_vendor` WHERE `entry` = 3492;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3492, 200, 0, 0, 1, 0, 'Thick Cloth Vest'),
(3492, 3597, 0, 0, 2, 0, 'Thick Cloth Belt'),
(3492, 201, 0, 0, 3, 0, 'Thick Cloth Pants'),
(3492, 202, 0, 0, 4, 0, 'Thick Cloth Shoes'),
(3492, 3598, 0, 0, 5, 0, 'Thick Cloth Bracers'),
(3492, 203, 0, 0, 6, 0, 'Thick Cloth Gloves'),
(3492, 236, 0, 0, 7, 0, 'Cured Leather Armor'),
(3492, 1849, 0, 0, 8, 0, 'Cured Leather Belt'),
(3492, 237, 0, 0, 9, 0, 'Cured Leather Pants'),
(3492, 238, 0, 0, 10, 0, 'Cured Leather Boots'),
(3492, 1850, 0, 0, 11, 0, 'Cured Leather Bracers'),
(3492, 239, 0, 0, 12, 0, 'Cured Leather Gloves'),
(3492, 4794, 1, 14400, 13, 0, 'Wolf Bracers'),
(3492, 4795, 1, 14400, 14, 0, 'Bear Bracers'),
(3492, 4796, 1, 14400, 15, 0, 'Owl Bracers');

UPDATE `npc_vendor_template` SET `slot`=1 WHERE `entry`=220 && `item`=236; -- Cured Leather Armor
UPDATE `npc_vendor_template` SET `slot`=2 WHERE `entry`=220 && `item`=1849; -- Cured Leather Belt
UPDATE `npc_vendor_template` SET `slot`=3 WHERE `entry`=220 && `item`=237; -- Cured Leather Pants
UPDATE `npc_vendor_template` SET `slot`=4 WHERE `entry`=220 && `item`=238; -- Cured Leather Boots
UPDATE `npc_vendor_template` SET `slot`=5 WHERE `entry`=220 && `item`=1850; -- Cured Leather Bracers
UPDATE `npc_vendor_template` SET `slot`=6 WHERE `entry`=220 && `item`=239; -- Cured Leather Gloves

-- Grazlix 3493
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3493; -- 238
DELETE FROM `npc_vendor` WHERE `entry` = 3493;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3493, 285, 0, 0, 1, 0, 'Scalemail Vest'),
(3493, 1853, 0, 0, 2, 0, 'Scalemail Belt'),
(3493, 286, 0, 0, 3, 0, 'Scalemail Pants'),
(3493, 287, 0, 0, 4, 0, 'Scalemail Boots'),
(3493, 1852, 0, 0, 5, 0, 'Scalemail Bracers'),
(3493, 718, 0, 0, 6, 0, 'Scalemail Gloves'),
(3493, 17188, 0, 0, 7, 0, 'Ringed Buckler'),
(3493, 2445, 0, 0, 8, 0, 'Large Metal Shield'),
(3493, 4820, 1, 14400, 9, 0, 'Guardian Buckler'),
(3493, 4821, 1, 14400, 10, 0, 'Bear Buckler'),
(3493, 4822, 1, 14400, 11, 0, 'Owl\'s Disk'),
(3493, 4800, 1, 14400, 12, 0, 'Mighty Chain Pants'),
(3493, 4816, 1, 14400, 13, 0, 'Legionnaire\'s Leggings'),
(3493, 4797, 1, 14400, 14, 0, 'Fiery Cloak'),
(3493, 4798, 1, 14400, 15, 0, 'Heavy Runed Cloak'),
(3493, 4799, 1, 14400, 16, 0, 'Antiquated Cloak');

UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (238) AND item = 285; -- Scalemail Vest
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (238) AND item = 1853; -- Scalemail Belt
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (238) AND item = 286; -- Scalemail Pants
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (238) AND item = 287; -- Scalemail Boots
UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (238) AND item = 1852; -- Scalemail Bracers
UPDATE npc_vendor_template SET Slot = 6 WHERE entry IN (238) AND item = 718; -- Scalemail Gloves

