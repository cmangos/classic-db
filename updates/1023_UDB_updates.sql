-- -----------------
-- author: @Grz3s
-- -----------------

-- Dun Morogh - updates
-- Gnome Engineer - 2 spawns removed (should never be there)
-- Leper Gnome - movement

-- Gnome Engineer
-- should be found only in Dun Morogh airfield.
DELETE FROM creature WHERE guid IN (86178,86175);
DELETE FROM creature_addon WHERE guid IN (86178,86175);
DELETE FROM creature_movement WHERE id IN (86178,86175);
DELETE FROM game_event_creature WHERE guid IN (86178,86175);
DELETE FROM game_event_creature_data WHERE guid IN (86178,86175);
DELETE FROM creature_battleground WHERE guid IN (86178,86175);
DELETE FROM creature_linking WHERE guid IN (86178,86175) OR master_guid IN (86178,86175);

-- Leper Gnome 
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (2414,2420,2426,2422,2427,2425,2412,2416,2421,2428,2438,2441,2455,2458,2467,2468,2461,2469,2460,2451);

-- -----------------
-- author: @Killyana
-- -----------------

-- Zixil <Merchant Supreme>
-- Zixil <Merchant Supreme> and his guard will patrol between Tarren Mill and Southshore.
-- Source: TrinityCore/TrinityCore@dd0b329

UPDATE creature SET position_x = -36.31, position_y = -916.366, position_z = 55.075, orientation = 1.062, Spawndist = 0, MovementType = 2 WHERE guid = 15424;
UPDATE creature SET position_x = -37.248, position_y = -914.605, position_z = 55.343, orientation = 0.826, Spawndist = 0, MovementType = 0 WHERE guid = 15423;
DELETE FROM creature_movement WHERE id = 15424;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3537;
DELETE FROM creature_movement_template WHERE entry = 3537;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(3537, 1, -36.31, -916.366, 55.075, 180000, 0, 1.062, 0, 0), 
(3537, 2, -28.532600, -902.440735, 55.908634, 0, 0, 0, 0, 0),
(3537, 3, -26.338741, -896.902466, 56.039452, 0, 0, 0, 0, 0),
(3537, 4, -51.500923, -836.734619, 56.524872, 0, 0, 0, 0, 0),
(3537, 5, -17.165236, -802.633240, 58.751846, 0, 0, 0, 0, 0),
(3537, 6, -20.983173, -719.063965, 69.290993, 0, 0, 0, 0, 0),
(3537, 7, -149.228104, -712.801025, 64.445107, 0, 0, 0, 0, 0),
(3537, 8, -226.017303, -722.711487, 60.861263, 0, 0, 0, 0, 0),
(3537, 9, -325.539337, -754.267334, 54.089657, 0, 0, 0, 0, 0),
(3537, 10, -377.870178, -776.472351, 54.472977, 0, 0, 0, 0, 0),
(3537, 11, -403.164459, -680.892700, 54.499004, 0, 0, 0, 0, 0),
(3537, 12, -331.617737, -671.147278, 54.918808, 0, 0, 0, 0, 0),
(3537, 13, -341.247772, -713.172363, 57.733025, 0, 0, 0, 0, 0),
(3537, 14, -340.614716, -711.776184, 57.733025, 120000, 0, 0, 0, 0),
(3537, 15, -325.247681, -677.673950, 54.596302, 0, 0, 0, 0, 0), 
(3537, 16, -339.869904, -673.187561, 55.012871, 0, 0, 0, 0, 0),
(3537, 17, -385.749298, -685.196350, 54.387272, 0, 0, 0, 0, 0),
(3537, 18, -413.708405, -656.887817, 54.488979, 0, 0, 0, 0, 0),
(3537, 19, -440.757660, -585.658386, 53.424225, 0, 0, 0, 0, 0),
(3537, 20, -520.923462, -558.851501, 39.920975, 0, 0, 0, 0, 0),
(3537, 21, -569.159912, -567.547302, 32.809437, 0, 0, 0, 0, 0),
(3537, 22, -594.511536, -575.940979, 31.982075, 0, 0, 0, 0, 0),
(3537, 23, -650.699402, -560.431763, 26.120964, 0, 0, 0, 0, 0),
(3537, 24, -691.624939, -568.642334, 24.540937, 0, 0, 0, 0, 0),
(3537, 25, -707.109802, -562.611023, 22.809536, 0, 0, 0, 0, 0),
(3537, 26, -724.787048, -549.384033, 20.291832, 0, 0, 0, 0, 0),
(3537, 27, -811.109985, -542.174927, 15.771987, 0, 0, 0, 0, 0),
(3537, 28, -817.549683, -533.020020, 15.160646, 180000, 0, 0, 0, 0),
(3537, 29, -811.109985, -542.174927, 15.771987, 0, 0, 0, 0, 0),
(3537, 30, -724.787048, -549.384033, 20.291832, 0, 0, 0, 0, 0),
(3537, 31, -707.109802, -562.611023, 22.809536, 0, 0, 0, 0, 0),
(3537, 32, -691.624939, -568.642334, 24.540937, 0, 0, 0, 0, 0),
(3537, 33, -650.699402, -560.431763, 26.120964, 0, 0, 0, 0, 0),
(3537, 34, -594.511536, -575.940979, 31.982075, 0, 0, 0, 0, 0),
(3537, 35, -569.159912, -567.547302, 32.809437, 0, 0, 0, 0, 0),
(3537, 36, -520.923462, -558.851501, 39.920975, 0, 0, 0, 0, 0),
(3537, 37, -440.757660, -585.658386, 53.424225, 0, 0, 0, 0, 0),
(3537, 38, -413.708405, -656.887817, 54.488979, 0, 0, 0, 0, 0),
(3537, 39, -385.749298, -685.196350, 54.387272, 0, 0, 0, 0, 0),
(3537, 40, -339.869904, -673.187561, 55.012871, 0, 0, 0, 0, 0),
(3537, 41, -325.247681, -677.673950, 54.596302, 0, 0, 0, 0, 0), 
(3537, 42, -340.614716, -711.776184, 57.733025, 120000, 0, 0, 0, 0),
(3537, 43, -341.247772, -713.172363, 57.733025, 0, 0, 0, 0, 0),
(3537, 44, -331.617737, -671.147278, 54.918808, 0, 0, 0, 0, 0),
(3537, 45, -403.164459, -680.892700, 54.499004, 0, 0, 0, 0, 0),
(3537, 46, -377.870178, -776.472351, 54.472977, 0, 0, 0, 0, 0),
(3537, 47, -325.539337, -754.267334, 54.089657, 0, 0, 0, 0, 0),
(3537, 48, -226.017303, -722.711487, 60.861263, 0, 0, 0, 0, 0),
(3537, 49, -149.228104, -712.801025, 64.445107, 0, 0, 0, 0, 0),
(3537, 50, -20.983173, -719.063965, 69.290993, 0, 0, 0, 0, 0),
(3537, 51, -17.165236, -802.633240, 58.751846, 0, 0, 0, 0, 0),
(3537, 52, -51.500923, -836.734619, 56.524872, 0, 0, 0, 0, 0),
(3537, 53, -26.338741, -896.902466, 56.039452, 0, 0, 0, 0, 0),
(3537, 54, -28.532600, -902.440735, 55.908634, 0, 0, 0, 0, 0),
(3537, 55, -38.973717, -917.010193, 55.065174, 0, 0, 1.062, 0, 0);
-- link
DELETE FROM creature_linking WHERE guid = 15423;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(15423, 15424, 128+512);


-- Marshal Dughan 
-- Marshal Dughan - gossip added
-- missing text
-- Source: TrinityCore/TrinityCore#12615

-- Marshal Dughan
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 6159 WHERE Entry = 240;
DELETE FROM gossip_menu WHERE entry = 6159; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6159, 6157, 0, 0);
-- missing text added
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(6157, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 0, 1, 5, 5);


-- Mountaineer Stormpike
-- Mountaineer Stormpike - gossip added and missing text
-- Source: TrinityCore/TrinityCore#12711

-- Mountaineer Stormpike
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 694 WHERE entry = 1343;
DELETE FROM gossip_menu WHERE entry = 694;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(694, 1244, 0, 0);
DELETE FROM npc_text WHERE ID = 1244;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(1244, 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 0, 1, 0, 0);
