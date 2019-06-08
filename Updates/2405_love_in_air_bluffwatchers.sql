-- Adding Love is in the Air Aura

INSERT INTO game_event_creature_data VALUES (24699, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24702, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24689, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24706, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24693, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24697, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24688, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24700, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24705, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24685, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24703, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24694, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24696, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24701, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24687, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24704, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24692, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24686, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24698, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24691, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24695, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24690, 0, 0, 0, 27654, 0, 8);

-- Adding Gossip Menu Text for Tauren default valentine gossip
INSERT INTO npc_text VALUES (8309, 'It seems like love is drifting on the wind. I hope that I won\'t be left out.', 'It seems like love is drifting on the wind. I hope that I won\'t be left out.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=501 WHERE entry=721 and text_id=1272;

-- Love Tokens (Normal Valentine Gossip)
INSERT INTO gossip_menu VALUES (721, 8309, 0, 507);

-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (721, 11, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 538);
INSERT INTO gossip_menu_option VALUES (721, 12, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 539);

-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (721, 8282, 0, 508);

-- No Cologne gossip
INSERT INTO gossip_menu VALUES (721, 8287, 0, 541);

-- No Perfume gossip
INSERT INTO gossip_menu VALUES (721, 8289, 0, 542);

-- Cast Valentine(26923) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (72101, 0, 15, 26923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');

-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (721, 8296, 0, 518);

-- No Token Gossip
INSERT INTO gossip_menu VALUES (721, 8291, 0, 524);


-- Hunters
INSERT INTO game_event_creature_data VALUES (24782, 0, 0, 0, 27654, 0, 8); -- Sagewind
INSERT INTO game_event_creature_data VALUES (24785, 0, 0, 0, 27654, 0, 8); -- Ragetotem
INSERT INTO game_event_creature_data VALUES (24786, 0, 0, 0, 27654, 0, 8); -- Thunderhorn

-- TB Hunter template - Gossip Menu + Options
-- Love Tokens
INSERT INTO gossip_menu VALUES (12867, 8254, 0, 507);
-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (12867, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286701, 0, 0, NULL, 523);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (12867, 8283, 0, 508);
-- No Perfume gossip
INSERT INTO gossip_menu VALUES (12867, 8289, 0, 520);
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (12867, 8296, 0, 518);
-- Cast Valentine(26923) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286701, 0, 15, 26923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');
-- No Token Gossip
INSERT INTO gossip_menu VALUES (12867, 8291, 0, 524);
-- Adding Gossip options to turn on during event and off after
-- Hunter Sagewind
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14440;
-- Hunter Ragetotem
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14441;
-- Hunter Thunderhorn
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14442;
/*
-- Honor Guard (not implemented)
INSERT INTO game_event_creature_data VALUES (24682, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24679, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24681, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24680, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24683, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24684, 0, 0, 0, 27654, 0, 8); */