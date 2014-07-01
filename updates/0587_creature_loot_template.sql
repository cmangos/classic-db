-- Correcting Loot of Stranglethorn Vale Rare Mobs

-- Scale Belly (1552)
-- Iridescent Scale Leggings (4478) 80% (Delete From Reference)
-- Chromatic Sword (1604) 20% (Delete From Reference)
DELETE FROM `creature_loot_template` WHERE `item` IN (1604, 4478);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (1552, 4478, 80, 2, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (1552, 1604, 20, 2, 1, 1, 0);

-- Lord Sakrasis (2541)
-- Lord Sakrasis' Scepter (5028) 50% (Delete From Reference)
-- Talisman of the Naga Lord (5029) 50% (Delete From Reference)
DELETE FROM `creature_loot_template` WHERE `item` IN (5028, 5029);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2541, 5028, 50, 2, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2541, 5029, 50, 2, 1, 1, 0);

-- For the following NPCs only having a few reference loot templates and no unique loots:
-- created specific reference table in order to hold the others reference tables
-- while providing 100% drop chance of 1 item (equal chances for all reference tables)
-- Gluggle 14487
DELETE FROM `creature_loot_template` WHERE `item` IN (24064, 24066, 24068) AND `entry` = 14487;
INSERT INTO `creature_loot_template` VALUES
(14487, 24064, 33, 0, -24064, 1, 0),
(14487, 24066, 33, 0, -24066, 1, 0),
(14487, 24068, 33, 0, -24068, 1, 0);

-- Roloch 14488
DELETE FROM `creature_loot_template` WHERE `item` = 24092  AND `entry` = 14488;
INSERT INTO `creature_loot_template` VALUES
(14488, 24064, 33, 0, -24064, 1, 0),
(14488, 24066, 33, 0, -24066, 1, 0),
(14488, 24068, 33, 0, -24068, 1, 0);

-- Rippa 14490
DELETE FROM `creature_loot_template` WHERE `item` IN (24039, 24041, 24043) AND `entry` = 14490;
INSERT INTO `creature_loot_template` VALUES
(14490, 24039, 33, 0, -24039, 1, 0),
(14490, 24041, 33, 0, -24041, 1, 0),
(14490, 24043, 33, 0, -24043, 1, 0);

-- Kurmokk 14491
DELETE FROM `creature_loot_template` WHERE `item` IN (24050, 24052, 24054) AND `entry` = 14491;
INSERT INTO `creature_loot_template` VALUES
(14491, 24050, 33, 0, -24050, 1, 0),
(14491, 24052, 33, 0, -24052, 1, 0),
(14491, 24054, 33, 0, -24054, 1, 0);
-- Verifonix 14492
DELETE FROM `creature_loot_template` WHERE `item` IN (24050, 24052, 24054) AND `entry` = 14492;
INSERT INTO `creature_loot_template` VALUES
(14492, 24050, 33, 0, -24050, 1, 0),
(14492, 24052, 33, 0, -24052, 1, 0),
(14492, 24054, 33, 0, -24054, 1, 0);

-- Mosh'Ogg Butcher 723
DELETE FROM `creature_loot_template` WHERE `item` = 1680 OR (`item` = 24068 AND `entry` = 723);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(723, 1680, 20, 0, 1, 1, 0), -- Headchopper (axe)
(723, 24068, 80, 0, -24068, 1, 0); -- reference table

-- Added missing spawn and movement to creature 723 (Mosh'Ogg Butcher)
DELETE FROM `creature` WHERE `guid` = 160341;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(160341, 723, 0, 0, 0, -12482.2, -958.652, 40.6509, 1.42566, 600, 0, 0, 5947, 0, 0, 2);
UPDATE `creature_template` SET `ModelId1` = 11568, `MovementType` = 2, `EquipmentTemplateId` = 2408 WHERE `entry` = 723;
DELETE FROM `creature_movement_template` WHERE `entry` = 723;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(723, 1, -12480, -940.299, 41.9336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(723, 2, -12479.1, -984.27, 47.1531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(723, 3, -12482.2, -958.726, 40.6606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2408;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
(2408, 8466, 8466, 0, 50267138, 50267138, 0, 781, 781, 0);

-- Removing Unique Drop Items from Reference Table
DELETE FROM `reference_loot_template` WHERE `item` IN (1604, 1680, 4478, 5028, 5029);
