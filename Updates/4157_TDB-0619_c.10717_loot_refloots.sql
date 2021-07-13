-- https://web.archive.org/web/20050206221220/http://wow.allakhazam.com/db/mob.html?wmob=10717 - classic
-- https://web.archive.org/web/20060831064114/http://wow.allakhazam.com/db/mob.html?wmob=10717 - classic
-- https://web.archive.org/web/20080503092659/http://wow.allakhazam.com:80/db/mob.html?wmob=10717 - tbc

-- Readd Loot for Temporal Parasite 10717 - 55 to 57 in classic
-- maxlevel reduced to 56 from 57 in tbc?
-- https://tbc.wowhead.com/npc=10717/temporal-parasite#drops
-- https://www.youtube.com/watch?v=StzjPVSif5Q
-- https://www.youtube.com/watch?v=AIltUHurAN8
-- https://www.youtube.com/watch?v=53aMgtesxaA
-- still unhappy with the range they spawn
-- https://tbc.wowhead.com/quest=4971/a-matter-of-time
-- https://tbc.wowhead.com/npc=10717/temporal-parasite#comments:id=2911117
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 10717;
UPDATE `creature_template` SET `lootid` = 10717 WHERE `entry` = 10717; -- was removed at some point
DELETE FROM `creature_loot_template` WHERE `entry` = 10717;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10717, 3669, 50, 0, 1, 1, 0, 'Gelatinous Goo'),
(10717, 3676, 50, 0, 1, 1, 0, 'Slimy Ichor'),
(10717, 60195, 2, 1, -60195, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 54-59) - (NPC Levels: 55-56)'),
(10717, 60271, 0.1, 1, -60271, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-58) - (NPC Levels: 55-56)'),
(10717, 60331, 0.01, 1, -60331, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-57) - (NPC Levels: 55-56)'),
(10717, 5759, 0.1, 0, 1, 1, 0, 'Thorium Lockbox'),
(10717, 5758, 0.02, 0, 1, 1, 0, 'Mithril Lockbox'),
(10717, 4500, 0.03, 0, 1, 1, 0, 'Traveler\'s Backpack'),
(10717, 3914, 0.02, 0, 1, 1, 0, 'Journeyman\'s Backpack'),
-- (10717, 20400, 0.01, 0, 1, 1, 162, 'Pumpkin Bag'), -- 0 cases in classicmangos
(10717, 7989, 0.02, 0, 1, 1, 0, 'Plans: Mithril Spurs'),
(10717, 8389, 0.02, 0, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(10717, 8390, 0.02, 0, 1, 1, 0, 'Pattern: Big Voodoo Cloak'),
(10717, 9295, 0.02, 0, 1, 1, 0, 'Recipe: Invisibility Potion'),
(10717, 9298, 0.02, 0, 1, 1, 0, 'Recipe: Elixir of Giants'),
(10717, 10320, 0.02, 0, 1, 1, 0, 'Pattern: Red Mageweave Headband'),
(10717, 11208, 0.02, 0, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(10717, 11225, 0.02, 0, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
(10717, 12682, 0.02, 0, 1, 1, 0, 'Plans: Thorium Armor'),
(10717, 12683, 0.02, 0, 1, 1, 0, 'Plans: Thorium Belt'),
(10717, 12684, 0.02, 0, 1, 1, 0, 'Plans: Thorium Bracers'),
(10717, 12689, 0.02, 0, 1, 1, 0, 'Plans: Radiant Breastplate'),
(10717, 12693, 0.02, 0, 1, 1, 0, 'Plans: Thorium Boots'),
(10717, 12694, 0.02, 0, 1, 1, 0, 'Plans: Thorium Helm'),
(10717, 12695, 0.02, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(10717, 12697, 0.02, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(10717, 12702, 0.02, 0, 1, 1, 0, 'Plans: Radiant Circlet'),
(10717, 12704, 0.02, 0, 1, 1, 0, 'Plans: Thorium Leggings'),
(10717, 12713, 0.02, 0, 1, 1, 0, 'Plans: Radiant Leggings'),
(10717, 13490, 0.02, 0, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(10717, 13492, 0.02, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(10717, 14466, 0.02, 0, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(10717, 14467, 0.02, 0, 1, 1, 0, 'Pattern: Frostweave Robe'),
(10717, 14470, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(10717, 14478, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(10717, 14479, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(10717, 14484, 0.02, 0, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(10717, 14491, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(10717, 14492, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Boots'),
(10717, 14496, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Hood'),
(10717, 14498, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Headband'),
(10717, 14499, 0.02, 0, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(10717, 14504, 0.02, 0, 1, 1, 0, 'Pattern: Runecloth Shoulders'),
(10717, 14506, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Robe'),
(10717, 14508, 0.02, 0, 1, 1, 0, 'Pattern: Felcloth Shoulders'),
(10717, 15731, 0.02, 0, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(10717, 15737, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Boots'),
(10717, 15743, 0.02, 0, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(10717, 15746, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(10717, 15755, 0.02, 0, 1, 1, 0, 'Pattern: Chimeric Vest'),
(10717, 15757, 0.02, 0, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(10717, 15765, 0.02, 0, 1, 1, 0, 'Pattern: Runic Leather Pants'),
(10717, 16051, 0.02, 0, 1, 1, 0, 'Schematic: Thorium Shells'),
(10717, 16215, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(10717, 16218, 0.02, 0, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(10717, 16220, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Spirit'),
(10717, 16245, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(10717, 16251, 0.02, 0, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina'),
(10717, 22388, 0.02, 0, 1, 1, 0, 'Plans: Titanic Leggings');

-- https://tbc.wowhead.com/npc=10503/jandice-barov
UPDATE `creature_loot_template` SET `item` = 60296, `mincountOrRef` = -60296 WHERE `entry` = 10503 AND `item` = 24016;

-- dont force delete here as there is alot more to resolve inbetween repos, tbc wrongly deleted some data even.
-- DELETE FROM `reference_loot_template` WHERE `entry` IN (24016,24048,24050,24058,24068,24087); -- other dbs might still have npcs that use it
-- https://tbc.wowhead.com/npc=6229/crowd-pummeler-9-60
-- level 32 in classic, level 28 in tbc+
-- UPDATE `creature_template` SET `MaxLevel` = 32 WHERE `entry` = 6229; -- maxlevel was not corrected 28-28
DELETE FROM `creature_loot_template` WHERE `entry` IN (6228,6229,6235,7361,7800,10433);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Dark Iron Ambassador 6228 -- 28 TBC+ 33 classic
(6228, 9308, 25, 0, 1, 1, 0, 'Grime-Encrusted Object'),
(6228, 4306, 16, 0, 1, 3, 0, 'Silk Cloth'),
(6228, 2592, 8, 0, 1, 3, 0, 'Wool Cloth'),
(6228, 60006, 5, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'), -- 60006 for classic
(6228, 60150, 2, 0, -60150, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)'), -- 60150 for classic
(6228, 1705, 0.3, 0, 1, 1, 0, 'Lesser Moonstone'),
(6228, 4633, 0.3, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),
(6228, 9455, 0, 1, 1, 1, 0, 'Emissary Cuffs'),
(6228, 9456, 0, 1, 1, 1, 0, 'Glass Shooter'),
(6228, 9457, 0, 1, 1, 1, 0, 'Royal Diplomatic Scepter'),
-- Crowd Pummeler 9-60 6229 28 TBC+ - 32 classic
(6229, 60006, 5, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'), -- 60006 for classic
(6229, 11827, 2, 0, 1, 1, 0, 'Schematic: Lil\' Smoky'),
(6229, 60148, 3, 0, -60148, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)'), -- 60148 for classic
(6229, 9327, 1, 0, 1, 1, 0, 'Security DELTA Data Access Card'),
(6229, 1705, 0.3, 0, 1, 1, 0, 'Lesser Moonstone'),
(6229, 4633, 0.3, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),
(6229, 9309, -5, 0, 8, 10, 0, 'Robo-mechanical Guts'),
(6229, 9450, 60, 1, 1, 1, 0, 'Gnomebot Operating Boots'),
(6229, 9449, 40, 1, 1, 1, 0, 'Manual Crowd Pummeler'),
-- Electrocutioner 6000 6235 - Level 28 in TBC+ - 32 classic
(6235, 6893, 100, 0, 1, 1, 0, 'Workshop Key'),
(6235, 4306, 12, 0, 1, 3, 0, 'Silk Cloth'),
(6235, 2592, 6, 0, 1, 3, 0, 'Wool Cloth'),
(6235, 60006, 3, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'), -- 60006 for classic
(6235, 9327, 1, 0, 1, 1, 0, 'Security DELTA Data Access Card'),
(6235, 1705, 0.3, 0, 1, 1, 0, 'Lesser Moonstone'),
(6235, 4633, 0.3, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),
(6235, 9309, -5, 0, 8, 10, 0, 'Robo-mechanical Guts'),
(6235, 9446, 20, 1, 1, 1, 0, 'Electrocutioner Leg'),
(6235, 9447, 40, 1, 1, 1, 0, 'Electrocutioner Lagnut'),
(6235, 9448, 40, 1, 1, 1, 0, 'Spidertank Oilrag'),
-- Grubbis 7361 - Level 28 in TBC+ - 32 classic
(7361, 9308, 25, 0, 1, 1, 0, 'Grime-Encrusted Object'),
(7361, 4306, 18, 0, 1, 3, 0, 'Silk Cloth'),
(7361, 9445, 10, 1, 1, 1, 0, 'Grubbis Paws'),
(7361, 2592, 6, 0, 1, 3, 0, 'Wool Cloth'),
(7361, 60006, 3, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'), -- 60006 for classic
(7361, 60148, 90, 1, -60148, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)'), -- 60148 for classic
(7361, 1705, 0.3, 0, 1, 1, 0, 'Lesser Moonstone'),
(7361, 4633, 0.3, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),
-- (7361, 11004, 1, 1, -11004, 1, 0, ''), -- this is a fishing loot template
-- Mekgineer Thermaplugg 7800 - Level 28 in TBC+ - 34 classic
(7800, 11828, 15, 0, 1, 1, 0, 'Schematic: Pet Bombling'),
(7800, 60152, 100, 0, -60152, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)'), -- 60152 for classic
(7800, 9327, 1, 0, 1, 1, 0, 'Security DELTA Data Access Card'),
(7800, 1705, 0.3, 0, 1, 1, 0, 'Lesser Moonstone'),
(7800, 4633, 0.3, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),
(7800, 9309, -5, 0, 8, 10, 0, 'Robo-mechanical Guts'),
(7800, 9299, -100, 0, 1, 1, 0, 'Thermaplugg\'s Safe Combination'),
(7800, 9459, 25, 1, 1, 1, 0, 'Thermaplugg\'s Left Arm'),
(7800, 9492, 15, 1, 1, 1, 0, 'Electromagnetic Gigaflux Reactivator'),
(7800, 9458, 30, 1, 1, 1, 0, 'Thermaplugg\'s Central Core'),
(7800, 9461, 30, 1, 1, 1, 0, 'Charged Gear'),
(7800, 4411, 2, 2, 1, 1, 0, 'Schematic: Flame Deflector'),
(7800, 4413, 2, 2, 1, 1, 0, 'Schematic: Discombobulator Ray'),
(7800, 4415, 2, 2, 1, 1, 0, 'Schematic: Craftsman\'s Monocle'),
(7800, 7742, 2, 2, 1, 1, 0, 'Schematic: Gnomish Cloaking Device'),
-- Marduk Blackpool 10433 - Level 58 - 58 classic
(10433, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10433, 14047, 20, 0, 2, 4, 0, 'Runecloth'),
(10433, 14576, 7, 1, 1, 1, 0, 'Ebon Hilt of Marduk'),
(10433, 18692, 7, 1, 1, 1, 0, 'Death Knight Sabatons'),
(10433, 60290, 5, 1, -60290, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58)'),
(10433, 60276, 0.1, 1, -60276, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58)'),
(10433, 60336, 0.05, 1, -60336, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 57-59) - (NPC Levels: 58)');

