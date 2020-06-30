-- https://github.com/cmangos/tbc-db/commit/7af64c9a9972da900a444f34714ed5acdc736b24
-- https://github.com/cmangos/tbc-db/commit/f539b3381b6ee02acf84afca4f8fd4b236d63dd8
-- https://github.com/cmangos/tbc-db/commit/82691cd1140c4129597d94836c7f64eae76c720f

-- https://github.com/cmangos/classic-db/commit/2feb6d66c6ce142705e34d73d54173008630da85#r94737344
DELETE FROM gameobject WHERE guid IN(47568) AND id IN(179706); -- delete old spawn for sake of consistency

-- classicmangos checks for pvp rank
-- Change Error Text when it becomes known, otherwise other faction can buy opposite faction pvp gear due to factions not being all hostile to the opposite players
-- UPDATE `areatrigger_teleport` SET `condition_id` = 3 WHERE `Id` = 2527; -- Hall of Legends - Ogrimmar "You must be a Stone Guard or higher rank in order to enter the Hall of Legends." -> Horde Player
-- UPDATE `areatrigger_teleport` SET `condition_id` = 4 WHERE `Id` = 2532; -- Stormwind - Champions Hall "You must be a Knight or higher rank in order to enter the Champions' Hall." -> Alliance Player

-- only base unit stats alignment (different in classic/tbc/wotlk!) npcflags flags are different in classic!
UPDATE `creature_equip_template` SET `equipentry1` = '14874' WHERE (`entry` = '12794'); -- [16] UNIT_VIRTUAL_ITEM_SLOT_ID: 14874
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12788; -- Legionnaire Teena (125 later)
UPDATE `creature_template` SET `Faction` = 126, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12789; -- Blood Guard Hini'wana (876 later)
UPDATE `creature_template` SET `Faction` = 68, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12790; -- Advisor Willington (68 later)
UPDATE `creature_template` SET `Faction` = 104, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12791; -- Chieftain Earthbind (104 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 16388, `UnitFlags` = 768 WHERE `entry` = 12792; -- Lady Palanseer (35 1074 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 4, `UnitFlags` = 0 WHERE `entry` = 12793; -- Brave Stonehide (35 125 later)
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 4, `UnitFlags` = 768 WHERE `entry` = 12794; -- Stone Guard Zarg (29 125 later)
UPDATE `creature_template` SET `Faction` = 126, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 4, `UnitFlags` = 768 WHERE `entry` = 12795; -- First Sergeant Hola'mahi (126 125 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 4, `UnitFlags` = 768 WHERE `entry` = 12796; -- Raider Bork (35 1074 later)
UPDATE `creature_template` SET `Faction` = 85, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12797; -- Grunt Korf (85 later)
UPDATE `creature_template` SET `Faction` = 85, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12798; -- Grunt Bek'rah (85 later)
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 16388, `UnitFlags` = 0 WHERE `entry` = 12799; -- Sergeant Ba'sha (29 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 16388, `UnitFlags` = 0 WHERE `entry` IN (14581,24667,26396); -- Sergeant Thunderhorn (35 1074 later)
-- UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 19850; -- Councilor Arial D'Anastasis (1604 later)
-- UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 16388, `UnitFlags` = 4864 WHERE `entry` = 23447; -- Sergeant Kien -> Doris Volanthius (UNIT_FLAG_PVP is now a column in creature_template, this is pre 2.3 npc)
-- UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 70, `MaxLevel` = 70, `NpcFlags` = 16388, `UnitFlags` = 768 WHERE `entry` = 24520; -- Doris Volanthius (1604 later)
-- UPDATE `creature_template` SET `Faction` = 1074, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 16388, `UnitFlags` = 768 WHERE `entry` = 24668; -- Lady Palanseer (norepair? sign this is a dummy template?) (1074 later)
-- UPDATE `creature_template` SET `Faction` = 1074, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 16388, `UnitFlags` = 768 WHERE `entry` = 26397; -- Lady Palanseer (norepair? sign this is a dummy template?) (1074 later)
-- UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 70, `MaxLevel` = 70, `NpcFlags` = 16388, `UnitFlags` = 768 WHERE `entry` = 26398; -- Doris Volanthius (1604 later)

-- only base unit stats alignment (keep 4096 flag due to legacy data)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 16388 WHERE `entry` IN (12777,24672,26393); -- Captain Dirgehammer (35 1078, 65 later)
UPDATE `creature_template` SET `Faction` = 12, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12778; -- Lieutenant Rachel Vaccar (123 later)
UPDATE `creature_template` SET `Faction` = 12, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12779; -- Archmage Gaiman (123 later)
UPDATE `creature_template` SET `Faction` = 80, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12780; -- Sergeant Major Skyshadow (124 laster)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 4 WHERE `entry` = 12781; -- Master Sergeant Biggins (35 1078 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 16388 WHERE `entry` IN (12782,24671,26394); -- Captain O'Neal (35 1078 later) - 
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 4 WHERE `entry` = 12783; -- Lieutenant Karter (35 1078 later)
UPDATE `creature_template` SET `Faction` = 875, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 4 WHERE `entry` = 12784; -- Lieutenant Jackspring (123 later)
UPDATE `creature_template` SET `Faction` = 55, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 4 WHERE `entry` = 12785; -- Sergeant Major Clate (123 later)
UPDATE `creature_template` SET `Faction` = 11, `MinLevel` = 62, `MaxLevel` = 62, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12786; -- Guard Quine (11 later)
UPDATE `creature_template` SET `Faction` = 11, `MinLevel` = 62, `MaxLevel` = 62, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12787; -- Guard Hammon (11 later)
-- UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 69, `MaxLevel` = 69, `UnitFlags` = 33536, `NpcFlags` = 0 WHERE `entry` = 19848; -- Harbinger Ennarth (1640 later)
-- UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 16388 WHERE `entry` = 23446; -- Lieutenant Tristia (1638)
-- UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 16388 WHERE `entry` = 24670; -- Lieutenant Tristia (1638)
-- UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 16388 WHERE `entry` = 26395; -- Lieutenant Tristia (1638)

-- =========================================================
-- Different Npcs hold different Items in classic/tbc/wotlk!
-- =========================================================
-- Alliance Classic Version
-- Captain Dirgehammer 12777 - MISSING SPAWN!
-- https://www.wowhead.com/classic/npc=12777/captain-dirgehammer - 96 items
DELETE FROM `npc_vendor` WHERE `entry` = 12777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12777, 16437, 0, 0, 32, 'Marshal\'s Silk Footwraps'),
(12777, 16440, 0, 0, 33, 'Marshal\'s Silk Gloves'),
(12777, 16441, 0, 0, 36, 'Field Marshal\'s Coronet'),
(12777, 16442, 0, 0, 34, 'Marshal\'s Silk Leggings'),
(12777, 16443, 0, 0, 35, 'Field Marshal\'s Silk Vestments'),
(12777, 16444, 0, 0, 37, 'Field Marshal\'s Silk Spaulders'),
(12777, 16446, 0, 0, 56, 'Marshal\'s Leather Footguards'),
(12777, 16448, 0, 0, 69, 'Marshal\'s Dragonhide Gauntlets'),
(12777, 16449, 0, 0, 73, 'Field Marshal\'s Dragonhide Spaulders'),
(12777, 16450, 0, 0, 70, 'Marshal\'s Dragonhide Legguards'),
(12777, 16451, 0, 0, 72, 'Field Marshal\'s Dragonhide Helmet'),
(12777, 16452, 0, 0, 71, 'Field Marshal\'s Dragonhide Breastplate'),
(12777, 16453, 0, 0, 59, 'Field Marshal\'s Leather Chestpiece'),
(12777, 16454, 0, 0, 57, 'Marshal\'s Leather Handgrips'),
(12777, 16455, 0, 0, 60, 'Field Marshal\'s Leather Mask'),
(12777, 16456, 0, 0, 58, 'Marshal\'s Leather Leggings'),
(12777, 16457, 0, 0, 61, 'Field Marshal\'s Leather Epaulets'),
(12777, 16459, 0, 0, 68, 'Marshal\'s Dragonhide Boots'),
(12777, 16462, 0, 0, 80, 'Marshal\'s Chain Boots'),
(12777, 16463, 0, 0, 81, 'Marshal\'s Chain Grips'),
(12777, 16465, 0, 0, 84, 'Field Marshal\'s Chain Helm'),
(12777, 16466, 0, 0, 83, 'Field Marshal\'s Chain Breastplate'),
(12777, 16467, 0, 0, 82, 'Marshal\'s Chain Legguards'),
(12777, 16468, 0, 0, 85, 'Field Marshal\'s Chain Spaulders'),
(12777, 16471, 0, 0, 117, 'Marshal\'s Lamellar Gloves'),
(12777, 16472, 0, 0, 116, 'Marshal\'s Lamellar Boots'),
(12777, 16473, 0, 0, 119, 'Field Marshal\'s Lamellar Chestplate'),
(12777, 16474, 0, 0, 120, 'Field Marshal\'s Lamellar Faceguard'),
(12777, 16475, 0, 0, 118, 'Marshal\'s Lamellar Legplates'),
(12777, 16476, 0, 0, 121, 'Field Marshal\'s Lamellar Pauldrons'),
(12777, 16477, 0, 0, 107, 'Field Marshal\'s Plate Armor'),
(12777, 16478, 0, 0, 108, 'Field Marshal\'s Plate Helm'),
(12777, 16479, 0, 0, 106, 'Marshal\'s Plate Legguards'),
(12777, 16480, 0, 0, 109, 'Field Marshal\'s Plate Shoulderguards'),
(12777, 16483, 0, 0, 104, 'Marshal\'s Plate Boots'),
(12777, 16484, 0, 0, 105, 'Marshal\'s Plate Gauntlets'),
(12777, 17578, 0, 0, 48, 'Field Marshal\'s Coronal'),
(12777, 17579, 0, 0, 46, 'Marshal\'s Dreadweave Leggings'),
(12777, 17580, 0, 0, 49, 'Field Marshal\'s Dreadweave Shoulders'),
(12777, 17581, 0, 0, 47, 'Field Marshal\'s Dreadweave Robe'),
(12777, 17583, 0, 0, 44, 'Marshal\'s Dreadweave Boots'),
(12777, 17584, 0, 0, 45, 'Marshal\'s Dreadweave Gloves'),
(12777, 17602, 0, 0, 24, 'Field Marshal\'s Headdress'),
(12777, 17603, 0, 0, 22, 'Marshal\'s Satin Pants'),
(12777, 17604, 0, 0, 25, 'Field Marshal\'s Satin Mantle'),
(12777, 17605, 0, 0, 23, 'Field Marshal\'s Satin Vestments'),
(12777, 17607, 0, 0, 20, 'Marshal\'s Satin Sandals'),
(12777, 17608, 0, 0, 21, 'Marshal\'s Satin Gloves'),
(12777, 23272, 0, 0, 112, 'Knight-Captain\'s Lamellar Breastplate'),
(12777, 23273, 0, 0, 113, 'Knight-Captain\'s Lamellar Leggings'),
(12777, 23274, 0, 0, 111, 'Knight-Lieutenant\'s Lamellar Gauntlets'),
(12777, 23275, 0, 0, 110, 'Knight-Lieutenant\'s Lamellar Sabatons'),
(12777, 23276, 0, 0, 114, 'Lieutenant Commander\'s Lamellar Headguard'),
(12777, 23277, 0, 0, 115, 'Lieutenant Commander\'s Lamellar Shoulders'),
(12777, 23278, 0, 0, 74, 'Knight-Lieutenant\'s Chain Greaves'),
(12777, 23279, 0, 0, 75, 'Knight-Lieutenant\'s Chain Vices'),
(12777, 23280, 0, 0, 63, 'Knight-Lieutenant\'s Dragonhide Grips'),
(12777, 23281, 0, 0, 62, 'Knight-Lieutenant\'s Dragonhide Treads'),
(12777, 23282, 0, 0, 39, 'Knight-Lieutenant\'s Dreadweave Handwraps'),
(12777, 23283, 0, 0, 38, 'Knight-Lieutenant\'s Dreadweave Walkers'),
(12777, 23284, 0, 0, 51, 'Knight-Lieutenant\'s Leather Grips'),
(12777, 23285, 0, 0, 50, 'Knight-Lieutenant\'s Leather Walkers'),
(12777, 23286, 0, 0, 99, 'Knight-Lieutenant\'s Plate Gauntlets'),
(12777, 23287, 0, 0, 98, 'Knight-Lieutenant\'s Plate Greaves'),
(12777, 23288, 0, 0, 15, 'Knight-Lieutenant\'s Satin Handwraps'),
(12777, 23289, 0, 0, 14, 'Knight-Lieutenant\'s Satin Walkers'),
(12777, 23290, 0, 0, 27, 'Knight-Lieutenant\'s Silk Handwraps'),
(12777, 23291, 0, 0, 26, 'Knight-Lieutenant\'s Silk Walkers'),
(12777, 23292, 0, 0, 76, 'Knight-Captain\'s Chain Hauberk'),
(12777, 23293, 0, 0, 77, 'Knight-Captain\'s Chain Legguards'),
(12777, 23294, 0, 0, 64, 'Knight-Captain\'s Dragonhide Chestpiece'),
(12777, 23295, 0, 0, 65, 'Knight-Captain\'s Dragonhide Leggings'),
(12777, 23296, 0, 0, 41, 'Knight-Captain\'s Dreadweave Legguards'),
(12777, 23297, 0, 0, 40, 'Knight-Captain\'s Dreadweave Tunic'),
(12777, 23298, 0, 0, 52, 'Knight-Captain\'s Leather Chestpiece'),
(12777, 23299, 0, 0, 53, 'Knight-Captain\'s Leather Legguards'),
(12777, 23300, 0, 0, 100, 'Knight-Captain\'s Plate Hauberk'),
(12777, 23301, 0, 0, 101, 'Knight-Captain\'s Plate Leggings'),
(12777, 23302, 0, 0, 16, 'Knight-Captain\'s Satin Legguards'),
(12777, 23303, 0, 0, 17, 'Knight-Captain\'s Satin Tunic'),
(12777, 23304, 0, 0, 29, 'Knight-Captain\'s Silk Legguards'),
(12777, 23305, 0, 0, 28, 'Knight-Captain\'s Silk Tunic'),
(12777, 23306, 0, 0, 78, 'Lieutenant Commander\'s Chain Helm'),
(12777, 23307, 0, 0, 79, 'Lieutenant Commander\'s Chain Shoulders'),
(12777, 23308, 0, 0, 66, 'Lieutenant Commander\'s Dragonhide Headguard'),
(12777, 23309, 0, 0, 67, 'Lieutenant Commander\'s Dragonhide Shoulders'),
(12777, 23310, 0, 0, 42, 'Lieutenant Commander\'s Dreadweave Cowl'),
(12777, 23311, 0, 0, 43, 'Lieutenant Commander\'s Dreadweave Spaulders'),
(12777, 23312, 0, 0, 54, 'Lieutenant Commander\'s Leather Helm'),
(12777, 23313, 0, 0, 55, 'Lieutenant Commander\'s Leather Shoulders'),
(12777, 23314, 0, 0, 102, 'Lieutenant Commander\'s Plate Helmet'),
(12777, 23315, 0, 0, 103, 'Lieutenant Commander\'s Plate Shoulders'),
(12777, 23316, 0, 0, 18, 'Lieutenant Commander\'s Satin Hood'),
(12777, 23317, 0, 0, 19, 'Lieutenant Commander\'s Satin Mantle'),
(12777, 23318, 0, 0, 30, 'Lieutenant Commander\'s Silk Cowl'),
(12777, 23319, 0, 0, 31, 'Lieutenant Commander\'s Silk Mantle');

-- Redo 12781 as he's a mix of _template and entry vendor
-- https://www.wowhead.com/classic/npc=12781/master-sergeant-biggins - 4 items
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` NOT IN (15198,18606,18839,18841);
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12781 && `item`=15198; -- Knight's Colors
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12781 && `item`=18606; -- Alliance Battle Standard
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12781 && `item`=18839; -- Combat Healing Potion
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12781 && `item`=18841; -- Combat Mana Potion

-- Lieutenant Karter 12783
-- https://www.wowhead.com/classic/npc=12783/lieutenant-karter#sells 4 items
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 18243 AND `entry` = 12783; -- Black Battlestrider
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 18244 AND `entry` = 12783; -- Black War Ram
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 18241 AND `entry` = 12783; -- Black War Steed Bridle
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 18242 AND `entry` = 12783; -- Reins of the Black War Tiger

-- Lieutenant Jackspring 12784 - Regent Vendor in classic
-- https://www.wowhead.com/classic/npc=12784/lieutenant-jackspring#sells - 17 items
DELETE FROM `npc_vendor` WHERE `entry` = 12784;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12784, 5565, 0, 0, 17, 'Infernal Stone'),
(12784, 16583, 0, 0, 18, 'Demonic Figurine'),
(12784, 17020, 0, 0, 9, 'Arcane Powder'),
(12784, 17021, 0, 0, 14, 'Wild Berries'),
(12784, 17026, 0, 0, 15, 'Wild Thornroot'),
(12784, 17028, 0, 0, 12, 'Holy Candle'),
(12784, 17029, 0, 0, 13, 'Sacred Candle'),
(12784, 17030, 0, 0, 10, 'Ankh'), -- missing in vmangos!
(12784, 17031, 0, 0, 7, 'Rune of Teleportation'),
(12784, 17032, 0, 0, 8, 'Rune of Portals'),
(12784, 17033, 0, 0, 11, 'Symbol of Divinity'),
(12784, 17034, 0, 0, 1, 'Maple Seed'),
(12784, 17035, 0, 0, 2, 'Stranglethorn Seed'),
(12784, 17036, 0, 0, 3, 'Ashwood Seed'),
(12784, 17037, 0, 0, 4, 'Hornbeam Seed'),
(12784, 17038, 0, 0, 5, 'Ironwood Seed'),
(12784, 21177, 0, 0, 19, 'Symbol of Kings');

-- https://www.wowhead.com/classic/npc=12785/sergeant-major-clate#sells - 35 items
DELETE FROM `npc_vendor` WHERE `entry` = 12785;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12785, 117, 0, 0, 0, 'Tough Jerky'),
(12785, 159, 0, 0, 0, 'Refreshing Spring Water'),
-- (12785, 414, 0, 0, 0, 'Dalaran Sharp'),
-- (12785, 422, 0, 0, 0, 'Dwarven Mild'),
(12785, 1179, 0, 0, 0, 'Ice Cold Milk'),
(12785, 1205, 0, 0, 0, 'Melon Juice'),
(12785, 1645, 0, 0, 0, 'Moonberry Juice'),
-- (12785, 1707, 0, 0, 0, 'Stormwind Brie'),
(12785, 1708, 0, 0, 0, 'Sweet Nectar'),
-- (12785, 2070, 0, 0, 0, 'Darnassian Bleu'),
(12785, 2287, 0, 0, 0, 'Haunch of Meat'),
(12785, 3770, 0, 0, 0, 'Mutton Chop'),
(12785, 3771, 0, 0, 0, 'Wild Hog Shank'),
-- (12785, 3927, 0, 0, 0, 'Fine Aged Cheddar'),
(12785, 4540, 0, 0, 0, 'Tough Hunk of Bread'),
(12785, 4541, 0, 0, 0, 'Freshly Baked Bread'),
(12785, 4542, 0, 0, 0, 'Moist Cornbread'),
(12785, 4544, 0, 0, 0, 'Mulgore Spice Bread'),
(12785, 4599, 0, 0, 0, 'Cured Ham Steak'),
(12785, 4601, 0, 0, 0, 'Soft Banana Bread'),
(12785, 8766, 0, 0, 0, 'Morning Glory Dew'),
-- (12785, 8932, 0, 0, 0, 'Alterac Swiss'),
(12785, 8950, 0, 0, 0, 'Homemade Cherry Pie'),
(12785, 8952, 0, 0, 0, 'Roasted Quail'),
(12785, 4536, 0, 0, 25, 'Shiny Red Apple'),
(12785, 4537, 0, 0, 26, 'Tel\'Abim Banana'),
(12785, 4538, 0, 0, 27, 'Snapvine Watermelon'),
(12785, 4539, 0, 0, 28, 'Goldenbark Apple'),
(12785, 4602, 0, 0, 29, 'Moon Harvest Pumpkin'),
(12785, 8953, 0, 0, 30, 'Deep Fried Plantains'),
(12785, 4604, 0, 0, 31, 'Forest Mushroom Cap'),
(12785, 4605, 0, 0, 32, 'Red-speckled Mushroom'),
(12785, 4606, 0, 0, 33, 'Spongy Morel'),
(12785, 4607, 0, 0, 34, 'Delicious Cave Mold'),
(12785, 4608, 0, 0, 35, 'Raw Black Truffle'),
(12785, 8948, 0, 0, 36, 'Dried King Bolete'),
(12785, 2723, 0, 0, 37, 'Bottle of Pinot Noir'),
(12785, 2593, 0, 0, 38, 'Flask of Port'),
(12785, 2596, 0, 0, 39, 'Skin of Dwarven Stout'),
(12785, 2594, 0, 0, 40, 'Flagon of Mead'),
(12785, 2595, 0, 0, 41, 'Jug of Bourbon');

UPDATE `npc_vendor` SET `slot`=19 WHERE `entry`=12785 && `item`=117; -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12785 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=12785 && `item`=414; -- Dalaran Sharp
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=12785 && `item`=422; -- Dwarven Mild
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12785 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12785 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=12785 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=12785 && `item`=1707; -- Stormwind Brie
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12785 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=12785 && `item`=2070; -- Darnassian Bleu
UPDATE `npc_vendor` SET `slot`=20 WHERE `entry`=12785 && `item`=2287; -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=21 WHERE `entry`=12785 && `item`=3770; -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=22 WHERE `entry`=12785 && `item`=3771; -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=17 WHERE `entry`=12785 && `item`=3927; -- Fine Aged Cheddar
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=12785 && `item`=4540; -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=12785 && `item`=4541; -- Freshly Baked Bread
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=12785 && `item`=4542; -- Moist Cornbread
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=12785 && `item`=4544; -- Mulgore Spice Bread
UPDATE `npc_vendor` SET `slot`=23 WHERE `entry`=12785 && `item`=4599; -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=12785 && `item`=4601; -- Soft Banana Bread
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=12785 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=18 WHERE `entry`=12785 && `item`=8932; -- Alterac Swiss
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=12785 && `item`=8950; -- Homemade Cherry Pie
UPDATE `npc_vendor` SET `slot`=24 WHERE `entry`=12785 && `item`=8952; -- Roasted Quail

-- MISSING SPAWN!
-- https://www.wowhead.com/classic/npc=12782/captain-oneal - 21 Items
DELETE FROM `npc_vendor` WHERE `entry` = 12782;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12782, 12584, 0, 0, 0, 'Grand Marshal\'s Longsword'),
(12782, 18825, 0, 0, 0, 'Grand Marshal\'s Aegis'),
(12782, 18827, 0, 0, 0, 'Grand Marshal\'s Handaxe'),
(12782, 18830, 0, 0, 0, 'Grand Marshal\'s Sunderer'),
(12782, 18833, 0, 0, 0, 'Grand Marshal\'s Bullseye'),
(12782, 18836, 0, 0, 0, 'Grand Marshal\'s Repeater'),
(12782, 18838, 0, 0, 0, 'Grand Marshal\'s Dirk'),
(12782, 18843, 0, 0, 0, 'Grand Marshal\'s Right Hand Blade'),
(12782, 18847, 0, 0, 0, 'Grand Marshal\'s Left Hand Blade'),
(12782, 18855, 0, 0, 0, 'Grand Marshal\'s Hand Cannon'),
(12782, 18865, 0, 0, 0, 'Grand Marshal\'s Punisher'),
(12782, 18867, 0, 0, 0, 'Grand Marshal\'s Battle Hammer'),
(12782, 18869, 0, 0, 0, 'Grand Marshal\'s Glaive'),
(12782, 18873, 0, 0, 0, 'Grand Marshal\'s Stave'),
(12782, 18876, 0, 0, 0, 'Grand Marshal\'s Claymore'),
(12782, 23451, 0, 0, 0, 'Grand Marshal\'s Mageblade'),
(12782, 23452, 0, 0, 0, 'Grand Marshal\'s Tome of Power'),
(12782, 23453, 0, 0, 0, 'Grand Marshal\'s Tome of Restoration'),
(12782, 23454, 0, 0, 0, 'Grand Marshal\'s Warhammer'),
(12782, 23455, 0, 0, 0, 'Grand Marshal\'s Demolisher'),
(12782, 23456, 0, 0, 0, 'Grand Marshal\'s Swiftblade');

UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 18876 AND `entry` = 12782; -- Grand Marshal's Claymore
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 18830 AND `entry` = 12782; -- Grand Marshal's Sunderer
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 18867 AND `entry` = 12782; -- Grand Marshal's Battle Hammer
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 23455 AND `entry` = 12782; -- Grand Marshal's Demolisher
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 18869 AND `entry` = 12782; -- Grand Marshal's Glaive
UPDATE `npc_vendor` SET `slot` = 6 WHERE `item` = 18827 AND `entry` = 12782; -- Grand Marshal's Handaxe
UPDATE `npc_vendor` SET `slot` = 7 WHERE `item` = 12584 AND `entry` = 12782; -- Grand Marshal's Longsword
UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 23456 AND `entry` = 12782; -- Grand Marshal's Swiftblade
UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 18865 AND `entry` = 12782; -- Grand Marshal's Punisher
UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 23454 AND `entry` = 12782; -- Grand Marshal's Warhammer
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 18843 AND `entry` = 12782; -- Grand Marshal's Right Hand Blade
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 18847 AND `entry` = 12782; -- Grand Marshal's Left Hand Blade
UPDATE `npc_vendor` SET `slot` = 13 WHERE `item` = 18838 AND `entry` = 12782; -- Grand Marshal's Dirk
UPDATE `npc_vendor` SET `slot` = 14 WHERE `item` = 18825 AND `entry` = 12782; -- Grand Marshal's Aegis
UPDATE `npc_vendor` SET `slot` = 15 WHERE `item` = 18833 AND `entry` = 12782; -- Grand Marshal's Bullseye
UPDATE `npc_vendor` SET `slot` = 16 WHERE `item` = 18836 AND `entry` = 12782; -- Grand Marshal's Repeater
UPDATE `npc_vendor` SET `slot` = 17 WHERE `item` = 18855 AND `entry` = 12782; -- Grand Marshal's Hand Cannon
UPDATE `npc_vendor` SET `slot` = 18 WHERE `item` = 18873 AND `entry` = 12782; -- Grand Marshal's Stave
UPDATE `npc_vendor` SET `slot` = 19 WHERE `item` = 23451 AND `entry` = 12782; -- Grand Marshal's Mageblade
UPDATE `npc_vendor` SET `slot` = 20 WHERE `item` = 23452 AND `entry` = 12782; -- Grand Marshal's Tome of Power
UPDATE `npc_vendor` SET `slot` = 21 WHERE `item` = 23453 AND `entry` = 12782; -- Grand Marshal's Tome of Restoration

-- Officer Areyn 12805 - alliance outside
-- https://www.wowhead.com/classic/npc=12805/officer-areyn - 26 items
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12805 && `item`=15196; -- Private's Tabard
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12805 && `item`=18854; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12805 && `item`=18856; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12805 && `item`=18857; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=12805 && `item`=18858; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=12805 && `item`=18859; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=12805 && `item`=18862; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=12805 && `item`=18863; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=12805 && `item`=18864; -- Insignia of the Alliance*
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=12805 && `item`=18440; -- Sergeant's Cape
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=12805 && `item`=18441; -- Sergeant's Cape
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=12805 && `item`=16342; -- Sergeant's Cape
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=12805 && `item`=18442; -- Master Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=12805 && `item`=18444; -- Master Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=12805 && `item`=18443; -- Master Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=12805 && `item`=18457; --
UPDATE `npc_vendor` SET `slot`=17 WHERE `entry`=12805 && `item`=18456; --
UPDATE `npc_vendor` SET `slot`=18 WHERE `entry`=12805 && `item`=18453; --
UPDATE `npc_vendor` SET `slot`=19 WHERE `entry`=12805 && `item`=18452; --
UPDATE `npc_vendor` SET `slot`=20 WHERE `entry`=12805 && `item`=18455; --
UPDATE `npc_vendor` SET `slot`=21 WHERE `entry`=12805 && `item`=18454; --
UPDATE `npc_vendor` SET `slot`=22 WHERE `entry`=12805 && `item`=18449; --
UPDATE `npc_vendor` SET `slot`=23 WHERE `entry`=12805 && `item`=18448; --
UPDATE `npc_vendor` SET `slot`=24 WHERE `entry`=12805 && `item`=18447; -- Sergeant Major's Plate Wristguards
UPDATE `npc_vendor` SET `slot`=25 WHERE `entry`=12805 && `item`=18445; -- Sergeant Major's Plate Wristguards
UPDATE `npc_vendor` SET `slot`=26 WHERE `entry`=12805 && `item`=18664; -- A Treatise on Military Ranks

-- =====
-- HORDE
-- =====

-- Lady Palanseer 12792,24668,26397 (549,545,552,562);
-- https://www.wowhead.com/classic/npc=12792/lady-palanseer - 84 items
DELETE FROM `npc_vendor` WHERE `entry` = 12792; -- keep 96 items as is
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12792, 22859, 0, 0, 14, 'Blood Guard\'s Satin Walkers'),
(12792, 22869, 0, 0, 15, 'Blood Guard\'s Satin Handwraps'),
(12792, 22882, 0, 0, 16, 'Legionnaire\'s Satin Legguards'),
(12792, 22885, 0, 0, 17, 'Legionnaire\'s Satin Tunic'),
(12792, 23262, 0, 0, 18, 'Champion\'s Satin Mantle'),
(12792, 23261, 0, 0, 19, 'Champion\'s Satin Hood'),
(12792, 17618, 0, 0, 20, 'General\'s Satin Boots'),
(12792, 17620, 0, 0, 21, 'General\'s Satin Gloves'),
(12792, 17624, 0, 0, 22, 'Warlord\'s Satin Robes'),
(12792, 17625, 0, 0, 23, 'General\'s Satin Leggings'),
(12792, 17623, 0, 0, 24, 'Warlord\'s Satin Cowl'),
(12792, 17622, 0, 0, 25, 'Warlord\'s Satin Mantle'),
(12792, 22860, 0, 0, 26, 'Blood Guard\'s Silk Walkers'),
(12792, 22870, 0, 0, 27, 'Blood Guard\'s Silk Handwraps'),
(12792, 22883, 0, 0, 28, 'Legionnaire\'s Silk Legguards'),
(12792, 22886, 0, 0, 29, 'Legionnaire\'s Silk Tunic'),
(12792, 23264, 0, 0, 30, 'Champion\'s Silk Mantle'),
(12792, 23263, 0, 0, 31, 'Champion\'s Silk Cowl'),
(12792, 16539, 0, 0, 32, 'General\'s Silk Boots'),
(12792, 16540, 0, 0, 33, 'General\'s Silk Handguards'),
(12792, 16534, 0, 0, 34, 'General\'s Silk Trousers'),
(12792, 16535, 0, 0, 35, 'Warlord\'s Silk Raiment'),
(12792, 16533, 0, 0, 36, 'Warlord\'s Silk Cowl'),
(12792, 16536, 0, 0, 37, 'Warlord\'s Silk Amice'),
(12792, 22855, 0, 0, 38, 'Blood Guard\'s Dreadweave Walkers'),
(12792, 22865, 0, 0, 39, 'Blood Guard\'s Dreadweave Handwraps'),
(12792, 22881, 0, 0, 40, 'Legionnaire\'s Dreadweave Legguards'),
(12792, 22884, 0, 0, 41, 'Legionnaire\'s Dreadweave Tunic'),
(12792, 23256, 0, 0, 42, 'Champion\'s Dreadweave Spaulders'),
(12792, 23255, 0, 0, 43, 'Champion\'s Dreadweave Cowl'),
(12792, 17586, 0, 0, 44, 'General\'s Dreadweave Boots'),
(12792, 17588, 0, 0, 45, 'General\'s Dreadweave Gloves'),
(12792, 17593, 0, 0, 46, 'General\'s Dreadweave Pants'),
(12792, 17592, 0, 0, 47, 'Warlord\'s Dreadweave Robe'),
(12792, 17590, 0, 0, 48, 'Warlord\'s Dreadweave Mantle'),
(12792, 17591, 0, 0, 49, 'Warlord\'s Dreadweave Hood'),
(12792, 22856, 0, 0, 50, 'Blood Guard\'s Leather Walkers'),
(12792, 22864, 0, 0, 51, 'Blood Guard\'s Leather Grips'),
(12792, 22880, 0, 0, 52, 'Legionnaire\'s Leather Legguards'),
(12792, 22879, 0, 0, 53, 'Legionnaire\'s Leather Chestpiece'),
(12792, 23258, 0, 0, 54, 'Champion\'s Leather Shoulders'),
(12792, 23257, 0, 0, 55, 'Champion\'s Leather Helm'),
(12792, 16558, 0, 0, 56, 'General\'s Leather Treads'),
(12792, 16560, 0, 0, 57, 'General\'s Leather Mitts'),
(12792, 16564, 0, 0, 58, 'General\'s Leather Legguards'),
(12792, 16563, 0, 0, 59, 'Warlord\'s Leather Breastplate'),
(12792, 16562, 0, 0, 60, 'Warlord\'s Leather Spaulders'),
(12792, 16561, 0, 0, 61, 'Warlord\'s Leather Helm'),
(12792, 22852, 0, 0, 62, 'Blood Guard\'s Dragonhide Treads'),
(12792, 22863, 0, 0, 63, 'Blood Guard\'s Dragonhide Grips'),
(12792, 22878, 0, 0, 64, 'Legionnaire\'s Dragonhide Leggings'),
(12792, 22877, 0, 0, 65, 'Legionnaire\'s Dragonhide Chestpiece'),
(12792, 23254, 0, 0, 66, 'Champion\'s Dragonhide Shoulders'),
(12792, 23253, 0, 0, 67, 'Champion\'s Dragonhide Headguard'),
(12792, 16554, 0, 0, 68, 'General\'s Dragonhide Boots'),
(12792, 16555, 0, 0, 69, 'General\'s Dragonhide Gloves'),
(12792, 16552, 0, 0, 70, 'General\'s Dragonhide Leggings'),
(12792, 16549, 0, 0, 71, 'Warlord\'s Dragonhide Hauberk'),
(12792, 16551, 0, 0, 72, 'Warlord\'s Dragonhide Epaulets'),
(12792, 16550, 0, 0, 73, 'Warlord\'s Dragonhide Helmet'),
(12792, 22843, 0, 0, 74, 'Blood Guard\'s Chain Greaves'),
(12792, 22862, 0, 0, 75, 'Blood Guard\'s Chain Vices'),
(12792, 22875, 0, 0, 76, 'Legionnaire\'s Chain Legguards'),
(12792, 22874, 0, 0, 77, 'Legionnaire\'s Chain Hauberk'),
(12792, 23252, 0, 0, 78, 'Champion\'s Chain Shoulders'),
(12792, 23251, 0, 0, 79, 'Champion\'s Chain Helm'),
(12792, 16569, 0, 0, 80, 'General\'s Chain Boots'),
(12792, 16571, 0, 0, 81, 'General\'s Chain Gloves'),
(12792, 16567, 0, 0, 82, 'General\'s Chain Legguards'),
(12792, 16565, 0, 0, 83, 'Warlord\'s Chain Chestpiece'),
(12792, 16568, 0, 0, 84, 'Warlord\'s Chain Shoulders'),
(12792, 16566, 0, 0, 85, 'Warlord\'s Chain Helmet'),
(12792, 22857, 0, 0, 86, 'Blood Guard\'s Mail Greaves'),
(12792, 22867, 0, 0, 87, 'Blood Guard\'s Mail Vices'),
(12792, 22887, 0, 0, 88, 'Legionnaire\'s Mail Legguards'),
(12792, 22876, 0, 0, 89, 'Legionnaire\'s Mail Hauberk'),
(12792, 23260, 0, 0, 90, 'Champion\'s Mail Pauldrons'),
(12792, 23259, 0, 0, 91, 'Champion\'s Mail Headguard'),
(12792, 16573, 0, 0, 92, 'General\'s Mail Boots'),
(12792, 16574, 0, 0, 93, 'General\'s Mail Gauntlets'),
(12792, 16579, 0, 0, 94, 'General\'s Mail Leggings'),
(12792, 16577, 0, 0, 95, 'Warlord\'s Mail Armor'),
(12792, 16580, 0, 0, 96, 'Warlord\'s Mail Spaulders'),
(12792, 16578, 0, 0, 97, 'Warlord\'s Mail Helm'),
(12792, 22858, 0, 0, 98, 'Blood Guard\'s Plate Greaves'),
(12792, 22868, 0, 0, 99, 'Blood Guard\'s Plate Gauntlets'),
(12792, 22873, 0, 0, 100, 'Legionnaire\'s Plate Leggings'),
(12792, 22872, 0, 0, 101, 'Legionnaire\'s Plate Hauberk'),
(12792, 23243, 0, 0, 102, 'Champion\'s Plate Shoulders'),
(12792, 23244, 0, 0, 103, 'Champion\'s Plate Helm'),
(12792, 16545, 0, 0, 104, 'General\'s Plate Boots'),
(12792, 16548, 0, 0, 105, 'General\'s Plate Gauntlets'),
(12792, 16543, 0, 0, 106, 'General\'s Plate Leggings'),
(12792, 16541, 0, 0, 107, 'Warlord\'s Plate Armor'),
(12792, 16544, 0, 0, 108, 'Warlord\'s Plate Shoulders'),
(12792, 16542, 0, 0, 109, 'Warlord\'s Plate Headpiece');

-- Brave Stonehide 12793 - https://www.wowhead.com/classic/npc=12793/brave-stonehide 4 items
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12793 && `item`=15199; -- Stone Guard's Herald
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12793 && `item`=18607; -- Horde Battle Standard
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12793 && `item`=18839; -- Combat Healing Potion
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12793 && `item`=18841; -- Combat Mana Potion

-- Stone Guard Zarg <Food and Drink> 12794
-- https://www.wowhead.com/classic/npc=12794/stone-guard-zarg - 35 items
DELETE FROM `npc_vendor` WHERE `entry` = 12794;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(12794, 117, 0, 0, 0, 'Tough Jerky'),
(12794, 159, 0, 0, 0, 'Refreshing Spring Water'),
-- (12794, 414, 0, 0, 0, 'Dalaran Sharp'),
-- (12794, 422, 0, 0, 0, 'Dwarven Mild'),
(12794, 1179, 0, 0, 0, 'Ice Cold Milk'),
(12794, 1205, 0, 0, 0, 'Melon Juice'),
(12794, 1645, 0, 0, 0, 'Moonberry Juice'),
-- (12794, 1707, 0, 0, 0, 'Stormwind Brie'),
(12794, 1708, 0, 0, 0, 'Sweet Nectar'),
-- (12794, 2070, 0, 0, 0, 'Darnassian Bleu'),
(12794, 2287, 0, 0, 0, 'Haunch of Meat'),
(12794, 3770, 0, 0, 0, 'Mutton Chop'),
(12794, 3771, 0, 0, 0, 'Wild Hog Shank'),
-- (12794, 3927, 0, 0, 0, 'Fine Aged Cheddar'),
(12794, 4540, 0, 0, 0, 'Tough Hunk of Bread'),
(12794, 4541, 0, 0, 0, 'Freshly Baked Bread'),
(12794, 4542, 0, 0, 0, 'Moist Cornbread'),
(12794, 4544, 0, 0, 0, 'Mulgore Spice Bread'),
(12794, 4599, 0, 0, 0, 'Cured Ham Steak'),
(12794, 4601, 0, 0, 0, 'Soft Banana Bread'),
(12794, 8766, 0, 0, 0, 'Morning Glory Dew'),
-- (12794, 8932, 0, 0, 0, 'Alterac Swiss'),
(12794, 8950, 0, 0, 0, 'Homemade Cherry Pie'),
(12794, 8952, 0, 0, 0, 'Roasted Quail'),
(12794, 4536, 0, 0, 25, 'Shiny Red Apple'),
(12794, 4537, 0, 0, 26, 'Tel\'Abim Banana'),
(12794, 4538, 0, 0, 27, 'Snapvine Watermelon'),
(12794, 4539, 0, 0, 28, 'Goldenbark Apple'),
(12794, 4602, 0, 0, 29, 'Moon Harvest Pumpkin'),
(12794, 8953, 0, 0, 30, 'Deep Fried Plantains'),
(12794, 4604, 0, 0, 31, 'Forest Mushroom Cap'),
(12794, 4605, 0, 0, 32, 'Red-speckled Mushroom'),
(12794, 4606, 0, 0, 33, 'Spongy Morel'),
(12794, 4607, 0, 0, 34, 'Delicious Cave Mold'),
(12794, 4608, 0, 0, 35, 'Raw Black Truffle'),
(12794, 8948, 0, 0, 36, 'Dried King Bolete'),
(12794, 2723, 0, 0, 37, 'Bottle of Pinot Noir'),
(12794, 2593, 0, 0, 38, 'Flask of Port'),
(12794, 2596, 0, 0, 39, 'Skin of Dwarven Stout'),
(12794, 2594, 0, 0, 40, 'Flagon of Mead'),
(12794, 2595, 0, 0, 41, 'Jug of Bourbon');

UPDATE `npc_vendor` SET `slot`=19 WHERE `entry`=12794 && `item`=117; -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12794 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=12794 && `item`=414; -- Dalaran Sharp
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=12794 && `item`=422; -- Dwarven Mild
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12794 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12794 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=12794 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=12794 && `item`=1707; -- Stormwind Brie
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12794 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=12794 && `item`=2070; -- Darnassian Bleu
UPDATE `npc_vendor` SET `slot`=20 WHERE `entry`=12794 && `item`=2287; -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=21 WHERE `entry`=12794 && `item`=3770; -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=22 WHERE `entry`=12794 && `item`=3771; -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=17 WHERE `entry`=12794 && `item`=3927; -- Fine Aged Cheddar
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=12794 && `item`=4540; -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=12794 && `item`=4541; -- Freshly Baked Bread
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=12794 && `item`=4542; -- Moist Cornbread
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=12794 && `item`=4544; -- Mulgore Spice Bread
UPDATE `npc_vendor` SET `slot`=23 WHERE `entry`=12794 && `item`=4599; -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=12794 && `item`=4601; -- Soft Banana Bread
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=12794 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=18 WHERE `entry`=12794 && `item`=8932; -- Alterac Swiss
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=12794 && `item`=8950; -- Homemade Cherry Pie
UPDATE `npc_vendor` SET `slot`=24 WHERE `entry`=12794 && `item`=8952; -- Roasted Quail

-- https://www.wowhead.com/classic/npc=12795/first-sergeant-holamahi - 17 items
-- First Sergeant Hola'mahi 12795
UPDATE `npc_vendor` SET `slot` = 17 WHERE `item` = 5565 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `item` = 16583 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 17020 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `item` = 17021 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `item` = 17026 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 17028 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `item` = 17029 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 17030 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `item` = 17031 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 17032 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 17033 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 17034 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 17035 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 17036 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 17037 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 17038 AND `entry` = 12795;
UPDATE `npc_vendor` SET `slot` = 19 WHERE `item` = 21177 AND `entry` = 12795; -- missing in vmangos!

-- https://www.wowhead.com/classic/npc=12796/raider-bork - 4 items
-- Raider Bork
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 18247 AND `entry` = 12796; -- Black War Kodo
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 18245 AND `entry` = 12796; -- Horn of the Black War Wolf
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 18248 AND `entry` = 12796; -- Red Skeletal Warhorse
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 18246 AND `entry` = 12796; -- Whistle of the Black War Raptor

-- Sergeant Thunderhorn 14581
-- https://www.wowhead.com/classic/npc=14581/sergeant-thunderhorn - 21 items
UPDATE `npc_vendor` SET `slot` = 7 WHERE `item` = 16345 AND `entry` = 14581; -- High Warlord's Blade
UPDATE `npc_vendor` SET `slot` = 14 WHERE `item` = 18826 AND `entry` = 14581; -- High Warlord's Shield Wall
UPDATE `npc_vendor` SET `slot` = 6 WHERE `item` = 18828 AND `entry` = 14581; -- High Warlord's Cleaver
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 18831 AND `entry` = 14581; -- High Warlord's Battle Axe
UPDATE `npc_vendor` SET `slot` = 15 WHERE `item` = 18835 AND `entry` = 14581; -- High Warlord's Recurve
UPDATE `npc_vendor` SET `slot` = 16 WHERE `item` = 18837 AND `entry` = 14581; -- High Warlord's Crossbow
UPDATE `npc_vendor` SET `slot` = 13 WHERE `item` = 18840 AND `entry` = 14581; -- High Warlord's Razor
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 18844 AND `entry` = 14581; -- High Warlord's Right Claw
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 18848 AND `entry` = 14581; -- High Warlord's Left Claw
UPDATE `npc_vendor` SET `slot` = 17 WHERE `item` = 18860 AND `entry` = 14581; -- High Warlord's Street Sweeper
UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 18866 AND `entry` = 14581; -- High Warlord's Bludgeon
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 18868 AND `entry` = 14581; -- High Warlord's Pulverizer
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 18871 AND `entry` = 14581; -- High Warlord's Pig Sticker
UPDATE `npc_vendor` SET `slot` = 18 WHERE `item` = 18874 AND `entry` = 14581; -- High Warlord's War Staff
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 18877 AND `entry` = 14581; -- High Warlord's Greatsword
UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 23464 AND `entry` = 14581; -- High Warlord's Battle Mace
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 23465 AND `entry` = 14581; -- High Warlord's Destroyer
UPDATE `npc_vendor` SET `slot` = 19 WHERE `item` = 23466 AND `entry` = 14581; -- High Warlord's Spellblade
UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 23467 AND `entry` = 14581; -- High Warlord's Quickblade
UPDATE `npc_vendor` SET `slot` = 20 WHERE `item` = 23468 AND `entry` = 14581; -- High Warlord's Tome of Destruction
UPDATE `npc_vendor` SET `slot` = 21 WHERE `item` = 23469 AND `entry` = 14581; -- High Warlord's Tome of Mending

-- Sergeant Ba'sha 12799
-- https://www.wowhead.com/classic/npc=12799/sergeant-basha - 26 items
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=12799 && `item`=15197; -- Scout's Tabard
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=12799 && `item`=18834; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=12799 && `item`=18845; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=12799 && `item`=18846; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=12799 && `item`=18849; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=12799 && `item`=18850; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=12799 && `item`=18851; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=12799 && `item`=18852; -- Insignia of the Horde*
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=12799 && `item`=18853; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=12799 && `item`=18427; -- Sergeant's Cloak
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=12799 && `item`=16341; -- Sergeant's Cloak
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=12799 && `item`=18461; -- Sergeant's Cloak
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=12799 && `item`=15200; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=12799 && `item`=18428; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=12799 && `item`=16335; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=12799 && `item`=18437; -- First Sergeant's Silk Cuffs
UPDATE `npc_vendor` SET `slot`=17 WHERE `entry`=12799 && `item`=16486; -- First Sergeant's Silk Cuffs
UPDATE `npc_vendor` SET `slot`=18 WHERE `entry`=12799 && `item`=18435; -- First Sergeant's Leather Armguards*
UPDATE `npc_vendor` SET `slot`=19 WHERE `entry`=12799 && `item`=16497; -- First Sergeant's Leather Armguards*
UPDATE `npc_vendor` SET `slot`=20 WHERE `entry`=12799 && `item`=18436; -- First Sergeant's Dragonhide Armguards
UPDATE `npc_vendor` SET `slot`=21 WHERE `entry`=12799 && `item`=18434; -- First Sergeant's Dragonhide Armguards
UPDATE `npc_vendor` SET `slot`=22 WHERE `entry`=12799 && `item`=18432; -- First Sergeant's Mail Wristguards*
UPDATE `npc_vendor` SET `slot`=23 WHERE `entry`=12799 && `item`=16532; -- First Sergeant's Mail Wristguards*
UPDATE `npc_vendor` SET `slot`=24 WHERE `entry`=12799 && `item`=18430; -- First Sergeant's Plate Bracers*
UPDATE `npc_vendor` SET `slot`=25 WHERE `entry`=12799 && `item`=18429; -- First Sergeant's Plate Bracers*
UPDATE `npc_vendor` SET `slot`=26 WHERE `entry`=12799 && `item`=18675; -- Military Ranks of the Horde & Alliance

-- BONUS

UPDATE `creature` SET `position_x` = -8759.2, `position_y` = 389.122, `position_z` = 101.139, `orientation` = 0.715585, `spawntimesecsmin` = 30, `spawntimesecsmax` = 30 WHERE `id` = 12805;
UPDATE `creature` SET `position_x` = 1632.21, `position_y` = -4262.19, `position_z` = 49.027, `orientation` = 3.63028, `spawntimesecsmin` = 30, `spawntimesecsmax` = 30 WHERE `id` = 12799;

-- Increased to 10 in TBC
UPDATE `item_template` SET `maxcount` = 5 WHERE `entry` = 18839; -- https://www.wowhead.com/classic/item=18839
UPDATE `item_template` SET `maxcount` = 5 WHERE `entry` = 18841; -- https://www.wowhead.com/classic/item=18841

UPDATE `creature_template` SET `scale` = 1.35 WHERE `entry` = 12791; -- Chieftain Earthbind (classic only)

-- Seemingly no usage for cmangos 1.13
-- Honor Rank Requirements (vmangos)
-- UPDATE `item_template` SET `RequiredHonorRank` = 9 WHERE `entry` = 16315; -- Sergeant Major's Cape
-- UPDATE `item_template` SET `RequiredHonorRank` = 9 WHERE `entry` = 16336; -- Sergeant Major's Cape
-- UPDATE `item_template` SET `RequiredHonorRank` = 9 WHERE `entry` = 16337; -- Sergeant Major's Cape
-- UPDATE `item_template` SET `RequiredHonorRank` = 11 WHERE `entry` = 16338; -- Knight-Lieutenant's Steed
-- UPDATE `item_template` SET `RequiredHonorRank` = 15 WHERE `entry` = 16339; -- Commander's Steed
-- UPDATE `item_template` SET `RequiredHonorRank` = 11 WHERE `entry` = 16343; -- Blood Guard's Mount
-- UPDATE `item_template` SET `RequiredHonorRank` = 15 WHERE `entry` = 16344; -- Lieutenant General's Mount
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16367; -- Knight-Captain's Silk Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16370; -- Knight-Captain's Silk Cuffs
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16394; -- Knight-Captain's Leather Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16395; -- Knight-Captain's Dragonhide Armsplints
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16398; -- Knight-Captain's Leather Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16399; -- Knight-Captain's Dragonhide Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16400; -- Knight-Captain's Chain Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16402; -- Knight-Captain's Chain Armguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16404; -- Knight-Captain's Plate Wristguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16407; -- Knight-Captain's Plate Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16411; -- Knight-Captain's Lamellar Cinch
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16412; -- Knight-Captain's Lamellar Armsplints
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16438; -- Marshal's Silk Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16439; -- Marshal's Silk Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16445; -- Marshal's Dragonhide Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16447; -- Marshal's Dragonhide Waistguard
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16458; -- Marshal's Leather Cinch
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16460; -- Marshal's Leather Armsplints
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16461; -- Marshal's Chain Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16464; -- Marshal's Chain Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16469; -- Marshal's Lamellar Armguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16470; -- Marshal's Lamellar Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16481; -- Marshal's Plate Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16482; -- Marshal's Plate Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16488; -- Legionnaire's Silk Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16493; -- Legionnaire's Dragonhide Armguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16495; -- Legionnaire's Dragonhide Waistband
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16500; -- Legionnaire's Leather Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16511; -- Legionnaire's Plate Cinch
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16512; -- Legionnaire's Plate Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16517; -- Legionnaire's Chain Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16520; -- Legionnaire's Mail Cinch
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 16529; -- Legionnaire's Chain Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16537; -- General's Silk Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16538; -- General's Silk Cuffs
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16546; -- General's Plate Armguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16547; -- General's Plate Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16553; -- General's Dragonhide Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16556; -- General's Dragonhide Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16557; -- General's Leather Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16559; -- General's Leather Armsplints
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16570; -- General's Chain Wristguards
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16572; -- General's Chain Girdle
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16575; -- General's Mail Waistband
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 16576; -- General's Mail Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17563; -- Knight-Captain's Dreadweave Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17565; -- Knight-Captain's Dreadweave Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17574; -- Legionnaire's Dreadweave Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17575; -- Legionnaire's Dreadweave Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17582; -- Marshal's Dreadweave Cuffs
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17585; -- Marshal's Dreadweave Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17587; -- General's Dreadweave Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17589; -- General's Dreadweave Belt
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17595; -- Knight-Captain's Satin Cuffs
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17597; -- Knight-Captain's Satin Cord
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17606; -- Marshal's Satin Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17609; -- Marshal's Satin Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17614; -- Legionnaire's Satin Sash
-- UPDATE `item_template` SET `RequiredHonorRank` = 12 WHERE `entry` = 17615; -- Legionnaire's Satin Cuffs
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17619; -- General's Satin Bracers
-- UPDATE `item_template` SET `RequiredHonorRank` = 16 WHERE `entry` = 17621; -- General's Satin Cinch
-- UPDATE `item_template` SET `RequiredHonorRank` = 7 WHERE `entry` = 18438; -- Sergeant's Mark

