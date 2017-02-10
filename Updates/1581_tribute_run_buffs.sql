
-- Tribut Run Gossip->Buffs

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (5733, 5731, 5735);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `condition_id`)
	VALUES
        (5731, 0, 0, 'Call me "Boss".  What have you got for me!', 1, 1, 5730, 0, 0, 0, '', 0),
		(5733, 0, 0, 'Yeah, you\'re a real brainiac. Just how smart do you think you are, Slip\'kik?', 1, 1, 5732, 0, 0, 0, '', 0),
		(5735, 0, 0, 'So, now that I\'m the king... what have you got for me?!', 1, 1, 5734, 0, 0, 0, '', 0);

DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 5730 AND 5735;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`)
	VALUES
        ('5730', '6904', '573001', '0'),
		('5731', '6903', '0', '0'), -- Fengus
        ('5732', '6906', '573201', '0'),
		('5733', '6905', '0', '0'), -- Slip'kik
        ('5734', '6908', '573401', '0'),
		('5735', '6907', '0', '0'); -- Mol'dar

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (573001, 573201, 573401);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`)
	VALUES
		('573001', '0', '15', '22817', '0', '0', '0', 0x02, '0', '0', '0', '0', '0', '0', '0', '0', 'cast fengus\' ferocity'),
		('573201', '0', '15', '22820', '0', '0', '0', 0x02, '0', '0', '0', '0', '0', '0', '0', '0', 'cast slip\'kik\'s savvy'),
        ('573401', '0', '15', '22818', '0', '0', '0', 0x02, '0', '0', '0', '0', '0', '0', '0', '0', 'cast mol\'dar\'s moxie');

UPDATE `creature_template` SET `GossipMenuId` = '5731' WHERE `creature_template`.`Entry` = 14321; -- Fengus
UPDATE `creature_template` SET `GossipMenuId` = '5733' WHERE `creature_template`.`Entry` = 14323; -- Slip'kik
UPDATE `creature_template` SET `GossipMenuId` = '5735' WHERE `creature_template`.`Entry` = 14326; -- Mol'dar

