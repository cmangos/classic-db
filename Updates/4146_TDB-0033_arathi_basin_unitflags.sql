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
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='55087' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15107'; -- Arathi Horse
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15108'; -- Forsaken Horse

INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(15074, 1910, 0, 0),
(15075, 1910, 0, 0),
(15087, 1910, 0, 0),
(15062, 19015, 0, 0),
(15063, 1903, 0, 0),
(15064, 1903, 0, 0),
(15045, 3367, 0, 0),
(15046, 3367, 0, 0);

