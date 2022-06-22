-- Fix many errors from last batch of backports

-- Update Poison Proc aura for NPC 5224 (Murk Slitherer)
UPDATE creature_template_addon SET auras='3616' WHERE entry=5224;

-- Add missing items for Warsong Gulch and Arathi Bassin
-- Fixes errors coming from https://github.com/cmangos/classic-db/commit/b2d4ec1b2e2e66b2f03cf4c443af11aaa88455bd
INSERT INTO item_template (entry, class, subclass, name, displayid, Quality, Flags, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, block, itemset, MaxDurability, area, Map, BagFamily, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, Duration, ExtraFlags) VALUES
(20118, 4, 3, 'Highlander\'s Mail Girdle', 34241, 3, 32768, 1, 0, 0, 6, 68, 32767, 53, 48, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 8, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18384, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(20119, 4, 3, 'Highlander\'s Mail Girdle', 34241, 3, 32768, 1, 0, 0, 6, 68, 32767, 43, 40, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 6, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(20120, 4, 2, 'Highlander\'s Mail Girdle', 34392, 3, 32768, 1, 0, 0, 6, 68, 32767, 33, 28, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 5, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(20121, 4, 3, 'Highlander\'s Mail Greaves', 34242, 3, 32768, 1, 0, 0, 8, 68, 32767, 53, 48, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 13, 3, 8, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23990, 1, 0, 0, -1, 0, -1, 9329, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(20122, 4, 3, 'Highlander\'s Mail Greaves', 34242, 3, 32768, 1, 0, 0, 8, 68, 32767, 43, 40, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 10, 3, 7, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23990, 1, 0, 0, -1, 0, -1, 9141, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 60, 0, 0, 0, '', 0, 0, 0, 0, 0, 0),
(20123, 4, 2, 'Highlander\'s Mail Greaves', 34393, 3, 32768, 1, 0, 0, 8, 68, 32767, 33, 28, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 8, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23990, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 50, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);

-- Add missing npc_vendor_template entries
-- Fixes errors coming from or revealed by https://github.com/cmangos/classic-db/commit/b2d4ec1b2e2e66b2f03cf4c443af11aaa88455bd
INSERT INTO npc_vendor_template (entry, item, maxcount, incrtime, slot, condition_id, comments) VALUES 
(133, 2880, 0, 0, 0, 0, 'Weak Flux'),
(133, 2901, 0, 0, 0, 0, 'Mining Pick'),
(133, 3466, 0, 0, 0, 0, 'Strong Flux'),
(133, 4357, 4, 10800, 0, 0, 'Rough Blasting Powder'),
(133, 4361, 2, 10800, 0, 0, 'Copper Tube'),
(133, 4363, 2, 10800, 0, 0, 'Copper Modulator'),
(133, 4364, 4, 10800, 0, 0, 'Coarse Blasting Powder'),
(133, 4371, 2, 10800, 0, 0, 'Bronze Tube'),
(133, 4382, 1, 10800, 0, 0, 'Bronze Framework'),
(133, 4389, 1, 10800, 0, 0, 'Gyrochronatom'),
(133, 4399, 0, 0, 0, 0, 'Wooden Stock'),
(133, 4400, 0, 0, 0, 0, 'Heavy Stock'),
(133, 4404, 3, 10800, 0, 0, 'Silver Contact'),
(133, 5956, 0, 0, 0, 0, 'Blacksmith Hammer'),
(133, 10647, 0, 0, 0, 0, 'Engineer\'s Ink'),
(133, 10648, 0, 0, 0, 0, 'Blank Parchment'),
(220, 236, 0, 0, 0, 0, 'Cured Leather Armor'),
(220, 237, 0, 0, 0, 0, 'Cured Leather Pants'),
(220, 238, 0, 0, 0, 0, 'Cured Leather Boots'),
(220, 239, 0, 0, 0, 0, 'Cured Leather Gloves'),
(220, 1849, 0, 0, 0, 0, 'Cured Leather Belt'),
(220, 1850, 0, 0, 0, 0, 'Cured Leather Bracers'),
(244, 2420, 0, 0, 0, 0, 'Augmented Chain Boots'),
(244, 2426, 0, 0, 0, 0, 'Brigandine Boots'),
(244, 2432, 0, 0, 0, 0, 'Russet Boots'),
(244, 2438, 0, 0, 0, 0, 'Embroidered Boots'),
(244, 2467, 0, 0, 0, 0, 'Studded Boots'),
(244, 2473, 0, 0, 0, 0, 'Reinforced Leather Boots'),
(451, 1205, 0, 0, 13, 0, 'Melon Juice'),
(451, 1645, 0, 0, 15, 0, 'Moonberry Juice'),
(451, 1708, 0, 0, 14, 0, 'Sweet Nectar'),
(451, 3770, 0, 0, 1, 0, 'Mutton Chop'),
(451, 3771, 0, 0, 2, 0, 'Wild Hog Shank'),
(451, 4538, 0, 0, 5, 0, 'Snapvine Watermelon'),
(451, 4539, 0, 0, 6, 0, 'Goldenbark Apple'),
(451, 4599, 0, 0, 3, 0, 'Cured Ham Steak'),
(451, 4602, 0, 0, 7, 0, 'Moon Harvest Pumpkin'),
(451, 4606, 0, 0, 9, 0, 'Spongy Morel'),
(451, 4607, 0, 0, 10, 0, 'Delicious Cave Mold'),
(451, 4608, 0, 0, 11, 0, 'Raw Black Truffle'),
(451, 8766, 0, 0, 16, 0, 'Morning Glory Dew'),
(451, 8948, 0, 0, 12, 0, 'Dried King Bolete'),
(451, 8952, 0, 0, 4, 0, 'Roasted Quail'),
(451, 8953, 0, 0, 8, 0, 'Deep Fried Plantains');
UPDATE creature_template SET VendorTemplateID=108 WHERE Entry IN (989, 1286, 2225, 2810, 3779, 3955, 5135, 5163, 6301, 7947, 8934);

-- Remove broadcast_text use in script as the broadcast_text does not exist in Classic
-- Let all other entries of the script as long as there is no proof this ones was added after Classic
DELETE FROM dbscripts_on_creature_movement WHERE id=384801 AND delay=47000;
