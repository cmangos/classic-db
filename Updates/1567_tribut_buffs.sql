
-- Tribut Run Gossip->Buffs

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `condition_id`)
	VALUES 
		(51002, 0, 0, 'Yeah, you''re a real brainiac. Just how smart do you think you are, Slip''kik?', 1, 1, 14323, 0, 0, 0, '', 0),
		(51003, 0, 0, 'So, now that I''m the king... what have you got for me?!', 1, 1, 14321, 0, 0, 0, '', 0),
		(51004, 0, 0, 'Call me "Boss".  What have you got for me!', 1, 1, 14326, 0, 0, 0, '', 0);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`)
	VALUES
		('51004', '6907', '0', '0'),
		('51003', '6903', '0', '0'),
		('51002', '6905', '0', '0');

INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`)
	VALUES
		('510021', '0', '15', '22818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast mol''dar''s moxie'),
		('510031', '0', '15', '22817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast fengus'' ferocity'),
		('510041', '0', '15', '22820', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast slip''kik''s savvy');

UPDATE `creature_template` SET `GossipMenuId` = '51003' WHERE `creature_template`.`Entry` = 14321;
UPDATE `creature_template` SET `GossipMenuId` = '51004' WHERE `creature_template`.`Entry` = 14326;
UPDATE `creature_template` SET `GossipMenuId` = '51002' WHERE `creature_template`.`Entry` = 14323;
