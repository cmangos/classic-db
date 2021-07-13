UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15045' WHERE `entry`='15045'; -- Arathi Farmer
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15046' WHERE `entry`='15046'; -- Forsaken Farmer
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15062' WHERE `entry`='15062'; -- Arathi Lumberjack
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15063' WHERE `entry`='15063'; -- Arathi Blacksmith
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15064' WHERE `entry`='15064'; -- Forsaken Blacksmith
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15065'; -- Lady
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15066'; -- Cleo
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15071'; -- Underfoot
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15072'; -- Spike
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15074' WHERE `entry`='15074'; -- Arathi Miner
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15075' WHERE `entry`='15075'; -- Forsaken Miner
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15087' WHERE `entry`='15087'; -- Forsaken Stablehand
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15089' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15107'; -- Arathi Horse
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15108'; -- Forsaken Horse

INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(15074, 1910, 0, 0),
(15075, 1910, 0, 0),
(15087, 1910, 0, 0),
(15089, 19015, 0, 0), -- Table `creature_template` have creature (Entry: 15089) with equipment_id 55087 not found in table `creature_equip_template`, set to no equipment.
(15062, 19015, 0, 0),
(15063, 1903, 0, 0),
(15064, 1903, 0, 0),
(15045, 3367, 0, 0),
(15046, 3367, 0, 0);

-- Unknown item (entry=19015) in creature_equip_template.equipentry1 for entry = 15062, forced to 0.
-- Monster - Item, 2H Alliance Wood Axe
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES (19015, 2, 0, 'Monster - Item, 2H Alliance Wood Axe', 5027, 0, 0, 1, 0, 0, 17, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);

