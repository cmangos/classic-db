
-- Tribut Run Gossip->Buffs

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `condition_id`)
	VALUES 
		(51002, 0, 0, 'Yeah, you''re a real brainiac. Just how smart do you think you are, Slip''kik?', 1, 1, 14323, 0, 0, 0, '', 0),
		(51003, 0, 0, 'So, now that I''m the king... what have you got for me?!', 1, 1, 14321, 0, 0, 0, '', 0),
		(51004, 0, 0, 'Call me "Boss".  What have you got for me!', 1, 1, 14326, 0, 0, 0, '', 0);

INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0_delay`, `em0_0`, `em0_1_delay`, `em0_1`, `em0_2_delay`, `em0_2`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0_delay`, `em1_0`, `em1_1_delay`, `em1_1`, `em1_2_delay`, `em1_2`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0_delay`, `em2_0`, `em2_1_delay`, `em2_1`, `em2_2_delay`, `em2_2`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0_delay`, `em3_0`, `em3_1_delay`, `em3_1`, `em3_2_delay`, `em3_2`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0_delay`, `em4_0`, `em4_1_delay`, `em4_1`, `em4_2_delay`, `em4_2`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0_delay`, `em5_0`, `em5_1_delay`, `em5_1`, `em5_2_delay`, `em5_2`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0_delay`, `em6_0`, `em6_1_delay`, `em6_1`, `em6_2_delay`, `em6_2`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0_delay`, `em7_0`, `em7_1_delay`, `em7_1`, `em7_2_delay`, `em7_2`)
	VALUES
		('60000', 'You are da King of the Gordok! You''re A-number-one!', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL),
		('60001', 'You da man now, dog!', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL),
		('60002', 'You got me good boss! How you get by Slip''kik?? I smart though. I watch next time! Har har!$B$B Nobody get by Slip''kik no more. Slip''kik promise!', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`)
	VALUES
		('51004', '60000', '0', '0'),
		('51003', '60001', '0', '0'),
		('51002', '60002', '0', '0');

INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`)
	VALUES
		('510021', '0', '15', '22818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast mol''dar''s moxie'),
		('510031', '0', '15', '22817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast fengus'' ferocity'),
		('510041', '0', '15', '22820', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast slip''kik''s savvy');

UPDATE `creature_template` SET `GossipMenuId` = '51003' WHERE `creature_template`.`Entry` = 14321;
UPDATE `creature_template` SET `GossipMenuId` = '51004' WHERE `creature_template`.`Entry` = 14326;
UPDATE `creature_template` SET `GossipMenuId` = '51002' WHERE `creature_template`.`Entry` = 14323;