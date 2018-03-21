-- Reverted data to WotLK sniff values
UPDATE gameobject_template SET ExtraFlags=0, data10=24743, data3=0 WHERE entry=180515;
UPDATE gameobject_template SET ExtraFlags=0, data10=24832, data3=0 WHERE entry=180452;

-- Added missing target GO in Mulgore
DELETE FROM gameobject WHERE guid=12783;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(12783, 180573, 1, -2183.58, -250.118, -14.9857, -1.3439, 0, 0, 0.986908, -0.161286, 25, 25, 100, 1);
DELETE FROM game_event_gameobject WHERE guid=12783;
INSERT INTO game_event_gameobject (guid, event) VALUES (12783, 5);

-- Added all spells cast when the Darkmoon Fair cannon is used
DELETE FROM dbscripts_on_go_template_use WHERE id IN (180515, 180452);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(180515, 0, 15, 24831, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Elwynn Forest - TP'),
(180515, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Elwynn Forest - Stun'),
(180452, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Mulgore - stun'),
(180452, 0, 15, 24730, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Mulgore - TP');

UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=15218;
