-- Adding Love is in the Air Aura

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24699, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24702, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24689, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24706, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24693, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24697, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24688, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24700, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24705, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24685, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24703, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24694, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24696, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24701, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24687, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24704, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24692, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24686, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24698, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24691, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24695, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24690, 0, 0, 0, 27654, 0, 8);

-- Hunters
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24782, 0, 0, 0, 27654, 0, 8); -- Sagewind
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24785, 0, 0, 0, 27654, 0, 8); -- Ragetotem
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24786, 0, 0, 0, 27654, 0, 8); -- Thunderhorn

-- TB Hunter template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8254, 0, 507);
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (12867, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286701, 0, 0, NULL, 523);
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8283, 0, 508);
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8289, 0, 520);
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8296, 0, 518);
-- Cast Valentine(26923) in response to receiving love token
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (1286701, 0, 15, 26923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (1286701, 0, 14, 27741, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Love is in the Air Aura');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8291, 0, 524);

-- Adding Gossip options to turn on during event and off after
-- Hunter Sagewind
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27654, 0, 29, 1, 1, 0, 14440, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Gossip to Sagewind');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27657, 0, 29, 1, 2, 0, 14440, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Gossip from Sagewind');
UPDATE `creature_template` SET `GossipMenuId`= 12867 WHERE `Entry`= 14440;

-- Hunter Ragetotem
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27654, 0, 29, 1, 1, 0, 14441, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Gossip to Ragetotem');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27657, 0, 29, 1, 2, 0, 14441, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Gossip from Ragetotem');
UPDATE `creature_template` SET `GossipMenuId`= 12867 WHERE `Entry`= 14441;
-- Hunter Thunderhorn
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27654, 0, 29, 1, 1, 0, 14442, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Gossip to Thunderhorn');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (27657, 0, 29, 1, 2, 0, 14442, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Gossip from Thunderhorn');
UPDATE `creature_template` SET `GossipMenuId`= 12867 WHERE `Entry`= 14442;



-- Changing standard gossip to display only outside of event
UPDATE `gossip_menu` SET `condition_id`= 501 WHERE `entry`= 721 and `text_id`= 1272;

-- Love Tokens (Normal Valentine Gossip)
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8254, 0, 507);

-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (721, 11, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 538);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (721, 12, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 539);

-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8282, 0, 508);

-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8287, 0, 541);

-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8289, 0, 542);

-- Cast Valentine(26923) in response to receiving love token
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (72101, 0, 15, 26923, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (72101, 0, 14, 27741, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Love is in the Air Aura');

-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8296, 0, 518);

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8291, 0, 524);




/*
-- Honor Guard (not implemented)

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24682, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24679, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24681, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24680, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24683, 0, 0, 0, 27654, 0, 8);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (24684, 0, 0, 0, 27654, 0, 8); */