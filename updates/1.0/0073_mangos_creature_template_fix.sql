-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Fix a lot of wrong type for various creatures, based on report by danielsreichenbach
-- There were still some errors so every change was checked against:
-- TBC-DB v1.3 or wowhead, wowdb and wowwiki and fixed when irrelevant
-- Creature fix for 'Dalaran Serpent': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 2540;
-- Creature fix for 'Ward of Laze': correct type: Totem
UPDATE `creature_template` SET `type` =  11 WHERE `entry` = 2667;
-- Creature fix for 'Trigore the Lasher': correct type: Beast (non tameable)
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 3652;
-- Creature fix for 'Mystlash Flayer': correct type: Beast (non tameable)
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 3722;
-- Creature fix for 'Swamp Ooze': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 4391;
-- Creature fix for 'Corrosive Swamp Ooze': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 4392;
-- Creature fix for 'Illusionary Nightmare': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 4785;
-- Creature fix for 'Force of Nature': correct type: Elemental
UPDATE `creature_template` SET `type` =  4 WHERE `entry` = 4795;
-- Creature fix for 'Nightmare Ectoplasm': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 5763;
-- Creature fix for 'Cloned Ectoplasm': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 5780;
-- Creature fix for 'Deviate Nightmare': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 5914;
-- Creature fix for 'Ward of Zanzil': correct type: Totem
UPDATE `creature_template` SET `type` =  11 WHERE `entry` = 6386;
-- Creature fix for 'Zul'Farrak Dead Hero': correct type: Undead
UPDATE `creature_template` SET `type` =  6 WHERE `entry` = 7276;
-- Creature fix for 'Elven Wisp': correct type: Critter
UPDATE `creature_template` SET `type` =  8 WHERE `entry` = 7570;
-- Creature fix for 'Witherbark Bloodling': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 7768;
-- Creature fix for 'Hazzali Parasite': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 7769;
-- Creature fix for 'Sul'lithuz Broodling': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 8138;
-- Creature fix for 'Sul'lithuz Warder': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 8149;
-- Creature fix for 'Servant of Antu'sul': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 8156;
-- Creature fix for 'Hakkari Minion': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 8437;
-- Creature fix for 'Hakkari Bloodkeeper': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 8438;
-- Creature fix for 'Shade of Hakkar': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 8440;
-- Creature fix for 'Avatar of Hakkar': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 8443;
-- Creature fix for 'Idol Oven Fire Target': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 8662;
-- Creature fix for 'Deathly Usher': correct type: Undead
UPDATE `creature_template` SET `type` =  6 WHERE `entry` = 8816;
-- Creature fix for 'Pet Bomb': correct type: Mechanical
UPDATE `creature_template` SET `type` =  9 WHERE `entry` = 8937;
-- Creature fix for 'Spawn of Bael'Gar': correct type: Elemental
UPDATE `creature_template` SET `type` =  4 WHERE `entry` = 9436;
-- Creature fix for 'Cloned Ooze': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 9477;
-- Creature fix for 'Gorishi Grub': correct type: Beast
UPDATE `creature_template` SET `type` =  1 WHERE `entry` = 9498;
-- Creature fix for 'Gargantuan Ooze': correct type: Uncategorized
UPDATE `creature_template` SET `type` =  10 WHERE `entry` = 9621;
-- Creature fix for 'Gorishi Hive Guard': correct type: Beast (no tameable)
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 10040;
-- Creature fix for 'Gorishi Hive Queen': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 10041;
-- Creature fix for 'Captured Felwood Ooze': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 10290;
-- Creature fix for 'Bile Slime': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 10697;
-- Creature fix for 'Rotting Worm': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 10925;
-- Creature fix for 'Skeletal Black Warhorse': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 11195;
-- Creature fix for 'Ley Sprite': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 12381;
-- Creature fix for 'Vorsha the Lasher': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 12940;
-- Creature fix for 'Hive'Ashi Ambusher': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 13301;
-- Creature fix for 'PvP Graveyard Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 13756;
-- Creature fix for 'PvP Tower Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 13778;
-- Creature fix for 'PvP Mine Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 13796;
-- Creature fix for 'Demon Portal': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14081;
-- Creature fix for 'Blue Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14261;
-- Creature fix for 'Green Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14262;
-- Creature fix for 'Bronze Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14263;
-- Creature fix for 'Red Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14264;
-- Creature fix for 'Black Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14265;
-- Creature fix for 'Chromatic Drakonid': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 14302;
-- Creature fix for 'Warpwood Spores': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14366;
-- Creature fix for 'Alarm-o-Bot': correct type: Mechanical
UPDATE `creature_template` SET `type` = 9 WHERE `entry` = 14434;
-- Creature fix for 'Orcish Orphan': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 14444;
-- Creature fix for 'Alliance Battle Standard': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14465;
-- Creature fix for 'Horde Battle Standard': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14466;
-- Creature fix for 'High Priestess Arlokk': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 14515;
-- Creature fix for 'Vartrus the Ancient': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14524;
-- Creature fix for 'Stoma the Ancient': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14525;
-- Creature fix for 'Hastat the Ancient': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14526;
-- Creature fix for 'Emissary Roman'khan': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 14862;
-- Creature fix for 'PvP A-Mid Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15001;
-- Creature fix for 'PvP Mid Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15002;
-- Creature fix for 'PvP ALT-S Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15004;
-- Creature fix for 'PvP ALT-N Credit Marker': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15005;
-- Creature fix for 'Arathi Farmer': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15045;
-- Creature fix for 'Forsaken Farmer': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15046;
-- Creature fix for 'Arathi Lumberjack': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15062;
-- Creature fix for 'Arathi Blacksmith': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15063;
-- Creature fix for 'Forsaken Blacksmith': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15064;
-- Creature fix for 'Arathi Miner': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15074;
-- Creature fix for 'Forsaken Miner': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15075;
-- Creature fix for 'Arathi Stablehand': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15086;
-- Creature fix for 'Forsaken Stablehand': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15087;
-- Creature fix for 'Forsaken Lumberjack': correct type: Humanoid
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15089;
-- Creature fix for 'Swift Zulian Tiger': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 15104;
-- Creature fix for 'Arathi Horse': correct type and modelid
UPDATE `creature_template` SET `type` = 1, `modelid_1` = 229 WHERE `entry` = 15107;
-- Creature fix for 'Forsaken Horse': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 15108;
-- Creature fix for 'Pat's Splash Guy': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15140;
-- Creature fix for 'The Banshee Queen': correct type and modelid: Humanoid
UPDATE `creature_template` SET `type` = 7, `modelid_1` = 11657 WHERE `entry` = 15193;
-- Creature fix for 'Hoary Templar': correct type: Elemental
UPDATE `creature_template` SET `type` = 4 WHERE `entry` = 15212;
-- Creature fix for 'Xil'xix': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15286;
-- Creature fix for 'Aluntir': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15288;
-- Creature fix for 'Arakis': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15290;
-- Creature fix for 'Qiraji Swarmguard': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15343;
-- Creature fix for 'Swarmguard Needler': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15344;
-- Creature fix for 'Colonel Zerran': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15385;
-- Creature fix for 'Major Yeggeth': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15386;
-- Creature fix for 'Qiraji Warrior': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15387;
-- Creature fix for 'Major Pakkon': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15388;
-- Creature fix for 'Captain Drenn': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15389;
-- Creature fix for 'Captain Xurrem': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15390;
-- Creature fix for 'Captain Qeez': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15391;
-- Creature fix for 'Captain Tuubid': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15392;
-- Creature fix for 'Disgusting Oozeling': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15429;
-- Creature fix for 'Lieutnant General Andorov': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15471;
-- Creature fix for 'Kaldorei Elite': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15473;
-- Creature fix for 'Glob of Viscidus': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15667;
-- Creature fix for 'Father Winter's Helper': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15698;
-- Creature fix for 'Winter's Little Helper': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 15705;
-- Creature fix for 'Winter Reindeer': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 15706;
-- Creature fix for 'Eye Tentacle': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15726;
-- Creature fix for 'Colossal Anubisath Warbringer': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15743;
-- Creature fix for 'Imperial Qiraji Destroyer': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15744;
-- Creature fix for 'Flesh Tentacle': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15802;
-- Creature fix for 'Lieutenant General Nokhor': correct type, and modelid: Uncategorized
UPDATE `creature_template` SET `type` = 10, `modelid_1` = 15738 WHERE `entry` = 15818;
-- Creature fix for 'Lord Valthalak': correct type: Dragonkin
UPDATE `creature_template` SET `type` = 2 WHERE `entry` = 16042;
-- Creature fix for 'Peddlefeet': correct type: Humanoid
UPDATE `creature_template` SET `type` = 7 WHERE `entry` = 16085;
-- Creature fix for 'Shadow of Doom': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 16143;
-- Creature fix for 'Plagued Gargoyle': correct type: Undead
UPDATE `creature_template` SET `type` = 6 WHERE `entry` = 16446;
-- Creature fix for 'Stormpike Battle Standard': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 19045;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;  


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;