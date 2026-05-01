-- Event 185401 Action 2 param1 references non-existing entry (13611) in texts table.
-- Text does not exist yet in classic bruteforce broadcast_text
-- INSERT INTO `broadcast_text` (`Id`, `Text`, `Text1`, `ChatTypeID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `SoundEntriesID1`, `SoundEntriesID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES (13611, 'By the Light you will leave this tomb!', '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 18019);

-- Remove wotlk gossip_menu_option, which is not in-use in classic
-- Table gossip_menu_option for menu 6597, id 0 has `npc_option_npcflag` = 4 but creatures using this menu does not have corresponding `NpcFlags`. Option will not accessible in game.
-- Table gossip_menu_option for menu 6598, id 0 has `npc_option_npcflag` = 4 but creatures using this menu does not have corresponding `NpcFlags`. Option will not accessible in game.
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6597,6598);
-- INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
-- (6597, 0, 1, 'Redeem Battleground Marks for Honor.', 0, 3, 4, 0, 0, 0, 0, 0, '', 0, 0),
-- (6598, 0, 1, 'Redeem Battleground Marks for Honor.', 0, 3, 4, 0, 0, 0, 0, 0, '', 0, 0);

