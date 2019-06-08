-- Adding Love is in the Air Aura

INSERT INTO game_event_creature_data VALUES (17669, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28481, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28485, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28486, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28487, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28488, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28489, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (28490, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (33823, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (33831, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (34102, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (34103, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (34104, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (34105, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (34106, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38296, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38297, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38298, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38299, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38301, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38302, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (38305, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39019, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39020, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39022, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39023, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39024, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39025, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (39026, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41884, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41887, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41888, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41889, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41890, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41891, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41892, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41956, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41960, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41961, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (41964, 0, 0, 0, 27654, 0, 8);

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=501 WHERE entry=2849 and text_id=3543;

-- Love Tokens
INSERT INTO gossip_menu VALUES (2849, 8270, 0, 507);

-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (2849, 14, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 0, 0, 0, NULL, 528);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (2849, 8282, 0, 508);
-- No Perfume or Cologne gossip
INSERT INTO gossip_menu VALUES (2849, 8303, 0, 530);
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (284901, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (2849, 8296, 0, 518);
-- No Token Gossip
INSERT INTO gossip_menu VALUES (2849, 8291, 0, 524);
UPDATE gossip_menu_option SET action_script_id=284901 WHERE menu_id=2849 AND id=14;
-- Seekers
INSERT INTO game_event_creature_data VALUES (32073, 0, 0, 0, 27654, 0, 8); -- Cromwell
INSERT INTO game_event_creature_data VALUES (32074, 0, 0, 0, 27654, 0, 8); -- Nahr
INSERT INTO game_event_creature_data VALUES (32072, 0, 0, 0, 27654, 0, 8); -- Thompson
-- UC Seeker Thompson template - Gossip Menu + Options
-- Love Tokens
INSERT INTO gossip_menu VALUES (12861, 8270, 0, 507);
-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (12861, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286101, 0, 0, NULL, 517);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (12861, 8283, 0, 508);
-- No Cologne gossip
INSERT INTO gossip_menu VALUES (12861, 8287, 0, 519);
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (12861, 8296, 0, 518);
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286101, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');

-- No Token Gossip
INSERT INTO gossip_menu VALUES (12861, 8291, 0, 524);

-- UC Seeker Cromwell + Nahr template - Gossip Menu + Options
-- Love Tokens
INSERT INTO gossip_menu VALUES (12862, 8270, 0, 507);
-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (12862, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286201, 0, 0, NULL, 523);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (12862, 8283, 0, 508);
-- No Perfume gossip
INSERT INTO gossip_menu VALUES (12862, 8289, 0, 520);
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (12862, 8296, 0, 518);
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286201, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');
-- No Token Gossip
INSERT INTO gossip_menu VALUES (12862, 8291, 0, 524);
-- Adding Gossip options to turn on during event and off after
-- Seeker Cromwell
UPDATE creature_template SET GossipMenuId=12862 WHERE Entry=14402;
-- Seeker Nahr
UPDATE creature_template SET GossipMenuId=12862 WHERE Entry=14403;
-- Seeker Thompson
UPDATE creature_template SET GossipMenuId=12861 WHERE Entry=14404;