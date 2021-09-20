-- resource collection quest npcs should have 5 gossip texts in total:
-- phase 1, phase 1 (current resource completed), phase 1 (all faction's resources completed - waiting on opposing faction), phase 2, phase 2 (<1 day remaining)
-- still need to add phase 1 "all faction's resources completed" text for all NPCs
DELETE FROM conditions WHERE condition_entry BETWEEN 2035 AND 2099;
DELETE FROM conditions WHERE condition_entry BETWEEN 2104 AND 2147;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(2035, 12, 120, 0, 0, 0, 0, 'Game Event 120 Active'), -- AQ War Effort Phase 1 (Gathering Resources)
(2036, 12, 121, 0, 0, 0, 0, 'Game Event 121 Active'), -- AQ War Effort Phase 2 (Transporting Resources)
(2037, 40, 2113, 0, 0, 0, 0, 'War Effort Days Left Value = 0'), -- AQ War Effort Phase 2 (Transporting Resources - 0 days remaining)
(2038, -1, 2036, 2037, 0, 0, 0, 'War Effort Days Left Value = 0 AND Game Event 121 Active'),

(2039, 40, 2066, 0, 0, 0, 0, 'All Heavy Leather Collected'),
(2040, -1, 2039, 2035, 0, 0, 0, 'All Heavy Leather Collected AND Game Event 120 Active'),
(2041, -3, 2039, 0, 0, 0, 0, 'NOT All Heavy Leather Collected'),

(2042, 40, 2011, 0, 0, 0, 0, 'All Thorium Bars Collected'),
(2043, -1, 2042, 2035, 0, 0, 0, 'All Thorium Bars Collected AND Game Event 120 Active'),
(2044, -3, 2042, 0, 0, 0, 0, 'NOT All Thorium Bars Collected'),

(2045, 40, 1997, 0, 0, 0, 0, 'All Copper Bars Collected'),
(2046, -1, 2045, 2035, 0, 0, 0, 'All Copper Bars Collected AND Game Event 120 Active'),
(2047, -3, 2045, 0, 0, 0, 0, 'NOT All Copper Bars Collected'),

(2048, 40, 2002, 0, 0, 0, 0, 'All Iron Bars Collected'),
(2049, -1, 2048, 2035, 0, 0, 0, 'All Iron Bars Collected AND Game Event 120 Active'),
(2050, -3, 2048, 0, 0, 0, 0, 'NOT All Iron Bars Collected'),

(2051, 40, 2092, 0, 0, 0, 0, 'All Rainbow Fin Albacore Collected'),
(2052, -1, 2051, 2035, 0, 0, 0, 'All Rainbow Fin Albacore Collected AND Game Event 120 Active'),
(2053, -3, 2051, 0, 0, 0, 0, 'NOT All Rainbow Fin Albacore Collected'),

(2054, 40, 2101, 0, 0, 0, 0, 'All Spotted Yellowtail Collected'),
(2055, -1, 2054, 2035, 0, 0, 0, 'All Spotted Yellowtail Collected AND Game Event 120 Active'),
(2056, -3, 2054, 0, 0, 0, 0, 'NOT All Spotted Yellowtail Collected'),

(2057, 40, 2098, 0, 0, 0, 0, 'All Roast Raptor Collected'),
(2058, -1, 2057, 2035, 0, 0, 0, 'All Roast Raptor Collected AND Game Event 120 Active'),
(2059, -3, 2057, 0, 0, 0, 0, 'NOT All Roast Raptor Collected'),

(2060, 40, 2053, 0, 0, 0, 0, 'All Purple Lotus Collected'),
(2061, -1, 2060, 2035, 0, 0, 0, 'All Purple Lotus Collected AND Game Event 120 Active'),
(2062, -3, 2060, 0, 0, 0, 0, 'NOT All Purple Lotus Collected'),

(2063, 40, 2057, 0, 0, 0, 0, 'All Arthas'' Tears Collected'),
(2064, -1, 2063, 2035, 0, 0, 0, 'All Arthas'' Tears Collected AND Game Event 120 Active'),
(2065, -3, 2063, 0, 0, 0, 0, 'NOT All Arthas'' Tears Collected'),

(2066, 40, 2047, 0, 0, 0, 0, 'All Stranglekelp Collected'),
(2067, -1, 2066, 2035, 0, 0, 0, 'All Stranglekelp Collected AND Game Event 120 Active'),
(2068, -3, 2066, 0, 0, 0, 0, 'NOT All Stranglekelp Collected'),

(2069, 40, 2088, 0, 0, 0, 0, 'All Runecloth Bandages Collected'),
(2070, -1, 2069, 2035, 0, 0, 0, 'All Runecloth Bandages Collected AND Game Event 120 Active'),
(2071, -3, 2069, 0, 0, 0, 0, 'NOT All Runecloth Bandages Collected'),

(2072, 40, 2082, 0, 0, 0, 0, 'All Silk Bandages Collected'),
(2073, -1, 2072, 2035, 0, 0, 0, 'All Silk Bandages Collected AND Game Event 120 Active'),
(2074, -3, 2072, 0, 0, 0, 0, 'NOT All Silk Bandages Collected'),

(2075, 40, 2076, 0, 0, 0, 0, 'All Linen Bandages Collected'),
(2076, -1, 2075, 2035, 0, 0, 0, 'All Linen Bandages Collected AND Game Event 120 Active'),
(2077, -3, 2075, 0, 0, 0, 0, 'NOT All Linen Bandages Collected'),

(2078, 40, 2060, 0, 0, 0, 0, 'All Light Leather Collected'),
(2079, -1, 2078, 2035, 0, 0, 0, 'All Light Leather Collected AND Game Event 120 Active'),
(2080, -3, 2078, 0, 0, 0, 0, 'NOT All Light Leather Collected'),

(2081, 40, 2063, 0, 0, 0, 0, 'All Medium Leather Collected'),
(2082, -1, 2081, 2035, 0, 0, 0, 'All Medium Leather Collected AND Game Event 120 Active'),
(2083, -3, 2081, 0, 0, 0, 0, 'NOT All Medium Leather Collected'),

(2084, 40, 2069, 0, 0, 0, 0, 'All Thick Leather Collected'),
(2085, -1, 2084, 2035, 0, 0, 0, 'All Thick Leather Collected AND Game Event 120 Active'),
(2086, -3, 2084, 0, 0, 0, 0, 'NOT All Thick Leather Collected'),

(2087, 40, 2005, 0, 0, 0, 0, 'All Tin Bars Collected'),
(2088, -1, 2087, 2035, 0, 0, 0, 'All Tin Bars Collected AND Game Event 120 Active'),
(2089, -3, 2087, 0, 0, 0, 0, 'NOT All Tin Bars Collected'),

(2090, 40, 2008, 0, 0, 0, 0, 'All Mithril Bars Collected'),
(2091, -1, 2090, 2035, 0, 0, 0, 'All Mithril Bars Collected AND Game Event 120 Active'),
(2092, -3, 2090, 0, 0, 0, 0, 'NOT All Mithril Bars Collected'),

(2093, 40, 2018, 0, 0, 0, 0, 'All Copper Bars Collected'),
(2094, -1, 2093, 2035, 0, 0, 0, 'All Copper Bars Collected AND Game Event 120 Active'),
(2095, -3, 2093, 0, 0, 0, 0, 'NOT All Copper Bars Collected'),

(2096, 40, 2054, 0, 0, 0, 0, 'All Purple Lotus Collected'),
(2097, -1, 2096, 2035, 0, 0, 0, 'All Purple Lotus Collected AND Game Event 120 Active'),
(2098, -3, 2096, 0, 0, 0, 0, 'NOT All Purple Lotus Collected'),

(2104, 40, 2050, 0, 0, 0, 0, 'All Firebloom Collected'),
(2105, -1, 2104, 2035, 0, 0, 0, 'All Firebloom Collected AND Game Event 120 Active'),
(2106, -3, 2104, 0, 0, 0, 0, 'NOT All Firebloom Collected'),

(2107, 40, 2021, 0, 0, 0, 0, 'All Peacebloom Collected'),
(2108, -1, 2107, 2035, 0, 0, 0, 'All Peacebloom Collected AND Game Event 120 Active'),
(2109, -3, 2107, 0, 0, 0, 0, 'NOT All Peacebloom Collected'),

(2110, 40, 2070, 0, 0, 0, 0, 'All Thick Leather Collected'),
(2111, -1, 2110, 2035, 0, 0, 0, 'All Thick Leather Collected AND Game Event 120 Active'),
(2112, -3, 2110, 0, 0, 0, 0, 'NOT All Thick Leather Collected'),

(2113, 40, 2073, 0, 0, 0, 0, 'All Rugged Leather Collected'),
(2114, -1, 2113, 2035, 0, 0, 0, 'All Rugged Leather Collected AND Game Event 120 Active'),
(2115, -3, 2113, 0, 0, 0, 0, 'NOT All Rugged Leather Collected'),

(2116, 40, 2089, 0, 0, 0, 0, 'All Runecloth Bandages Collected'),
(2117, -1, 2116, 2035, 0, 0, 0, 'All Runecloth Bandages Collected AND Game Event 120 Active'),
(2118, -3, 2116, 0, 0, 0, 0, 'NOT All Runecloth Bandages Collected'),

(2119, 40, 2085, 0, 0, 0, 0, 'All Mageweave Bandages Collected'),
(2120, -1, 2119, 2035, 0, 0, 0, 'All Mageweave Bandages Collected AND Game Event 120 Active'),
(2121, -3, 2119, 0, 0, 0, 0, 'NOT All Mageweave Bandages Collected'),

(2122, 40, 2079, 0, 0, 0, 0, 'All Wool Bandages Collected'),
(2123, -1, 2122, 2035, 0, 0, 0, 'All Wool Bandages Collected AND Game Event 120 Active'),
(2124, -3, 2122, 0, 0, 0, 0, 'NOT All Wool Bandages Collected'),

(2125, 40, 2102, 0, 0, 0, 0, 'All Spotted Yellowtail Collected'),
(2126, -1, 2125, 2035, 0, 0, 0, 'All Spotted Yellowtail Collected AND Game Event 120 Active'),
(2127, -3, 2125, 0, 0, 0, 0, 'NOT All Spotted Yellowtail Collected'),

(2128, 40, 2105, 0, 0, 0, 0, 'All Baked Salmon Collected'),
(2129, -1, 2128, 2035, 0, 0, 0, 'All Baked Salmon Collected AND Game Event 120 Active'),
(2130, -3, 2128, 0, 0, 0, 0, 'NOT All Baked Salmon Collected'),

(2131, 40, 2095, 0, 0, 0, 0, 'All Lean Wolf Steaks Collected'),
(2132, -1, 2131, 2035, 0, 0, 0, 'All Lean Wolf Steaks Collected AND Game Event 120 Active'),
(2133, -3, 2131, 0, 0, 0, 0, 'NOT All Lean Wolf Steaks Collected'),

(2134, -1, 2043, 2046, 2049, 2052, 0, ''),
(2135, -1, 2055, 2058, 2061, 2064, 0, ''),
(2136, -1, 2067, 2070, 2073, 2076, 0, ''),
(2137, -1, 2079, 2082, 2085, 0, 0, ''),
(2138, -1, 2137, 2136, 2135, 2134, 0, 'All Alliance Resources Collected'),

(2139, -1, 2040, 2088, 2091, 2094, 0, ''),
(2140, -1, 2097, 2105, 2108, 2111, 0, ''),
(2141, -1, 2114, 2117, 2120, 2123, 0, ''),
(2142, -1, 2126, 2129, 2132, 0, 0, ''),
(2143, -1, 2142, 2141, 2140, 2139, 0, 'All Horde Resources Collected'),

(2144, -3, 2138, 0, 0, 0, 0, 'NOT All Alliance Resources Collected'),
(2145, -1, 2035, 2144, 0, 0, 0, 'Game Event 120 Active AND NOT All Alliance Resources Collected'),

(2146, -3, 2143, 0, 0, 0, 0, 'NOT All Horde Resources Collected'),
(2147, -1, 2035, 2146, 0, 0, 0, 'Game Event 120 Active AND NOT All Horde Resources Collected');

-- Darnassus Commendation Officer
UPDATE creature_template SET GossipMenuId=6803 WHERE Entry=15731;
DELETE FROM npc_text WHERE id=8126;
DELETE FROM npc_text_broadcast_text WHERE Id=8126;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8126, 0, 11415);

-- Stormwind Commendation Officer
UPDATE creature_template SET GossipMenuId=6806 WHERE Entry=15735;
DELETE FROM npc_text WHERE id=8130;
DELETE FROM npc_text_broadcast_text WHERE Id=8130;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8130, 0, 11418);

-- Dame Twinbraid
-- counter worldstate id: 2011
-- quests: 8499, 8500
UPDATE creature_template SET GossipMenuId=6603 WHERE Entry=15432;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6603 AND text_id=7831;
DELETE FROM gossip_menu WHERE entry=6603 AND text_id IN (7832,60027,7962,7974);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6603, 7832, 0, 2043),
(6603, 60027, 0, 2138),
(6603, 7962, 0, 2036),
(6603, 7974, 0, 2038);
DELETE FROM npc_text WHERE id IN (7831,7832,60027,7962,7974);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7831,7832,60027,7962,7974);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7831, 0, 10938),
(7832, 0, 10939),
(60027, 0, 11150),
(7962, 0, 11151),
(7974, 0, 11165);
UPDATE quest_template SET RequiredCondition=2044 WHERE entry IN (8499,8500);

-- Sergeant Stonebrow
-- counter worldstate id: 1997
-- quests: 8492, 8493
UPDATE creature_template SET GossipMenuId=6599 WHERE Entry=15383;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6599 AND text_id=7824;
DELETE FROM gossip_menu WHERE entry=6599 AND text_id IN (7823,60028,7958,7972);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6599, 7823, 0, 2046),
(6599, 60028, 0, 2138),
(6599, 7958, 0, 2036),
(6599, 7972, 0, 2038);
DELETE FROM npc_text WHERE id IN (7824,7823,60028,7958,7972);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7824,7823,60028,7958,7972);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7824, 0, 10892),
(7823, 0, 10891),
(60028, 0, 11146),
(7958, 0, 11147),
(7972, 0, 11163);
UPDATE quest_template SET RequiredCondition=2047 WHERE entry IN (8492,8493);

-- Corporal Carnes
-- counter worldstate id: 2002
-- quests: 8494, 8495
UPDATE creature_template SET GossipMenuId=6602 WHERE Entry=15431;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6602 AND text_id=7829;
DELETE FROM gossip_menu WHERE entry=6602 AND text_id IN (7830,60029,7960,7973);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6602, 7830, 0, 2049),
(6602, 60029, 0, 2138),
(6602, 7960, 0, 2036),
(6602, 7973, 0, 2038);
DELETE FROM npc_text WHERE id IN (7829,7830,60029,7960,7973);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7829,7830,60029,7960,7973);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7829, 0, 10936),
(7830, 0, 10937),
(60029, 0, 11148),
(7960, 0, 11149),
(7973, 0, 11164);
UPDATE quest_template SET RequiredCondition=2050 WHERE entry IN (8494,8495);

-- Slicky Gastronome
-- counter worldstate id: 2092
-- quests: 8524, 8525
UPDATE creature_template SET GossipMenuId=6614 WHERE Entry=15455;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6614 AND text_id=7856;
DELETE FROM gossip_menu WHERE entry=6614 AND text_id IN (7857,60030,7997,7996);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6614, 7857, 0, 2052),
(6614, 60030, 0, 2138),
(6614, 7997, 0, 2036),
(6614, 7996, 0, 2038);
DELETE FROM npc_text WHERE id IN (7856,7857,60030,7997,7996);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7856,7857,60030,7997,7996);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7856, 0, 10983),
(7857, 0, 10984),
(60030, 0, 11190),
(7997, 0, 11189),
(7996, 0, 11188);
UPDATE quest_template SET RequiredCondition=2053 WHERE entry IN (8524,8525);

-- Huntress Swiftriver
-- counter worldstate id: 2101
-- quests: 8528, 8529
UPDATE creature_template SET GossipMenuId=6616 WHERE Entry=15457;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6616 AND text_id=7861;
DELETE FROM gossip_menu WHERE entry=6616 AND text_id IN (7862,60031,8003,8002);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6616, 7862, 0, 2055),
(6616, 60031, 0, 2138),
(6616, 8003, 0, 2036),
(6616, 8002, 0, 2038);
DELETE FROM npc_text WHERE id IN (7861,7862,60031,8003,8002);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7861,7862,60031,8003,8002);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7861, 0, 10990),
(7862, 0, 10991),
(60031, 0, 11202),
(8003, 0, 11201),
(8002, 0, 11200);
UPDATE quest_template SET RequiredCondition=2056 WHERE entry IN (8528,8529);

-- Sarah Sadwhistle
-- counter worldstate id: 2098
-- quests: 8526, 8527
UPDATE creature_template SET GossipMenuId=6615 WHERE Entry=15456;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6615 AND text_id=7859;
DELETE FROM gossip_menu WHERE entry=6615 AND text_id IN (7860,60032,8000,7999);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6615, 7860, 0, 2058),
(6615, 60032, 0, 2138),
(6615, 8000, 0, 2036),
(6615, 7999, 0, 2038);
DELETE FROM npc_text WHERE id IN (7859,7860,60032,8000,7999);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7859,7860,60032,8000,7999);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7859, 0, 10988),
(7860, 0, 10989),
(60032, 0, 11199),
(8000, 0, 11198),
(7999, 0, 11197);
UPDATE quest_template SET RequiredCondition=2059 WHERE entry IN (8526,8527);

-- Master Nightsong
-- counter worldstate id: 2053
-- quests: 8505, 8506
UPDATE creature_template SET GossipMenuId=6605 WHERE Entry=15437;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6605 AND text_id=7835;
DELETE FROM gossip_menu WHERE entry=6605 AND text_id IN (7836,60033,7967,7976);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6605, 7836, 0, 2061),
(6605, 60033, 0, 2138),
(6605, 7967, 0, 2036),
(6605, 7976, 0, 2038);
DELETE FROM npc_text WHERE id IN (7835,7836,60033,7967,7976);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7835,7836,60033,7967,7976);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7835, 0, 10942),
(7836, 0, 10943),
(60033, 0, 11155),
(7967, 0, 11156),
(7976, 0, 11167);
UPDATE quest_template SET RequiredCondition=2062 WHERE entry IN (8505,8506);

-- Sergeant Major Germaine
-- counter worldstate id: 2057
-- quests: 8509, 8510
UPDATE creature_template SET GossipMenuId=6606 WHERE Entry=15445;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6606 AND text_id=7837;
DELETE FROM gossip_menu WHERE entry=6606 AND text_id IN (7838,60034,7969,7977);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6606, 7838, 0, 2064),
(6606, 60034, 0, 2138),
(6606, 7969, 0, 2036),
(6606, 7977, 0, 2038);
DELETE FROM npc_text WHERE id IN (7837,7838,60034,7969,7977);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7837,7838,60034,7969,7977);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7837, 0, 10944),
(7838, 0, 10945),
(60034, 0, 11157),
(7969, 0, 11158),
(7977, 0, 11168);
UPDATE quest_template SET RequiredCondition=2065 WHERE entry IN (8509,8510);

-- Private Draxlegauge
-- counter worldstate id: 2047
-- quests: 8503, 8504
UPDATE creature_template SET GossipMenuId=6604 WHERE Entry=15434;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6604 AND text_id=7833;
DELETE FROM gossip_menu WHERE entry=6604 AND text_id IN (7834,60035,7964,7975);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6604, 7834, 0, 2067),
(6604, 60035, 0, 2138),
(6604, 7964, 0, 2036),
(6604, 7975, 0, 2038);
DELETE FROM npc_text WHERE id IN (7833,7834,60035,7964,7975);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7833,7834,60035,7964,7975);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7833, 0, 10940),
(7834, 0, 10941),
(60035, 0, 11152),
(7964, 0, 11153),
(7975, 0, 11166);
UPDATE quest_template SET RequiredCondition=2068 WHERE entry IN (8503,8504);

-- Ironforge Commendation Officer
UPDATE creature_template SET GossipMenuId=6805 WHERE Entry=15734;
DELETE FROM npc_text WHERE id=8129;
DELETE FROM npc_text_broadcast_text WHERE Id=8129;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8129, 0, 11417);

-- General Zog
UPDATE creature_template SET GossipMenuId=6665 WHERE Entry=15539;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6665 AND text_id=7942;
DELETE FROM gossip_menu WHERE entry=6665 AND text_id IN (60060,8006,8005);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6665, 60060, 0, 2143),
(6665, 8006, 0, 2036),
(6665, 8005, 0, 2038);
UPDATE gossip_menu_option SET condition_id=2147 WHERE menu_id=6665 AND id>=1;
UPDATE gossip_menu_option SET option_broadcast_text=11120 WHERE menu_id=6665 AND id=0;
UPDATE gossip_menu_option SET option_broadcast_text=11122 WHERE menu_id=6665 AND id=1;
UPDATE gossip_menu_option SET option_broadcast_text=11124 WHERE menu_id=6665 AND id=2;
UPDATE gossip_menu_option SET option_broadcast_text=11126 WHERE menu_id=6665 AND id=3;
UPDATE gossip_menu_option SET option_broadcast_text=11128 WHERE menu_id=6665 AND id=4;
UPDATE gossip_menu_option SET option_broadcast_text=11130 WHERE menu_id=6665 AND id=5;
DELETE FROM npc_text WHERE id IN (7942,60060,8006,8005);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7942,60060,8006,8005);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7942, 0, 11119),
(60060, 0, 11205),
(8006, 0, 11204),
(8005, 0, 11203);

DELETE FROM npc_text WHERE id IN (7944,7945,7946,7947,7948,8209);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7944,7945,7946,7947,7948,8209);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7944, 0, 11123),
(7945, 0, 11125),
(7946, 0, 11127),
(7947, 0, 11129),
(7948, 0, 11131),
(8209, 0, 11652);

-- Field Marshal Snowfall
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(9.7/7), GossipMenuId=6772 WHERE Entry=15701;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6772 AND text_id=8082;
DELETE FROM gossip_menu WHERE entry=6772 AND text_id IN (60059,8084,60009);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6772, 60059, 0, 2138),
(6772, 8084, 0, 2036),
(6772, 60009, 0, 2038);
DELETE FROM npc_text WHERE id IN (8082,60059,8084,60009);
DELETE FROM npc_text_broadcast_text WHERE Id IN (8082,60059,8084,60009);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8082, 0, 11361),
(60059, 0, 11364),
(8084, 0, 11363),
(60009, 0, 11362);
UPDATE gossip_menu_option SET condition_id=2145 WHERE menu_id=6772 AND id>=1;
UPDATE gossip_menu_option SET option_broadcast_text=11120 WHERE menu_id=6772 AND id=0;
UPDATE gossip_menu_option SET option_broadcast_text=11135 WHERE menu_id=6772 AND id=1;
UPDATE gossip_menu_option SET option_broadcast_text=11137 WHERE menu_id=6772 AND id=2;
UPDATE gossip_menu_option SET option_broadcast_text=11139 WHERE menu_id=6772 AND id=3;
UPDATE gossip_menu_option SET option_broadcast_text=11141 WHERE menu_id=6772 AND id=4;
UPDATE gossip_menu_option SET option_broadcast_text=11143 WHERE menu_id=6772 AND id=5;
UPDATE gossip_menu_option SET option_broadcast_text=11132 WHERE menu_id=6771;

DELETE FROM npc_text WHERE id IN (8071,8087,8088,8089,8090,8091);
DELETE FROM npc_text_broadcast_text WHERE Id IN (8071,8087,8088,8089,8090,8091);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8071, 0, 11338),
(8087, 0, 11365),
(8088, 0, 11366),
(8089, 0, 11367),
(8090, 0, 11368),
(8091, 0, 11369);

UPDATE creature SET position_x=-4958.859863, position_y=-1195.689941, position_z=501.644989, MovementType=2 WHERE id=15701;
DELETE FROM creature_movement_template WHERE entry=15701;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(15701, 0, 1, -4958.859863, -1195.689941, 501.644989, 100, 0, 0),
(15701, 0, 2, -4970.089844, -1182.300049, 501.654999, 100, 0, 0),
(15701, 0, 3, -4978.890137, -1170.800049, 501.647003, 100, 0, 0),
(15701, 0, 4, -4984.220215, -1163.670044, 501.648010, 100, 0, 0),
(15701, 0, 5, -4992.910156, -1161.020020, 501.658997, 100, 0, 0),
(15701, 0, 6, -5007.120117, -1169.319946, 501.660004, 100, 0, 0),
(15701, 0, 7, -5016.279785, -1178.900024, 501.657990, 100, 0, 0),
(15701, 0, 8, -5015.819824, -1187.719971, 501.658997, 100, 0, 0),
(15701, 0, 9, -5002.020020, -1205.130005, 501.674988, 100, 0, 0),
(15701, 0, 10, -4982.450195, -1227.719971, 501.679993, 100, 0, 0),
(15701, 0, 11, -4965.609863, -1248.800049, 501.670013, 100, 0, 0),
(15701, 0, 12, -4951.189941, -1260.079956, 501.667999, 100, 0, 0),
(15701, 0, 13, -4936.410156, -1257.609985, 501.665985, 100, 0, 0),
(15701, 0, 14, -4925.470215, -1241.599976, 501.658997, 100, 0, 0),
(15701, 0, 15, -4931.609863, -1229.829956, 501.652008, 100, 0, 0),
(15701, 0, 16, -4945.870117, -1210.979980, 501.644012, 100, 0, 0);

-- Keeper Moonshade
-- counter worldstate id: 2088
-- quests: 8522, 8523
UPDATE creature_template SET GossipMenuId=6613 WHERE Entry=15453;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6613 AND text_id=7853;
DELETE FROM gossip_menu WHERE entry=6613 AND text_id IN (7854,60036,7994,7993);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6613, 7854, 0, 2070),
(6613, 60036, 0, 2138),
(6613, 7994, 0, 2036),
(6613, 7993, 0, 2038);
DELETE FROM npc_text WHERE id IN (7853,7854,60036,7994,7993);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7853,7854,60036,7994,7993);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7853, 0, 10979),
(7854, 0, 10980),
(60036, 0, 11187),
(7994, 0, 11186),
(7993, 0, 11185);
UPDATE quest_template SET RequiredCondition=2071 WHERE entry IN (8522,8523);

-- Nurse Stonefield
-- counter worldstate id: 2082
-- quests: 8520, 8521
UPDATE creature_template SET GossipMenuId=6612 WHERE Entry=15452;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6612 AND text_id=7851;
DELETE FROM gossip_menu WHERE entry=6612 AND text_id IN (7852,60037,7991,7990);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6612, 7852, 0, 2073),
(6612, 60037, 0, 2138),
(6612, 7991, 0, 2036),
(6612, 7990, 0, 2038);
DELETE FROM npc_text WHERE id IN (7851,7852,60037,7991,7990);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7851,7852,60037,7991,7990);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7851, 0, 10977),
(7852, 0, 10978),
(60037, 0, 11184),
(7991, 0, 11183),
(7990, 0, 11182);
UPDATE quest_template SET RequiredCondition=2074 WHERE entry IN (8520,8521);

-- Sentinel Silversky
-- counter worldstate id: 2076
-- quests: 8517, 8518
UPDATE creature_template SET GossipMenuId=6610 WHERE Entry=15451;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6610 AND text_id=7847;
DELETE FROM gossip_menu WHERE entry=6610 AND text_id IN (7848,60038,7988,7987);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6610, 7848, 0, 2076),
(6610, 60038, 0, 2138),
(6610, 7988, 0, 2036),
(6610, 7987, 0, 2038);
DELETE FROM npc_text WHERE id IN (7847,7848,60038,7988,7987);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7847,7848,60038,7988,7987);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7847, 0, 10962),
(7848, 0, 10963),
(60038, 0, 11181),
(7988, 0, 11180),
(7987, 0, 11179);
UPDATE quest_template SET RequiredCondition=2077 WHERE entry IN (8517,8518);

-- Bonnie Stoneflayer
-- counter worldstate id: 2060
-- quests: 8511, 8512
UPDATE creature_template SET GossipMenuId=6607 WHERE Entry=15446;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6607 AND text_id=7847;
DELETE FROM gossip_menu WHERE entry=6607 AND text_id IN (7842,60039,7971,7979);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6607, 7842, 0, 2079),
(6607, 60039, 0, 2138),
(6607, 7971, 0, 2036),
(6607, 7979, 0, 2038);
DELETE FROM npc_text WHERE id IN (7840,7842,60039,7971,7979);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7840,7842,60039,7971,7979);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7840, 0, 10947),
(7842, 0, 10956),
(60039, 0, 11161),
(7971, 0, 11162),
(7979, 0, 11169);
UPDATE quest_template SET RequiredCondition=2080 WHERE entry IN (8511,8512);

-- Private Porter
-- counter worldstate id: 2063
-- quests: 8513, 8514
UPDATE creature_template SET GossipMenuId=6608 WHERE Entry=15448;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6608 AND text_id=7847;
DELETE FROM gossip_menu WHERE entry=6608 AND text_id IN (7844,60040,7971,7982);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6608, 7844, 0, 2082),
(6608, 60040, 0, 2138),
(6608, 7971, 0, 2036),
(6608, 7982, 0, 2038);
DELETE FROM npc_text WHERE id IN (7843,7844,60040,7981,7982);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7843,7844,60040,7981,7982);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7843, 0, 10957),
(7844, 0, 10958),
(60040, 0, 11170),
(7981, 0, 11171),
(7982, 0, 11172);
UPDATE quest_template SET RequiredCondition=2083 WHERE entry IN (8513,8514);

-- Marta Finespindle
-- counter worldstate id: 2069
-- quests: 8515, 8516
UPDATE creature_template SET GossipMenuId=6609 WHERE Entry=15450;
UPDATE gossip_menu SET condition_id=2035 WHERE entry=6609 AND text_id=7845;
DELETE FROM gossip_menu WHERE entry=6609 AND text_id IN (7846,60041,7984,7983);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6609, 7846, 0, 2085),
(6609, 60041, 0, 2138),
(6609, 7984, 0, 2036),
(6609, 7983, 0, 2038);
DELETE FROM npc_text WHERE id IN (7845,7846,60041,7984,7983);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7845,7846,60041,7984,7983);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7845, 0, 10959),
(7846, 0, 10960),
(60041, 0, 11175),
(7984, 0, 11174),
(7983, 0, 11173);
UPDATE quest_template SET RequiredCondition=2086 WHERE entry IN (8515,8516);

-- Gnomeregan Commendation Officer
-- 15733 gossip missing in sniffs
UPDATE creature_template SET GossipMenuId=6804 WHERE Entry=15733;
DELETE FROM npc_text WHERE id=8128;
DELETE FROM npc_text_broadcast_text WHERE Id=8128;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8128, 0, 11416);

-- War Effort Volunteers (15663)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (15502001,15502301,15502302,15502701,15502702,15500601,15500602,15500201,15500202);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(15502001, 9000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15502001, 29000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),

(15502301, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15502301, 27000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),
(15502302, 0, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15502302, 20000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),

(15502701, 8000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15502701, 22000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),
(15502702, 8000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15502702, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),

(15500601, 8000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15500601, 24000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),
(15500602, 8000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15500602, 29000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),

(15500201, 9000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15500201, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote'),
(15500202, 10000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - EMOTE_STATE_USESTANDING'),
(15500202, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Volunteer - Stop emote');

UPDATE creature SET position_x=-4911.080078, position_y=-1233.900024, position_z=501.656006, MovementType=2 WHERE guid=155020;
UPDATE creature SET MovementType=2 WHERE guid=155023;
UPDATE creature SET position_x=-4933.209961, position_y=-1287.540039, position_z=501.670990, MovementType=2 WHERE guid=155027;
UPDATE creature SET MovementType=2 WHERE guid=155006;
UPDATE creature SET position_x=-4983.459961, position_y=-1147.410034, position_z=501.649994, MovementType=2 WHERE guid=155002;
DELETE FROM creature_movement WHERE id IN (155020, 155023, 155027, 155006, 155002);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(155020, 1, -4911.080078, -1233.900024, 501.656006, 100, 0, 0),
(155020, 2, -4916.959961, -1231.780029, 501.652008, 100, 0, 0),
(155020, 3, -4919.319824, -1227.910034, 501.645996, 100, 0, 0),
(155020, 4, -4917.509766, -1225.000000, 501.647003, 100, 36000, 15502001),
(155020, 5, -4916.129883, -1232.810059, 501.653992, 100, 0, 0),
(155020, 6, -4910.310059, -1234.089966, 501.656006, 100, 0, 0),
(155020, 7, -4906.629883, -1230.910034, 501.654999, 100, 0, 0),
(155020, 8, -4903.870117, -1225.959961, 501.653992, 100, 36000, 15502001),

(155023, 1, -4944.850098, -1277.699951, 501.756012, 3.211410, 39000, 15502301),
(155023, 2, -4944.850098, -1277.699951, 501.756012, 4.310960, 22000, 15502302),

(155027, 1, -4933.209961, -1287.540039, 501.670990, 100, 0, 0),
(155027, 2, -4929.560059, -1292.349976, 501.671997, 100, 23000, 15502701),
(155027, 3, -4936.040039, -1284.670044, 501.670990, 100, 0, 0),
(155027, 4, -4937.830078, -1280.140015, 501.670990, 100, 39000, 15502702),

(155006, 1, -4974.049805, -1173.479980, 501.644012, 100, 0, 0),
(155006, 2, -4974.979980, -1169.449951, 501.641998, 100, 0, 0),
(155006, 3, -4972.430176, -1166.339966, 501.639008, 100, 0, 0),
(155006, 4, -4969.640137, -1166.739990, 501.635986, 100, 31000, 15500601),
(155006, 5, -4974.740234, -1170.770020, 501.643005, 100, 0, 0),
(155006, 6, -4972.330078, -1174.339966, 501.640991, 100, 0, 0),
(155006, 7, -4968.890137, -1174.689941, 501.645996, 100, 0, 0),
(155006, 8, -4966.450195, -1173.949951, 501.647003, 100, 37000, 15500602),

(155002, 1, -4983.459961, -1147.410034, 501.649994, 100, 0, 0),
(155002, 2, -4979.819824, -1143.939941, 501.652008, 100, 0, 0),
(155002, 3, -4974.569824, -1142.619995, 501.651001, 100, 28000, 15500201),
(155002, 4, -4981.270020, -1144.500000, 501.652008, 100, 0, 0),
(155002, 5, -4982.970215, -1149.140015, 501.651001, 100, 0, 0),
(155002, 6, -4979.709961, -1153.260010, 501.656006, 100, 0, 0),
(155002, 7, -4975.330078, -1153.589966, 501.654999, 100, 30000, 15500202),
(155002, 8, -4981.879883, -1151.739990, 501.651001, 100, 0, 0);

-- ---------
-- Orgrimmar
-- ---------

-- 2035 -- AQ War Effort Phase 1 (Gathering Resources)
-- 2143 -- AQ War Effort Phase 1 (All Horde Resources Completed)
-- 2036 -- AQ War Effort Phase 2 (Transporting Resources)
-- 2038 -- AQ War Effort Phase 2 (Transporting Resources - 0 days remaining)

-- War Effort Recruits (15696)
UPDATE creature_template SET SpeedWalk=(2.5/2.5) WHERE entry=15696;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (15550601,15550602,15551001,15551002,15550701,15550702,15552701,15552702,15552401,15552402);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(15550601, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15550601, 22000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),
(15550602, 6000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15550602, 27000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),

(15551001, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15551001, 27000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),
(15551002, 7000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15551002, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),

(15550701, 10000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15550701, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),
(15550702, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15550702, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),

(15552701, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15552701, 19000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),
(15552702, 6000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15552702, 22000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),

(15552401, 11000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15552401, 21000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote'),
(15552402, 5000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - EMOTE_STATE_USESTANDING'),
(15552402, 22000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War Effort Recruit - Stop emote');

UPDATE creature SET position_x=1591.380005, position_y=-4166.160156, position_z=37.830200, MovementType=2 WHERE guid=155506;
UPDATE creature SET position_x=1626.250000, position_y=-4143.089844, position_z=34.724201, MovementType=2 WHERE guid=155510;
UPDATE creature SET position_x=1570.180054, position_y=-4126.890137, position_z=36.713699, MovementType=2 WHERE guid=155507;
UPDATE creature SET position_x=1666.250000, position_y=-4109.439941, position_z=35.004601, MovementType=2 WHERE guid=155527;
UPDATE creature SET position_x=1637.839966, position_y=-4087.949951, position_z=36.098400, MovementType=2 WHERE guid=155524;
DELETE FROM creature_movement WHERE id IN (155506, 155510, 155507, 155527, 155524);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(155506, 1, 1591.380005, -4166.160156, 37.830200, 100, 0, 0),
(155506, 2, 1591.859985, -4162.740234, 37.333500, 100, 0, 0),
(155506, 3, 1591.859985, -4162.740234, 37.333500, 0.680678, 31000, 15550601),
(155506, 4, 1593.880005, -4171.140137, 38.861000, 100, 0, 0),
(155506, 5, 1596.630005, -4171.540039, 39.235699, 100, 31000, 15550602),

(155510, 1, 1626.250000, -4143.089844, 34.724201, 100, 0, 0),
(155510, 2, 1629.609985, -4143.040039, 34.799099, 100, 0, 0),
(155510, 3, 1629.609985, -4143.040039, 34.799099, 5.009100, 39000, 15551001),
(155510, 4, 1620.819946, -4146.700195, 35.492401, 100, 0, 0),
(155510, 5, 1619.310059, -4150.620117, 36.440399, 100, 0, 0),
(155510, 6, 1619.310059, -4150.620117, 36.440399, 5.166170, 29000, 15551002),

(155507, 1, 1570.180054, -4126.890137, 36.713699, 100, 0, 0),
(155507, 2, 1575.439941, -4123.120117, 35.339802, 100, 0, 0),
(155507, 3, 1576.189941, -4118.649902, 35.187000, 100, 30000, 15550701),
(155507, 4, 1568.040039, -4127.640137, 36.995701, 100, 0, 0),
(155507, 5, 1564.189941, -4128.899902, 37.575600, 100, 0, 0),
(155507, 6, 1564.189941, -4128.899902, 37.575600, 2.129300, 28000, 15550702),

(155527, 1, 1666.250000, -4109.439941, 35.004601, 100, 0, 0),
(155527, 2, 1666.250000, -4109.439941, 35.004601, 5.829400, 28000, 15552701),
(155527, 3, 1669.170044, -4102.660156, 36.146099, 100, 0, 0),
(155527, 4, 1673.719971, -4102.890137, 36.660500, 100, 0, 0),
(155527, 5, 1677.030029, -4109.200195, 37.263100, 100, 0, 0),
(155527, 6, 1677.030029, -4109.200195, 37.263100, 4.537860, 31000, 15552702),
(155527, 7, 1673.520020, -4102.770020, 36.650902, 100, 0, 0),
(155527, 8, 1669.739990, -4102.399902, 36.245098, 100, 0, 0),
(155527, 9, 1665.829956, -4105.580078, 35.407600, 100, 0, 0),

(155524, 1, 1637.839966, -4087.949951, 36.098400, 100, 0, 0),
(155524, 2, 1627.699951, -4095.449951, 33.966900, 100, 28000, 15552401),
(155524, 3, 1637.770020, -4089.270020, 35.898800, 100, 0, 0),
(155524, 4, 1639.420044, -4082.149902, 37.482201, 100, 0, 0),
(155524, 5, 1639.420044, -4082.149902, 37.482201, 2.129300, 30000, 15552402);

-- Undercity Commendation Officer
UPDATE creature_template SET GossipMenuId=6810 WHERE Entry=15738;
DELETE FROM gossip_menu WHERE entry=6810;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6810, 8133, 0, 0);
DELETE FROM npc_text WHERE id=8133;
DELETE FROM npc_text_broadcast_text WHERE Id=8133;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8133, 0, 11422);

-- Grunt Maug
-- counter worldstate id: 2005
-- quests: 8542, 8543
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6619 WHERE Entry=15460;
DELETE FROM gossip_menu WHERE entry=6619;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6619, 7870, 0, 2035), -- phase 1
(6619, 7871, 0, 2088), -- phase 1 (resource completed)
(6619, 60042, 0, 2143), -- phase 1 (all horde resources completed)
(6619, 8013, 0, 2036), -- phase 2
(6619, 60010, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7870,7871,60042,8013,60010);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7870,7871,60042,8013,60010);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7870, 0, 11001),
(7871, 0, 11002),
(60042, 0, 11213),
(8013, 0, 11212),
(60010, 0, 11211);
-- don't know the proper action_menu_id for all Horde npcs
-- DELETE FROM gossip_menu_option WHERE menu_id=6619;
-- INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id) VALUES
-- (6619, 0, 0, 'What is a Horde Commendation Signet?', 11340, 1, 1, 0);
UPDATE quest_template SET RequiredCondition=2089 WHERE entry IN (8542,8543);

-- Senior Sergeant T'kelah
-- counter worldstate id: 2008
-- quests: 8545, 8546
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6624 WHERE Entry=15469;
DELETE FROM gossip_menu WHERE entry=6624;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6624, 7876, 0, 2035), -- phase 1
(6624, 7877, 0, 2091), -- phase 1 (resource completed)
(6624, 60043, 0, 2143), -- phase 1 (all horde resources completed)
(6624, 8016, 0, 2036), -- phase 2
(6624, 60011, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7876,7877,60043,8016,60011);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7876,7877,60043,8016,60011);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7876, 0, 11010),
(7877, 0, 11011),
(60043, 0, 11222),
(8016, 0, 11221),
(60011, 0, 11220);
UPDATE quest_template SET RequiredCondition=2092 WHERE entry IN (8545,8546);

-- Miner Cromwell
-- counter worldstate id: 2018
-- quests: 8532, 8533
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6618 WHERE Entry=15459;
DELETE FROM gossip_menu WHERE entry=6618;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6618, 7866, 0, 2035), -- phase 1
(6618, 7867, 0, 2094), -- phase 1 (resource completed)
(6618, 60044, 0, 2143), -- phase 1 (all horde resources completed)
(6618, 8010, 0, 2036), -- phase 2
(6618, 60012, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7866,7867,60044,8010,60012);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7866,7867,60044,8010,60012);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7866, 0, 10997),
(7867, 0, 10998),
(60044, 0, 11210),
(8010, 0, 11209),
(60012, 0, 11208);
UPDATE quest_template SET RequiredCondition=2095 WHERE entry IN (8532,8533);

-- Apothecary Jezel
-- counter worldstate id: 2054
-- quests: 8582, 8583
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6653 WHERE Entry=15512;
DELETE FROM gossip_menu WHERE entry=6653;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6653, 7907, 0, 2035), -- phase 1
(6653, 7908, 0, 2097), -- phase 1 (resource completed)
(6653, 60045, 0, 2143), -- phase 1 (all horde resources completed)
(6653, 8025, 0, 2036), -- phase 2
(6653, 60013, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7907,7908,60045,8025,60013);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7907,7908,60045,8025,60013);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7907, 0, 11077),
(7908, 0, 11078),
(60045, 0, 11234),
(8025, 0, 11233),
(60013, 0, 11232);
UPDATE quest_template SET RequiredCondition=2098 WHERE entry IN (8582,8583);

-- Batrider Pele'keiki
-- counter worldstate id: 2050
-- quests: 8580, 8581
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6651 WHERE Entry=15508;
DELETE FROM gossip_menu WHERE entry=6651;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6651, 7905, 0, 2035), -- phase 1
(6651, 7906, 0, 2105), -- phase 1 (resource completed)
(6651, 60046, 0, 2143), -- phase 1 (all horde resources completed)
(6651, 8022, 0, 2036), -- phase 2
(6651, 60014, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7905,7906,60046,8022,60014);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7905,7906,60046,8022,60014);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7905, 0, 11075),
(7906, 0, 11076),
(60046, 0, 2143),
(8022, 0, 11227),
(60014, 0, 11226);
UPDATE quest_template SET RequiredCondition=2106 WHERE entry IN (8580,8581);

-- Herbalist Proudfeather
-- counter worldstate id: 2020
-- quests: 8549, 8550
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6625 WHERE Entry=15477;
DELETE FROM gossip_menu WHERE entry=6625;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6625, 7878, 0, 2035), -- phase 1
(6625, 7879, 0, 2108), -- phase 1 (resource completed)
(6625, 60047, 0, 2143), -- phase 1 (all horde resources completed)
(6625, 8019, 0, 2036), -- phase 2
(6625, 60015, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7878,7879,60047,8019,60015);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7878,7879,60047,8019,60015);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7878, 0, 11013),
(7879, 0, 11014),
(60047, 0, 11225),
(8019, 0, 11224),
(60015, 0, 11223);
UPDATE quest_template SET RequiredCondition=2109 WHERE entry IN (8549,8550);

-- Thunder Bluff Commendation Officer
UPDATE creature_template SET GossipMenuId=6809 WHERE Entry=15739;
DELETE FROM gossip_menu WHERE entry=6809;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6809, 8132, 0, 0);
DELETE FROM npc_text WHERE id=8132;
DELETE FROM npc_text_broadcast_text WHERE Id=8132;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8132, 0, 11421);

-- Sergeant Umala
-- counter worldstate id: 2070
-- quests: 8590, 8591
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6656 WHERE Entry=15522;
DELETE FROM gossip_menu WHERE entry=6656;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6656, 7912, 0, 2035), -- phase 1
(6656, 7913, 0, 2111), -- phase 1 (resource completed)
(6656, 60048, 0, 2143), -- phase 1 (all horde resources completed)
(6656, 8031, 0, 2036), -- phase 2
(6656, 60016, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7912,7913,60048,8031,60016);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7912,7913,60048,8031,60016);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7912, 0, 11082),
(7913, 0, 11083),
(60048, 0, 11240),
(8031, 0, 11239),
(60016, 0, 11238);
UPDATE quest_template SET RequiredCondition=2112 WHERE entry IN (8590,8591);

-- Doctor Serratus
-- counter worldstate id: 2073
-- quests: 8600, 8601
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6657 WHERE Entry=15525;
DELETE FROM gossip_menu WHERE entry=6657;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6657, 7914, 0, 2035), -- phase 1
(6657, 7915, 0, 2114), -- phase 1 (resource completed)
(6657, 60049, 0, 2143), -- phase 1 (all horde resources completed)
(6657, 8034, 0, 2036), -- phase 2
(6657, 60017, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7914,7915,60049,8034,60017);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7914,7915,60049,8034,60017);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7914, 0, 11084),
(7915, 0, 11085),
(60049, 0, 11243),
(8034, 0, 11242),
(60017, 0, 11241);
UPDATE quest_template SET RequiredCondition=2115 WHERE entry IN (8600,8601);

-- Skinner Jamani
-- counter worldstate id: 2066
-- quests: 8588, 8589
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6654 WHERE Entry=15515;
DELETE FROM gossip_menu WHERE entry=6654;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6654, 7909, 0, 2035), -- phase 1
(6654, 7910, 0, 2040), -- phase 1 (resource completed)
(6654, 60050, 0, 2143), -- phase 1 (all horde resources completed)
(6654, 8028, 0, 2036), -- phase 2
(6654, 60018, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7909,7910,60050,8028,60018);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7909,7910,60050,8028,60018);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7909, 0, 11079),
(7910, 0, 11080),
(60050, 0, 11237),
(8028, 0, 11236),
(60018, 0, 11235);
UPDATE quest_template SET RequiredCondition=2041 WHERE entry IN (8588,8589);

-- Stoneguard Clayhoof
-- counter worldstate id: 2089
-- quests: 8609, 8610
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6661 WHERE Entry=15532;
DELETE FROM gossip_menu WHERE entry=6661;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6661, 7923, 0, 2035), -- phase 1
(6661, 7924, 0, 2117), -- phase 1 (resource completed)
(6661, 60051, 0, 2143), -- phase 1 (all horde resources completed)
(6661, 8043, 0, 2036), -- phase 2
(6661, 60019, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7923,7924,60051,8043,60019);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7923,7924,60051,8043,60019);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7923, 0, 11095),
(7924, 0, 11096),
(60051, 0, 11252),
(8043, 0, 11251),
(60019, 0, 11250);
UPDATE quest_template SET RequiredCondition=2118 WHERE entry IN (8609,8610);

-- Lady Callow
-- counter worldstate id: 2085
-- quests: 8607, 8608
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6660 WHERE Entry=15529;
DELETE FROM gossip_menu WHERE entry=6660;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6660, 7920, 0, 2035), -- phase 1
(6660, 7921, 0, 2120), -- phase 1 (resource completed)
(6660, 60052, 0, 2143), -- phase 1 (all horde resources completed)
(6660, 8040, 0, 2036), -- phase 2
(6660, 60020, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7920,7921,60052,8040,60020);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7920,7921,60052,8040,60020);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7920, 0, 11092),
(7921, 0, 11093),
(60052, 0, 11249),
(8040, 0, 11248),
(60020, 0, 11247);
UPDATE quest_template SET RequiredCondition=2121 WHERE entry IN (8607,8608);

-- Healer Longrunner
-- counter worldstate id: 2079
-- quests: 8604, 8605
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6659 WHERE Entry=15528;
DELETE FROM gossip_menu WHERE entry=6659;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6659, 7918, 0, 2035), -- phase 1
(6659, 7919, 0, 2123), -- phase 1 (resource completed)
(6659, 60053, 0, 2143), -- phase 1 (all horde resources completed)
(6659, 8037, 0, 2036), -- phase 2
(6659, 60021, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7918,7919,60053,8037,60021);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7918,7919,60053,8037,60021);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7918, 0, 11090),
(7919, 0, 11091),
(60053, 0, 11246),
(8037, 0, 11245),
(60021, 0, 11244);
UPDATE quest_template SET RequiredCondition=2124 WHERE entry IN (8604,8605);

-- Orgrimmar Commendation Officer
UPDATE creature_template SET GossipMenuId=6808, NpcFlags=3 WHERE Entry=15736;
DELETE FROM gossip_menu WHERE entry=6808;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6808, 8131, 0, 0);
DELETE FROM npc_text WHERE id=8131;
DELETE FROM npc_text_broadcast_text WHERE Id=8131;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8131, 0, 11419);

-- Darkspear Commendation Officer
UPDATE creature_template SET GossipMenuId=6807 WHERE Entry=15737;
DELETE FROM gossip_menu WHERE entry=6807;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6807, 8127, 0, 0);
DELETE FROM npc_text WHERE id=8127;
DELETE FROM npc_text_broadcast_text WHERE Id=8127;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8127, 0, 11420);

-- Fisherman Lin'do
-- counter worldstate id: 2102
-- quests: 8613, 8614
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6663 WHERE Entry=15534;
DELETE FROM gossip_menu WHERE entry=6663;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6663, 7927, 0, 2035), -- phase 1
(6663, 7928, 0, 2126), -- phase 1 (resource completed)
(6663, 60054, 0, 2143), -- phase 1 (all horde resources completed)
(6663, 8049, 0, 2036), -- phase 2
(6663, 60022, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7927,7928,60054,8049,60022);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7927,7928,60054,8049,60022);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7927, 0, 11099),
(7928, 0, 11100),
(60054, 0, 11258),
(8049, 0, 11257),
(60022, 0, 11256);
UPDATE quest_template SET RequiredCondition=2127 WHERE entry IN (8613,8614);

-- Chief Sharpclaw
-- counter worldstate id: 2105
-- quests: 8615, 8616
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6664 WHERE Entry=15535;
DELETE FROM gossip_menu WHERE entry=6664;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6664, 7929, 0, 2035), -- phase 1
(6664, 7930, 0, 2129), -- phase 1 (resource completed)
(6664, 60055, 0, 2143), -- phase 1 (all horde resources completed)
(6664, 8052, 0, 2036), -- phase 2
(6664, 60023, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7929,7930,60055,8052,60023);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7929,7930,60055,8052,60023);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7929, 0, 11101),
(7930, 0, 11102),
(60055, 0, 11261),
(8052, 0, 11260),
(60023, 0, 11259);
UPDATE quest_template SET RequiredCondition=2130 WHERE entry IN (8615,8616);

-- Bloodguard Rawtar
-- counter worldstate id: 2095
-- quests: 8611, 8612
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6662 WHERE Entry=15533;
DELETE FROM gossip_menu WHERE entry=6662;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6662, 7925, 0, 2035), -- phase 1
(6662, 7926, 0, 2132), -- phase 1 (resource completed)
(6662, 60056, 0, 2143), -- phase 1 (all horde resources completed)
(6662, 8046, 0, 2036), -- phase 2
(6662, 60024, 0, 2038); -- phase 2 (<1 day remaining)
DELETE FROM npc_text WHERE id IN (7925,7926,60056,8046,60024);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7925,7926,60056,8046,60024);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7925, 0, 11097),
(7926, 0, 11098),
(60056, 0, 11255),
(8046, 0, 11254),
(60024, 0, 11253);
UPDATE quest_template SET RequiredCondition=2133 WHERE entry IN (8611,8612);

-- Commander Stronghammer
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6678 WHERE Entry=15458;
DELETE FROM gossip_menu WHERE entry IN (6678,6679,6680,6681,6682,6683,6759);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6678, 7949, 0, 2035), -- phase 1
(6678, 60057, 0, 2138), -- phase 1 (all alliance resources completed)
(6678, 8055, 0, 2036), -- phase 2
(6678, 60025, 0, 2038), -- phase 2 (<1 day remaining)
(6679, 7951, 0, 0),
(6680, 7952, 0, 0),
(6681, 7953, 0, 0),
(6682, 7954, 0, 0),
(6683, 7955, 0, 0),
(6759, 8071, 0, 0);
DELETE FROM npc_text WHERE id IN (7949,60057,7951,7952,7953,7954,7955,8055,60025,8071);
DELETE FROM npc_text_broadcast_text WHERE Id IN (7949,60057,7951,7952,7953,7954,7955,8055,60025,8071);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(7949, 0, 11133),
(60057, 0, 11264),
(7951, 0, 11136),
(7952, 0, 11138),
(7953, 0, 11140),
(7954, 0, 11142),
(7955, 0, 11144),
(8055, 0, 11263),
(60025, 0, 11262),
(8071, 0, 11338);
DELETE FROM gossip_menu_option WHERE menu_id IN (6678,6679,6680,6681,6682,6683,6759);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(6678, 0, 0, 'What is the Ahn''Qiraj war effort?', 11120, 1, 1, 6759, 0, 0, 0, 0, '', 0, 0),
(6678, 1, 0, 'How many metal bars have the Alliance collected so far?', 11135, 1, 1, 6679, 0, 0, 0, 0, '', 0, 2145),
(6678, 2, 0, 'How many herbs have the Alliance collected so far?', 11137, 1, 1, 6680, 0, 0, 0, 0, '', 0, 2145),
(6678, 3, 0, 'How many leather skins have the Alliance collected so far?', 11139, 1, 1, 6681, 0, 0, 0, 0, '', 0, 2145),
(6678, 4, 0, 'How many bandages have the Alliance collected so far?', 11141, 1, 1, 6682, 0, 0, 0, 0, '', 0, 2145),
(6678, 5, 0, 'How many cooked goods have the Alliance collected so far?', 11143, 1, 1, 6683, 0, 0, 0, 0, '', 0, 2145),
(6679, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0),
(6680, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0),
(6681, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0),
(6682, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0),
(6683, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0),
(6759, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6678, 0, 0, 0, 0, '', 0, 0);

-- Warlord Gorchuk
UPDATE creature_template SET NpcFlags=3, GossipMenuId=6778, SpeedWalk=(2.5/2.5), SpeedRun=(7/7) WHERE Entry=15700;
DELETE FROM gossip_menu WHERE entry IN (6778,6779,6780,6781,6782,6783,6784);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6778, 8092, 0, 2035), -- phase 1
(6778, 60058, 0, 2143), -- phase 1 (all horde resources completed)
(6778, 8094, 0, 2036), -- phase 2
(6778, 60026, 0, 2038), -- phase 2 (<1 day remaining)
(6779, 8209, 0, 0),
(6780, 8096, 0, 0),
(6781, 8097, 0, 0),
(6782, 8098, 0, 0),
(6783, 8099, 0, 0),
(6784, 8100, 0, 0);
DELETE FROM npc_text WHERE id IN (8092,60058,8094,60026,8096,8097,8098,8099,8100,8209);
DELETE FROM npc_text_broadcast_text WHERE Id IN (8092,60058,8094,60026,8096,8097,8098,8099,8100,8209);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8092, 0, 11370),
(60058, 0, 11373),
(8094, 0, 11372),
(60026, 0, 11371),
(8096, 0, 11374),
(8097, 0, 11375),
(8098, 0, 11376),
(8099, 0, 11377),
(8100, 0, 11378),
(8209, 0, 11652);
DELETE FROM gossip_menu_option WHERE menu_id IN (6778,6779,6780,6781,6782,6783,6784);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(6778, 0, 0, 'What is the Ahn''Qiraj war effort?', 11120, 1, 1, 6779, 0, 0, 0, 0, '', 0, 0),
(6778, 1, 0, 'How many metal bars have the Horde collected so far?', 11122, 1, 1, 6780, 0, 0, 0, 0, '', 0, 2147),
(6778, 2, 0, 'How many herbs have the Horde collected so far?', 11124, 1, 1, 6781, 0, 0, 0, 0, '', 0, 2147),
(6778, 3, 0, 'How many leather skins have the Horde collected so far?', 11126, 1, 1, 6782, 0, 0, 0, 0, '', 0, 2147),
(6778, 4, 0, 'How many bandages have the Horde collected so far?', 11128, 1, 1, 6783, 0, 0, 0, 0, '', 0, 2147),
(6778, 5, 0, 'How many cooked goods have the Horde collected so far?', 11130, 1, 1, 6784, 0, 0, 0, 0, '', 0, 2147),
(6779, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0),
(6780, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0),
(6781, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0),
(6782, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0),
(6783, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0),
(6784, 0, 0, 'I want to ask you about something else.', 11132, 1, 1, 6778, 0, 0, 0, 0, '', 0, 0);

UPDATE creature SET position_x=1573.319946, position_y=-4170.450195, position_z=38.100601, MovementType=2 WHERE id=15700;
DELETE FROM creature_movement_template WHERE entry=15700;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(15700, 0, 1, 1573.319946, -4170.450195, 38.100601, 100, 0, 0),
(15700, 0, 2, 1573.569946, -4181.890137, 39.833000, 100, 0, 0),
(15700, 0, 3, 1577.920044, -4187.399902, 39.582600, 100, 0, 0),
(15700, 0, 4, 1581.540039, -4184.310059, 39.480801, 100, 0, 0),
(15700, 0, 5, 1581.619995, -4173.479980, 37.815102, 100, 0, 0),
(15700, 0, 6, 1587.359985, -4154.390137, 34.836300, 100, 0, 0),
(15700, 0, 7, 1598.920044, -4137.640137, 31.959200, 100, 0, 0),
(15700, 0, 8, 1607.329956, -4125.069824, 29.741501, 100, 0, 0),
(15700, 0, 9, 1633.969971, -4111.779785, 29.990900, 100, 0, 0),
(15700, 0, 10, 1668.380005, -4098.620117, 35.097900, 100, 0, 0),
(15700, 0, 11, 1673.040039, -4093.530029, 35.508301, 100, 0, 0),
(15700, 0, 12, 1664.410034, -4092.080078, 36.260700, 100, 0, 0),
(15700, 0, 13, 1628.479980, -4103.169922, 31.060499, 100, 0, 0),
(15700, 0, 14, 1599.250000, -4119.229980, 30.235100, 100, 0, 0),
(15700, 0, 15, 1578.869995, -4151.410156, 34.949200, 100, 0, 0);
