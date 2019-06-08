-- Darnassus Sentinels gossip + Menu

INSERT INTO game_event_creature_data VALUES (46820, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46821, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46822, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46823, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46824, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46825, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46826, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46828, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46829, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46830, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46831, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46832, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46833, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46834, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46835, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46836, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46837, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46838, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46839, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46840, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46841, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46843, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46844, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46845, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46846, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46847, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46848, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46849, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46852, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46853, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46854, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46855, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46880, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46881, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46882, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46883, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (46884, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (49939, 0, 0, 0, 27654, 0, 8);

-- Huntresses
INSERT INTO game_event_creature_data VALUES (46216, 0, 0, 0, 27654, 0, 8); -- Skymane
INSERT INTO game_event_creature_data VALUES (46219, 0, 0, 0, 27654, 0, 8); -- Ravenoak
INSERT INTO game_event_creature_data VALUES (46220, 0, 0, 0, 27654, 0, 8); -- Leafrunner

-- Adding gossip and conditions

-- Sentinels
-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=501 WHERE entry=10265 and text_id=3016;

-- Love Tokens
INSERT INTO gossip_menu VALUES (10265, 8255, 0, 507);

-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (10265, 11, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 0, 0, 0, NULL, 517);
-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (10265, 8283, 0, 508);
-- No Cologne gossip
INSERT INTO gossip_menu VALUES (10265, 8287, 0, 519);
-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (10265, 8296, 0, 518);
-- Cast Valentine(27541) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1026501, 0, 15, 27541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Darn Sentinel on player');
UPDATE gossip_menu_option SET action_script_id=1026501 WHERE menu_id=10265 AND id=11;
-- No Token Gossip
INSERT INTO gossip_menu VALUES (10265, 8291, 0, 524);
-- Huntresses
-- Love Tokens
INSERT INTO gossip_menu VALUES (12866, 8255, 0, 507);
-- Adding token menu option
INSERT INTO gossip_menu_option VALUES (12866, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286601, 0, 0, NULL, 517);

-- Heartbroken gossip
INSERT INTO gossip_menu VALUES (12866, 8283, 0, 508);

-- No Cologne gossip
INSERT INTO gossip_menu VALUES (12866, 8287, 0, 519);

-- Already Adored Gossip
INSERT INTO gossip_menu VALUES (12866, 8296, 0, 518);

-- Cast Valentine(27541) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286601, 0, 15, 27541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Darn Sentinel on player');


-- No Token Gossip
INSERT INTO gossip_menu VALUES (12866, 8291, 0, 524);

-- Huntress Skymane
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14378;

-- Huntress Ravenoak
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14379;

-- Huntress Leafrunner
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14380;