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

/*!40000 ALTER TABLE `gossip_menu` DISABLE KEYS */;
-- Adds missing gossip menu to three of the four  Alliance
-- weapon masters when asking where to train in other weapons
INSERT INTO gossip_menu VALUES (5272, 6292, 0, 0); -- Ilyania
INSERT INTO gossip_menu VALUES (5274, 6294, 0, 0); -- Buliwyf
INSERT INTO gossip_menu VALUES (5276, 6296, 0, 0); -- Bixi
-- Adds missing gossip menu directing Alliance players
-- to the right weapon master when asking where to train
-- Source: http://www.wowwiki.com/Weapon_master?diff=2480057&oldid=2387794
INSERT INTO gossip_menu VALUES (8581, 10758, 0, 0); -- sword : anyone -> Woo Ping
INSERT INTO gossip_menu VALUES (8584, 10761, 0, 0); -- crossbow : Buliwyf -> Bixi
INSERT INTO gossip_menu VALUES (8576, 10753, 0, 0); -- crossbow : Ilyania -> Bixi
INSERT INTO gossip_menu VALUES (8583, 10760, 0, 0); -- bow : Buliwyf -> Ilyania
INSERT INTO gossip_menu VALUES (8573, 10749, 0, 0); -- dagger : Buliwyf -> Bixi, Woo Ping
INSERT INTO gossip_menu VALUES (8585, 10762, 0, 0); -- thrown : Buliwyf -> Bixi, Ilyania
-- INSERT INTO gossip_menu VALUES (8580, 10757, 0, 0); -- staff : anyone -> Woo Ping, Ilyania
INSERT INTO gossip_menu VALUES (8589, 10766, 0, 0); -- mace : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8586, 10763, 0, 0); -- axe : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8587, 10764, 0, 0); -- fist : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8588, 10765, 0, 0); -- gun : Bixi -> Buliwylf
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
-- Updates gossip menu options for the three previous Alliance
-- weapon masters in order to display gossip menu added above
UPDATE gossip_menu_option SET action_menu_id=5272 WHERE menu_id=5273 AND id=1; -- Ilyania
UPDATE gossip_menu_option SET action_menu_id=5274 WHERE menu_id=5275 AND id=1; -- Buliwyf
UPDATE gossip_menu_option SET action_menu_id=5276 WHERE menu_id=5277 AND id=1; -- Bixi
-- Adds specific submenu for each of the three weapon masters
-- Ilyania
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5272, 0, 0, 'Axe', 1, 1, 8577, 0, 0, 0, 0, '', 0),
 (5272, 1, 0, 'Crossbow', 1, 1, 8576, 0, 0, 0, 0, '', 0),
 (5272, 2, 0, 'Gun', 1, 1, 8575, 0, 0, 0, 0, '', 0),
 (5272, 3, 0, 'Mace', 1, 1, 8578, 0, 0, 0, 0, '', 0),
 (5272, 4, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5272, 5, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);
-- Bixi
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5276, 0, 0, 'Axe', 1, 1, 8586, 0, 0, 0, 0, '', 0),
 (5276, 1, 0, 'Bow', 1, 1, 8572, 0, 0, 0, 0, '', 0),
 (5276, 2, 0, 'Fist Weapon', 1, 1, 8587, 0, 0, 0, 0, '', 0),
 (5276, 3, 0, 'Gun', 1, 1, 8588, 0, 0, 0, 0, '', 0),
 (5276, 4, 0, 'Mace', 1, 1, 8589, 0, 0, 0, 0, '', 0),
 (5276, 5, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5276, 6, 0, 'Staff', 1, 1, 8580, 0, 0, 0, 0, '', 0),
 (5276, 7, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);
-- Buliwyf
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5274, 0, 0, 'Bow', 1, 1, 8583, 0, 0, 0, 0, '', 0),
 (5274, 1, 0, 'Crossbow', 1, 1, 8584, 0, 0, 0, 0, '', 0),
 (5274, 2, 0, 'Dagger', 1, 1, 8573, 0, 0, 0, 0, '', 0),
 (5274, 3, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5274, 4, 0, 'Thrown', 1, 1, 8585, 0, 0, 0, 0, '', 0),
 (5274, 5, 0, 'Staff', 1, 1, 8580, 0, 0, 0, 0, '', 0),
 (5274, 6, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds the correct gossip_menu id to each of the weapon masters
-- Source: TBC-DB v1.3
-- Horde Weapon Masters
UPDATE creature_template SET gossip_menu_id=5221 WHERE entry=11868; -- Sayoc
UPDATE creature_template SET gossip_menu_id=5263 WHERE entry=2704;  -- Hanashi
UPDATE creature_template SET gossip_menu_id=5266 WHERE entry=11869; -- Ansekhwa
UPDATE creature_template SET gossip_menu_id=5269 WHERE entry=11870; -- Archibald
-- Alliance Weapon Masters
UPDATE creature_template SET gossip_menu_id=5271 WHERE entry=11867; -- Woo Ping
UPDATE creature_template SET gossip_menu_id=5273 WHERE entry=11866; -- Ilyenia
UPDATE creature_template SET gossip_menu_id=5275 WHERE entry=11865; -- Buliwyf
UPDATE creature_template SET gossip_menu_id=5277 WHERE entry=13084; -- Bixi
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Updates NPC text to remove references to TBC weapon masters (Handiir for Alliance, Ileda for Horde)
-- Alliance
INSERT INTO npc_text VALUES (10753, 'The gnome weapon master Bixi can train you in crossbows. She\'s found in the Timberline Arms in Ironforge.', 'The gnome weapon master Bixi can train you in crossbows. She\'s found in the Timberline Arms in Ironforge.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10763, 'Buliwyf can teach you how to use axes! He\'s around this shop somewhere.', 'Buliwyf can teach you how to use axes! He\'s around this shop somewhere.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10764, 'Buliwyf, in this very shop can train you in the use of fist weapons. If his training techniques aren\'t your style, I hear the night elf weapon master in Darnassus, Ilyenia Moonfire, knows her way around the weapon too! She\'s up on the Warrior\'s Terrace there.', 'Buliwyf, in this very shop can train you in the use of fist weapons. If his training techniques aren\'t your style, I hear the night elf weapon master in Darnassus, Ilyenia Moonfire, knows her way around the weapon too! She\'s up on the Warrior\'s Terrace there.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10765, 'Guns are a specialty of Buliwyf\'s! He\'s around this shop somewhere.', 'Guns are a specialty of Buliwyf\'s! He\'s around this shop somewhere.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE npc_text SET text0_0='Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.', text0_1='Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.' WHERE id=10751;
UPDATE npc_text SET text0_0='Bixi Wobblebonk in this very shop can train ye in daggers. If ye\'re still looking abroad, anyone else - Woo Ping in Stormwind and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.', text0_1='Bixi Wobblebonk in this very shop can train ye in daggers. If ye\'re still looking abroad, anyone else - Woo Ping in Stormwind and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.' WHERE id=10749;
UPDATE npc_text SET text0_0='Buliwyf can show you how to swing a mace properly, no matter the size. You can find him within the Timberline Arms in Ironforge.', text0_1='Buliwyf can show you how to swing a mace properly, no matter the size. You can find him within the Timberline Arms in Ironforge.' WHERE id=10755;
UPDATE npc_text SET text0_0='There is one master of the sword: Woo Ping. He can be found in Weller\'s Arsenal within Stormwind.', text0_1='There is one master of the sword: Woo Ping. He can be found in Weller\'s Arsenal within Stormwind.' WHERE id=10758;
UPDATE npc_text SET text0_0='My plucky companion Bixi Wobblebonk here can train ye in crossbows. If ye\'re looking for other trainers, though, ye might want to try Woo Ping in Weller\'s Arsenal within Stormwind.', text0_1='My plucky companion Bixi Wobblebonk here can train ye in crossbows. If ye\'re looking for other trainers, though, ye might want to try Woo Ping in Weller\'s Arsenal within Stormwind.' WHERE id=10761;
UPDATE npc_text SET text0_0='Maces are a specialty of Buliwyf\'s! He\'s around this shop somewhere, grousing.', text0_1='Maces are a specialty of Buliwyf\'s! He\'s around this shop somewhere, grousing.' WHERE id=10766;
-- Horde
UPDATE npc_text SET text0_0='The weapon masters in the Valley of Honor within Orgrimmar, Sayoc and Hanashi, can teach you how to shoot a bow.', text0_1='The weapon masters in the Valley of Honor within Orgrimmar, Sayoc and Hanashi, can teach you how to shoot a bow.' WHERE id=10771;
UPDATE npc_text SET text0_0='Dagger instruction can be sought from two weapon masters: Archibald in the War Quarter of the Undercity and Sayoc within the Valley of Honor in Orgrimmar.', text0_1='Dagger instruction can be sought from two weapon masters: Archibald in the War Quarter of the Undercity and Sayoc within the Valley of Honor in Orgrimmar.' WHERE id=10773;
UPDATE npc_text SET text0_0='The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity.', text0_1='The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity.' WHERE id=10777;
UPDATE npc_text SET text0_0='Archibald, Undercity\'s weapon master, can train you in both one and two-handed swords. He is in the War Quarter.', text0_1='Archibald, Undercity\'s weapon master, can train you in both one and two-handed swords. He is in the War Quarter.' WHERE id=10779;
UPDATE npc_text SET text0_0='Sayoc and Hanashi, Orgrimmar\'s weapon masters, are true artisans of the thrown weapon. They train willing students in the Valley of Honor.', text0_1='Sayoc and Hanashi, Orgrimmar\'s weapon masters, are true artisans of the thrown weapon. They train willing students in the Valley of Honor.' WHERE id=10780;
UPDATE npc_text SET text0_0='Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Archibald in the War Quarter of Undercity, hokay?', text0_1='Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Archibald in the War Quarter of Undercity, hokay?' WHERE id=10782;
UPDATE npc_text SET text0_0='Da Forsaken weapon master Archibald know his way \'round da polearm. He train others in da War Quarter of da Undercity, mon.', text0_1='Da Forsaken weapon master Archibald know his way \'round da polearm. He train others in da War Quarter of da Undercity, mon.' WHERE id=10786;
UPDATE npc_text SET text0_0='Archibald, da Undercity\'s weapon master train you in both one and two-handed swords, mon. He in da War Quarter.', text0_1='Archibald, da Undercity\'s weapon master train you in both one and two-handed swords, mon. He in da War Quarter.' WHERE id=10787;
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;