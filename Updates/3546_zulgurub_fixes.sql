-- Fix DBScripts now using GameObject template instead of GO spawns
DELETE FROM dbscripts_on_go_use WHERE id IN (3090187, 3090188, 3090189,3090190);

INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(179985, 1000, 0, 10, 15041, 60000, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zul''Gurub - Spider Egg - Summon Spawn of Mar''li'),
(180327, 5000, 0, 10, 15082, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 6029, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Gri''lek)'),
(180327, 5000, 0, 10, 15083, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 6030, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Hazza''rah)'),
(180327, 5000, 0, 10, 15084, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 6031, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Renataki)'),
(180327, 5000, 0, 10, 15085, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 6032, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Wushoolay)');

-- Fix objects no longer tied to game event
DELETE FROM game_event_gameobject WHERE event IN (29, 30, 31, 32);

-- Remove duplicate spawns in ZG by using conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 6029 AND 6032;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(6029, 12, 29, 0, 0, 0, 0, 'Zul''Gurub - Edge of Madness (Gri''lek)'),
(6030, 12, 30, 0, 0, 0, 0, 'Zul''Gurub - Edge of Madness (Hazza''rah)'),
(6031, 12, 31, 0, 0, 0, 0, 'Zul''Gurub - Edge of Madness (Renataki)'),
(6032, 12, 32, 0, 0, 0, 0, 'Zul''Gurub - Edge of Madness (Wushoolay)');
