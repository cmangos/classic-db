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
-- Updates gossip menu id for creatures after gossip menus reintroduced by DB revision [0061]
-- Also updates a few npcflag, adding mask GOSSIP=1 in order to allow NPC to display gossips
UPDATE creature_template SET gossip_menu_id=3862 WHERE entry=12144; -- Lunaclaw
UPDATE creature_template SET gossip_menu_id=4041 WHERE entry=11800; -- Darnassus Flight Master
UPDATE creature_template SET gossip_menu_id=4042 WHERE entry=11798; -- Thunderbuff Flight Master
UPDATE creature_template SET gossip_menu_id=3882 WHERE entry=11956; -- Great Bear Spirit
UPDATE creature_template SET gossip_menu_id=1285 WHERE entry=8436; -- npc_zamael_lunthistle
UPDATE creature_template SET gossip_menu_id=2703 WHERE entry=10307; -- npc_witch_doctor_mauari
UPDATE creature_template SET gossip_menu_id=4085, npcflag=npcflag|1 WHERE entry=12384; -- npc_augustus_the_touched
UPDATE creature_template SET gossip_menu_id=1443 WHERE entry=8696; -- npc_henry_stern
UPDATE creature_template SET gossip_menu_id=2465 WHERE entry=4968; -- npc_lady_jaina_proudmoore
UPDATE creature_template SET gossip_menu_id=3228, npcflag=npcflag|1 WHERE entry = 11056; -- npc_alchemist_arbington
UPDATE creature_template SET gossip_menu_id=3502 WHERE entry=1855; -- npc_tirion_fording
UPDATE creature_template SET gossip_menu_id=1561 WHERE entry=8879; -- npc_royal_historian_archesonus
UPDATE creature_template SET gossip_menu_id=1802, npcflag=npcflag|1 WHERE entry = 7775; -- npc_gregan_brewspewer
UPDATE creature_template SET gossip_menu_id=1405 WHERE entry=8612; -- npc_screecher_spirit
UPDATE creature_template SET gossip_menu_id=24 WHERE entry=3052; -- npc_skorn_whitecloud
UPDATE creature_template SET gossip_menu_id=5851 WHERE entry=3057; -- npc_cairne_bloodhoof
UPDATE creature_template SET gossip_menu_id=4781 WHERE entry=12944; -- npc_lokthos_darkbargainer
UPDATE creature_template SET gossip_menu_id=3801 WHERE entry=11872; -- npc_myranda_hag
UPDATE creature_template SET gossip_menu_id=3141 WHERE entry=11064; -- npc_darrowshire_spirit
UPDATE creature_template SET gossip_menu_id=922 WHERE entry=7564; -- npc_marin_noggenfogger
UPDATE creature_template SET gossip_menu_id=20022 WHERE entry=9529; -- npc_maybess_riverbreeze
UPDATE creature_template SET gossip_menu_id=2208 WHERE entry=9528; -- npc_arathandris_silversky
UPDATE creature_template SET gossip_menu_id=4763 WHERE entry=4489; -- npc_braug_dimspirit
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;