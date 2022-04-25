-- Improve Loot for Arena Treasure Chest 179697 - Gurubashi Arena Booty Run
-- https://tbc.wowhead.com/object=179697/arena-treasure-chest#comments
-- https://web.archive.org/web/20080113055622/http://wow.allakhazam.com:80/db/object.html?wobject=429
-- 46 - 51
DELETE FROM gameobject_loot_template WHERE entry=16718;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(16718, 18706, 100, 0, 1, 1, 0, 'Arena Master'), -- Arena Master	81.32%	(4602 in 5659) 97

-- find pattern behind these
(16718, 6149, 50, 0, 2, 5, 0, 'Greater Mana Potion'), -- Greater Mana Potion	43.98%	(2489 in 5659) 45 43.2
(16718, 3928, 50, 0, 2, 5, 0, 'Superior Healing Potion'), -- Superior Healing Potion	39.39%	(2229 in 5659) 41 36.4
(16718, 1710, 25, 0, 2, 5, 0, 'Greater Healing Potion'), -- Greater Healing Potion	21.43%	(1213 in 5659) 21 20.5
(16718, 3827, 25, 0, 2, 5, 0, 'Mana Potion'), -- Mana Potion	23.64%	(1338 in 5659) 26 18.9

-- one random item group 1
(16718, 18712, 7, 1, 1, 1, 0, 'Arena Vambraces'), -- Arena Vambraces	6.03%	(341 in 5659) 9
(16718, 18711, 7, 1, 1, 1, 0, 'Arena Bands'), -- Arena Bands	5.62%	(318 in 5659) 8
(16718, 18710, 7, 1, 1, 1, 0, 'Arena Bracers'), -- Arena Bracers	5.11%	(289 in 5659) 7
(16718, 18709, 7, 1, 1, 1, 0, 'Arena Wristguards'), -- Arena Wristguards	5.78%	(327 in 5659) 8

(16718, 4500, 2, 1, 1, 1, 0, 'Traveler\'s Backpack'), -- Traveler's Backpack	2.16%	(122 in 5659) 1.6
(16718, 3914, 1, 1, 1, 1, 0, 'Journeyman\'s Backpack'), -- Journeyman's Backpack	0.18%	(10 in 5659) 3

(16718, 7910, 1, 1, 1, 1, 0, 'Star Ruby'), -- Star Ruby	0.99%	(56 in 5659) 1.1
(16718, 7909, 1, 1, 1, 1, 0, 'Aquamarine'), -- Aquamarine	1.25%	(71 in 5659) 1.1

-- Sets
(16718, 8126, 0, 1, 1, 1, 0, 'Myrmidon\'s Breastplate'), -- Myrmidon's Breastplate	0.28%	(16 in 5659) 0.4
(16718, 8132, 0, 1, 1, 1, 0, 'Myrmidon\'s Leggings'), -- Myrmidon's Leggings	0.28%	(16 in 5659) 0.5
(16718, 8134, 0, 1, 1, 1, 0, 'Myrmidon\'s Defender'), -- Myrmidon's Defender	0.04%	(2 in 5659) 0.12
(16718, 8245, 0, 1, 1, 1, 0, 'Imperial Red Tunic'), -- 0
(16718, 8246, 0, 1, 1, 1, 0, 'Imperial Red Boots'), -- Imperial Red Boots	0.27%	(15 in 5659) 0.4
(16718, 8247, 0, 1, 1, 1, 0, 'Imperial Red Bracers'), -- Imperial Red Bracers	0.35%	(20 in 5659) 0.4
(16718, 8249, 0, 1, 1, 1, 0, 'Imperial Red Gloves'), -- Imperial Red Gloves	0.42%	(24 in 5659) 0.5
(16718, 8250, 0, 1, 1, 1, 0, 'Imperial Red Mantle'), -- Imperial Red Mantle	0.25%	(14 in 5659) 0.4
(16718, 8251, 0, 1, 1, 1, 0, 'Imperial Red Pants'), -- Imperial Red Pants	0.27%	(15 in 5659) 0.4
(16718, 8252, 0, 1, 1, 1, 0, 'Imperial Red Robe'), -- 0
(16718, 8253, 0, 1, 1, 1, 0, 'Imperial Red Sash'), -- Imperial Red Sash	0.39%	(22 in 5659) 0.12
(16718, 8254, 0, 1, 1, 1, 0, 'Imperial Red Circlet'), -- Imperial Red Circlet	0.18%	(10 in 5659) 0.9
(16718, 8256, 0, 1, 1, 1, 0, 'Serpentskin Boots'), -- Serpentskin Boots	0.21%	(12 in 5659) 0.4
(16718, 8258, 0, 1, 1, 1, 0, 'Serpentskin Armor'), -- 0
(16718, 8260, 0, 1, 1, 1, 0, 'Serpentskin Gloves'), -- Serpentskin Gloves	0.32%	(18 in 5659) 0.4
(16718, 8261, 0, 1, 1, 1, 0, 'Serpentskin Helm'), -- Serpentskin Helm	0.27%	(15 in 5659) 0.2
(16718, 8262, 0, 1, 1, 1, 0, 'Serpentskin Leggings'), -- Serpentskin Leggings	0.34%	(19 in 5659) 0.5
(16718, 8263, 0, 1, 1, 1, 0, 'Serpentskin Spaulders'), -- Serpentskin Spaulders	0.28%	(16 in 5659) 0.2
(16718, 8264, 0, 1, 1, 1, 0, 'Ebonhold Wristguards'), -- Ebonhold Wristguards	0.30%	(17 in 5659) 0.12
(16718, 8265, 0, 1, 1, 1, 0, 'Ebonhold Armor'), -- 0
(16718, 8266, 0, 1, 1, 1, 0, 'Ebonhold Cloak'), -- Ebonhold Cloak	0.16%	(9 in 5659) 0.6
(16718, 8267, 0, 1, 1, 1, 0, 'Ebonhold Gauntlets'), -- Ebonhold Gauntlets	0.27%	(15 in 5659) 0.12
(16718, 8268, 0, 1, 1, 1, 0, 'Ebonhold Girdle'), -- Ebonhold Girdle	0.21%	(12 in 5659) 0.2
(16718, 8269, 0, 1, 1, 1, 0, 'Ebonhold Boots'), -- Ebonhold Boots	0.25%	(14 in 5659) 0.2
(16718, 8270, 0, 1, 1, 1, 0, 'Ebonhold Helmet'), -- Ebonhold Helmet	0.37%	(21 in 5659) 0.12
(16718, 8271, 0, 1, 1, 1, 0, 'Ebonhold Leggings'), -- 0
(16718, 8272, 0, 1, 1, 1, 0, 'Ebonhold Shoulderpads'), -- Ebonhold Shoulderpads	0.25%	(14 in 5659) 0.2
(16718, 8275, 0, 1, 1, 1, 0, 'Ebonhold Buckler'), -- Ebonhold Buckler	0.07%	(4 in 5659)
(16718, 8274, 0, 1, 1, 1, 0, 'Valorous Chestguard'), -- Valorous Chestguard	0.25%	(14 in 5659) 0.5
(16718, 8282, 0, 1, 1, 1, 0, 'Valorous Shield'), -- Valorous Shield	0.04%	(2 in 5659)
(16718, 8297, 0, 1, 1, 1, 0, 'Traveler\'s Cloak'), -- Traveler's Cloak	0.32%	(18 in 5659)
(16718, 8311, 0, 1, 1, 1, 0, 'Alabaster Plate Vambraces'), -- Alabaster Plate Vambraces	0.18%	(10 in 5659) 0.4
(16718, 8314, 0, 1, 1, 1, 0, 'Alabaster Plate Gauntlets'), -- Alabaster Plate Gauntlets	0.28%	(16 in 5659) 0.12
(16718, 8315, 0, 1, 1, 1, 0, 'Alabaster Plate Girdle'), -- Alabaster Plate Girdle	0.21%	(12 in 5659) 0.6
(16718, 8316, 0, 1, 1, 1, 0, 'Alabaster Plate Greaves'), -- Alabaster Plate Greaves	0.23%	(13 in 5659) 0.12
(16718, 8317, 0, 1, 1, 1, 0, 'Alabaster Plate Helmet'), -- Alabaster Plate Helmet	0.27%	(15 in 5659) 0.12
(16718, 8318, 0, 1, 1, 1, 0, 'Alabaster Plate Leggings'), -- 0
(16718, 8319, 0, 1, 1, 1, 0, 'Alabaster Plate Pauldrons'), -- Alabaster Plate Pauldrons	0.23%	(13 in 5659)
(16718, 8320, 0, 1, 1, 1, 0, 'Alabaster Shield'), -- Alabaster Shield	0.04%	(2 in 5659)
(16718, 9943, 0, 1, 1, 1, 0, 'Abjurer\'s Robe'), -- Abjurer's Robe	0.19%	(11 in 5659)
(16718, 9944, 0, 1, 1, 1, 0, 'Abjurer\'s Crystal'), -- Abjurer's Crystal	0.41%	(23 in 5659) 0.12
(16718, 9946, 0, 1, 1, 1, 0, 'Abjurer\'s Tunic'), -- Abjurer's Tunic	0.12%	(7 in 5659)
(16718, 9950, 0, 1, 1, 1, 0, 'Chieftain\'s Breastplate'), -- Chieftain's Breastplate	0.34%	(19 in 5659) 0.2
(16718, 9954, 0, 1, 1, 1, 0, 'Chieftain\'s Leggings'), -- Chieftain's Leggings	0.28%	(16 in 5659) 0.12
(16718, 9958, 0, 1, 1, 1, 0, 'Warmonger\'s Buckler'), -- Warmonger's Buckler	0.04%	(2 in 5659) 0.2
(16718, 10057, 0, 1, 1, 1, 0, 'Duskwoven Tunic'), -- Duskwoven Tunic	0.25%	(14 in 5659) 0.2
(16718, 10061, 0, 1, 1, 1, 0, 'Duskwoven Turban'), -- Duskwoven Turban	0.27%	(15 in 5659) 0.6
(16718, 10062, 0, 1, 1, 1, 0, 'Duskwoven Gloves'), -- Duskwoven Gloves	0.25%	(14 in 5659) 0.6
(16718, 10063, 0, 1, 1, 1, 0, 'Duskwoven Amice'), -- Duskwoven Amice	0.28%	(16 in 5659) 0.4
(16718, 10064, 0, 1, 1, 1, 0, 'Duskwoven Pants'), -- Duskwoven Pants	0.32%	(18 in 5659) 0.2
(16718, 10065, 0, 1, 1, 1, 0, 'Duskwoven Robe'), -- Duskwoven Robe	0.16%	(9 in 5659)
(16718, 10068, 0, 1, 1, 1, 0, 'Righteous Boots'), -- Righteous Boots	0.19%	(11 in 5659) 0.12
(16718, 10070, 0, 1, 1, 1, 0, 'Righteous Armor'), -- Righteous Armor	0.21%	(12 in 5659) 0.2
(16718, 10072, 0, 1, 1, 1, 0, 'Righteous Gloves'), -- Righteous Gloves	0.35%	(20 in 5659) 0.5
(16718, 10073, 0, 1, 1, 1, 0, 'Righteous Helmet'), -- Righteous Helmet	0.28%	(16 in 5659) 0.4
(16718, 10074, 0, 1, 1, 1, 0, 'Righteous Leggings'), -- Righteous Leggings	0.34%	(19 in 5659) 0.6
(16718, 10075, 0, 1, 1, 1, 0, 'Righteous Spaulders'), -- Righteous Spaulders	0.25%	(14 in 5659) 0.12
(16718, 10077, 0, 1, 1, 1, 0, 'Lord\'s Breastplate'), -- Lord's Breastplate	0.34%	(19 in 5659) 0.6
(16718, 10078, 0, 1, 1, 1, 0, 'Lord\'s Crest'), -- Lord's Crest	0.14%	(8 in 5659) 0.4
(16718, 10082, 0, 1, 1, 1, 0, 'Lord\'s Boots'), -- Lord's Boots	0.16%	(9 in 5659) 0.4
(16718, 10083, 0, 1, 1, 1, 0, 'Lord\'s Crown'), -- Lord's Crown	0.18%	(10 in 5659) 0.2
(16718, 10084, 0, 1, 1, 1, 0, 'Lord\'s Legguards'), -- Lord's Legguards	0.19%	(11 in 5659) 0.4
(16718, 10085, 0, 1, 1, 1, 0, 'Lord\'s Pauldrons'), -- Lord's Pauldrons	0.32%	(18 in 5659) 0.4
(16718, 10093, 0, 1, 1, 1, 0, 'Revenant Deflector'), -- Revenant Deflector	0.28%	(16 in 5659) 0.5
(16718, 10095, 0, 1, 1, 1, 0, 'Councillor\'s Boots'), -- 0
(16718, 10096, 0, 1, 1, 1, 0, 'Councillor\'s Cuffs'), -- Councillor's Cuffs	0.37%	(21 in 5659) 0.12
(16718, 10098, 0, 1, 1, 1, 0, 'Councillor\'s Cloak'), -- Councillor's Cloak	0.32%	(18 in 5659) 0.12
(16718, 10099, 0, 1, 1, 1, 0, 'Councillor\'s Gloves'), -- Councillor's Gloves	0.37%	(21 in 5659) 0.7
(16718, 10103, 0, 1, 1, 1, 0, 'Councillor\'s Sash'), -- Councillor's Sash	0.30%	(17 in 5659) 0.12
(16718, 10106, 0, 1, 1, 1, 0, 'Wanderer\'s Boots'), -- 0
(16718, 10107, 0, 1, 1, 1, 0, 'Wanderer\'s Bracers'), -- Wanderer's Bracers	0.28%	(16 in 5659)
(16718, 10108, 0, 1, 1, 1, 0, 'Wanderer\'s Cloak'), -- Wanderer's Cloak	0.37%	(21 in 5659) 0.4
(16718, 10109, 0, 1, 1, 1, 0, 'Wanderer\'s Belt'), -- Wanderer's Belt	0.32%	(18 in 5659) 0.5
(16718, 10110, 0, 1, 1, 1, 0, 'Wanderer\'s Gloves'), -- Wanderer's Gloves	0.27%	(15 in 5659) 0.2
(16718, 10120, 0, 1, 1, 1, 0, 'Ornate Cloak'), -- Ornate Cloak	0.09%	(5 in 5659) 0.5
(16718, 10121, 0, 1, 1, 1, 0, 'Ornate Gauntlets'), -- 0
(16718, 10122, 0, 1, 1, 1, 0, 'Ornate Girdle'), -- Ornate Girdle	0.37%	(21 in 5659) 0.5
(16718, 10125, 0, 1, 1, 1, 0, 'Ornate Pauldrons'), -- 0
(16718, 10126, 0, 1, 1, 1, 0, 'Ornate Bracers'), -- Ornate Bracers	0.39%	(22 in 5659) 0.12
(16718, 10128, 0, 1, 1, 1, 0, 'Revenant Chestplate'), -- Revenant Chestplate	0.32%	(18 in 5659) 0.4
(16718, 10132, 0, 1, 1, 1, 0, 'Revenant Helmet'), -- Revenant Helmet	0.23%	(13 in 5659) 0.2
(16718, 10133, 0, 1, 1, 1, 0, 'Revenant Leggings'), -- Revenant Leggings	0.14%	(8 in 5659)
(16718, 10134, 0, 1, 1, 1, 0, 'Revenant Shoulders'), -- Revenant Shoulders	0.23%	(13 in 5659) 0.2
(16718, 10165, 0, 1, 1, 1, 0, 'Templar Gauntlets'), -- Templar Gauntlets	0.27%	(15 in 5659)
(16718, 10166, 0, 1, 1, 1, 0, 'Templar Girdle'), -- Templar Girdle	0.44%	(25 in 5659) 0.4
(16718, 10167, 0, 1, 1, 1, 0, 'Templar Boots'), -- Templar Boots	0.16%	(9 in 5659) 0.6
(16718, 10168, 0, 1, 1, 1, 0, 'Templar Crown'), -- 0
(16718, 10170, 0, 1, 1, 1, 0, 'Templar Pauldrons'), -- 0
(16718, 10171, 0, 1, 1, 1, 0, 'Templar Bracers'), -- Templar Bracers	0.18%	(10 in 5659) 0.4
(16718, 10172, 0, 1, 1, 1, 0, 'Mystical Mantle'), -- Mystical Mantle	0.21%	(12 in 5659) 0.2
(16718, 10173, 0, 1, 1, 1, 0, 'Mystical Bracers'), -- Mystical Bracers	0.25%	(14 in 5659) 0.4
(16718, 10174, 0, 1, 1, 1, 0, 'Mystical Cape'), -- Mystical Cape	0.30%	(17 in 5659) 0.2
(16718, 10175, 0, 1, 1, 1, 0, 'Mystical Headwrap'), -- Mystical Headwrap	0.23%	(13 in 5659) 0.7
(16718, 10176, 0, 1, 1, 1, 0, 'Mystical Gloves'), -- Mystical Gloves	0.28%	(16 in 5659) 0.5
(16718, 10177, 0, 1, 1, 1, 0, 'Mystical Leggings'), -- 0
(16718, 10179, 0, 1, 1, 1, 0, 'Mystical Boots'), -- Mystical Boots	0.34%	(19 in 5659) 0.5
(16718, 10180, 0, 1, 1, 1, 0, 'Mystical Belt'), -- Mystical Belt	0.51%	(29 in 5659) 0.4
(16718, 10183, 0, 1, 1, 1, 0, 'Swashbuckler\'s Boots'), -- Swashbuckler's Boots	0.39%	(22 in 5659) 0.6
(16718, 10184, 0, 1, 1, 1, 0, 'Swashbuckler\'s Bracers'), -- Swashbuckler's Bracers	0.18%	(10 in 5659)
(16718, 10185, 0, 1, 1, 1, 0, 'Swashbuckler\'s Cape'), -- Swashbuckler's Cape	0.16%	(9 in 5659)
(16718, 10186, 0, 1, 1, 1, 0, 'Swashbuckler\'s Gloves'), -- Swashbuckler's Gloves	0.49%	(28 in 5659) 0.12
(16718, 10187, 0, 1, 1, 1, 0, 'Swashbuckler\'s Eyepatch'), -- Swashbuckler's Eyepatch	0.32%	(18 in 5659) 0.2
(16718, 10188, 0, 1, 1, 1, 0, 'Swashbuckler\'s Leggings'), -- 0
(16718, 10189, 0, 1, 1, 1, 0, 'Swashbuckler\'s Shoulderpads'), -- Swashbuckler's Shoulderpads	0.37%	(21 in 5659) 0.5
(16718, 10190, 0, 1, 1, 1, 0, 'Swashbuckler\'s Belt'), -- Swashbuckler's Belt	0.30%	(17 in 5659) 0.5
(16718, 10191, 0, 1, 1, 1, 0, 'Crusader\'s Armguards'), -- Crusader's Armguards	0.18%	(10 in 5659) 0.6
(16718, 10192, 0, 1, 1, 1, 0, 'Crusader\'s Boots'), -- Crusader's Boots	0.32%	(18 in 5659) 0.5
(16718, 10193, 0, 1, 1, 1, 0, 'Crusader\'s Armor'), -- Crusader's Armor	0.23%	(13 in 5659) 0.2
(16718, 10195, 0, 1, 1, 1, 0, 'Crusader\'s Shield'), -- Crusader's Shield	0.07%	(4 in 5659)
(16718, 10196, 0, 1, 1, 1, 0, 'Crusader\'s Gauntlets'), -- Crusader's Gauntlets	0.23%	(13 in 5659) 0.4
(16718, 10197, 0, 1, 1, 1, 0, 'Crusader\'s Belt'), -- Crusader's Belt	0.11%	(6 in 5659) 0.7
(16718, 10198, 0, 1, 1, 1, 0, 'Crusader\'s Helm'), -- Crusader's Helm	0.34%	(19 in 5659) 0.4
(16718, 10199, 0, 1, 1, 1, 0, 'Crusader\'s Leggings'), -- Crusader's Leggings	0.32%	(18 in 5659) 0.7
(16718, 10200, 0, 1, 1, 1, 0, 'Crusader\'s Pauldrons'), -- Crusader's Pauldrons	0.32%	(18 in 5659) 0.6
(16718, 9974, 0, 1, 1, 1, 0, 'Overlord\'s Shield'), -- Overlord's Shield	0.23%	(13 in 5659) 0.4
(16718, 10203, 0, 1, 1, 1, 0, 'Overlord\'s Chestplate'), -- Overlord's Chestplate	0.30%	(17 in 5659) 0.12
(16718, 10204, 0, 1, 1, 1, 0, 'Heavy Lamellar Shield'), -- Heavy Lamellar Shield	0.09%	(5 in 5659) 0.12
(16718, 10229, 0, 1, 1, 1, 0, 'Engraved Bracers'), -- 0
(16718, 10231, 0, 1, 1, 1, 0, 'Engraved Cape'), -- Engraved Cape	0.25%	(14 in 5659) 0.6
(16718, 10238, 0, 1, 1, 1, 0, 'Heavy Lamellar Boots'), -- Heavy Lamellar Boots	0.41%	(23 in 5659) 0.4
(16718, 10239, 0, 1, 1, 1, 0, 'Heavy Lamellar Vambraces'), -- Heavy Lamellar Vambraces	0.23%	(13 in 5659) 0.2
(16718, 10240, 0, 1, 1, 1, 0, 'Heavy Lamellar Chestpiece'), -- Heavy Lamellar Chestpiece	0.19%	(11 in 5659)  0.2
(16718, 10241, 0, 1, 1, 1, 0, 'Heavy Lamellar Helm'), -- Heavy Lamellar Helm	0.27%	(15 in 5659) 0.12
(16718, 10242, 0, 1, 1, 1, 0, 'Heavy Lamellar Gauntlets'), -- Heavy Lamellar Gauntlets	0.27%	(15 in 5659)
(16718, 10243, 0, 1, 1, 1, 0, 'Heavy Lamellar Girdle'), -- Heavy Lamellar Girdle	0.18%	(10 in 5659) 0.2
(16718, 10244, 0, 1, 1, 1, 0, 'Heavy Lamellar Leggings'), -- Heavy Lamellar Leggings	0.30%	(17 in 5659) 0.12
(16718, 10245, 0, 1, 1, 1, 0, 'Heavy Lamellar Pauldrons'), -- Heavy Lamellar Pauldrons	0.30%	(17 in 5659)
(16718, 15229, 0, 1, 1, 1, 0, 'Blesswind Hammer'), -- Blesswind Hammer	0.32%	(18 in 5659) 0.5
(16718, 15236, 0, 1, 1, 1, 0, 'Moon Cleaver'), -- Moon Cleaver	0.53%	(30 in 5659) 0.7
(16718, 15275, 0, 1, 1, 1, 0, 'Thaumaturgist Staff'), -- Thaumaturgist Staff	0.41%	(23 in 5659) 0.6
(16718, 15280, 0, 1, 1, 1, 0, 'Wizard\'s Hand'), -- Wizard's Hand	0.62%	(35 in 5659) 1
(16718, 15936, 0, 1, 1, 1, 0, 'Duskwoven Branch'), -- Duskwoven Branch	0.09%	(5 in 5659)
(16718, 11976, 0, 1, 1, 1, 0, 'Sardonyx Knuckle'), -- Sardonyx Knuckle	0.18%	(10 in 5659) 0.5
(16718, 15228, 0, 1, 1, 1, 0, 'Smashing Star'), -- Smashing Star	0.55%	(31 in 5659) 0.9
(16718, 15279, 0, 1, 1, 1, 0, 'Ivory Wand'), -- Ivory Wand	0.48%	(27 in 5659) 0.5
(16718, 8286, 0, 1, 1, 1, 0, 'Arcane Cloak'), -- Arcane Cloak	0.23%	(13 in 5659) 0.5
(16718, 15216, 0, 1, 1, 1, 0, 'Rune Sword'), -- Rune Sword	0.25%	(14 in 5659) 0.6
(16718, 15217, 0, 1, 1, 1, 0, 'Widow Blade'), -- Widow Blade	0.57%	(32 in 5659) 1.6
(16718, 15253, 0, 1, 1, 1, 0, 'Beheading Blade'), -- Beheading Blade	0.37%	(21 in 5659) 0.2
(16718, 15295, 0, 1, 1, 1, 0, 'Quillfire Bow'), -- Quillfire Bow	0.53%	(30 in 5659) 0.6
(16718, 12002, 0, 1, 1, 1, 0, 'Marble Circle'), -- Marble Circle	0.21%	(12 in 5659) 0.12
(16718, 12025, 0, 1, 1, 1, 0, 'Selenium Chain'), --  -- 0.12 Selenium Chain	0.21%	(12 in 5659)
(16718, 15237, 0, 1, 1, 1, 0, 'Corpse Harvester'), -- Corpse Harvester	0.78%	(44 in 5659) 0.6
(16718, 15254, 0, 1, 1, 1, 0, 'Dark Espadon'), -- Dark Espadon	0.19%	(11 in 5659) 0.5
(16718, 15274, 0, 1, 1, 1, 0, 'Diviner Long Staff'), -- Diviner Long Staff	0.58%	(33 in 5659) 0.2
(16718, 15291, 0, 1, 1, 1, 0, 'Harpy Needler'), -- Harpy Needler	0.42%	(24 in 5659) 0.6
(16718, 7537, 0, 1, 1, 1, 0, 'Gothic Shield'), -- Gothic Shield	0.02%	(1 in 5659)
(16718, 7557, 0, 1, 1, 1, 0, 'Gothic Shield'), -- Gossamer Rod	0.11%	(6 in 5659) 0.12
(16718, 8106, 0, 1, 1, 1, 0, 'Hibernal Armor'), -- Hibernal Armor	0.16%	(9 in 5659) 0.12
(16718, 8113, 0, 1, 1, 1, 0, 'Hibernal Robe'), -- Hibernal Robe	0.12%	(7 in 5659) 0.12
(16718, 8119, 0, 1, 1, 1, 0, 'Heraldic Breastplate'), -- Heraldic Breastplate	0.19%	(11 in 5659) 0.2
(16718, 10276, 0, 1, 1, 1, 0, 'Emerald Sabatons'), -- 0
(16718, 10278, 0, 1, 1, 1, 0, 'Emerald Sabatons'), -- Emerald Girdle	0.11%	(6 in 5659) 0.4
(16718, 10282, 0, 1, 1, 1, 0, 'Emerald Vambraces'), -- 0
(16718, 11977, 0, 1, 1, 1, 0, 'Serpentine Loop'), -- Serpentine Loop	0.19%	(11 in 5659) 0.4
(16718, 11989, 0, 1, 1, 1, 0, 'Vanadium Loop'), -- Vanadium Loop	0.12%	(7 in 5659) 0.2
(16718, 11990, 0, 1, 1, 1, 0, 'Selenium Loop'), -- Selenium Loop	0.19%	(11 in 5659) 0.5
(16718, 12014, 0, 1, 1, 1, 0, 'Arctic Ring'), -- Arctic Ring	0.39%	(22 in 5659) 0.2
(16718, 12034, 0, 1, 1, 1, 0, 'Marble Necklace'), -- Marble Necklace	0.11%	(6 in 5659)
(16718, 12044, 0, 1, 1, 1, 0, 'Arctic Pendant'), -- Arctic Pendant	0.23%	(13 in 5659) 0.12
(16718, 12055, 0, 1, 1, 1, 0, 'Stardust Band'), -- Stardust Band	0.21%	(12 in 5659) 0.4
(16718, 15294, 0, 1, 1, 1, 0, 'Siege Bow'), -- Siege Bow	0.80%	(45 in 5659) 0.7
(16718, 15930, 0, 1, 1, 1, 0, 'Imperial Red Scepter'), -- Imperial Red Scepter	0.07%	(4 in 5659) 0.12
(16718, 15937, 0, 1, 1, 1, 0, 'Hibernal Sphere'), -- Hibernal Sphere	0.02%	(1 in 5659)

(16718, 3395, 0.3, 1, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'), -- Recipe: Limited Invulnerability Potion	0.05%	(3 in 5659) 0.12 ilvl 50
(16718, 7989, 0.3, 1, 1, 1, 0, 'Plans: Mithril Spurs'), -- Plans: Mithril Spurs	0.14%	(8 in 5659) ilvl 47
(16718, 7990, 0.3, 1, 1, 1, 0, 'Plans: Heavy Mithril Helm'), -- Plans: Heavy Mithril Helm	0.14%	(8 in 5659) 0.12 ilvl 49
(16718, 7991, 0.3, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'), -- Plans: Mithril Scale Shoulders	0.04%	(2 in 5659) ilvl 47
(16718, 7993, 0.3, 1, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'), -- Plans: Dazzling Mithril Rapier	0.09%	(5 in 5659) 0.2 ilvl 48
(16718, 8028, 0.3, 1, 1, 1, 0, 'Plans: Runed Mithril Hammer'), -- Plans: Runed Mithril Hammer	0.05%	(3 in 5659) ilvl 49
(16718, 8389, 0.3, 1, 1, 1, 0, 'Pattern: Big Voodoo Pants'), -- Pattern: Big Voodoo Pants	0.21%	(12 in 5659) ilvl 48
(16718, 8390, 0.3, 1, 1, 1, 0, 'Pattern: Big Voodoo Cloak'), -- Pattern: Big Voodoo Cloak	0.18%	(10 in 5659) 0.12 ilvl 48
(16718, 9295, 0.3, 1, 1, 1, 0, 'Recipe: Invisibility Potion'), -- Recipe: Invisibility Potion	0.12%	(7 in 5659) ilvl 47
(16718, 9297, 0.3, 1, 1, 1, 0, 'Recipe: Elixir of Dream Vision'), -- ilvl 48
(16718, 9298, 0.3, 1, 1, 1, 0, 'Recipe: Elixir of Giants'), -- ilvl 49
(16718, 10315, 0.3, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'), -- Pattern: Red Mageweave Shoulders	0.11%	(6 in 5659) ilvl 47
(16718, 10320, 0.3, 1, 1, 1, 0, 'Pattern: Red Mageweave Headband'), -- Pattern: Red Mageweave Headband	0.07%	(4 in 5659) ilvl 48
(16718, 10608, 0.3, 1, 1, 1, 0, 'Schematic: Sniper Scope'), -- Schematic: Sniper Scope 0.12 ilvl 48
(16718, 11208, 0.3, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'), -- Formula: Enchant Weapon - Demonslaying	0.02%	(1 in 5659) ilvl 46
(16718, 11224, 0.3, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'), -- Formula: Enchant Shield - Frost Resistance	0.04%	(2 in 5659) ilvl 47
(16718, 11225, 0.3, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'), -- Formula: Enchant Bracer - Greater Stamina	0.05%	(3 in 5659) ilvl 49
(16718, 11226, 0.3, 1, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'), -- Formula: Enchant Gloves - Riding Skill 0.2 ilvl 50
(16718, 12261, 0.3, 1, 1, 1, 0, 'Plans: Searing Golden Blade'), -- 
(16718, 12682, 0.3, 1, 1, 1, 0, 'Plans: Thorium Armor'), -- Plans: Thorium Armor	0.25%	(14 in 5659) 0.12 ilvl 50
(16718, 12683, 0.3, 1, 1, 1, 0, 'Plans: Thorium Belt'), -- Plans: Thorium Belt	0.21%	(12 in 5659) ilvl 50
(16718, 12684, 0.3, 1, 1, 1, 0, 'Plans: Thorium Bracers'), -- Plans: Thorium Bracers	0.14%	(8 in 5659) 0.12 ilvl 51
(16718, 12685, 0.3, 1, 1, 1, 0, 'Plans: Radiant Belt'), -- ilvl 52
(16718, 12689, 0.3, 1, 1, 1, 0, 'Plans: Radiant Breastplate'), -- Plans: Radiant Breastplate	0.28%	(16 in 5659) 0.7 ilvl 54
(16718, 12691, 0.3, 1, 1, 1, 0, 'Plans: Wildthorn Mail'), -- Plans: Wildthorn Mail	0.16%	(9 in 5659) 0.4 ilvl 54
(16718, 12692, 0.3, 1, 1, 1, 0, 'Plans: Thorium Shield Spike'), -- Plans: Thorium Shield Spike	0.02%	(1 in 5659) ilvl 55
(16718, 12693, 0.3, 1, 1, 1, 0, 'Plans: Thorium Boots'), -- Plans: Thorium Boots	0.02%	(1 in 5659) ilvl 56
(16718, 12694, 0.3, 1, 1, 1, 0, 'Plans: Thorium Helm'), -- Plans: Thorium Helm	0.02%	(1 in 5659) ilvl 56
(16718, 12695, 0.3, 1, 1, 1, 0, 'Plans: Radiant Gloves'), -- Plans: Radiant Gloves	0.04%	(2 in 5659) ilvl 57
(16718, 12697, 0.3, 1, 1, 1, 0, 'Plans: Radiant Boots'), -- Plans: Radiant Boots	0.11%	(6 in 5659) ilvl 58
(16718, 12698, 0.3, 1, 1, 1, 0, 'Plans: Dawnbringer Shoulders'), -- ilvl 58
(16718, 12702, 0.3, 1, 1, 1, 0, 'Plans: Radiant Circlet'), -- ilvl 59
(16718, 12703, 0.3, 1, 1, 1, 0, 'Plans: Storm Gauntlets'), -- ilvl 59
(16718, 12704, 0.3, 1, 1, 1, 0, 'Plans: Thorium Leggings'), -- Plans: Thorium Leggings	0.16%	(9 in 5659) ilvl 60
(16718, 12711, 0.3, 1, 1, 1, 0, 'Plans: Whitesoul Helm'), -- Plans: Whitesoul Helm	0.02%	(1 in 5659) ilvl 60
(16718, 12713, 0.3, 1, 1, 1, 0, 'Plans: Radiant Leggings'), -- ilvl 61
(16718, 12716, 0.3, 1, 1, 1, 0, 'Plans: Helm of the Great Chief'), -- ilvl 61
(16718, 12717, 0.3, 1, 1, 1, 0, 'Plans: Lionheart Helm'), -- ilvl 61
(16718, 13486, 0.3, 1, 1, 1, 0, 'Recipe: Transmute Undeath to Water'), -- Recipe: Transmute Undeath to Water	0.04%	(2 in 5659) ilvl 55
(16718, 13487, 0.3, 1, 1, 1, 0, 'Recipe: Transmute Water to Undeath'), -- Recipe: Transmute Water to Undeath	0.16%	(9 in 5659) ilvl 55
(16718, 13488, 0.3, 1, 1, 1, 0, 'Recipe: Transmute Life to Earth'), -- Recipe: Transmute Life to Earth	0.04%	(2 in 5659) ilvl 55
(16718, 13489, 0.3, 1, 1, 1, 0, 'Recipe: Transmute Earth to Life'), -- Recipe: Transmute Earth to Life	0.04%	(2 in 5659) ilvl 55
(16718, 13490, 0.3, 1, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'), -- Recipe: Greater Stoneshield Potion	0.09%	(5 in 5659) 0.12 ilvl 56
(16718, 13492, 0.3, 1, 1, 1, 0, 'Recipe: Purification Potion'), -- Recipe: Purification Potion	0.04%	(2 in 5659) 0.2 ilvl 57
(16718, 13493, 0.3, 1, 1, 1, 0, 'Recipe: Greater Arcane Elixir'), -- ilvl 57
(16718, 13518, 0.3, 1, 1, 1, 0, 'Recipe: Flask of Petrification'), -- ilvl 60
(16718, 14466, 0.3, 1, 1, 1, 0, 'Pattern: Frostweave Tunic'), -- Pattern: Frostweave Tunic	0.09%	(5 in 5659) 0.2 ilvl 51
(16718, 14467, 0.3, 1, 1, 1, 0, 'Pattern: Frostweave Robe'), -- Pattern: Frostweave Robe	0.19%	(11 in 5659) ilvl 51
(16718, 14470, 0.3, 1, 1, 1, 0, 'Pattern: Runecloth Tunic'), -- Pattern: Runecloth Tunic	0.12%	(7 in 5659) 0.5 ilvl 52
(16718, 14474, 0.3, 1, 1, 1, 0, 'Pattern: Frostweave Gloves'), -- Pattern: Frostweave Gloves	0.14%	(8 in 5659) ilvl 53
(16718, 14478, 0.3, 1, 1, 1, 0, 'Pattern: Brightcloth Robe'), -- Pattern: Brightcloth Robe	0.14%	(8 in 5659) 0.4 ilvl 54
(16718, 14479, 0.3, 1, 1, 1, 0, 'Pattern: Brightcloth Gloves'), -- Pattern: Brightcloth Gloves	0.32%	(18 in 5659) ilvl 54
(16718, 14484, 0.3, 1, 1, 1, 0, 'Pattern: Brightcloth Cloak'), -- Pattern: Brightcloth Cloak	0.27%	(15 in 5659) ilvl 55
(16718, 14489, 0.3, 1, 1, 1, 0, 'Pattern: Frostweave Pants'), -- Pattern: Frostweave Pants	0.04%	(2 in 5659) 0.12 ilvl 56
(16718, 14491, 0.3, 1, 1, 1, 0, 'Pattern: Runecloth Pants'), -- Pattern: Runecloth Pants	0.05%	(3 in 5659) ilvl 57
(16718, 14492, 0.3, 1, 1, 1, 0, 'Pattern: Felcloth Boots'), -- Pattern: Felcloth Boots	0.04%	(2 in 5659) ilvl 57
(16718, 14494, 0.3, 1, 1, 1, 0, 'Pattern: Brightcloth Pants'), -- Pattern: Brightcloth Pants	0.11%	(6 in 5659) ilvl 58
(16718, 14496, 0.3, 1, 1, 1, 0, 'Pattern: Felcloth Hood'), -- Pattern: Felcloth Hood	0.07%	(4 in 5659) ilvl 58
(16718, 14497, 0.3, 1, 1, 1, 0, 'Pattern: Mooncloth Leggings'), -- ilvl 58
(16718, 14498, 0.3, 1, 1, 1, 0, 'Pattern: Runecloth Headband'), -- Pattern: Runecloth Headband	0.02%	(1 in 5659) ilvl 59
(16718, 14499, 0.3, 1, 1, 1, 0, 'Pattern: Mooncloth Bag'), -- ilvl 60
(16718, 14501, 0.3, 1, 1, 1, 0, 'Pattern: Mooncloth Vest'), -- Pattern: Mooncloth Vest	0.02%	(1 in 5659) ilvl 60
(16718, 14504, 0.3, 1, 1, 1, 0, 'Pattern: Runecloth Shoulders'), -- ilvl 61
(16718, 14506, 0.3, 1, 1, 1, 0, 'Pattern: Felcloth Robe'), -- ilvl 61
(16718, 14507, 0.3, 1, 1, 1, 0, 'Pattern: Mooncloth Shoulders'), -- Pattern: Mooncloth Shoulders	0.04%	(2 in 5659) ilvl 61
(16718, 15731, 0.3, 1, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'), -- Pattern: Runic Leather Gauntlets	0.12%	(7 in 5659) 0.4 ilvl 54
(16718, 15737, 0.3, 1, 1, 1, 0, 'Pattern: Chimeric Boots'), -- Pattern: Chimeric Boots	0.21%	(12 in 5659) 0.12 ilvl 55
(16718, 15742, 0.3, 1, 1, 1, 0, 'Pattern: Warbear Harness'), -- Pattern: Warbear Harness	0.04%	(2 in 5659) ilvl 55
(16718, 15743, 0.3, 1, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'), -- Pattern: Heavy Scorpid Belt	0.04%	(2 in 5659) 0.4 ilvl 56
(16718, 15745, 0.3, 1, 1, 1, 0, 'Pattern: Runic Leather Belt'), -- Pattern: Runic Leather Belt	0.05%	(3 in 5659) ilvl 56
(16718, 15746, 0.3, 1, 1, 1, 0, 'Pattern: Chimeric Leggings'), -- Pattern: Chimeric Leggings	0.07%	(4 in 5659) 0.9 ilvl 56
(16718, 15755, 0.3, 1, 1, 1, 0, 'Pattern: Chimeric Vest'), -- Pattern: Chimeric Vest	0.07%	(4 in 5659) ilvl 58
(16718, 15757, 0.3, 1, 1, 1, 0, 'Pattern: Wicked Leather Pants'), -- Pattern: Wicked Leather Pants 0.12 ilvl 58
(16718, 15765, 0.3, 1, 1, 1, 0, 'Pattern: Runic Leather Pants'), -- ilvl 60
(16718, 16043, 0.3, 1, 1, 1, 0, 'Schematic: Thorium Rifle'), -- Schematic: Thorium Rifle	0.11%	(6 in 5659) 0.12 ilvl 52
(16718, 16044, 0.3, 1, 1, 1, 0, 'Schematic: Lifelike Mechanical Toad'), -- ilvl 53
(16718, 16051, 0.3, 1, 1, 1, 0, 'Schematic: Thorium Shells'), -- Schematic: Thorium Shells	0.05%	(3 in 5659) ilvl 57
(16718, 16055, 0.3, 1, 1, 1, 0, 'Schematic: Arcane Bomb'), -- Schematic: Arcane Bomb 0.12 ilvl 60
(16718, 16215, 0.3, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'), -- Formula: Enchant Boots - Greater Stamina	0.19%	(11 in 5659) 0.12 ilvl 52
(16718, 16218, 0.3, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'), -- Formula: Enchant Bracer - Superior Spirit	0.12%	(7 in 5659) ilvl 54
(16718, 16220, 0.3, 1, 1, 1, 0, 'Formula: Enchant Boots - Spirit'), -- Formula: Enchant Boots - Spirit	0.30%	(17 in 5659) 0.5 ilvl 55
(16718, 16245, 0.3, 1, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'), -- Formula: Enchant Boots - Greater Agility	0.02%	(1 in 5659) ilvl 59
(16718, 16251, 0.3, 1, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina'), -- ilvl 60
(16718, 20253, 0.3, 1, 1, 1, 0, 'Pattern: Warbear Harness'), -- ilvl 55
(16718, 22388, 0.3, 1, 1, 1, 0, 'Plans: Titanic Leggings'); -- ilvl 61
