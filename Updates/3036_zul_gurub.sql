-- TODO: souflayer patrols below temple
-- TODO: Poisonous cloud should last for ~10 seconds and cast poison every ~1 second
-- TODO: all trolls in the Hakkar temple packs should salute, only blood priest does now
-- TODO: verify troll pack compositions
-- TODO: verify other trash patrols in ZG

-- reduce Hakkar hit box
UPDATE creature_model_info SET combat_reach=2 WHERE modelid=15295;


-- make poison cloud spawned by son of hakkar not targettable
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=14989;


-- make berserkers next to hakkar temple stairs stationary and face the correct way
UPDATE creature SET MovementType=0, orientation=1.5707 WHERE guid=51395 OR guid=51396;


-- Hakkar temple southern troll pack
UPDATE creature SET MovementType=2 WHERE guid=51388;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(51388, 1, -11835.700195, -1610.337646, 40.745636, 0, 0, 0),
(51388, 2, -11843.541992, -1594.495361, 40.751762, 5.385863, 30000, 0),
(51388, 3, -11835.700195, -1610.337646, 40.745636, 0, 0, 0),
(51388, 4, -11833.859375, -1669.224609, 37.000687, 0, 0, 0),
(51388, 5, -11833.910156, -1687.797241, 40.745869, 0, 0, 0),
(51388, 6, -11839.220703, -1702.403320, 40.748905, 0, 0, 0),
(51388, 7, -11827.687500, -1693.946289, 40.747974, 0, 0, 0),
(51388, 8, -11795.183594, -1693.995483, 52.903801, 0, 0, 0),
(51388, 9, -11791.017578, -1684.056519, 52.883823, 0, 0, 0),
(51388, 10, -11805.194336, -1673.667969, 52.919411, 0.7853981, 33000, 1134001),
(51388, 11, -11791.017578, -1684.056519, 52.883823, 0, 0, 0),
(51388, 12, -11795.183594, -1693.995483, 52.903801, 0, 0, 0),
(51388, 13, -11827.687500, -1693.946289, 40.747974, 0, 0, 0),
(51388, 14, -11839.220703, -1702.403320, 40.748905, 0, 0, 0),
(51388, 15, -11833.910156, -1687.797241, 40.745869, 0, 0, 0),
(51388, 16, -11833.859375, -1669.224609, 37.000687, 0, 0, 0);

INSERT INTO dbscripts_on_creature_movement (id, priority, delay, command, datalong, comments) VALUES
(1134001, 1, 0, 28, 8, 'Hakkari Blood Priest - kneel'),
(1134001, 1, 30000, 28, 0, 'Hakkari Blood Priest - stand up'),
(1134001, 2, 30000, 1, 66, 'Hakkari Blood Priest - salute Hakkar');

INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(51389, 51388, 1539),
(51390, 51388, 1539),
(51391, 51388, 1539),
(51392, 51388, 1539),
(51393, 51388, 1539),
(51394, 51388, 1539);


-- Hakkar temple southern son of hakkar
UPDATE creature SET MovementType=2, spawntimesecsmin=20, spawntimesecsmax=20 WHERE guid=49034;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z) VALUES
(49034, 1, -11835.872070, -1593.121582, 40.749565),
(49034, 2, -11833.505859, -1698.850852, 40.749474);


-- Hakkar temple southern souflayer pack
UPDATE creature SET MovementType=2 WHERE guid=51424;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, script_id) VALUES
(11359, 1, 1, -11833.910156, -1687.797241, 40.745869, 0),
(11359, 1, 2, -11833.859375, -1669.224609, 37.000687, 0),
(11359, 1, 3, -11835.700195, -1610.337646, 40.745636, 0),
(11359, 1, 4, -11843.541992, -1594.495361, 40.751762, 1135901),

(11359, 2, 1, -11835.700195, -1610.337646, 40.745636, 0),
(11359, 2, 2, -11833.859375, -1669.224609, 37.000687, 0),
(11359, 2, 3, -11833.910156, -1687.797241, 40.745869, 0),
(11359, 2, 4, -11839.220703, -1702.403320, 40.748905, 1135902);

INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id) VALUES
(51424, 1, -11839.320703, -1702.403320, 40.748905, 5000, 1135902);

INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, data_flags, comments) VALUES
(1135901, 1000, 20, 1, 5, 8, 'Soulflayer - random movement after path 1'),
(1135901, 45000, 20, 2, 2, 0, 'Soulflayer - continue on path 2'),

(1135902, 1000, 20, 1, 5, 8, 'Soulflayer - random movement after path 2'),
(1135902, 40000, 20, 2, 1, 0, 'Soulflayer - continue on path 1');

INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(51425, 51424, 1539),
(51426, 51424, 1539);


-- Hakkar temple northern troll pack
UPDATE creature SET MovementType=2 WHERE guid=51403;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(51403, 1, -11738.025391, -1659.748291, 36.999336, 0, 0, 0),
(51403, 2, -11742.348633, -1606.971558, 40.747501, 0, 0, 0),
(51403, 3, -11737.596680, -1593.075928, 40.752407, 4.262742, 30000, 0),
(51403, 4, -11744.348633, -1606.971558, 40.747501, 0, 0, 0),
(51403, 5, -11740.620117, -1627.335815, 37.001595, 0, 0, 0),
(51403, 6, -11738.025391, -1659.748291, 36.999336, 0, 0, 0),
(51403, 7, -11739.377930, -1681.274414, 40.739235, 100, 1000, 0),
(51403, 8, -11740.332031, -1692.514404, 40.748524, 100, 1000, 0),
(51403, 9, -11770.084961, -1691.659302, 52.917057, 0, 0, 0),
(51403, 10, -11780.092773, -1685.940063, 52.887684, 0, 0, 0),
(51403, 11, -11769.211914, -1670.690430, 52.920387, 2.3001194, 60000, 1134002),
(51403, 12, -11780.092773, -1685.940063, 52.887684, 0, 0, 0),
(51403, 13, -11770.084961, -1691.659302, 52.917057, 0, 0, 0),
(51403, 14, -11740.332031, -1692.514404, 40.748524, 0, 0, 0),
(51403, 15, -11739.377930, -1681.274414, 40.739235, 0, 0, 0);

INSERT INTO dbscripts_on_creature_movement (id, priority, delay, command, datalong, comments) VALUES
(1134002, 1, 0, 28, 8, 'Hakkari Blood Priest - kneel'),
(1134002, 1, 57000, 28, 0, 'Hakkari Blood Priest - stand up'),
(1134002, 2, 57000, 1, 66, 'Hakkari Blood Priest - salute Hakkar');

INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(51414, 51403, 1539),
(51415, 51403, 1539),
(51416, 51403, 1539),
(51417, 51403, 1539),
(51418, 51403, 1539);


-- Hakkar temple northern son of hakkar
UPDATE creature SET MovementType=2, spawntimesecsmin=20, spawntimesecsmax=20 WHERE guid=49033;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z) VALUES
(49033, 1, -11741.298828, -1587.655029, 40.752773),
(49033, 2, -11738.204102, -1695.299194, 40.751648);


-- Hakkar temple northern soulflayer pack
UPDATE creature SET MovementType=2 WHERE guid=51427;

INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, script_id) VALUES
(11359, 3, 1, -11739.369141, -1683.157837, 40.745827, 0),
(11359, 3, 2, -11740.111328, -1622.715454, 37.001690, 0),
(11359, 3, 3, -11742.010742, -1606.839600, 40.745846, 0),
(11359, 3, 4, -11737.790039, -1593.216675, 40.750420, 1135903),

(11359, 4, 1, -11742.034180, -1606.073975, 40.748543, 0),
(11359, 4, 2, -11739.069336, -1668.112915, 36.996002, 0),
(11359, 4, 3, -11739.987305, -1681.579712, 40.750183, 0),
(11359, 4, 4, -11732.525391, -1693.093018, 40.746841, 1135904);

INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id) VALUES
(51427, 1, -11732.525391, -1693.093018, 40.746841, 5000, 1135904);

INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, data_flags, comments) VALUES
(1135903, 1000, 20, 1, 5, 8, 'Soulflayer - random movement after path 3'),
(1135903, 30000, 20, 2, 4, 0, 'Soulflayer - continue on path 4'),

(1135904, 1000, 20, 1, 5, 8, 'Soulflayer - random movement after path 4'),
(1135904, 35000, 20, 2, 3, 0, 'Soulflayer - continue on path 3');

INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(51428, 51427, 1539),
(51429, 51427, 1539);
