-- Correct Factions for AV Mine Npcs
-- Coldtooth Mine NPCs

-- Kobolds
UPDATE `creature_template` SET `Faction`=26 WHERE `entry` IN (
11603,22778, -- Whitewhisker Digger
11604,22779, -- Whitewhisker Geomancer
11677,22694 -- Taskmaster Snivvle
);

-- Alliance
UPDATE `creature_template` SET `Faction`=1216 WHERE `entry` IN (
13086,22670, -- Aggi Rumblestomp
13087,22731, -- Coldmine Invader
13096,22729, -- Coldmine Explorer
13317,22732, -- Coldmine Miner
13546,22751, -- Seasoned Coldmine Explorer
13547,22770, -- Veteran Coldmine Explorer
13548,22529, -- Champion Coldmine Explorer
13549,22753, -- Seasoned Coldmine Invader
13550,22772, -- Veteran Coldmine Invader
13551,22531 -- Champion Coldmine Invader
);

-- Horde
UPDATE `creature_template` SET `Faction`=1214 WHERE `entry` IN (
13088,22684, -- Masha Swiftcut
13089,22730, -- Coldmine Guard
13097,22734, -- Coldmine Surveyor
13316,22733, -- Coldmine Peon
13534,22752, -- Seasoned Coldmine Guard
13535,22771, -- Veteran Coldmine Guard
13536,22530, -- Champion Coldmine Guard
13537,22754, -- Seasoned Coldmine Surveyor
13538,22773, -- Veteran Coldmine Surveyor
13539,22532 -- Champion Coldmine Surveyor
);

-- Irondeep Mine NPCs

-- Alliance
UPDATE `creature_template` SET `Faction`=1216 WHERE `entry` IN (
13078,22696, -- Umi Thorson
13080,22743, -- Irondeep Guard
13098,22749, -- Irondeep Surveyor
13396,22744, -- Irondeep Miner
13552,22756, -- Seasoned Irondeep Guard
13553,22775, -- Veteran Irondeep Guard
13554,22535, -- Champion Irondeep Guard
13555,22758, -- Seasoned Irondeep Surveyor
13556,22777, -- Veteran Irondeep Surveyor
13557,22537 -- Champion Irondeep Surveyor
);

-- Horde
UPDATE `creature_template` SET `Faction`=1214 WHERE `entry` IN (
13079,22683, -- Keetar
13081,22746, -- Irondeep Raider
13099,22741, -- Irondeep Explorer
13397,22745, -- Irondeep Peon
13540,22755, -- Seasoned Irondeep Explorer
13541,22774, -- Veteran Irondeep Explorer
13542,22534, -- Champion Irondeep Explorer
13543,22757, -- Seasoned Irondeep Raider
13544,22776, -- Veteran Irondeep Raider
13545,22536 -- Champion Irondeep Raider
);

-- End of migration.

