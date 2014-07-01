-- =========================
-- Dire Maul
-- =========================

-- Remove all current spawn data in Dire Maul.
DELETE FROM `creature_movement_template` WHERE entry IN (11451, 11452, 11453, 11454, 11455, 11456, 11457, 11460, 11461, 11462, 11464, 11465, 11490, 11491, 11492, 13021, 13022, 13196, 13197, 13276, 13280, 13285, 13321, 14241, 14327, 14349, 14350, 14354, 16045);
DELETE FROM `creature_movement` WHERE id IN (11451, 11452, 11453, 11454, 11455, 11456, 11457, 11460, 11461, 11462, 11464, 11465, 11490, 11491, 11492, 13021, 13022, 13196, 13197, 13276, 13280, 13285, 13321, 14241, 14327, 14349, 14350, 14354, 16045);

-- Replace this query when all wings are spawned properly.
-- DELETE FROM `creature` WHERE map = 429;
DELETE FROM `creature` WHERE map = 429 AND id IN (11451, 11452, 11453, 11454, 11455, 11456, 11457, 11460, 11461, 11462, 11464, 11465, 11490, 11491, 11492, 13021, 13022, 13196, 13197, 13276, 13280, 13285, 13321, 14241, 14327, 14349, 14350, 14354, 16045);

-- Reserved GUID range for Dire Maul spawns: [4290000, 4299999].
SET @NEW_GUID_START := 154311;

-- Reserved Pool IDs for Dire Maul creature spawns: [429000, 429100].
SET @NEW_POOLID_START := 1183;

SET @BOSS_RESPAWN_TIME := 1000000;
SET @TRASH_RESPAWN_TIME := 7200;

-- Unless explicitly mentioned otherwise, all data below is coming from 3.0.8a, build 9506 sniffs.

-- ----------------------------------------
-- Dire Maul East, The Hidden Reach
-- ----------------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Betrayer/Satyr/Satyr Group 1, near the dungeon entrance
(@NEW_GUID_START+0, 11454, 429, 0, 0, 55.3767, -713.761, -25.0775, 3.61283, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+1, 11451, 429, 0, 0, 55.9418, -720.741, -25.0775, 6.24828, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+2, 11451, 429, 0, 0, 56.7221, -706.941, -25.0775, 4.5204, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Betrayer/Satyr/Satyr Group 2, down at the ramp
(@NEW_GUID_START+3, 11454, 429, 0, 0, 22.7961, -680.046, -25.0783, 3.89208, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+4, 11451, 429, 0, 0, 24.2224, -674.951, -25.1616, 4.14954, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+5, 11451, 429, 0, 0, 15.5073, -680.307, -25.0783, 5.81195, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Betrayer/Satyr/Satyr Group 3, near the hallway leading to the room with Lethtendris
(@NEW_GUID_START+6, 11454, 429, 0, 0, 59.6724, -603.951, -25.1302, 5.07981, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+7, 11451, 429, 0, 0, 55.0125, -602.04, -25.0646, 3.37677, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+8, 11451, 429, 0, 0, 65.0294, -608.021, -25.0719, 6.16101, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Moving between Betrayer/Satyr/Satyr Group 1 and Betrayer/Satyr/Satyr Group 2
(@NEW_GUID_START+9, 11455, 429, 0, 0, 51.3525, -721.915, -25.1438, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Felsworn

-- There are four spawn points in the room that can be either a Fel Lash or a Phase Lasher, at random.
-- We'll spawn both at each spawn point and put them in a pool so one is selected at random (see below).
-- Near the dungeon entrance.
(@NEW_GUID_START+10, 13196, 429, 0, 0, 51.1273, -748.835, -25.1003, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Phase Lasher
(@NEW_GUID_START+11, 13197, 429, 0, 0, 51.1273, -748.835, -25.1003, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Fel Lash
(@NEW_GUID_START+12, 13196, 429, 0, 0, 51.1414, -755.75, -25.0891, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Phase Lasher
(@NEW_GUID_START+13, 13197, 429, 0, 0, 51.1414, -755.75, -25.0891, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Fel Lash
-- Near the hallway leading to the room with Lethtendris.
(@NEW_GUID_START+14, 13196, 429, 0, 0, 61.9258, -648.15, -25.1335, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Phase Lasher
(@NEW_GUID_START+15, 13197, 429, 0, 0, 61.9258, -648.15, -25.1335, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Fel Lash
(@NEW_GUID_START+16, 13196, 429, 0, 0, 64.6844, -620.783, -25.1592, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Phase Lasher
(@NEW_GUID_START+17, 13197, 429, 0, 0, 64.6844, -620.783, -25.1592, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Fel Lash

-- Near the ramp
(@NEW_GUID_START+18, 11456, 429, 0, 0, 12.2163, -707.55, -25.0783, 1.93732, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Shadowstalker
(@NEW_GUID_START+19, 11456, 429, 0, 0, 64.4071, -678.472, -25.0772, 4.13643, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Shadowstalker
-- Near the hallway to the room with Lethtendris
(@NEW_GUID_START+20, 11456, 429, 0, 0, 30.1011, -618.51, -25.0722, 2.37365, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1); -- Wildspawn Shadowstalker

-- Create pools for the Fel Lash/Phase Lasher spawns above.
DELETE FROM `pool_template` WHERE entry BETWEEN @NEW_POOLID_START+0 AND @NEW_POOLID_START+3;
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@NEW_POOLID_START+0, 1, 'Phase Lasher or Fel Lash, The Hidden Reach, near entrance'),
(@NEW_POOLID_START+1, 1, 'Phase Lasher or Fel Lash, The Hidden Reach, near entrance'),
(@NEW_POOLID_START+2, 1, 'Phase Lasher or Fel Lash, The Hidden Reach, near hallway'),
(@NEW_POOLID_START+3, 1, 'Phase Lasher or Fel Lash, The Hidden Reach, near hallway');

DELETE FROM `pool_creature` WHERE pool_entry BETWEEN @NEW_POOLID_START+0 AND @NEW_POOLID_START+3;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(@NEW_GUID_START+10, @NEW_POOLID_START+0, 0, 'Phase Lasher'),
(@NEW_GUID_START+11, @NEW_POOLID_START+0, 0, 'Fel Lash'),
(@NEW_GUID_START+12, @NEW_POOLID_START+1, 0, 'Phase Lasher'),
(@NEW_GUID_START+13, @NEW_POOLID_START+1, 0, 'Fel Lash'),
(@NEW_GUID_START+14, @NEW_POOLID_START+2, 0, 'Phase Lasher'),
(@NEW_GUID_START+15, @NEW_POOLID_START+2, 0, 'Fel Lash'),
(@NEW_GUID_START+16, @NEW_POOLID_START+3, 0, 'Phase Lasher'),
(@NEW_GUID_START+17, @NEW_POOLID_START+3, 0, 'Fel Lash');

-- Waypoints for the Fel Lash/Phase Lasher spawns above.
DELETE FROM `creature_movement` WHERE id BETWEEN @NEW_GUID_START+10 AND @NEW_GUID_START+17;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+10, 1, 51.1273, -748.835, -25.1003), -- Phase Lasher
(@NEW_GUID_START+10, 2, 45.792, -737.84, -25.1182),
(@NEW_GUID_START+10, 3, 41.352, -730.109, -25.1308),
(@NEW_GUID_START+10, 4, 45.792, -737.84, -25.1182),
(@NEW_GUID_START+10, 5, 51.1273, -748.835, -25.1003),
(@NEW_GUID_START+10, 6, 45.2882, -756.294, -25.0884),
(@NEW_GUID_START+10, 7, 33.0639, -758.405, -25.1498),
(@NEW_GUID_START+10, 8, 45.2882, -756.294, -25.0884),
(@NEW_GUID_START+11, 1, 51.1273, -748.835, -25.1003), -- Fel Lash
(@NEW_GUID_START+11, 2, 45.792, -737.84, -25.1182),
(@NEW_GUID_START+11, 3, 41.352, -730.109, -25.1308),
(@NEW_GUID_START+11, 4, 45.792, -737.84, -25.1182),
(@NEW_GUID_START+11, 5, 51.1273, -748.835, -25.1003),
(@NEW_GUID_START+11, 6, 45.2882, -756.294, -25.0884),
(@NEW_GUID_START+11, 7, 33.0639, -758.405, -25.1498),
(@NEW_GUID_START+11, 8, 45.2882, -756.294, -25.0884),
(@NEW_GUID_START+12, 1, 51.1414, -755.75, -25.0891), -- Phase Lasher
(@NEW_GUID_START+12, 2, 55.6747, -741.086, -25.1127),
(@NEW_GUID_START+12, 3, 38.1695, -724.726, -25.1396),
(@NEW_GUID_START+12, 4, 55.6747, -741.086, -25.1127),
(@NEW_GUID_START+12, 5, 51.1414, -755.75, -25.0891),
(@NEW_GUID_START+12, 6, 32.6405, -765.659, -25.149),
(@NEW_GUID_START+13, 1, 51.1414, -755.75, -25.0891), -- Fel Lash
(@NEW_GUID_START+13, 2, 55.6747, -741.086, -25.1127),
(@NEW_GUID_START+13, 3, 38.1695, -724.726, -25.1396),
(@NEW_GUID_START+13, 4, 55.6747, -741.086, -25.1127),
(@NEW_GUID_START+13, 5, 51.1414, -755.75, -25.0891),
(@NEW_GUID_START+13, 6, 32.6405, -765.659, -25.149),
(@NEW_GUID_START+14, 1, 61.9258, -648.15, -25.1335), -- Phase Lasher
(@NEW_GUID_START+14, 2, 37.2208, -635.772, -25.1156),
(@NEW_GUID_START+15, 1, 61.9258, -648.15, -25.1335), -- Fel Lash
(@NEW_GUID_START+15, 2, 37.2208, -635.772, -25.1156),
(@NEW_GUID_START+16, 1, 64.6844, -620.783, -25.1592), -- Phase Lasher
(@NEW_GUID_START+16, 2, 36.2589, -624.405, -25.1339),
(@NEW_GUID_START+17, 1, 64.6844, -620.783, -25.1592), -- Fel Lash
(@NEW_GUID_START+17, 2, 36.2589, -624.405, -25.1339);

-- Waypoints for the Wildspawn Felsworn moving between two Betrayer/Satyr/Satyr groups.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+9);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+9, 1, 51.3525, -721.915, -25.1438),
(@NEW_GUID_START+9, 2, 26.2717, -683.886, -25.1616);

-- ---------------------------------------------------------------------------
-- Dire Maul East, hallway from The Hidden Reach to the room with Lethtendris
-- ---------------------------------------------------------------------------

-- There is a Wildspawn Shadowstalker walking from The Hidden Reach to the room with Lethtendris,
-- then to the Warpwood Quarter, back to the room with Lethtendris and back to The Hidden Reach.
-- Remarkably enough, this path is then repeated almost identically, but the Wildspawn Shadowstalker
-- is not going as far as the previous time when it goes to the room with Lethtendris and the
-- Warpwood Quarter. This cycle of two similar but yet different paths seems to repeat.
INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@NEW_GUID_START+21, 11456, 429, 0, 0, 111.56, -367.658, -4.10329, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2); -- Wildspawn Shadowstalker

-- Waypoints (5.4.1, build 17538 sniffs - my incomplete 3.0.8a, build 9506 sniffs match though)
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+21);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+21, 1, 111.56, -367.658, -4.10329), -- in Warpwood Quarter
(@NEW_GUID_START+21, 2, 111.99, -405.013, -3.27357),
(@NEW_GUID_START+21, 3, 111.664, -447.862, -3.27357),
(@NEW_GUID_START+21, 4, 83.5537, -450.203, -2.72375),
(@NEW_GUID_START+21, 5, 56.137, -443.016, -4.19776), -- in room with Lethtendris
(@NEW_GUID_START+21, 6, 83.5537, -451.637, -2.72375),
(@NEW_GUID_START+21, 7, 110.915, -449.531, -3.27357),
(@NEW_GUID_START+21, 8, 110.484, -479.109, -5.25367),
(@NEW_GUID_START+21, 9, 110.957, -505.578, -6.90008),
(@NEW_GUID_START+21, 10, 111.046, -525.708, -9.75606),
(@NEW_GUID_START+21, 11, 109.657, -536.35, -11.0819),
(@NEW_GUID_START+21, 12, 102.066, -542.386, -11.076),
(@NEW_GUID_START+21, 13, 93.5106, -543.934, -11.0792),
(@NEW_GUID_START+21, 14, 78.9442, -544.257, -15.1878),
(@NEW_GUID_START+21, 15, 68.1247, -547.005, -15.2463),
(@NEW_GUID_START+21, 16, 56.54, -554.739, -18.6839),
(@NEW_GUID_START+21, 17, 50.5444, -561.242, -19.4091),
(@NEW_GUID_START+21, 18, 49.299, -576.829, -21.6522),
(@NEW_GUID_START+21, 19, 50.8651, -608.355, -25.0648), -- in The Hidden Reach
(@NEW_GUID_START+21, 20, 50.797, -577.22, -21.7348),
(@NEW_GUID_START+21, 21, 51.8951, -562.783, -19.4092),
(@NEW_GUID_START+21, 22, 57.2623, -555.905, -18.7048),
(@NEW_GUID_START+21, 23, 68.9273, -548.578, -15.2468),
(@NEW_GUID_START+21, 24, 78.7413, -546.142, -15.2471),
(@NEW_GUID_START+21, 25, 93.1918, -545.58, -11.0795),
(@NEW_GUID_START+21, 26, 103.122, -543.422, -11.0757),
(@NEW_GUID_START+21, 27, 110.868, -536.879, -11.0819),
(@NEW_GUID_START+21, 28, 112.302, -525.682, -9.7487),
(@NEW_GUID_START+21, 29, 112.621, -505.927, -6.90041),
(@NEW_GUID_START+21, 30, 112.065, -479.222, -5.28342),
(@NEW_GUID_START+21, 31, 112.832, -451.206, -3.27357),
(@NEW_GUID_START+21, 32, 88.8957, -449.426, -2.72356), -- in doorway to room with Lethtendris
(@NEW_GUID_START+21, 33, 113.121, -448.716, -3.27357),
(@NEW_GUID_START+21, 34, 113.983, -404.84, -3.27357), -- in hallway to Warpwood Quarter
(@NEW_GUID_START+21, 35, 113.121, -448.716, -3.27357),
(@NEW_GUID_START+21, 36, 88.8957, -449.426, -2.72356), -- in doorway to room with Lethtendris
(@NEW_GUID_START+21, 37, 112.832, -451.206, -3.27357),
(@NEW_GUID_START+21, 38, 112.065, -479.222, -5.28342),
(@NEW_GUID_START+21, 39, 112.621, -505.927, -6.90041),
(@NEW_GUID_START+21, 40, 112.302, -525.682, -9.7487),
(@NEW_GUID_START+21, 41, 110.868, -536.879, -11.0819),
(@NEW_GUID_START+21, 42, 103.122, -543.422, -11.0757),
(@NEW_GUID_START+21, 43, 93.1918, -545.58, -11.0795),
(@NEW_GUID_START+21, 44, 78.9335, -546.095, -15.191),
(@NEW_GUID_START+21, 45, 68.9273, -548.578, -15.2468),
(@NEW_GUID_START+21, 46, 57.2623, -555.905, -18.7048),
(@NEW_GUID_START+21, 47, 51.8951, -562.783, -19.4092),
(@NEW_GUID_START+21, 48, 50.797, -577.22, -21.7348),
(@NEW_GUID_START+21, 49, 50.8651, -608.355, -25.0648), -- in The Hidden Reach
(@NEW_GUID_START+21, 50, 49.299, -576.829, -21.6522),
(@NEW_GUID_START+21, 51, 50.5444, -561.242, -19.4091),
(@NEW_GUID_START+21, 52, 56.54, -554.739, -18.6839),
(@NEW_GUID_START+21, 53, 68.1247, -547.005, -15.2463),
(@NEW_GUID_START+21, 54, 78.7413, -544.309, -15.2474),
(@NEW_GUID_START+21, 55, 93.5106, -543.934, -11.0792),
(@NEW_GUID_START+21, 56, 102.066, -542.386, -11.076),
(@NEW_GUID_START+21, 57, 109.657, -536.35, -11.0819),
(@NEW_GUID_START+21, 58, 111.046, -525.708, -9.75606),
(@NEW_GUID_START+21, 59, 110.957, -505.578, -6.90008),
(@NEW_GUID_START+21, 60, 110.484, -479.109, -5.25367),
(@NEW_GUID_START+21, 61, 110.915, -449.531, -3.27357),
(@NEW_GUID_START+21, 62, 83.5858, -451.647, -2.72375),
(@NEW_GUID_START+21, 63, 56.137, -443.016, -4.19776), -- in room with Lethtendris
(@NEW_GUID_START+21, 64, 83.4317, -450.213, -2.75571),
(@NEW_GUID_START+21, 65, 111.664, -447.862, -3.27357),
(@NEW_GUID_START+21, 66, 111.99, -405.013, -3.27357);

-- ----------------------------------------
-- Dire Maul East, Lethtendris room
-- ----------------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Betrayer/Satyr/Satyr Group 4, west side, north
(@NEW_GUID_START+22, 11454, 429, 0, 0, 57.5876, -400.81, -4.13621, 2.07694, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+23, 11451, 429, 0, 0, 52.2995, -397.91, -4.13716, 0.523599, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+24, 11451, 429, 0, 0, 61.941, -399.15, -4.13689, 2.51327, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Betrayer/Satyr/Satyr Group 5, west side, middle
(@NEW_GUID_START+25, 11454, 429, 0, 0, -21.4801, -401.265, -4.13795, 1.27409, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+26, 11451, 429, 0, 0, -27.4422, -398.865, -4.22046, 4.90128, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+27, 11451, 429, 0, 0, -14.4985, -399.14, -4.13787, 2.23402, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Betrayer/Satyr/Satyr Group 6, west side, south
(@NEW_GUID_START+28, 11454, 429, 0, 0, -80.4437, -401.602, -4.13549, 1.8326, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+29, 11451, 429, 0, 0, -75.5403, -395.85, -4.13737, 2.54818, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+30, 11451, 429, 0, 0, -86.6004, -400.982, -4.21903, 1.08976, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- Betrayer/Satyr/Satyr Group 7, east side, middle
(@NEW_GUID_START+31, 11454, 429, 0, 0, -17.7285, -459.476, -4.14758, 4.55531, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Betrayer
(@NEW_GUID_START+32, 11451, 429, 0, 0, -12.4978, -462.705, -4.15329, 3.61283, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
(@NEW_GUID_START+33, 11451, 429, 0, 0, -25.777, -462.07, -4.14609, 5.79449, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Satyr
-- East side, north
(@NEW_GUID_START+34, 11455, 429, 0, 0, 53.2125, -458.915, -4.13168, 6.26573 , @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Felsworn
-- Walking around the north pillar
(@NEW_GUID_START+35, 11455, 429, 0, 0, 2.77891, -426.083, -4.22211, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Felsworn
-- Walking around the south pillar
(@NEW_GUID_START+36, 11455, 429, 0, 0, -66.3458, -425.147, -4.22617, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Felsworn
-- Moving between Betrayer/Satyr/Satyr Group 4 and Betrayer/Satyr/Satyr Group 5
(@NEW_GUID_START+37, 11455, 429, 0, 0, 53.4373, -402.78, -4.21671, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Felsworn
-- Moving between Betrayer/Satyr/Satyr Group 6 and Betrayer/Satyr/Satyr Group 7
(@NEW_GUID_START+38, 11455, 429, 0, 0, -23.1693, -457.025, -4.22551, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Felsworn

-- There are four spawn points in the room that can be either a Fel Lash or a Phase Lasher, at random.
-- We'll spawn both at each point and put them in a pool so one is selected at random (see below).
-- East side, north
(@NEW_GUID_START+39, 13196, 429, 0, 0, 21.0046, -457.192, -4.1597, 0.715585, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+40, 13197, 429, 0, 0, 21.0046, -457.192, -4.1597, 0.715585, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- West side, north
(@NEW_GUID_START+41, 13196, 429, 0, 0, 15.1764, -402.726, -4.138, 4.92183, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+42, 13197, 429, 0, 0, 15.1764, -402.726, -4.138, 4.92183, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- West side, middle
(@NEW_GUID_START+43, 13196, 429, 0, 0, -48.4529, -401.622, -4.13796, 5.13127, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+44, 13197, 429, 0, 0, -48.4529, -401.622, -4.13796, 5.13127, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- West side, south
(@NEW_GUID_START+45, 13196, 429, 0, 0, -104.776, -405.624, -4.13418, 5.55015, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+46, 13197, 429, 0, 0, -104.776, -405.624, -4.13418, 5.55015, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash

(@NEW_GUID_START+47, 14327, 429, 0, 0, -5.45062, -441.126, 16.4179, 0.531164, @BOSS_RESPAWN_TIME, 0, 0, 17816, 8964, 0, 2), -- Lethtendris
(@NEW_GUID_START+48, 14349, 429, 0, 0, -6.91042, -440.736, 16.4178, 6.0218, @BOSS_RESPAWN_TIME, 0, 0, 9298, 6489, 0, 0); -- Pimgib

-- Create pools for the Fel Lash/Phase Lasher spawns above.
DELETE FROM `pool_template` WHERE entry BETWEEN @NEW_POOLID_START+4 AND @NEW_POOLID_START+7;
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@NEW_POOLID_START+4, 1, 'Phase Lasher or Fel Lash, Lethtendris room, east side'),
(@NEW_POOLID_START+5, 1, 'Phase Lasher or Fel Lash, Lethtendris room, west side, north'),
(@NEW_POOLID_START+6, 1, 'Phase Lasher or Fel Lash, Lethtendris room, west side, middle'),
(@NEW_POOLID_START+7, 1, 'Phase Lasher or Fel Lash, Lethtendris room, west side, south');

DELETE FROM `pool_creature` WHERE pool_entry BETWEEN @NEW_POOLID_START+4 AND @NEW_POOLID_START+7;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(@NEW_GUID_START+39, @NEW_POOLID_START+4, 0, 'Phase Lasher'),
(@NEW_GUID_START+40, @NEW_POOLID_START+4, 0, 'Fel Lash'),
(@NEW_GUID_START+41, @NEW_POOLID_START+5, 0, 'Phase Lasher'),
(@NEW_GUID_START+42, @NEW_POOLID_START+5, 0, 'Fel Lash'),
(@NEW_GUID_START+43, @NEW_POOLID_START+6, 0, 'Phase Lasher'),
(@NEW_GUID_START+44, @NEW_POOLID_START+6, 0, 'Fel Lash'),
(@NEW_GUID_START+45, @NEW_POOLID_START+7, 0, 'Phase Lasher'),
(@NEW_GUID_START+46, @NEW_POOLID_START+7, 0, 'Fel Lash');

-- Waypoints for the Wildspawn Felsworn moving around the pillars.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+35,@NEW_GUID_START+36);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+35, 1, 2.77891, -426.083, -4.22211), -- North pillar
(@NEW_GUID_START+35, 2, 4.49416, -437.728, -4.22651),
(@NEW_GUID_START+35, 3, 18.5383, -441.367, -4.22177),
(@NEW_GUID_START+35, 4, 31.7256, -436.779, -4.2188),
(@NEW_GUID_START+35, 5, 35.112, -425.608, -4.21984),
(@NEW_GUID_START+35, 6, 29.732, -415.874, -4.22047),
(@NEW_GUID_START+35, 7, 14.9608, -415.527, -4.21806),
(@NEW_GUID_START+36, 1, -66.3458, -425.147, -4.22617), -- South pillar
(@NEW_GUID_START+36, 2, -66.4148, -442.283, -4.22189),
(@NEW_GUID_START+36, 3, -50.4392, -444.013, -4.21451),
(@NEW_GUID_START+36, 4, -38.8381, -443.454, -4.21728),
(@NEW_GUID_START+36, 5, -33.6525, -433.28, -4.22212),
(@NEW_GUID_START+36, 6, -38.6936, -419.706, -4.21747),
(@NEW_GUID_START+36, 7, -53.9576, -415.579, -4.2218);

-- The Wildspawn Felsworn moving between two Betrayer/Satyr/Satyr groups
-- switch to random movement when they arrive at a group. Also, they are not
-- staying a fixed amount of time with a group before they move to the other
-- group again; I have observed them staying for 76s to 295s, so let's conclude
-- they should stay for a random number of seconds in [75, 300].
-- TODO: I believe waiting for a random number of seconds can't be done at
-- this moment without writing a ScriptDev2 script. So we'll settle
-- for a fixed wait time of 120s for the time being.
-- It is also impossible with the current core to switch to random
-- movement at these points, as it should be. This is because switching
-- to random movement forces you to switch back to waypoint movement
-- at one point in time, and that RESTARTS the waypoint movement because
-- there is no proper way to pop a MMGen from the stack in the core.

-- Waypoints for the Wildspawn Felsworn moving between Betrayer/Satyr/Satyr Group 4 and Betrayer/Satyr/Satyr Group 5
DELETE FROM `creature_movement` WHERE id = @NEW_GUID_START+37;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z, waittime) VALUES
(@NEW_GUID_START+37, 1, 53.4373, -402.78, -4.21671, 120000), -- position at group 4 (start)
(@NEW_GUID_START+37, 2, 39.1693, -415.777, -4.2189, 0),
(@NEW_GUID_START+37, 3, 24.0486, -415.589, -4.22141, 0),
(@NEW_GUID_START+37, 4, -10.6934, -394.695, -4.22107, 120000), -- position at group 5
(@NEW_GUID_START+37, 5, 13.4306, -415.67, -4.21805, 0),
(@NEW_GUID_START+37, 6, 40.5559, -415.959, -4.21868, 0);

-- Waypoints for the Wildspawn Felsworn moving between Betrayer/Satyr/Satyr Group 6 and Betrayer/Satyr/Satyr Group 7
DELETE FROM `creature_movement` WHERE id = @NEW_GUID_START+38;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z, waittime) VALUES
(@NEW_GUID_START+38, 1, -23.1693, -457.025, -4.22551, 120000), -- position at group 7 (start)
(@NEW_GUID_START+38, 2, -30.8417, -419.155, -4.21755, 0),
(@NEW_GUID_START+38, 3, -47.5347, -410.469, -4.22006, 0),
(@NEW_GUID_START+38, 4, -65.8654, -419.99, -4.21785, 0),
(@NEW_GUID_START+38, 5, -83.5219, -404.891, -4.21775, 120000), -- position at group 6
(@NEW_GUID_START+38, 6, -66.9129, -421.352, -4.21776, 0),
(@NEW_GUID_START+38, 7, -39.0288, -410.294, -4.21882, 0);

-- Waypoints for Lethtendris
DELETE FROM `creature_movement_template` WHERE entry = 14327;
INSERT INTO `creature_movement_template` (entry, point, position_x, position_y, position_z) VALUES
(14327, 1, -5.45062, -441.126, 16.4179),
(14327, 2, 1.83788, -445.35, 16.4175),
(14327, 3, 5.33627, -449.741, 16.4166),
(14327, 4, 3.27614, -456.265, 16.4143),
(14327, 5, -1.76383, -460.005, 16.4126),
(14327, 6, -8.00382, -459.668, 16.4119),
(14327, 7, -13.439, -455.717, 16.4125),
(14327, 8, -14.4182, -446.394, 16.4152);

-- Let Pimgib follow Lethtendris, and let them share aggo.
DELETE FROM `creature_linking_template` where entry = 14349;
INSERT INTO `creature_linking_template` (entry, map, master_entry, flag)
VALUES (14349, 429, 14327, 515);

-- ---------------------------------
-- Dire Maul East, Warpwood Quarter
-- ---------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Phase Lasher spawns counterclockwise, starting near the dungeon entrance.
(@NEW_GUID_START+49, 13196, 429, 0, 0, -25.8675, -208.432, -3.97046, 0.820305, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher (removed in 4.0.3a)
(@NEW_GUID_START+50, 13196, 429, 0, 0, -85.9347, -208.182, -3.96894, 0.541052, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+51, 13196, 429, 0, 0, -166.726, -271.487, -4.06308, 5.68977, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher (removed in 4.0.3a)
(@NEW_GUID_START+52, 13196, 429, 0, 0, -146.427, -366.639, -4.06831, 1.90241, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
(@NEW_GUID_START+53, 13196, 429, 0, 0, -51.43, -358.119, -4.05449, 2.16421, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher (removed in 4.0.3a)
(@NEW_GUID_START+54, 13196, 429, 0, 0, 70.9002, -357.223, -4.04807, 0.977384, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Phase Lasher
-- Warpwood Crusher spawns counterclockwise, starting near the dungeon entrance.
(@NEW_GUID_START+55, 13021, 429, 0, 0, -16.8805, -177.09, -2.63107, 4.81711, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
(@NEW_GUID_START+56, 13021, 429, 0, 0, -87.1855, -173.293, -2.63107, 4.86947, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher (removed in 4.0.3a)
(@NEW_GUID_START+57, 13021, 429, 0, 0, -135.92, -278.62, -3.97313, 3.47321, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
(@NEW_GUID_START+58, 13021, 429, 0, 0, -110.687, -357.62, -4.05201, 1.65806, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher (removed in 4.0.3a)
(@NEW_GUID_START+59, 13021, 429, 0, 0, -20.0212, -366.39, -4.04007, 1.81514, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
(@NEW_GUID_START+60, 13021, 429, 0, 0, 131.583, -352.838, -4.06887, 3.36849, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher (removed in 4.0.3a)
(@NEW_GUID_START+61, 13021, 429, 0, 0, 134.906, -288.916, -4.06306, 3.54302, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Group south/west
(@NEW_GUID_START+62, 13022, 429, 0, 0, -148.843, -200.749, -4.21083, 4.27233, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+63, 13022, 429, 0, 0, -149.702, -197.893, -4.21031, 5.77921, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+64, 13022, 429, 0, 0, -156.945, -201.478, -4.06936, 5.21853, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+65, 13022, 429, 0, 0, -152.666, -202.802, -4.06916, 3.33358, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+66, 13022, 429, 0, 0, -157.879, -198.865, -4.18982, 0.402479, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+67, 13022, 429, 0, 0, -154.058, -198.694, -4.19924, 2.28912, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+68, 13022, 429, 0, 0, -154.099, -195.957, -4.20064, 4.23252, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- Group south/east (removed in 4.0.3a)
(@NEW_GUID_START+69, 13022, 429, 0, 0, -147.416, -325.322, -4.14834, 1.5089, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+70, 13022, 429, 0, 0, -143.089, -330.215, -4.02938, 0.959931, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+71, 13022, 429, 0, 0, -140.131, -325.933, -4.09224, 5.21016, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+72, 13022, 429, 0, 0, -139.72, -320.566, -4.08884, 4.80789, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+73, 13022, 429, 0, 0, -142.503, -315.225, -4.11006, 1.66281, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+74, 13022, 429, 0, 0, -138.617, -328.017, -3.99383, 2.25147, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+75, 13022, 429, 0, 0, -136, -323.641, -4.06031, 4.8053, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- Group east side, toward the south
(@NEW_GUID_START+76, 13022, 429, 0, 0, -80.2455, -350.76, -3.99503, 1.93732, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+77, 13022, 429, 0, 0, -84.0316, -349.012, -4.0567, 3.99263, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+78, 13022, 429, 0, 0, -78.0264, -346.742, -4.04545, 5.75634, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+79, 13022, 429, 0, 0, -83.2647, -352.631, -4.07834, 5.93665, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+80, 13022, 429, 0, 0, -88.6114, -353.518, -4.0837, 5.33838, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+81, 13022, 429, 0, 0, -86.0241, -357.57, -4.05092, 5.48033, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+82, 13022, 429, 0, 0, -75.468, -349.99, -3.9886, 1.71042, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- Group east side, toward the north
(@NEW_GUID_START+83, 13022, 429, 0, 0, 53.6343, -353.286, -4.01717, 3.92699, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+84, 13022, 429, 0, 0, 49.1207, -353.705, -4.02085, 3.01942, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+85, 13022, 429, 0, 0, 44.475, -354.61, -4.02848, 1.5708, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+86, 13022, 429, 0, 0, 39.5877, -355.57, -4.03657, 0.10472, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+87, 13022, 429, 0, 0, 51.5748, -349.531, -3.98683, 0.122173, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+88, 13022, 429, 0, 0, 45.7938, -349.025, -3.98307, 3.21141, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+89, 13022, 429, 0, 0, 40.7124, -351.442, -4.003, 2.47837, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- Group north, close to the hallway
(@NEW_GUID_START+90, 13022, 429, 0, 0, 111.065, -324.665, -4.01276, 2.42601, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+91, 13022, 429, 0, 0, 116.839, -329.884, -4.14893, 2.53066, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+92, 13022, 429, 0, 0, 121.124, -325.982, -4.16182, 5.76204, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+93, 13022, 429, 0, 0, 115.748, -327.539, -4.14523, 0.318494, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+94, 13022, 429, 0, 0, 109.902, -329.777, -4.0035, 2.84489, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+95, 13022, 429, 0, 0, 112.82, -334.044, -4.13689, 1.36265, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+96, 13022, 429, 0, 0, 114.94, -320.727, -4.04562, 1.32645, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- Group north
(@NEW_GUID_START+97, 13022, 429, 0, 0, 110.844, -255.06, -4.09403, 3.22507, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+98, 13022, 429, 0, 0, 115.729, -259.257, -4.1305, 1.7137, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+99, 13022, 429, 0, 0, 111.401, -260.037, -4.09867, 4.40331, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+100, 13022, 429, 0, 0, 115.432, -263.394, -4.13027, 1.33576, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+101, 13022, 429, 0, 0, 110.253, -269.029, -4.08908, 4.45622, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+102, 13022, 429, 0, 0, 106.298, -266.643, -3.97269, 0.314159, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+103, 13022, 429, 0, 0, 111.893, -272.557, -4.10279, 1.21066, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher

-- Tangler/Treant/Treant Group 1, west side, north
(@NEW_GUID_START+104, 11464, 429, 0, 0, -36.193, -205.04, -4.10713, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+105, 11462, 429, 0, 0, -36.193, -205.04, -4.10713, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+106, 11462, 429, 0, 0, -36.193, -205.04, -4.10713, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
-- Tangler/Treant/Treant Group 2, south west (removed in 4.0.3a)
(@NEW_GUID_START+107, 11464, 429, 0, 0, -115.532, -200.983, -4.09197, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+108, 11462, 429, 0, 0, -115.532, -200.983, -4.09197, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+109, 11462, 429, 0, 0, -115.532, -200.983, -4.09197, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
-- Tangler/Treant/Treant Group 3, south
(@NEW_GUID_START+110, 11464, 429, 0, 0, -159.065, -285.835, -4.17517, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+111, 11462, 429, 0, 0, -159.065, -285.835, -4.17517, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+112, 11462, 429, 0, 0, -159.065, -285.835, -4.17517, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
-- Tangler/Treant/Treant Group 4, south east
(@NEW_GUID_START+113, 11464, 429, 0, 0, -34.0211, -368.15, -4.10071, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+114, 11462, 429, 0, 0, -34.0211, -368.15, -4.10071, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+115, 11462, 429, 0, 0, -34.0211, -368.15, -4.10071, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
-- Tangler/Treant/Treant Group 5, east (removed in 4.0.3a)
(@NEW_GUID_START+116, 11464, 429, 0, 0, -96.5183, -347.559, -4.04812, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+117, 11462, 429, 0, 0, -96.5183, -347.559, -4.04812, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+118, 11462, 429, 0, 0, -96.5183, -347.559, -4.04812, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
-- Tangler/Treant/Treant Group 6, north east
(@NEW_GUID_START+119, 11464, 429, 0, 0, 71.9864, -345.765, -4.03809, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+120, 11462, 429, 0, 0, 71.9864, -345.765, -4.03809, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant
(@NEW_GUID_START+121, 11462, 429, 0, 0, 71.9864, -345.765, -4.03809, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Treant

-- There are two spawn points that can be either a Warpwood Tangler or a Warpwood Treant, at random.
-- We'll spawn both at each spawn point and put them in a pool so one is selected at random.
-- These two creatures are patrolling the entire Warpwood Quarter, going from north west all the way to the north east.
-- The first path starts north west (near Pusillin), the other starts north east (removed in 4.0.3a). The waypoint data in my old sniffs
-- was incomplete for both paths, unfortunately. One path still exists today (verified to match with my partial old data), so I managed
-- to get complete data anyway. The other path is quite similar, yet different, but I'll reuse the same path (with a different starting
-- point of course) until we get complete offi data somehow.
-- TODO: find someone who can provide offi data for the second path. I only have a handful of points myself.
(@NEW_GUID_START+122, 11464, 429, 0, 0, 102.259, -189.041, -4.14403, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler
(@NEW_GUID_START+123, 11462, 429, 0, 0, 102.259, -189.041, -4.14403, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Treant
(@NEW_GUID_START+124, 11464, 429, 0, 0, 136.63, -297.89, -4.14037, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Tangler (reused path!)
(@NEW_GUID_START+125, 11462, 429, 0, 0, 136.63, -297.89, -4.14037, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Treant (reused path!)

(@NEW_GUID_START+126, 14354, 429, 0, 0, 86.1935, -197.888, -4.05657, 1.76278, @BOSS_RESPAWN_TIME, 0, 0, 0, 0, 0, 2); -- Pusillin

-- Waypoints for the Warpwood Tanglers above.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+104, @NEW_GUID_START+107, @NEW_GUID_START+110, @NEW_GUID_START+113, @NEW_GUID_START+116, @NEW_GUID_START+119);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+104, 1, -36.193, -205.04, -4.10713), -- Warpwood Tangler group 1
(@NEW_GUID_START+104, 2, -0.069852, -186.145, -4.06527),
(@NEW_GUID_START+104, 3, 16.8402, -207.522, -4.06454),
(@NEW_GUID_START+104, 4, 0.0555964, -186.304, -4.09301),
(@NEW_GUID_START+107, 1, -115.532, -200.983, -4.09197), -- Warpwood Tangler group 2
(@NEW_GUID_START+107, 2, -133.539, -192.8, -4.1698),
(@NEW_GUID_START+107, 3, -115.532, -200.983, -4.09197),
(@NEW_GUID_START+107, 4, -98.274, -200.693, -4.09371),
(@NEW_GUID_START+107, 5, -88.2304, -191.208, -4.1345),
(@NEW_GUID_START+107, 6, -60.8035, -206.918, -4.06297),
(@NEW_GUID_START+107, 7, -88.2304, -191.208, -4.1345),
(@NEW_GUID_START+107, 8, -98.274, -200.693, -4.09371),
(@NEW_GUID_START+110, 1, -159.065, -285.835, -4.17517), -- Warpwood Tangler group 3
(@NEW_GUID_START+110, 2, -138.818, -312.151, -4.08153),
(@NEW_GUID_START+110, 3, -159.065, -285.835, -4.17517),
(@NEW_GUID_START+110, 4, -150.516, -254.185, -4.15353),
(@NEW_GUID_START+110, 5, -164.311, -218.047, -4.16359),
(@NEW_GUID_START+110, 6, -150.516, -254.185, -4.15353),
(@NEW_GUID_START+113, 1, -34.0211, -368.15, -4.10071), -- Warpwood Tangler group 4
(@NEW_GUID_START+113, 2, -42.4972, -350.352, -4.09093),
(@NEW_GUID_START+113, 3, -52.0169, -350.462, -4.07539),
(@NEW_GUID_START+113, 4, -70.0112, -363.915, -4.14574),
(@NEW_GUID_START+113, 5, -52.0169, -350.462, -4.07539),
(@NEW_GUID_START+113, 6, -42.4972, -350.352, -4.09093),
(@NEW_GUID_START+116, 1, -96.5183, -347.559, -4.04812), -- Warpwood Tangler group 5
(@NEW_GUID_START+116, 2, -88.7243, -368.3, -4.09321),
(@NEW_GUID_START+116, 3, -96.5183, -347.559, -4.04812),
(@NEW_GUID_START+116, 4, -122.768, -345.69, -4.03717),
(@NEW_GUID_START+116, 5, -141.691, -359.008, -4.15096),
(@NEW_GUID_START+116, 6, -122.768, -345.69, -4.03717),
(@NEW_GUID_START+119, 1, 71.9864, -345.765, -4.03809), -- Warpwood Tangler group 6
(@NEW_GUID_START+119, 2, 91.7589, -350.114, -4.06273),
(@NEW_GUID_START+119, 3, 71.9864, -345.765, -4.03809),
(@NEW_GUID_START+119, 4, 38.7329, -347.47, -4.05392),
(@NEW_GUID_START+119, 5, 16.027, -357.749, -4.14035),
(@NEW_GUID_START+119, 6, -5.46487, -350.257, -4.09194),
(@NEW_GUID_START+119, 7, 16.027, -357.749, -4.14035),
(@NEW_GUID_START+119, 8, 38.7329, -347.47, -4.05392);

-- Let Warpwood Treant follow their Warpwood Tangler, and let them share aggro.
DELETE FROM `creature_linking` where guid IN (@NEW_GUID_START+105, @NEW_GUID_START+106, @NEW_GUID_START+108, @NEW_GUID_START+109, @NEW_GUID_START+111, @NEW_GUID_START+112,
                                              @NEW_GUID_START+114, @NEW_GUID_START+115, @NEW_GUID_START+117, @NEW_GUID_START+118, @NEW_GUID_START+120, @NEW_GUID_START+121);
INSERT INTO `creature_linking` (guid, master_guid, flag) VALUES
(@NEW_GUID_START+105, @NEW_GUID_START+104, 515),
(@NEW_GUID_START+106, @NEW_GUID_START+104, 515),
(@NEW_GUID_START+108, @NEW_GUID_START+107, 515),
(@NEW_GUID_START+109, @NEW_GUID_START+107, 515),
(@NEW_GUID_START+111, @NEW_GUID_START+110, 515),
(@NEW_GUID_START+112, @NEW_GUID_START+110, 515),
(@NEW_GUID_START+114, @NEW_GUID_START+113, 515),
(@NEW_GUID_START+115, @NEW_GUID_START+113, 515),
(@NEW_GUID_START+117, @NEW_GUID_START+116, 515),
(@NEW_GUID_START+118, @NEW_GUID_START+116, 515),
(@NEW_GUID_START+120, @NEW_GUID_START+119, 515),
(@NEW_GUID_START+121, @NEW_GUID_START+119, 515);

-- Create pools for the Warpwood Tangler/Treant spawns above.
DELETE FROM `pool_template` WHERE entry BETWEEN @NEW_POOLID_START+8 AND @NEW_POOLID_START+9;
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@NEW_POOLID_START+8, 1, 'Warpwood Tangler or Warpwood Treant, Warpwood Quarter, north west'),
(@NEW_POOLID_START+9, 1, 'Warpwood Tangler or Warpwood Treant, Warpwood Quarter, north east');

DELETE FROM `pool_creature` WHERE pool_entry BETWEEN @NEW_POOLID_START+8 AND @NEW_POOLID_START+9;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(@NEW_GUID_START+122, @NEW_POOLID_START+8, 0, 'Warpwood Tangler'),
(@NEW_GUID_START+123, @NEW_POOLID_START+8, 0, 'Warpwood Treant'),
(@NEW_GUID_START+124, @NEW_POOLID_START+9, 0, 'Warpwood Tangler'),
(@NEW_GUID_START+125, @NEW_POOLID_START+9, 0, 'Warpwood Treant');

-- Waypoints for the first Warpwood Tangler/Treant patrolling the entire Warpwood Quarter.
-- This is only one of two paths (5.4.1, build 17538 sniffs - my incomplete 3.0.8a, build 9506 sniffs match though).
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+122, @NEW_GUID_START+123);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+122, 1, 102.259, -189.041, -4.14403), -- Warpwood Tangler
(@NEW_GUID_START+122, 2, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+122, 3, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+122, 4, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+122, 5, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+122, 6, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+122, 7, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+122, 8, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+122, 9, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+122, 10, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+122, 11, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+122, 12, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+122, 13, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+122, 14, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+122, 15, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+122, 16, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+122, 17, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+122, 18, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+122, 19, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+122, 20, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+122, 21, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+122, 22, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+122, 23, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+122, 24, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+122, 25, 136.63, -297.89, -4.14037),
(@NEW_GUID_START+122, 26, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+122, 27, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+122, 28, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+122, 29, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+122, 30, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+122, 31, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+122, 32, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+122, 33, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+122, 34, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+122, 35, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+122, 36, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+122, 37, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+122, 38, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+122, 39, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+122, 40, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+122, 41, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+122, 42, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+122, 43, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+122, 44, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+122, 45, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+122, 46, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+122, 47, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+122, 48, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+123, 1, 102.259, -189.041, -4.14403), -- Warpwood Treant
(@NEW_GUID_START+123, 2, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+123, 3, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+123, 4, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+123, 5, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+123, 6, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+123, 7, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+123, 8, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+123, 9, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+123, 10, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+123, 11, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+123, 12, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+123, 13, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+123, 14, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+123, 15, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+123, 16, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+123, 17, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+123, 18, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+123, 19, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+123, 20, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+123, 21, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+123, 22, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+123, 23, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+123, 24, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+123, 25, 136.63, -297.89, -4.14037),
(@NEW_GUID_START+123, 26, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+123, 27, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+123, 28, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+123, 29, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+123, 30, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+123, 31, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+123, 32, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+123, 33, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+123, 34, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+123, 35, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+123, 36, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+123, 37, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+123, 38, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+123, 39, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+123, 40, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+123, 41, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+123, 42, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+123, 43, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+123, 44, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+123, 45, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+123, 46, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+123, 47, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+123, 48, 89.4286, -201.686, -4.11438);

-- Waypoints for the second Warpwood Tangler/Treant patrolling the entire Warpwood Quarter.
-- NOTE: This data is INCORRECT. As stated above, I am reusing the data from the first path
-- because it looks quite similar. Replace this data with correct data if we ever get it.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+124, @NEW_GUID_START+125);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+124, 1, 136.63, -297.89, -4.14037), -- Warpwood Tangler
(@NEW_GUID_START+124, 2, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+124, 3, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+124, 4, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+124, 5, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+124, 6, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+124, 7, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+124, 8, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+124, 9, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+124, 10, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+124, 11, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+124, 12, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+124, 13, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+124, 14, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+124, 15, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+124, 16, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+124, 17, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+124, 18, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+124, 19, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+124, 20, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+124, 21, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+124, 22, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+124, 23, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+124, 24, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+124, 25, 102.259, -189.041, -4.14403),
(@NEW_GUID_START+124, 26, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+124, 27, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+124, 28, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+124, 29, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+124, 30, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+124, 31, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+124, 32, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+124, 33, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+124, 34, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+124, 35, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+124, 36, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+124, 37, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+124, 38, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+124, 39, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+124, 40, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+124, 41, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+124, 42, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+124, 43, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+124, 44, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+124, 45, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+124, 46, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+124, 47, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+124, 48, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+125, 1, 136.63, -297.89, -4.14037), -- Warpwood Treant
(@NEW_GUID_START+125, 2, 110.969, -320.819, -4.06031),
(@NEW_GUID_START+125, 3, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+125, 4, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+125, 5, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+125, 6, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+125, 7, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+125, 8, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+125, 9, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+125, 10, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+125, 11, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+125, 12, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+125, 13, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+125, 14, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+125, 15, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+125, 16, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+125, 17, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+125, 18, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+125, 19, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+125, 20, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+125, 21, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+125, 22, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+125, 23, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+125, 24, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+125, 25, 102.259, -189.041, -4.14403),
(@NEW_GUID_START+125, 26, 89.4286, -201.686, -4.11438),
(@NEW_GUID_START+125, 27, 68.5419, -198.293, -4.10272),
(@NEW_GUID_START+125, 28, 50.1925, -206.959, -4.04565),
(@NEW_GUID_START+125, 29, 10.0739, -193.739, -4.1783),
(@NEW_GUID_START+125, 30, -27.0374, -199.728, -4.12932),
(@NEW_GUID_START+125, 31, -69.224, -210.561, -4.01831),
(@NEW_GUID_START+125, 32, -82.1339, -196.299, -4.11637),
(@NEW_GUID_START+125, 33, -114.94, -200.679, -4.08625),
(@NEW_GUID_START+125, 34, -143.359, -199.912, -4.15018),
(@NEW_GUID_START+125, 35, -161.85, -209.59, -4.17424),
(@NEW_GUID_START+125, 36, -156.081, -247.455, -4.14809),
(@NEW_GUID_START+125, 37, -159.361, -285.624, -4.17592),
(@NEW_GUID_START+125, 38, -162.05, -319.905, -4.17915),
(@NEW_GUID_START+125, 39, -158.792, -346.695, -4.17586),
(@NEW_GUID_START+125, 40, -132.558, -358.144, -4.1239),
(@NEW_GUID_START+125, 41, -103.585, -345.402, -4.02927),
(@NEW_GUID_START+125, 42, -60.3308, -346.808, -4.0364),
(@NEW_GUID_START+125, 43, -24.6878, -355.611, -4.09386),
(@NEW_GUID_START+125, 44, 15.9506, -352.975, -4.09936),
(@NEW_GUID_START+125, 45, 56.1764, -346.913, -4.0762),
(@NEW_GUID_START+125, 46, 91.9604, -353.353, -4.07654),
(@NEW_GUID_START+125, 47, 107.185, -344.784, -4.05063),
(@NEW_GUID_START+125, 48, 110.969, -320.819, -4.06031);

-- Waypoints for Pusillin (3.0.3, build 9464 sniffs)
-- Note: for some unknown reason, I seem to be missing a single point in my
-- parser's output, which I marked with (**) below (it is the first stop point).
-- The coordinates for that point are taking from UDB 406 (I can confirm it
-- feels right). Everything else comes directly from my own sniffs.
DELETE FROM `creature_movement_template` WHERE entry = 14354;
INSERT INTO `creature_movement_template` (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(14354, 1, 86.1935, -197.888, -4.05657, 1000, 1435401), -- Start
(14354, 2, 34.1275, -199.426, -4.13396, 0, 0),
(14354, 3, -14.7334, -200.126, -4.12814, 0, 0),
(14354, 4, -60.011, -200.013, -4.12136, 0, 0),
(14354, 5, -101.19, -198.52, -4.10678, 0, 0),
(14354, 6, -145.653, -196.347, -4.22942, 0, 0),
(14354, 7, -162.492, -217, -4.1686, 0, 0),
(14354, 8, -154.346, -248.685, -4.14808, 0, 0),
(14354, 9, -150.171, -278.348, -4.14787, 1000, 1435402), -- First stop (**)
(14354, 10, -153.94, -296.79, -4.16217, 0, 0),
(14354, 11, -140.615, -316.779, -4.09557, 0, 0),
(14354, 12, -152.94, -347.556, -4.1513, 0, 0),
(14354, 13, -135.045, -353.381, -4.10267, 0, 0),
(14354, 14, -111.202, -354.226, -4.08814, 0, 0),
(14354, 15, -77.8243, -348.998, -4.05656, 0, 0),
(14354, 16, -36.0909, -356.858, -4.13243, 0, 0),
(14354, 17, 2.71265, -354.185, -4.11719, 0, 0),
(14354, 18, 40.974, -351.714, -4.07477, 0, 0),
(14354, 19, 107.902, -355.904, -4.12403, 1000, 1435402), -- Second stop
(14354, 20, 110.332, -376.069, -2.89068, 0, 0),
(14354, 21, 111.229, -397.171, -3.27356, 0, 0),
(14354, 22, 111.64, -417.141, -3.27357, 0, 0),
(14354, 23, 111.973, -443.787, -3.27357, 0, 0),
(14354, 24, 112.216, -466.26, -3.27357, 0, 0),
(14354, 25, 112.224, -488.812, -6.88436, 0, 0),
(14354, 26, 111.823, -510.512, -6.90471, 0, 0),
(14354, 27, 111.677, -532.22, -11.0802, 0, 0),
(14354, 28, 102.894, -541.951, -11.081, 0, 0),
(14354, 29, 85.3122, -544.938, -13.3078, 0, 0),
(14354, 30, 62.376, -551.555, -16.8896, 0, 0),
(14354, 31, 50.4954, -566.23, -19.4087, 0, 0),
(14354, 32, 50.4384, -631.018, -25.1082, 1000, 1435402), -- Third stop
(14354, 33, 32.7456, -687.053, -25.1616, 0, 0),
(14354, 34, 2.18578, -703.163, -25.1616, 0, 0),
(14354, 35, 2.24896, -673.876, -13.608, 0, 0),
(14354, 36, 12.2961, -668.865, -12.6426, 0, 0),
(14354, 37, 21.7663, -676.581, -12.6426, 0, 0),
(14354, 38, 12.7601, -706.167, -12.6426, 1000, 1435402); -- Last stop

-- --------------------------------
-- Dire Maul East, Hydrospawn room
-- --------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- East side (removed in 4.0.3a)
(@NEW_GUID_START+127, 13197, 429, 0, 0, -35.181, -458.88, -58.5327, 2.26893, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- North/East
(@NEW_GUID_START+128, 13197, 429, 0, 0, 47.3864, -447.764, -58.5225, 3.75246, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- North/West
(@NEW_GUID_START+129, 13197, 429, 0, 0, 55.5946, -405.276, -58.5211, 3.9968, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Fel Lash
-- Group south/east
(@NEW_GUID_START+130, 11453, 429, 0, 0, -93.0634, -461.176, -58.6221, 5.70493, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+131, 11452, 429, 0, 0, -94.5833, -466.205, -58.6246, 2.23612, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
(@NEW_GUID_START+132, 11452, 429, 0, 0, -84.7378, -460.673, -58.5294, 2.68781, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
-- Group south/east
(@NEW_GUID_START+133, 11457, 429, 0, 0, -69.0547, -442.536, -58.6142, 1.13804, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Hellcaller
(@NEW_GUID_START+134, 13276, 429, 0, 0, -70.9053, -439.957, -58.6127, 0.913746, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+135, 13276, 429, 0, 0, -64.4045, -442.443, -58.6145, 1.04908, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+136, 13276, 429, 0, 0, -72.5177, -436.876, -58.611, 4.10582, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+137, 13276, 429, 0, 0, -61.434, -444.802, -58.5307, 6.16101, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+138, 13276, 429, 0, 0, -71.6369, -440.319, -58.6128, 0.256474, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
-- Group east
(@NEW_GUID_START+139, 11457, 429, 0, 0, -6.88377, -459.375, -58.5461, 0.872665, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Hellcaller
(@NEW_GUID_START+140, 13276, 429, 0, 0, -3.22096, -460.538, -58.549, 1.3439, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+141, 13276, 429, 0, 0, -14.1565, -460.888, -58.6237, 4.10695, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+142, 13276, 429, 0, 0, -6.83229, -455.483, -58.5433, 0.366519, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+143, 13276, 429, 0, 0, -3.05802, -456.817, -58.5464, 0.366519, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+144, 13276, 429, 0, 0, -10.9179, -456.242, -58.6249, 0.31074, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
-- Group north
(@NEW_GUID_START+145, 11453, 429, 0, 0, 74.8293, -435.001, -58.5152, 1.06465, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+146, 11453, 429, 0, 0, 68.7285, -422.43, -58.6015, 5.77543, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+147, 11452, 429, 0, 0, 70.4284, -429.825, -58.6012, 0.320256, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
(@NEW_GUID_START+148, 11452, 429, 0, 0, 74.9546, -417.913, -58.5995, 0.030332, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
-- Group north/west
(@NEW_GUID_START+149, 11457, 429, 0, 0, 37.3552, -392.268, -58.5272, 2.37365, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Hellcaller
(@NEW_GUID_START+150, 13276, 429, 0, 0, 32.1917, -393.651, -58.6118, 0.535442, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+151, 13276, 429, 0, 0, 42.2916, -388.172, -58.5281, 5.48033, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+152, 13276, 429, 0, 0, 40.4389, -397.353, -58.5258, 1.71042, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+153, 13276, 429, 0, 0, 34.4894, -396.159, -58.5277, 1.20428, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+154, 13276, 429, 0, 0, 43.4029, -392.169, -58.5266, 4.11898, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
-- Group west (removed in 4.0.3a)
(@NEW_GUID_START+155, 11453, 429, 0, 0, -23.6704, -398.692, -58.6164, 0.80207, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+156, 11453, 429, 0, 0, -10.3481, -393.132, -58.5304, 1.90241, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+157, 11452, 429, 0, 0, -16.0019, -395.454, -58.5304, 4.55531, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
(@NEW_GUID_START+158, 11452, 429, 0, 0, -28.3503, -391.94, -58.618, 2.83299, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
-- Group south/west
(@NEW_GUID_START+159, 11453, 429, 0, 0, -90.2836, -391.934, -58.4822, 3.01942, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+160, 11453, 429, 0, 0, -79.7413, -389.324, -58.5109, 1.25664, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Trickster
(@NEW_GUID_START+161, 11452, 429, 0, 0, -84.0613, -392.13, -58.4799, 0.959931, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
(@NEW_GUID_START+162, 11452, 429, 0, 0, -96.6476, -388.518, -58.52, 4.5204, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Rogue
-- Spawn three Small Frogs in Hydrospawn's pool
(@NEW_GUID_START+163, 13321, 429, 0, 0, 1.08285, -427.635, -58.2154, 0.942478, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Small Frog
(@NEW_GUID_START+164, 13321, 429, 0, 0, -21.3831, -431.467, -58.527, 3.7001, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Small Frog
(@NEW_GUID_START+165, 13321, 429, 0, 0, -21.032, -425.93, -58.1864, 1.81514, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Small Frog

(@NEW_GUID_START+166, 13280, 429, 0, 0, 4.57887, -438.407, -59.954, 0, @BOSS_RESPAWN_TIME, 0, 0, 22374, 6723, 0, 2), -- Hydrospawn

-- Wildspawn Shadowstalker patrolling between the room with Hydrospawn (south east) and the room with Lethtendris
(@NEW_GUID_START+167, 11456, 429, 0, 0, -148.751, -487.5, -36.871, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Shadowstalker
-- Wildspawn Shadowstalker patrolling between the room with Hydrospawn (north east) and the room with Zevrim Thornhoof
(@NEW_GUID_START+168, 11456, 429, 0, 0, 46.9284, -465.54, -58.631, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Shadowstalker
-- Wildspawn Shadowstalker patrolling between the room with Hydrospawn (south west) and The Conservatory
(@NEW_GUID_START+169, 11456, 429, 0, 0, -57.0053, -401.183, -58.5854, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Wildspawn Shadowstalker
-- Wildspawn Shadowstalker, west side
(@NEW_GUID_START+170, 11456, 429, 0, 0, 4.50979, -386.047, -58.5316, 1.16937, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1); -- Wildspawn Shadowstalker

-- Waypoints for Hydrospawn
DELETE FROM `creature_movement_template` WHERE entry = 13280;
INSERT INTO `creature_movement_template` (entry, point, position_x, position_y, position_z) VALUES
(13280, 1, 4.57887, -438.407, -59.954),
(13280, 2, -33.6927, -415.93, -59.9502),
(13280, 3, -6.58793, -429.432, -59.9504),
(13280, 4, 4.98108, -416.84, -59.9505),
(13280, 5, -6.58793, -429.432, -59.9504),
(13280, 6, -33.6927, -415.93, -59.9502);

-- Waypoints for the Wildspawn Shadowstalker patrolling between the room with Hydrospawn (south east) and the room with Lethtendris
DELETE FROM `creature_movement` WHERE id = @NEW_GUID_START+167;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+167, 1, -148.751, -487.5, -36.871),
(@NEW_GUID_START+167, 2, -149.526, -465.79, -44.9222),
(@NEW_GUID_START+167, 3, -143.127, -455.513, -50.1329),
(@NEW_GUID_START+167, 4, -132.709, -449.303, -55.0993),
(@NEW_GUID_START+167, 5, -105.885, -447.737, -58.6165),
(@NEW_GUID_START+167, 6, -132.709, -449.303, -55.0993),
(@NEW_GUID_START+167, 7, -143.127, -455.513, -50.1329),
(@NEW_GUID_START+167, 8, -149.526, -465.79, -44.9222),
(@NEW_GUID_START+167, 9, -148.752, -487.487, -36.8745),
(@NEW_GUID_START+167, 10, -135.092, -504.438, -28.8174),
(@NEW_GUID_START+167, 11, -113.232, -508.586, -20.6107),
(@NEW_GUID_START+167, 12, -95.8325, -498.389, -13.3713),
(@NEW_GUID_START+167, 13, -89.0812, -483.811, -7.35349),
(@NEW_GUID_START+167, 14, -82.9889, -465.855, -4.23306),
(@NEW_GUID_START+167, 15, -77.1624, -458.783, -4.22154),
(@NEW_GUID_START+167, 16, -61.4029, -452.23, -4.2219),
(@NEW_GUID_START+167, 17, -77.1624, -458.783, -4.22154),
(@NEW_GUID_START+167, 18, -82.9889, -465.855, -4.23306),
(@NEW_GUID_START+167, 19, -89.0812, -483.811, -7.35349),
(@NEW_GUID_START+167, 20, -95.8325, -498.389, -13.3713),
(@NEW_GUID_START+167, 21, -113.132, -508.528, -20.5574),
(@NEW_GUID_START+167, 22, -134.878, -504.478, -28.7159);
    
-- Waypoints for the Wildspawn Shadowstalker patrolling between the room with Hydrospawn (north east) and the room with Zevrim Thornhoof
DELETE FROM `creature_movement` WHERE id = @NEW_GUID_START+168;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+168, 1, 46.9284, -465.54, -58.631),
(@NEW_GUID_START+168, 2, 61.0585, -454.855, -58.5957),
(@NEW_GUID_START+168, 3, 85.6805, -450.3, -57.1393),
(@NEW_GUID_START+168, 4, 97.0011, -451.695, -55.9312),
(@NEW_GUID_START+168, 5, 108.168, -458.022, -53.7648),
(@NEW_GUID_START+168, 6, 112.663, -473.932, -50.6235),
(@NEW_GUID_START+168, 7, 104.776, -487.91, -47.576),
(@NEW_GUID_START+168, 8, 88.5545, -493.153, -44.5541),
(@NEW_GUID_START+168, 9, 69.6931, -493.122, -41.8311),
(@NEW_GUID_START+168, 10, 32.3505, -493.116, -37.1012),
(@NEW_GUID_START+168, 11, -0.704192, -491.949, -36.411),
(@NEW_GUID_START+168, 12, -2.08761, -469.207, -37.2008),
(@NEW_GUID_START+168, 13, 15.8178, -449.191, -37.9618),
(@NEW_GUID_START+168, 14, -2.08761, -469.207, -37.2008),
(@NEW_GUID_START+168, 15, -0.982565, -491.939, -36.411),
(@NEW_GUID_START+168, 16, 32.3505, -493.116, -37.1012),
(@NEW_GUID_START+168, 17, 69.6931, -493.122, -41.8311),
(@NEW_GUID_START+168, 18, 88.5545, -493.153, -44.5541),
(@NEW_GUID_START+168, 19, 104.776, -487.91, -47.576),
(@NEW_GUID_START+168, 20, 112.663, -473.932, -50.6235),
(@NEW_GUID_START+168, 21, 108.168, -458.022, -53.7648),
(@NEW_GUID_START+168, 22, 97.0011, -451.695, -55.9312),
(@NEW_GUID_START+168, 23, 85.7966, -450.315, -57.1089),
(@NEW_GUID_START+168, 24, 61.0585, -454.855, -58.5957);

-- Waypoints for the Wildspawn Shadowstalker patrolling between the room with Hydrospawn (south west) and The Conservatory
DELETE FROM `creature_movement` WHERE id = @NEW_GUID_START+169;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+169, 1, -57.0053, -401.183, -58.5854),
(@NEW_GUID_START+169, 2, -78.1638, -411.103, -58.5798),
(@NEW_GUID_START+169, 3, -112.804, -403.025, -58.493),
(@NEW_GUID_START+169, 4, -141.216, -403.059, -57.5755),
(@NEW_GUID_START+169, 5, -142.495, -369.55, -57.0163),
(@NEW_GUID_START+169, 6, -144.183, -315.523, -56.7603),
(@NEW_GUID_START+169, 7, -149.507, -330.951, -56.8075),
(@NEW_GUID_START+169, 8, -144.183, -315.523, -56.7603),
(@NEW_GUID_START+169, 9, -142.495, -369.549, -56.3519),
(@NEW_GUID_START+169, 10, -141.216, -403.059, -57.5755),
(@NEW_GUID_START+169, 11, -112.804, -403.025, -58.493),
(@NEW_GUID_START+169, 12, -78.1638, -411.103, -58.5798);

-- -----------------------------------------
-- Dire Maul East, Zevrim Thornhoof's room
-- -----------------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@NEW_GUID_START+171, 11457, 429, 0, 0, 4.60055, -437.18, -37.8782, 4.27606, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Hellcaller
(@NEW_GUID_START+172, 13276, 429, 0, 0, 7.56612, -440.69, -37.8779, 3.89208, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+173, 13276, 429, 0, 0, 1.65759, -434.832, -37.9608, 0.775787, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+174, 13276, 429, 0, 0, 1.53725, -438.741, -37.9606, 1.07755, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+175, 13276, 429, 0, 0, 7.73413, -443.673, -37.8776, 3.12414, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+176, 13276, 429, 0, 0, -1.03906, -435.259, -37.9609, 5.92277, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Wildspawn Imp
(@NEW_GUID_START+177, 11490, 429, 0, 0, -34.983, -448, -37.8785, 0.191986, @BOSS_RESPAWN_TIME, 0, 0, 23395, 0, 0, 0); -- Zevrim Thornhoof

-- ---------------------------------
-- Dire Maul East, The Conservatory
-- ---------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES

-- There are eight groups of ten Whip Lashers each. Spawning them north to south, west to east.
-- North west corner
(@NEW_GUID_START+178, 13022, 429, 0, 0, 122.508, -193.592, -55.2534, 3.11933, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+179, 13022, 429, 0, 0, 118.955, -189.796, -54.6273, 3.18426, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+180, 13022, 429, 0, 0, 115.228, -192.819, -55.0426, 2.91091, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+181, 13022, 429, 0, 0, 115.228, -195.967, -55.6115, 3.54147, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+182, 13022, 429, 0, 0, 118.605, -198.995, -55.8831, 4.91481, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+183, 13022, 429, 0, 0, 126.482, -204.473, -56.2875, 4.26236, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+184, 13022, 429, 0, 0, 110.761, -197.604, -55.6668, 4.2586, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+185, 13022, 429, 0, 0, 109.855, -191.323, -54.5, 5.53269, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+186, 13022, 429, 0, 0, 106.918, -189.179, -54.0493, 1.81514, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+187, 13022, 429, 0, 0, 103.901, -194.5, -54.9578, 4.32842, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- North west
(@NEW_GUID_START+188, 13022, 429, 0, 0, 71.2551, -246.144, -55.5366, 4.09156, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+189, 13022, 429, 0, 0, 63.8949, -249.185, -55.0552, 4.85084, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+190, 13022, 429, 0, 0, 59.7906, -248.992, -54.0533, 4.72984, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+191, 13022, 429, 0, 0, 55.7535, -242.316, -53.6007, 5.58505, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+192, 13022, 429, 0, 0, 56.7207, -238.084, -54.3587, 1.3439, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+193, 13022, 429, 0, 0, 56.7486, -246.449, -53.4352, 0.837758, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+194, 13022, 429, 0, 0, 57.455, -251.973, -53.4174, 0.366519, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+195, 13022, 429, 0, 0, 63.5469, -252.569, -54.7081, 0.366519, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+196, 13022, 429, 0, 0, 67.7781, -247.753, -55.2964, 1.98623, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+197, 13022, 429, 0, 0, 53.5118, -249.622, -52.9581, 0.802851, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- North west of the center of the room
(@NEW_GUID_START+198, 13022, 429, 0, 0, 5.00858, -220.212, -52.2055, 3.47481, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+199, 13022, 429, 0, 0, 9.43712, -224.578, -51.9292, 0.964966, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+200, 13022, 429, 0, 0, 12.13, -225.89, -51.8221, 1.91029, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+201, 13022, 429, 0, 0, 22.3773, -221.201, -53.114, 1.01456, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+202, 13022, 429, 0, 0, 1.01247, -216.771, -52.9695, 3.64775, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+203, 13022, 429, 0, 0, -1.96242, -211.372, -52.9039, 4.5204, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+204, 13022, 429, 0, 0, 1.6678, -219.749, -52.6945, 2.32129, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+205, 13022, 429, 0, 0, 3.90308, -224.145, -52.1742, 1.67569, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+206, 13022, 429, 0, 0, 10.1914, -227.741, -51.7724, 1.31605, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+207, 13022, 429, 0, 0, 19.6784, -227.142, -52.278, 3.83149, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- East of the center of the room
(@NEW_GUID_START+208, 13022, 429, 0, 0, 7.36502, -309.685, -51.1112, 4.55531, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+209, 13022, 429, 0, 0, 11.0968, -310.742, -51.1119, 5.48033, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+210, 13022, 429, 0, 0, 2.38361, -311.532, -51.1185, 1.71042, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+211, 13022, 429, 0, 0, -0.968268, -316.146, -50.6338, 1.20428, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+212, 13022, 429, 0, 0, 16.3331, -315.152, -51.0991, 4.11898, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+213, 13022, 429, 0, 0, 14.6583, -310.337, -51.3256, 2.1293, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+214, 13022, 429, 0, 0, 9.24688, -308.366, -51.3423, 4.19783, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+215, 13022, 429, 0, 0, 3.19254, -306.155, -51.7484, 2.2254, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+216, 13022, 429, 0, 0, -0.529834, -310.036, -51.4927, 5.50781, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+217, 13022, 429, 0, 0, 13.7675, -306.717, -51.6435, 3.9968, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- West
(@NEW_GUID_START+218, 13022, 429, 0, 0, -54.14, -220.836, -57.177, 4.77728, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+219, 13022, 429, 0, 0, -54.2582, -223.259, -57.2345, 3.52189, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+220, 13022, 429, 0, 0, -59.1212, -222.725, -57.2217, 5.44105, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+221, 13022, 429, 0, 0, -62.9718, -220.366, -57.1655, 5.67601, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+222, 13022, 429, 0, 0, -62.4816, -225.4, -57.2017, 0.767945, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+223, 13022, 429, 0, 0, -59.6312, -229.747, -57.305, 5.07891, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+224, 13022, 429, 0, 0, -54.873, -230.255, -57.4006, 5.35956, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+225, 13022, 429, 0, 0, -55.9487, -225.63, -57.2907, 0.44899, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+226, 13022, 429, 0, 0, -49.7393, -227.547, -57.4026, 2.81523, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+227, 13022, 429, 0, 0, -50.1508, -223.593, -57.2426, 0.113913, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- East
(@NEW_GUID_START+228, 13022, 429, 0, 0, -54.1523, -346.312, -54.1519, 2.58309, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+229, 13022, 429, 0, 0, -56.9274, -344.93, -54.338, 1.06465, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+230, 13022, 429, 0, 0, -57.7313, -341.407, -54.032, 4.97419, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+231, 13022, 429, 0, 0, -60.2078, -339.055, -53.9214, 1.6057, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+232, 13022, 429, 0, 0, -63.0057, -335.754, -53.699, 4.55531, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+233, 13022, 429, 0, 0, -61.8909, -333.061, -53.1807, 4.17134, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+234, 13022, 429, 0, 0, -57.3421, -331.607, -52.5392, 1.90241, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+235, 13022, 429, 0, 0, -61.1368, -330.426, -52.7177, 5.98648, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+236, 13022, 429, 0, 0, -65.628, -334.265, -53.7337, 5.86431, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+237, 13022, 429, 0, 0, -54.4685, -349.823, -54.3427, 2.94961, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- South
(@NEW_GUID_START+238, 13022, 429, 0, 0, -114.53, -298.031, -57.1758, 2.37651, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+239, 13022, 429, 0, 0, -119.468, -295.465, -56.8971, 3.50826, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+240, 13022, 429, 0, 0, -115.32, -295.053, -57.1688, 3.51589, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+241, 13022, 429, 0, 0, -113.643, -286.896, -57.3958, 0.44145, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+242, 13022, 429, 0, 0, -112.49, -292.047, -57.3941, 3.20386, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+243, 13022, 429, 0, 0, -113.132, -297.049, -57.2797, 2.96803, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+244, 13022, 429, 0, 0, -114.571, -303.104, -57.0566, 0.488692, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+245, 13022, 429, 0, 0, -118.833, -302.067, -57.0399, 4.88111, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+246, 13022, 429, 0, 0, -111.067, -302.288, -57.2519, 0.994838, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+247, 13022, 429, 0, 0, -107.508, -295.857, -57.6574, 3.88216, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
-- South west corner
(@NEW_GUID_START+248, 13022, 429, 0, 0, -149.588, -191.55, -50.2393, 4.06322, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+249, 13022, 429, 0, 0, -148.164, -194.851, -51.1721, 5.45461, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+250, 13022, 429, 0, 0, -149.81, -199.836, -52.1027, 2.33874, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+251, 13022, 429, 0, 0, -148.09, -204.423, -53.0782, 1.0472, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+252, 13022, 429, 0, 0, -140.036, -200.326, -53.2361, 0.174533, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+253, 13022, 429, 0, 0, -141.949, -193.913, -51.5956, 2.64255, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+254, 13022, 429, 0, 0, -134.406, -189.794, -50.3224, 6.12191, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+255, 13022, 429, 0, 0, -141.793, -189.652, -50.5362, 5.3421, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+256, 13022, 429, 0, 0, -135.247, -191.384, -50.871, 0.344104, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+257, 13022, 429, 0, 0, -144.024, -197.906, -52.2458, 0.750492, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher

 -- West wall, north to south
(@NEW_GUID_START+258, 13285, 429, 0, 0, 83.368, -204.607, -56.7146, 4.13643, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+259, 13285, 429, 0, 0, 42.2531, -196.094, -53.098, 2.32129, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+260, 13285, 429, 0, 0, -38.4972, -194.397, -55.7837, 5.37561, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+261, 13285, 429, 0, 0, -114.832, -195.776, -52.6459, 0.331613, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
-- East wall, north to south
(@NEW_GUID_START+262, 13285, 429, 0, 0, 115.866, -356.124, -54.999, 4.36332, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+263, 13285, 429, 0, 0, 80.1832, -334.151, -53.8089, 2.1293, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+264, 13285, 429, 0, 0, 40.6147, -361.182, -54.0435, 1.58825, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+265, 13285, 429, 0, 0, -129.867, -334.241, -56.7992, 5.16617, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
-- Center, north to south
(@NEW_GUID_START+266, 13285, 429, 0, 0, 14.3321, -261.833, -52.0997, 4.43314, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+267, 13285, 429, 0, 0, -99.1422, -249.61, -56.6773, 5.14872, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+268, 13285, 429, 0, 0, -129.888, -246.628, -54.0495, 5.41052, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash

-- Stomper/Guardian/Guardian Group 1
(@NEW_GUID_START+269, 11465, 429, 0, 0, -64.3225, -359.79, -55.9148, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Stomper
(@NEW_GUID_START+270, 11461, 429, 0, 0, -64.3225, -359.79, -55.9148, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
(@NEW_GUID_START+271, 11461, 429, 0, 0, -64.3225, -359.79, -55.9148, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
-- Stomper/Guardian/Guardian Group 2
(@NEW_GUID_START+272, 11465, 429, 0, 0, -30.6938, -300.574, -54.0977, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Stomper
(@NEW_GUID_START+273, 11461, 429, 0, 0, -30.6938, -300.574, -54.0977, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
(@NEW_GUID_START+274, 11461, 429, 0, 0, -30.6938, -300.574, -54.0977, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
-- Stomper/Guardian/Guardian Group 3
(@NEW_GUID_START+275, 11465, 429, 0, 0, -17.7006, -293.797, -54.1351, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Stomper
(@NEW_GUID_START+276, 11461, 429, 0, 0, -17.7006, -293.797, -54.1351, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
(@NEW_GUID_START+277, 11461, 429, 0, 0, -17.7006, -293.797, -54.1351, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
-- Stomper/Guardian/Guardian Group 4
(@NEW_GUID_START+278, 11465, 429, 0, 0, 81.8962, -283.248, -55.1609, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Stomper
(@NEW_GUID_START+279, 11461, 429, 0, 0, 81.8962, -283.248, -55.1609, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
(@NEW_GUID_START+280, 11461, 429, 0, 0, 81.8962, -283.248, -55.1609, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
-- Stomper/Guardian/Guardian Group 5
(@NEW_GUID_START+281, 11465, 429, 0, 0, 38.298, -314.189, -52.4531, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Stomper
(@NEW_GUID_START+282, 11461, 429, 0, 0, 38.298, -314.189, -52.4531, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian
(@NEW_GUID_START+283, 11461, 429, 0, 0, 38.298, -314.189, -52.4531, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Guardian

(@NEW_GUID_START+284, 11491, 429, 0, 0, -72.1719, -283.252, -57.7497, 4.08407, @BOSS_RESPAWN_TIME, 0, 0, 0, 0, 0, 0); -- Old Ironbark

-- Waypoints for the Warpwood Stompers above.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+48, @NEW_GUID_START+49, @NEW_GUID_START+50, @NEW_GUID_START+51, @NEW_GUID_START+54);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+269, 1, -64.3225, -359.79, -55.9148), -- Warpwood Stomper group 1
(@NEW_GUID_START+269, 2, -70.1586, -334.176, -54.2529),
(@NEW_GUID_START+269, 3, -89.8989, -318.031, -56.8601),
(@NEW_GUID_START+269, 4, -110.25, -285.87, -57.6282),
(@NEW_GUID_START+269, 5, -121.335, -266.604, -55.1399),
(@NEW_GUID_START+269, 6, -116.576, -253.473, -55.2949),
(@NEW_GUID_START+269, 7, -121.335, -266.604, -55.1399),
(@NEW_GUID_START+269, 8, -110.25, -285.87, -57.6282),
(@NEW_GUID_START+269, 9, -89.8989, -318.031, -56.8601),
(@NEW_GUID_START+269, 10, -70.1586, -334.176, -54.2529),
(@NEW_GUID_START+272, 1, -30.6938, -300.574, -54.0977), -- Warpwood Stomper group 2
(@NEW_GUID_START+272, 2, -36.8599, -271.41, -56.6059),
(@NEW_GUID_START+272, 3, -53.9806, -245.188, -58.0849),
(@NEW_GUID_START+272, 4, -89.4328, -232.741, -56.2437),
(@NEW_GUID_START+272, 5, -53.9806, -245.188, -58.0849),
(@NEW_GUID_START+272, 6, -36.8599, -271.41, -56.6059),
(@NEW_GUID_START+272, 7, -30.6938, -300.574, -54.0977),
(@NEW_GUID_START+272, 8, -32.4841, -327.263, -50.4792),
(@NEW_GUID_START+275, 1, -17.7006, -293.797, -54.1351), -- Warpwood Stomper group 3
(@NEW_GUID_START+275, 2, -32.7729, -250.078, -57.9774),
(@NEW_GUID_START+275, 3, -17.7006, -293.797, -54.1351),
(@NEW_GUID_START+275, 4, -16.1746, -336.135, -51.9377),
(@NEW_GUID_START+278, 1, 81.8962, -283.248, -55.1609), -- Warpwood Stomper group 4
(@NEW_GUID_START+278, 2, 109.442, -273.878, -55.8719),
(@NEW_GUID_START+278, 3, 117.836, -254.708, -56.6087),
(@NEW_GUID_START+278, 4, 109.442, -273.878, -55.8719),
(@NEW_GUID_START+278, 5, 81.8962, -283.248, -55.1609),
(@NEW_GUID_START+278, 6, 65.0599, -313.114, -54.3235),
(@NEW_GUID_START+278, 7, 76.6939, -356.838, -55.4615),
(@NEW_GUID_START+278, 8, 65.0599, -313.114, -54.3235),
(@NEW_GUID_START+281, 1, 38.298, -314.189, -52.4531), -- Warpwood Stomper group 5
(@NEW_GUID_START+281, 2, 20.0477, -273.791, -52.9925),
(@NEW_GUID_START+281, 3, -5.26121, -245.339, -54.4131),
(@NEW_GUID_START+281, 4, -12.3469, -205.185, -53.4168),
(@NEW_GUID_START+281, 5, -5.26121, -245.339, -54.4131),
(@NEW_GUID_START+281, 6, 20.0477, -273.791, -52.9925);

-- Let Warpwood Guardian follow their Warpwood Stomper, and let them share aggro.
DELETE FROM `creature_linking` where guid IN (@NEW_GUID_START+270, @NEW_GUID_START+271, @NEW_GUID_START+273, @NEW_GUID_START+274, @NEW_GUID_START+276, @NEW_GUID_START+277,
                                              @NEW_GUID_START+279, @NEW_GUID_START+280, @NEW_GUID_START+282, @NEW_GUID_START+283);
INSERT INTO `creature_linking` (guid, master_guid, flag) VALUES
(@NEW_GUID_START+270, @NEW_GUID_START+269, 515),
(@NEW_GUID_START+271, @NEW_GUID_START+269, 515),
(@NEW_GUID_START+273, @NEW_GUID_START+272, 515),
(@NEW_GUID_START+274, @NEW_GUID_START+272, 515),
(@NEW_GUID_START+276, @NEW_GUID_START+275, 515),
(@NEW_GUID_START+277, @NEW_GUID_START+275, 515),
(@NEW_GUID_START+279, @NEW_GUID_START+278, 515),
(@NEW_GUID_START+280, @NEW_GUID_START+278, 515),
(@NEW_GUID_START+282, @NEW_GUID_START+281, 515),
(@NEW_GUID_START+283, @NEW_GUID_START+281, 515);

-- Waypoints for Ironbark the Redeemed
DELETE FROM `creature_movement_template` WHERE entry = 14241;
INSERT INTO `creature_movement_template` (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(14241, 1, -10.6115, -281.676, -53.7415, 0, 0),
(14241, 2, 17.2824, -286.947, -52.2818, 0, 0),
(14241, 3, 51.7975, -270.523, -53.0312, 0, 0),
(14241, 4, 74.1724, -272.765, -54.8267, 0, 0),
(14241, 5, 117.401, -277.83, -55.8552, 30000, 14241); -- script to open the door, 'die' and despawn

-- -----------------------------------------
-- Dire Maul East, The Shrine of Eldretharr
-- -----------------------------------------

INSERT INTO `creature` (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Left side, near the entrance of the room
(@NEW_GUID_START+285, 13021, 429, 0, 0, 330.651, -375.383, -71.0516, 3.9968, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Left side, a bit down (removed in 4.0.3a)
(@NEW_GUID_START+286, 13021, 429, 0, 0, 360.391, -436.849, -87.297, 3.31613, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Left side, almost down (removed in 4.0.3a)
(@NEW_GUID_START+287, 13021, 429, 0, 0, 360.356, -490.424, -101.987, 3.15905, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Right side, near the entrance of the room (still exists, but at a slightly different position)
(@NEW_GUID_START+288, 13021, 429, 0, 0, 216.978, -356.29, -67.4426, 5.11381, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Right side, almost down
(@NEW_GUID_START+289, 13021, 429, 0, 0, 187.1, -543.165, -111.892, 0.680678, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0), -- Warpwood Crusher
-- Patrolling along the outside.
(@NEW_GUID_START+290, 13021, 429, 0, 0, 197.831, -483.199, -100.907, 0, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 2), -- Warpwood Crusher

-- There are three groups of trash before Alzzin the Wildshaper. Each group has five fixed
-- spawn points: exactly one of those is chose at random, and this will either be a Fel Lash
-- or a Death Lash spawn, again at random (so we'll pool these).
-- The remaining four points are potentially Whip Lasher spawns, although I've never seen
-- a group with less than two of them.
-- TODO: while it is possible to choose one of five points at random for a spawn,
-- I believe it is not currently possible to combine this with the other
-- requirements. To make things close to what they should be, we'll do the following:
-- * One of the five points is chosen fixed here, this will be the Fel Lash/Death Lash spawn.
-- * The other four points will each get a 75% chance to spawn a Whip Lasher.
-- That way, there will always be a Fel Lash/Death Lash, as expected. In addition,
-- we'll have a varying number of Whip Lasher spawns (as expected), ranging from none to
-- all four, but the chance to get at least two is very high (roughly 95%).

-- Death Lash/Fel Lash + 2x-4x Whip Lasher Group 1
(@NEW_GUID_START+291, 13285, 429, 0, 0, 290.355, -470.042, -119.878, 3.31613, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+292, 13197, 429, 0, 0, 290.355, -470.042, -119.878, 3.31613, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Fel Lash
(@NEW_GUID_START+293, 13022, 429, 0, 0, 292.697, -476.578, -119.036, 5.58505, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+294, 13022, 429, 0, 0, 287.544, -479.895, -119.036, 5.74213, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+295, 13022, 429, 0, 0, 299.18, -474.913, -119.036, 2.80998, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+296, 13022, 429, 0, 0, 292.824, -482.119, -119.036, 3.89208, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher

-- Death Lash/Fel Lash + 2x-4x Whip Lasher Group 2
(@NEW_GUID_START+297, 13285, 429, 0, 0, 285.642, -501.949, -119.036, 2.14675, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+298, 13197, 429, 0, 0, 285.642, -501.949, -119.036, 2.14675, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Fel Lash
(@NEW_GUID_START+299, 13022, 429, 0, 0, 281.187, -499.258, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+300, 13022, 429, 0, 0, 289.159, -504.723, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+301, 13022, 429, 0, 0, 282.743, -504.313, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+302, 13022, 429, 0, 0, 288.645, -499.382, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher

-- Death Lash/Fel Lash + 2x-4x Whip Lasher Group 3
(@NEW_GUID_START+303, 13285, 429, 0, 0, 246.913, -485.775, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Death Lash
(@NEW_GUID_START+304, 13197, 429, 0, 0, 246.913, -485.775, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Fel Lash
(@NEW_GUID_START+305, 13022, 429, 0, 0, 245.336, -492.562, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+306, 13022, 429, 0, 0, 243.656, -487.932, -119.036, 5.20108, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+307, 13022, 429, 0, 0, 239.995, -491.467, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher
(@NEW_GUID_START+308, 13022, 429, 0, 0, 241.339, -484.667, -119.036, 0, @TRASH_RESPAWN_TIME, 2, 0, 0, 0, 0, 1), -- Whip Lasher

(@NEW_GUID_START+309, 11492, 429, 0, 0, 274.844, -427.251, -119.962, 0.970313, @BOSS_RESPAWN_TIME, 5, 0, 0, 0, 0, 2), -- Alzzin the Wildshaper
(@NEW_GUID_START+310, 16045, 429, 0, 0, 262.09, -445.745, -119.878, 4.32842, @TRASH_RESPAWN_TIME, 0, 0, 0, 0, 0, 0); -- Isalien Trigger

-- Waypoints for the Warpwood Crusher above.
DELETE FROM `creature_movement` WHERE id IN (@NEW_GUID_START+290);
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z) VALUES
(@NEW_GUID_START+290, 1, 197.831, -483.199, -100.907),
(@NEW_GUID_START+290, 2, 195.416, -475.95, -98.4796),
(@NEW_GUID_START+290, 3, 188.613, -471.149, -96.9085),
(@NEW_GUID_START+290, 4, 187.75, -441.592, -85.4095),
(@NEW_GUID_START+290, 5, 187.655, -413.254, -76.9883),
(@NEW_GUID_START+290, 6, 216.877, -374.188, -67.5259),
(@NEW_GUID_START+290, 7, 246.511, -369.283, -67.5259),
(@NEW_GUID_START+290, 8, 265.761, -366.946, -67.5259),
(@NEW_GUID_START+290, 9, 289.513, -371.769, -67.5259),
(@NEW_GUID_START+290, 10, 308.973, -382.685, -68.317),
(@NEW_GUID_START+290, 11, 333.62, -408.709, -75.8555),
(@NEW_GUID_START+290, 12, 343.918, -441.652, -87.9254),
(@NEW_GUID_START+290, 13, 341.548, -478.073, -98.4918),
(@NEW_GUID_START+290, 14, 334.483, -509.94, -107.262),
(@NEW_GUID_START+290, 15, 341.548, -478.073, -98.4918),
(@NEW_GUID_START+290, 16, 343.918, -441.652, -87.9254),
(@NEW_GUID_START+290, 17, 333.62, -408.709, -75.8555),
(@NEW_GUID_START+290, 18, 308.973, -382.685, -68.317),
(@NEW_GUID_START+290, 19, 289.513, -371.769, -67.5259),
(@NEW_GUID_START+290, 20, 265.761, -366.946, -67.5259),
(@NEW_GUID_START+290, 21, 246.511, -369.283, -67.5259),
(@NEW_GUID_START+290, 22, 216.877, -374.188, -67.5259),
(@NEW_GUID_START+290, 23, 187.655, -413.254, -76.9883),
(@NEW_GUID_START+290, 24, 187.75, -441.592, -85.4095),
(@NEW_GUID_START+290, 25, 188.613, -471.149, -96.9085),
(@NEW_GUID_START+290, 26, 195.416, -475.95, -98.4796),
(@NEW_GUID_START+290, 27, 197.831, -483.199, -100.907),
(@NEW_GUID_START+290, 28, 191.921, -491.946, -103.571),
(@NEW_GUID_START+290, 29, 183.187, -511.694, -107.156),
(@NEW_GUID_START+290, 30, 202.874, -540.046, -111.976),
(@NEW_GUID_START+290, 31, 241.553, -557.717, -111.976),
(@NEW_GUID_START+290, 32, 266.838, -555.212, -111.976),
(@NEW_GUID_START+290, 33, 241.553, -557.717, -111.976),
(@NEW_GUID_START+290, 34, 202.874, -540.046, -111.976),
(@NEW_GUID_START+290, 35, 183.187, -511.694, -107.156),
(@NEW_GUID_START+290, 36, 191.921, -491.946, -103.571);

-- Create pools for the Death Lash/Fel Lash spawns above.
DELETE FROM `pool_template` WHERE entry BETWEEN @NEW_POOLID_START+10 AND @NEW_POOLID_START+12;
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@NEW_POOLID_START+10, 1, 'Death Lash or Fel Lash, The Shrine of Eldretharr, Group 1'),
(@NEW_POOLID_START+11, 1, 'Death Lash or Fel Lash, The Shrine of Eldretharr, Group 2'),
(@NEW_POOLID_START+12, 1, 'Death Lash or Fel Lash, The Shrine of Eldretharr, Group 3');

DELETE FROM `pool_creature` WHERE pool_entry BETWEEN @NEW_POOLID_START+10 AND @NEW_POOLID_START+12;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(@NEW_GUID_START+291, @NEW_POOLID_START+10, 0, 'Death Lash'),
(@NEW_GUID_START+292, @NEW_POOLID_START+10, 0, 'Fel Lash'),
(@NEW_GUID_START+297, @NEW_POOLID_START+11, 0, 'Death Lash'),
(@NEW_GUID_START+298, @NEW_POOLID_START+11, 0, 'Fel Lash'),
(@NEW_GUID_START+303, @NEW_POOLID_START+12, 0, 'Death Lash'),
(@NEW_GUID_START+304, @NEW_POOLID_START+12, 0, 'Fel Lash');

-- Create pools for the Whip Lasher spawns above.
DELETE FROM `pool_template` WHERE entry BETWEEN @NEW_POOLID_START+13 AND @NEW_POOLID_START+15;
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@NEW_POOLID_START+13, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 1'),
(@NEW_POOLID_START+14, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 2'),
(@NEW_POOLID_START+15, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 3');

DELETE FROM `pool_creature` WHERE pool_entry BETWEEN @NEW_POOLID_START+13 AND @NEW_POOLID_START+15;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(@NEW_GUID_START+293, @NEW_POOLID_START+13, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@NEW_GUID_START+294, @NEW_POOLID_START+13, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@NEW_GUID_START+295, @NEW_POOLID_START+13, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@NEW_GUID_START+296, @NEW_POOLID_START+13, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@NEW_GUID_START+299, @NEW_POOLID_START+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@NEW_GUID_START+300, @NEW_POOLID_START+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@NEW_GUID_START+301, @NEW_POOLID_START+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@NEW_GUID_START+302, @NEW_POOLID_START+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@NEW_GUID_START+305, @NEW_POOLID_START+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@NEW_GUID_START+306, @NEW_POOLID_START+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@NEW_GUID_START+307, @NEW_POOLID_START+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@NEW_GUID_START+308, @NEW_POOLID_START+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3');

-- Waypoints for Alzzin the Wildshaper
-- TODO: we make him stay for 30s at the Crystal Vine, but in reality I've observed him staying
-- there for a variable amount of time. I don't think that's possible with the current core.
DELETE FROM `creature_movement_template` WHERE entry = 11492;
INSERT INTO `creature_movement_template` (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(11492, 1, 274.844, -427.251, -119.962, 30000, 1149201), -- At Crystal Vine
(11492, 2, 262.298, -445.57, -119.962, 0, 1149202);

-- Scripts to make Alzzin the Wildshaper switch to random movement when he
-- arrives around the center of the shrine. After some time, he'll continue with
-- waypoint movement and move back to the Crystal Vine.
-- TODO: this doesn't really work, because waypoint movement is RESTARTED when switching back.
-- But fortunately for us, there are only two points and the first happens to be the one
-- where we want to go, so in game it'll have the effect we want.
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1149201, 1149202);
INSERT INTO `dbscripts_on_creature_movement` (id, delay, command, datalong, datalong2, data_flags, comments) VALUES
(1149201, 0, 15, 21157, 0, 0, 'Cast Dark Channeling'),
(1149202, 0, 20, 1, 5, 8, 'Switch to random movement around the current position'),
(1149202, 75, 20, 2, 0, 0, 'Switch back to waypoint movement');

-- ------------------
-- Finishing touches
-- ------------------

DELETE FROM `creature_addon` WHERE `guid` IN (52147, 53784, 53785, 53786, 53787, 53792, 53852, 53853, 53854);

-- Make sure the core does not complain about creatures with health/mana regeneration having a low current health/mana value.
UPDATE `creature` SET curhealth = (SELECT minlevelhealth FROM `creature_template` WHERE entry = id) WHERE map = 429 AND curhealth = 0;
UPDATE `creature` SET curmana = (SELECT minlevelmana FROM `creature_template` WHERE entry = id) WHERE map = 429 AND curmana = 0;

-- The waypoints for Pusillin changed, so update the gossip related conditions too
-- with the correct waypoints for the stop locations.
UPDATE `conditions` SET value1 = 1 WHERE condition_entry = 389;
UPDATE `conditions` SET value1 = 9 WHERE condition_entry = 720;
UPDATE `conditions` SET value1 = 19 WHERE condition_entry = 390;
UPDATE `conditions` SET value1 = 32 WHERE condition_entry = 722;
UPDATE `conditions` SET value1 = 38 WHERE condition_entry = 723;