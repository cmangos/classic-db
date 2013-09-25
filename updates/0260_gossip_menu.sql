-- Added gossip menus for creatures 6109 (Azuregos) and 15481 (Spirit of Azuregos)
-- Including gossip menu options for quest 8575 (Azuregos's Magical Ledger)
-- Sources:
-- http://www.wowwiki.com/Spirit_of_Azuregos#Spirit_of_Azuregos
-- http://old.wowhead.com/npc=6109#comments
-- http://www.wowwiki.com/Quest:Azuregos%27s_Magical_Ledger#The_conversation_with_Azuregos

-- TODO: find the correct value for Azuregos/Spirit of Azuregos gossip menu.
SET @GOSSIP := 15000;               -- Azuregos default gossip menu (player do not have (yet) the Scepter of the Shifting Sands quest)
SET @GOSSIP_SPIRIT := @GOSSIP + 13;  -- Spirit of Azuregos default gossip menu (player do not have (yet) the Scepter of the Shifting Sands quest)
SET @SCRIPT_STRING := 2000000163;   -- db script string entry, differs from UDB, TBC-DB and Classic DB
SET @HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS := 59;   -- condition entry for quest 8555 completion
SET @CAN_DISPLAY_QUEST_GOSSIP := 62;                -- condition entry for Scepter quest line gossip display
SET @HAS_LEDGER := 60;                              -- condition entry for has item 20949 in inventory
SET @NOT_HAVE_LEDGER := 61;                         -- condition entry for has item 20949 not in inventory

-- Set gossip menu ids to creatures
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = `npcflag`|1  WHERE `entry` = 6109;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_SPIRIT, `npcflag` = 1, `rank` = 3, `unit_flags` = 768 WHERE `entry` = 15481;

-- Removed npc_gossip if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6109, 15481));

-- Added gossip menus
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @GOSSIP AND @GOSSIP + 13;
INSERT INTO `gossip_menu` VALUES
-- Azuregos gossips
(@GOSSIP, 7880, 0, 0),
(@GOSSIP, 7885, 0, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP, 7901, 0, @HAS_LEDGER),
-- Spirit of Azuregos gossips
(@GOSSIP_SPIRIT, 7881, 0, 0),
(@GOSSIP_SPIRIT, 7885, 0, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP_SPIRIT, 7901, 0, @HAS_LEDGER),
-- Quest related gossips (common to both creatures)
(@GOSSIP + 1, 7886, 0, 0),
(@GOSSIP + 2, 7887, 0, 0),
(@GOSSIP + 3, 7888, 0, 0),
(@GOSSIP + 4, 7889, 0, 0),
(@GOSSIP + 5, 7890, 0, 0),
(@GOSSIP + 6, 7891, 0, 0),
(@GOSSIP + 7, 7892, 0, 0),
(@GOSSIP + 8, 7893, 0, 0),
(@GOSSIP + 9, 7894, 0, 0),
(@GOSSIP + 10, 7895, 0, 0),
(@GOSSIP + 11, 7896, 0, 0),
(@GOSSIP + 12, 7897, @GOSSIP + 11, 0);

-- Added gossip menu options for above gossip menus
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP AND @GOSSIP + 13;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP, 0, 0, 'I am a treasure hunter in search of powerful artifacts. Give them to me and you will not be harmed.', 1, 1, 0, 0, @GOSSIP, 0, 0, NULL, 0),
(@GOSSIP, 1, 0, 'How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?', 1, 1, @GOSSIP + 1, 0, 0, 0, 0, NULL, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP_SPIRIT, 1, 0, 'How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?', 1, 1, @GOSSIP + 1, 0, 0, 0, 0, NULL, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP + 1, 0, 0, 'Alright. Where?', 1, 1, @GOSSIP + 2, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 2, 0, 0, 'By Bronzebeard\'s... um, beard! What are you talking about?', 1, 1, @GOSSIP + 3, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 3, 0, 0, 'Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?', 1, 1, @GOSSIP + 4, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 4, 0, 0, 'A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!', 1, 1, @GOSSIP + 5, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 5, 0, 0, '...', 1, 1, @GOSSIP + 6, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 6, 0, 0, 'You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?', 1, 1, @GOSSIP + 7, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 7, 0, 0, 'You\'re insane.', 1, 1, @GOSSIP + 8, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 8, 0, 0, 'I\'m all ears.', 1, 1, @GOSSIP + 9, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 9, 0, 0, 'Come again.', 1, 1, @GOSSIP + 10, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 10, 0, 0, 'Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?', 1, 1, @GOSSIP + 11, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 11, 0, 0, 'FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?', 1, 1, @GOSSIP + 12, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 12, 0, 0, 'But...', 1, 1, -1, 0, @GOSSIP + 12, 0, 0, NULL, 0);

-- Added gossip menu scripts for The Scepter of the Shifting Sands quest chain
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (@GOSSIP, @GOSSIP + 11, @GOSSIP + 12);
INSERT INTO `dbscripts_on_gossip` VALUES
-- Makes Azuregos engage combat
(@GOSSIP, 0, 26, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azuregos attacks player'),
-- Creates item 20949 (Magical Ledger) into player inventory
(@GOSSIP + 11, 0, 17, 20949, 1, 0, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'creates item Magical Ledger'),
-- Makes Azuregos speaks
(@GOSSIP + 12, 0, 0, 0, 0, 0, 0, 0, @SCRIPT_STRING, 0, 0, 0, 0, 0, 0, 0, 'Azuregos says Good Day');

-- Added missing script string for previous script
DELETE FROM `db_script_string` WHERE `entry` = @SCRIPT_STRING;
INSERT INTO `db_script_string` VALUES
(@SCRIPT_STRING, 'I said GOOD DAY!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

-- Conditions for gossips above
DELETE FROM `conditions` WHERE `condition_entry` IN (@HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS, @CAN_DISPLAY_QUEST_GOSSIP, @HAS_LEDGER, @NOT_HAVE_LEDGER);
INSERT INTO `conditions` VALUES
(@HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS, 8, 8555, 0),
(@NOT_HAVE_LEDGER, 24, 20949, 1),
(@CAN_DISPLAY_QUEST_GOSSIP, -1, @NOT_HAVE_LEDGER, @HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS),
(@HAS_LEDGER, 2, 20949, 1);