-- Align Enchanting Supplies Vendors & Add VendorSlots
-- UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `VendorTemplateId` = 132; -- Delete this duplicate (all sell limited supply 10938,10940,6342) - does not exist in classicmangos

DELETE FROM `npc_vendor` WHERE `entry` IN (1318,4617,5158,5757,5758,15198,15419,16635,16722,18753,18773,18951,19234,19537,19663,3012,3346,4228) AND `item` IN (6217,10940,10938,4470,11291,20758,20752,20753,6342,22307);
DELETE FROM `npc_vendor_template` WHERE `entry` = 132; -- same as 131 but without limited stock items

DELETE FROM `npc_vendor_template` WHERE `entry` = 131; -- not present in classic
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(131, 4470, 0, 0, 104, 0, 'Simple Wood'),
(131, 6217, 0, 0, 101, 0, 'Copper Rod'),
(131, 6342, 1, 7200, 109, 0, 'Formula: Enchant Chest - Minor Mana'),
(131, 10938, 2, 7200, 103, 0, 'Lesser Magic Essence'), -- 2 max
(131, 10940, 4, 7200, 102, 0, 'Strange Dust'), -- 4 max
(131, 11291, 0, 0, 105, 0, 'Star Wood'),
(131, 20752, 0, 0, 107, 0, 'Formula: Minor Mana Oil'),
(131, 20753, 0, 0, 108, 0, 'Formula: Lesser Wizard Oil'),
(131, 20758, 0, 0, 106, 0, 'Formula: Minor Wizard Oil'),
(131, 22307, 0, 0, 110, 0, 'Pattern: Enchanted Mageweave Pouch');

UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `entry` IN (
-- https://www.wowhead.com/classic/item=10940/strange-dust - sold by 9 npcs!
1318, -- Jessara Cordell - 10 items (list above)
3012, -- Nata Dawnstrider - 12 items
3346, -- Kithas - 12 items
4228, -- Vaean - 10 items
4617, -- Thaddeus Webb - 10 items
5158, -- Tilli Thistlefuzz - 11 items
5757, -- Lilly - 11 items
5758, -- Leo Sarn - 11 items
15419 -- Kania - 15 items
-- 16635, -- Lyna
-- 16722, -- Egomis
-- 18753, -- Felannia
-- 18773, -- Johan Barnes
-- 18951, -- Erilia
-- 19234, -- Yurial Soulwater
-- 19537, -- Dealer Malij
-- 19540, -- Asarnan
-- 19663, -- Madame Ruby
);

DELETE FROM `npc_vendor` WHERE `entry` = 5758 AND `item` = 6349; -- missing
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(5758, 6349, 1, 7200, 0, 0, 'Formula: Enchant 2H Weapon - Lesser Intellect');
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `item` = 6349; -- 5158

-- 15198	Blackwing - wrong vendor (npcflags 128 supposedly) - not found in sniff, removing flag too
-- https://www.wowhead.com/tbc/npc=15198/blackwing
DELETE FROM `npc_vendor` WHERE `entry` = 15198;
UPDATE `creature_template` SET `VendorTemplateId` = 0, `NpcFlags` = 0 WHERE `entry` = 15198;

-- add correct vendor! (also pops dberror)
-- https://www.wowhead.com/tbc/npc=19540/asarnan#sells
-- DELETE FROM `npc_vendor` WHERE `entry` = 19540;
-- UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `entry` = 19540; -- 10 items

