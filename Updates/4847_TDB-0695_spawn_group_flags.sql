-- Remove respawn on evade & forced aggro from some spawn groups, where it is not strictly needed
-- Use CREATURE_GROUP_AGGRO_TOGETHER, CREATURE_GROUP_RESPAWN_TOGETHER only in cases where we know that default behavior is not used or useable
-- CREATURE_GROUP_AGGRO_TOGETHER
UPDATE `spawn_group` SET `Flags` = 0 WHERE `Id` IN (
20, -- Eastern Plaguelands - Light's Hope Chapel - Argent Rider x2 Patrol 1
19060, -- Eastern Plaguelands - Argent Dawn Infantry 16228 x2 - Patrol 1
19899, -- Eastern Plaguelands - Light's Hope Chapel - Argent Sentry 16378 x2 - Patrol 1
19901, -- Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 6
19902, -- Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 5
19903, -- Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 4
19904, -- Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 3
19906, -- Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 1
19907, -- Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1
19908, -- Blasted Lands - Felguard Sentry | Felhound (2) Patrol 005
19909, -- Blasted Lands - Felguard Sentry | Felhound (2) Patrol 006
19910, -- Stranglethorn Vale - Skullsplitter Spiritchaser 672 & Skullsplitter Berserker 783 & Ana'thek the Cruel 1059 - Patrol
19911, -- Stranglethorn Vale - Skullsplitter Clan x3 - Patrol 4
19912, -- Stranglethorn Vale - Skullsplitter Clan x3 - Patrol 3
19913, -- Stranglethorn Vale - Skullsplitter Clan x3 - Patrol 2
19914, -- Stranglethorn Vale - Skullsplitter Clan x3 - Patrol 1
19916, -- Redridge Mountains - Murloc Tidecaller 545 & Murloc Nightcrawler 544 - Patrol 1
19917, -- Redridge Mountains - Blackrock Grunt 440 & Blackrock Renegate 437 - Patrol 2
19918, -- Redridge Mountains - Blackrock Grunt 440 & Blackrock Outrunner 485 - Patrol 1
19919, -- Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 2
19920, -- Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 1

-- CREATURE_GROUP_RESPAWN_TOGETHER
-- From a design standpoint this is good, but in running environment this actually creates abnormal respawn behavior.
8, -- Redridge Mountains (Stonewatch) - Tharil'zun (486)
19005, -- Winterspring (Winterfall Village) - High Chief Winterfall | Winterfall Ursa | Winterfall Shaman (3)
19024, -- Tanaris (Waterspring Field) - Caliph Scorpidsting (3) Patrol 000
19047, -- Loch Modan - Horde Runner Patrol (3) - 2477,2478,7170
19973, -- Barrens - Gazelle 4166 x8 - Patrol 6
19974, -- Barrens - Gazelle 4166 x5 - Patrol 5
19975, -- Barrens - Gazelle 4166 x7 - Patrol 4
19976, -- Barrens - Gazelle 4166 x6 - Patrol 3
19977, -- Barrens - Gazelle 4166 x8 - Patrol 2
19978, -- Barrens - Gazelle 4166 x7 - Patrol 1

-- CREATURE_GROUP_AGGRO_TOGETHER || CREATURE_GROUP_RESPAWN_TOGETHER
2, -- Kargath Expeditionary Force c.entry 9082,9083,9084,9085,9086 & Linked to 9077 for RP
7, -- Eastern Plaguelands - Crimson Courier (c.id 13118, 12337)
19004, -- Winterspring - Winterfall Runner
19949, -- Elvynn Forest - Crystal Lake - Murloc 285 & Murloc Streamrunner 735 - Patrol - 1
19950, -- Stranglethorn Vale - Yoyamba Isle - Zandalar Headshrinker 14876 x2 - Patrol - 1
19956, -- Barrens - Kolkar Marauder 3275 &  & Kolkar Packhound 4316 - Patrol - 1
19957, -- Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 3
19958, -- Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 2
19959, -- Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 1
19960, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 12
19961, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 11
19962, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 10
19964, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 8
19965, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 7
19966, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 6
19967, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 5
19968, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 4
19969, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 3
19970, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 2
19971, -- Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 - Patrol - 1
19982); -- Elvynn Forest - Defias Dockworker 6927 x3 - Patrol

