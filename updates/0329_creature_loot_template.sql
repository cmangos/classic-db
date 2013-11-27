-- Added missing world drop to creature 7361 (Grubbis) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items 15284 (Long Battle Bow), 6590 (Battleforge Boots), 9830 (Scaled Shield)
-- and 1828 (Stone War Axe) as they are in Grubbis loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7361#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7361 AND `item` IN (24068, 24050, 24058, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7361, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7361, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7361, 24050, 1, 0, -24050, 1, 0),
(7361, 24058, 5, 0, -24058, 1, 0),
(7361, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 7800 (Mekgineer Thermaplugg) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items found in Mekgineer Thermaplugg loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7800#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7800 AND `item` IN (11828, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7800, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7800, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7800, 11828, 15, 0, 1, 1, 0),  -- Schematic: Pet Bombling
(7800, 24048, 2, 0, -24048, 1, 0),
(7800, 24068, 5, 0, -24068, 1, 0);

-- Added missing world drop to creature 6228 (Dark Iron Ambassador) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items found in Dark Iron Ambassador loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6228#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6228 AND `item` IN (24058, 24068, 24050, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6228, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6228, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6228, 24058, 5, 0, -24058, 1, 0),
(6228, 24050, 1, 0, -24050, 1, 0),
(6228, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6229 (Crowd Pummeler 9-60) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items found in Crowd Pummeler 9-60 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6229#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6229 AND `item` IN (11827, 24058, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6229, 11827, 2, 0, 1, 1, 0),  -- Schematic: Lil' Smoky
(6229, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6229, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6229, 24058, 5, 0, -24058, 1, 0),
(6229, 24048, 2, 0, -24048, 1, 0),
(6229, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6235 (Electrocutioner 6000) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items found in Electrocutioner 6000 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6235#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6235 AND `item` IN (24058, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6235, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6235, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6235, 24058, 5, 0, -24058, 1, 0);

-- Added missing world drop to creature 7079 (Viscous Fallout) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones 
-- having items found in Viscous Fallout loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7079#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7079 AND `item` IN (4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7079, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7079, 1705, 0.3, 0, 1, 1, 0); -- Lesser Moonstone

