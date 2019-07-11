-- Script NPC 10578 (Bom'bay) in Durotar
DELETE FROM conditions WHERE condition_entry IN (945, 946, 947);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(945, 8, 808, 0, 'Quest ID 808 Rewarded'), -- Minshina's Skull
(946, 8, 826, 0, 'Quest ID 826 Rewarded'), -- Zalazane
(947, -1, 946, 945, '(Quest ID 808 Rewarded AND Quest ID 826 Rewarded)');

DELETE FROM gossip_menu WHERE entry=3062;
INSERT INTO gossip_menu VALUES
(3062, 3794, 0, 0),
(3062, 3795, 0, 947);

UPDATE gossip_menu_option SET action_menu_id=-1, action_script_id=306201, condition_id=947 WHERE menu_id=3062;

DELETE FROM dbscripts_on_gossip WHERE id=306201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(306201, 0, 15, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Cast Voodoo on Gossip'),
(306201, 0, 45, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Random say');

DELETE FROM dbscripts_on_relay WHERE id=2;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2, 0, 0, 0, 0, 0, 0, 0, 0, 2000005064, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Random say');

DELETE FROM dbscript_random_templates WHERE id=9;
INSERT INTO dbscript_random_templates VALUES
(9, 1, 2, 30, 'Witch Doctor Bombay - Relay action'),    -- Chance is guess work
(9, 1, 0, 70, 'Witch Doctor Bombay - No action');

DELETE FROM dbscript_string WHERE entry=2000005064;
INSERT INTO dbscript_string VALUES
(2000005064, 'Eekum Bokum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
