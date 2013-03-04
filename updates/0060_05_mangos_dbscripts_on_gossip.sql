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

-- We still keep track of the update progress with a temporary column in db_version table
ALTER TABLE db_version CHANGE COLUMN condition_update_04 condition_update_05 bit;

TRUNCATE dbscripts_on_gossip;
/*!40000 ALTER TABLE `dbscripts_on_gossip` DISABLE KEYS */;
-- Insert gossip menu scripts from TBC-DB to prevent errors with backported gossip menus from TBC-DB
-- Some of them are TBC only and they are removed in the last query file (we still insert them for
-- documentation purpose as it is easier to remove a DELETE query than to find again data for the right
-- INSERT query)
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
	(7, 0, 15, 40632, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(8, 0, 15, 40642, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(9, 0, 15, 40640, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(10, 0, 15, 40644, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(9686, 0, 0, 0, 0, 0, 0, 0, 2000000163, 0, 0, 0, 0, 0, 0, 0, 'vekjik say'),
	(906201, 0, 15, 45071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(906202, 0, 15, 45113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(914301, 0, 15, 45353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(5750, 0, 15, 25139, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast teleport molten core'),
	(6092, 0, 15, 23490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Dimension Ripper - Everlook'),
	(6094, 0, 15, 23491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ultrasafe Transporter: Gadgetzan'),
	(20003, 0, 15, 36956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Dimensional Ripper - Area 52'),
	(20004, 0, 15, 36957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ultrasafe Transporter - Toshley\'s Station'),
	(342, 0, 15, 24751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'generic Trick or Treat cast'),
	(2177, 0, 7, 4285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'explore northern pylon'),
	(2178, 0, 7, 4287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'explore eastern pylon'),
	(2179, 0, 7, 4288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'explore western pylon'),
	(7671, 0, 8, 18354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lump kill credit'),
	(5, 0, 15, 21100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast conjure elegant letter'),
	(1282, 0, 10, 8391, 300000, 0, 0, 0, 0, 0, 0, 0, -6460.42, -1267.62, 180.785, 3.15905, 'summon Lathoric'),
	(10219, 0, 10, 17085, 180000, 0, 0, 8, 0, 0, 0, 0, -1321.79, 4043.8, 116.24, 1.25, 'Summon Aeranas'),
	(3421, 0, 17, 12846, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give item Argent Dawn Commission'),
	(2208, 0, 15, 15120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Cenarion Beacon'),
	(3228, 0, 15, 17529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Vitreous Focuser'),
	(132302, 0, 15, 19797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Conjure Torch of Retribution'),
	(7399, 0, 15, 30353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Summon Tree Disguise Kit'),
	(797002, 0, 15, 35069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Taxi - Hellfire Peninsula - Expedition Point to Shatter Point'),
	(797003, 0, 15, 33768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Gateways Murket and Shaadraz'),
	(7939, 0, 15, 34907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Taxi - Stair of Destiny to Honor Hold'),
	(7938, 0, 15, 34924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Stair of Destiny to Thrallmar'),
	(7585, 0, 17, 24573, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give item 24573'),
	(8497, 0, 7, 10814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10814 explored'),
	(8276, 0, 7, 10519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10519 explored'),
	(809600, 0, 15, 35065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi - Hellfire Peninsula - Shatter Point to Beach Head'),
	(8100, 0, 15, 35066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi - Hellfire Peninsula - Beach Head to Shatter Point'),
	(796704, 0, 15, 34578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi - Reaver\'s Fall to Spinebreaker Ridge'),
	(796703, 0, 15, 33659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi Gateways Murket and Shaadraz'),
	(796701, 0, 15, 33825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aerial Assault Flight (Horde)'),
	(8396, 0, 7, 10646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10646 explored'),
	(7676, 0, 7, 10108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10108 explored'),
	(7676, 0, 7, 10107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10107 explored'),
	(7729, 1, 0, 0, 0, 0, 0, 0, 2000000196, 0, 0, 0, 0, 0, 0, 0, 'say on start'),
	(7729, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'attack start'),
	(7729, 0, 22, 45, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change faction'),
	(7730, 0, 22, 45, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change faction'),
	(7730, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'start attack'),
	(7730, 1, 0, 0, 0, 0, 0, 0, 2000000197, 0, 0, 0, 0, 0, 0, 0, 'say on start'),
	(9205, 0, 15, 37778, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest - Teleport: Caverns of Time'),
	(8082, 0, 15, 34905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stealth Flight'),
	(8782, 0, 15, 42295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alcaz Island Survey'),
	(8761, 0, 15, 42169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apply Aura: Invisibility Detection'),
	(7731, 0, 22, 14, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change faction'),
	(7731, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'start attack'),
	(7731, 1, 0, 0, 0, 0, 0, 0, 2000000198, 0, 0, 0, 0, 0, 0, 0, 'say on start'),
	(8617, 0, 8, 22932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill credit for quest 10980'),
	(3142, 0, 15, 47043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create item Flute of the Ancients'),
	(8161, 0, 8, 20679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill credit'),
	(8161, 0, 0, 0, 0, 0, 0, 0, 2000000199, 0, 0, 0, 0, 0, 0, 0, 'say free'),
	(8162, 0, 8, 20677, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill credit'),
	(8162, 0, 0, 0, 0, 0, 0, 0, 2000000200, 0, 0, 0, 0, 0, 0, 0, 'say free'),
	(8163, 0, 8, 20678, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill credit'),
	(8163, 0, 0, 0, 0, 0, 0, 0, 2000000201, 0, 0, 0, 0, 0, 0, 0, 'say free'),
	(8072, 0, 15, 34891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flight through Caverns'),
	(8301, 0, 17, 30639, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create item 30639'),
	(8338, 0, 7, 10577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10577 complete'),
	(10131, 0, 15, 46343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Teleport to Caverns of Time'),
	(1288, 1, 9, 82731, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues S - rough script, details missing'),
	(1288, 11, 9, 82732, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues N'),
	(1288, 22, 9, 82733, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues SW'),
	(1288, 33, 9, 82734, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues SE'),
	(1288, 44, 9, 82735, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues NW'),
	(1288, 55, 9, 82736, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues NE'),
	(5602, 3, 0, 0, 0, 0, 0, 0, 2000000195, 0, 0, 0, 0, 0, 0, 0, 'ironbark the redeemed - Say'),
	(5602, 7, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ironbark the redeemed - Start movement'),
	(5602, 7, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ironbark the redeemed - Set active'),
	(1045, 0, 15, 11512, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Matrix Punchograph 3005-A - white->yellow card'),
	(1047, 0, 15, 11525, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Matrix Punchograph 3005-B - yellow->blue card'),
	(1049, 0, 15, 11528, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Matrix Punchograph 3005-C - blue->red card'),
	(105001, 0, 15, 11545, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Matrix Punchograph 3005-D - red->prismatic card'),
	(20007, 3, 7, 5727, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest: Hidden Enemies (2)'),
	(1321, 0, 7, 3441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 3441 complete of npc 8479'),
	(6668, 0, 17, 21109, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Draconic for Dummies Chap. VII'),
	(6669, 0, 17, 21107, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Draconic for Dummies Chap. V'),
	(6670, 0, 17, 21106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Draconic for Dummies Chap. IV'),
	(576, 0, 7, 2278, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 2278 complete'),
	(80880, 0, 15, 34975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conjure Chrono-Beacon'),
	(8371, 0, 17, 30659, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Kagrosh\'s Pack'),
	(8356, 0, 17, 30658, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Flanis\' Pack'),
	(8697, 0, 7, 11082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 11082 explored'),
	(8697, 0, 15, 41121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Giving a Hand'),
	(809601, 0, 15, 33899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aerial Assault Flight (Alliance)'),
	(8429, 0, 7, 10682, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'complete quest 10682'),
	(8718, 0, 15, 41278, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi - Skyguard Outpost to Skettis'),
	(8719, 0, 15, 41279, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Taxi - Skettis to Skyguard Outpost'),
	(6763, 0, 15, 25952, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'free metzen - use visual effect'),
	(6763, 7, 8, 15664, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'free metzen - credit for metzen'),
	(6763, 9, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'free metzen - despawn'),
	(5382, 0, 15, 10843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Heavy Mageweave Bandage'),
	(5383, 0, 15, 18631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Runecloth Bandages'),
	(5384, 0, 15, 18632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Heavy Runecloth Bandages'),
	(246501, 0, 15, 42710, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(7722, 0, 15, 32431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Battle Standard - Horde'),
	(7724, 0, 15, 32430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Battle Standard - Alliance'),
	(737901, 0, 30, 494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Kielar - Send Northpass Tower taxi'),
	(737902, 0, 30, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Kielar - Send Eastwall Tower taxi'),
	(737903, 0, 30, 496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Kielar - Send Crown Guard Tower taxi'),
	(476301, 0, 15, 6766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Test of Lore'),
	(476302, 0, 7, 6627, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest complete 6627'),
	(4041, 0, 30, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fly to Rut\'theran Village'),
	(4042, 0, 30, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fly to Thunder Bluff'),
	(3884, 1, 7, 5929, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest complete 5929'),
	(3885, 1, 7, 5930, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest complete 5930'),
	(7715, 5, 30, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'taxi patch'),
-- Note: the db_script_string IDs below were changed to avoid conflict when backporting TBC-DB content
-- as those indexes are already used in classic DB.
-- change: 20000053xy => 20000054xy (new id = old id + 100);
	(8851, 0, 0, 0, 0, 4979, 10, 0, 2000005434, 0, 0, 0, 0, 0, 0, 0, 'Say text'),
	(8851, 1, 0, 2, 0, 4979, 10, 0, 2000005435, 0, 0, 0, 0, 0, 0, 0, 'Say emote'),
	(8851, 3, 0, 0, 0, 4979, 10, 0, 2000005428, 2000005429, 2000005436, 2000005431, 0, 0, 0, 0, 'Say text'),
	(8851, 5, 0, 0, 0, 4979, 10, 0, 2000005432, 2000005433, 2000005430, 2000005437, 0, 0, 0, 0, 'Say text'),
	(8851, 0, 29, 1, 2, 4979, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change NPC_flag'),
	(8851, 0, 15, 42734, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(8851, 0, 8, 4979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(8851, 120, 29, 1, 0, 4979, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change NPC_flag');
-- Insert gossip scripts that were in classic-DB but not in TBC-DB. The ones commented out are also present in TBC-DB but with a different ID
-- They are kept here for documentation purpose
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
	(125, 1, 22, 21, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'astor change faction'),
	(125, 2, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'astor attack start');
--	(5750, 0, 15, 25139, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast teleport molten core');

/*!40000 ALTER TABLE `dbscripts_on_gossip` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;