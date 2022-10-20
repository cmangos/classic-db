-- Add missing Items for Gearcutter Cogspinner 5175 & Sovik 3413 (both vendor template 133, which stores the general items)
-- Only sells some of these in classic
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `comments`, `slot`) VALUES
-- https://classic.wowhead.com/npc=5175/gearcutter-cogspinner#sells
-- Classic only
(5175, 16042, 1, 1800, 'Schematic: Thorium Widget', 201),
(5175, 16041, 1, 1800, 'Schematic: Thorium Grenade', 202),
-- Classic+
(5175, 7560, 1, 1800, 'Schematic: Gnomish Universal Remote', 203),
(5175, 18649, 1, 1800, 'Schematic: Blue Firework', 205),
-- TBC+ - https://tbc.wowhead.com/npc=5175/gearcutter-cogspinner#sells
-- (5175, 22729, 1, 1800, 'Schematic: Steam Tonk Controller', 204),

-- https://classic.wowhead.com/npc=3413/sovik#sells
-- Classic only
(3413, 16042, 1, 1800, 'Schematic: Thorium Widget', 201),
(3413, 16041, 1, 1800, 'Schematic: Thorium Grenade', 202),
-- Classic+
(3413, 18647, 1, 1800, 'Schematic: Red Firework', 205);
-- TBC+ - https://tbc.wowhead.com/npc=3413/sovik#sells
-- (3413, 22729, 1, 1800, 'Schematic: Steam Tonk Controller', 204); -- these slots dont work as _vendor is always sorted befor _template for now

-- ["Technician Halmaha"] = {
-- ["Gearcutter Cogspinner"] = {
-- ["Loslor Rudge"] = {
UPDATE `npc_vendor_template` SET `Slot` = 101 WHERE `entry` = 133 AND `item` = 5956; -- 0, 0, 0, 0, 0, 'Blacksmith Hammer');
UPDATE `npc_vendor_template` SET `Slot` = 102 WHERE `entry` = 133 AND `item` = 2901; -- 0, 0, 0, 0, 0, 'Mining Pick');
UPDATE `npc_vendor_template` SET `Slot` = 103 WHERE `entry` = 133 AND `item` = 4399; -- 0, 0, 0, 0, 0, 'Wooden Stock');
UPDATE `npc_vendor_template` SET `Slot` = 104 WHERE `entry` = 133 AND `item` = 4400; -- 0, 0, 0, 0, 0, 'Heavy Stock');
UPDATE `npc_vendor_template` SET `Slot` = 105 WHERE `entry` = 133 AND `item` = 2880; -- 0, 0, 0, 0, 0, 'Weak Flux');
UPDATE `npc_vendor_template` SET `Slot` = 106 WHERE `entry` = 133 AND `item` = 3466; -- 0, 0, 0, 0, 0, 'Strong Flux');
UPDATE `npc_vendor_template` SET `Slot` = 107 WHERE `entry` = 133 AND `item` = 10648; -- 0, 0, 0, 0, 0, 'Blank Parchment');
UPDATE `npc_vendor_template` SET `Slot` = 108 WHERE `entry` = 133 AND `item` = 10647; -- 0, 0, 0, 0, 0, 'Engineer\'s Ink'); -- confirmed until here, then some guesswork due to limited stock items
UPDATE `npc_vendor_template` SET `Slot` = 109 WHERE `entry` = 133 AND `item` = 4404; -- 3, 10800, 0, 0, 0, 'Silver Contact');
UPDATE `npc_vendor_template` SET `Slot` = 110 WHERE `entry` = 133 AND `item` = 4361; -- 2, 10800, 0, 0, 0, 'Copper Tube');
UPDATE `npc_vendor_template` SET `Slot` = 111 WHERE `entry` = 133 AND `item` = 4363; -- 2, 10800, 0, 0, 0, 'Copper Modulator');
UPDATE `npc_vendor_template` SET `Slot` = 112 WHERE `entry` = 133 AND `item` = 4371; -- 2, 10800, 0, 0, 0, 'Bronze Tube');
UPDATE `npc_vendor_template` SET `Slot` = 113 WHERE `entry` = 133 AND `item` = 4382; -- 1, 10800, 0, 0, 0, 'Bronze Framework');
UPDATE `npc_vendor_template` SET `Slot` = 114 WHERE `entry` = 133 AND `item` = 4357; -- 4, 10800, 0, 0, 0, 'Rough Blasting Powder');
UPDATE `npc_vendor_template` SET `Slot` = 115 WHERE `entry` = 133 AND `item` = 4364; -- 4, 10800, 0, 0, 0, 'Coarse Blasting Powder');
UPDATE `npc_vendor_template` SET `Slot` = 116 WHERE `entry` = 133 AND `item` = 4389; -- 1, 10800, 0, 0, 0, 'Gyrochronatom');

-- Apply 133 to templates and delete items in npc_vendor
UPDATE `creature_template` SET `VendorTemplateId` = 133 WHERE `entry` IN (
1448, -- Neal Allen
1694, -- Loslor Rudge
2682, -- Fradd Swiftgear
2683, -- Namdo Bizzfizzle
2684, -- Rizz Loosebolt
2685, -- Mazk Snipeshot
2687, -- Gnaz Blunderflame
2688, -- Ruppo Zipcoil
3133, -- Herble Baubbletump
3413, -- Sovik
3495, -- Gagsprocket
4587, -- Elizabeth Van Talen
5175, -- Gearcutter Cogspinner
5519, -- Billibub Cogspinner
6730, -- Jinky Twizzlefixxit
6777, -- Zan Shivsproket
8678, -- Jubie Gadgetspring
8679, -- Knaz Blunderflame
9544, -- Yuka Screwspigot
11185, -- Xizzer Fizzbolt
14637 -- Zorbin Fandazzle
);
DELETE FROM `npc_vendor` WHERE `entry` IN (1448,1694,2682,2683,2684,2685,2687,2688,3133,3413,3495,4587,5175,5519,6730,6777,8678,8679,9544,11185,14637)
AND `item` IN (2880,2901,3466,4357,4361,4363,4364,4371,4382,4389,4399,4400,4404,5956,10647,10648);

