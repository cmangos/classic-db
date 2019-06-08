-- Stormwind Guards and Gossip

INSERT INTO game_event_creature_data VALUES (189, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (190, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (2473, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (19272, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (19273, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (26833, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79664, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79666, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79669, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79671, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79674, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79679, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79687, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79689, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79704, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79730, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79731, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79732, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79733, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79819, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79840, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79857, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79859, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79861, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79863, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79864, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79865, 0, 0, 0, 27654, 0, 8);

-- Stormwind City Patrollers

INSERT INTO game_event_creature_data VALUES (12088, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (12093, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79670, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79675, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79690, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79792, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79807, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (79814, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (90438, 0, 0, 0, 27654, 0, 8);

-- Officers
INSERT INTO game_event_creature_data VALUES (79768, 0, 0, 0, 27654, 0, 8); -- Brady
INSERT INTO game_event_creature_data VALUES (79818, 0, 0, 0, 27654, 0, 8); -- Jaxon
INSERT INTO game_event_creature_data VALUES (90484, 0, 0, 0, 27654, 0, 8); -- Pomeroy

-- Adding Gossip options to turn on during event and off after

-- SW Officer template - Gossip Menu + Options
-- Love Tokens
INSERT INTO gossip_menu VALUES (12864, 8245, 0, 507);
-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (12864, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286401, 0, 0, NULL, 523);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (12864, 8283, 0, 508);
-- No Perfume gossip
INSERT INTO gossip_menu VALUES (12864, 8289, 0, 520);
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (12864, 8296, 0, 518);
-- Cast Valentine(27548) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286401, 0, 15, 27548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine SW Guard on player');

-- No Token Gossip
INSERT INTO gossip_menu VALUES (12864, 8291, 0, 524);

-- Officer Brady
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14439;
-- Officer Jaxon
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14423;
-- Officer Pomeroy
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14438;

-- Adding gossip and conditions

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=501 WHERE entry=435 and text_id=933;

-- Love Tokens(Normal Valentine Gossip)
INSERT INTO gossip_menu VALUES (435, 8245, 0, 507);

-- Adding token menu options
INSERT INTO gossip_menu_option VALUES (435, 16, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 43501, 0, 0, NULL, 538); -- Female Guard
INSERT INTO gossip_menu_option VALUES (435, 17, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 43501, 0, 0, NULL, 539); -- Male Guard

-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (435, 8282, 0, 508);

-- No Cologne gossip
INSERT INTO gossip_menu VALUES (435, 8287, 0, 541);

-- No Perfume gossip
INSERT INTO gossip_menu VALUES (435, 8289, 0, 542);

-- Cast Valentine(27548) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (43501, 0, 15, 27548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Stormwind Guard on player');

-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (435, 8296, 0, 518);

-- No Token Gossip
INSERT INTO gossip_menu VALUES (435, 8291, 0, 524);
