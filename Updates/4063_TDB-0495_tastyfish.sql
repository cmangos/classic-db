-- Add Game Event Condition to spawn_group
UPDATE `spawn_group` SET `WorldState` = 6035 WHERE `Id` IN (
9001, -- Fishing - Stranglethorn Vale (Wild Shore & The Crystal Shore & Ruins of Aboraz) - School of Tastyfish (180248)
9002, -- Fishing - Stranglethorn Vale (Southern Savage Coast) - School of Tastyfish (180248)
9003, -- Fishing - Stranglethorn Vale (Bloodsail Compound) - School of Tastyfish (180248)
9004 -- Fishing - Stranglethorn Vale (The Savage Coast & Grom'gol Base Camp & Zuuldaia Ruins & Yojamba Isle) - School of Tastyfish (180248)
);

-- will be moved to 4 later
-- 14	1	10080	240	0	0	Fishing Extravaganza Announce
-- 15	1	10080	120	301	0	Fishing Extravaganza
-- 34	1	10080	180	0	0	Fishing Extravaganza Turn-in
DELETE FROM `conditions` WHERE `condition_entry` = 6035;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(6035, 12, 15, 0, 0, 0, 0, 'Event ID 15 (Stranglethorn Fishing Extravaganza) Active'); -- 15	1	10080	120	301	0	0	Stranglethorn Fishing Extravaganza

-- LoadSpawnGroups: spawn_group_spawn guid 1080017 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080018 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080019 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080020 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080021 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080022 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080023 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080024 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080025 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080026 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080027 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080028 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080029 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080030 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080031 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080032 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080033 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080034 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080035 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080036 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080037 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080038 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080039 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080040 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080041 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080042 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080043 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080044 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080045 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080046 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080047 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080048 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080049 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080050 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080051 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080052 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080053 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080054 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080055 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080056 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080057 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080058 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080059 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080060 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080061 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080062 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080063 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080064 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080065 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080066 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080067 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080068 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080069 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 1080070 is part of pool or game event (incompatible). Skipping.
DELETE FROM game_event_gameobject where guid BETWEEN 1080017 AND 1080070; -- spawn_group does not work with game_event tables.

