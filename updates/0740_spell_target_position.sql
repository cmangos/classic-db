-- #######
-- AQ40 related updates
-- #######

-- Viscidus target (credit to YTDB)
DELETE FROM spell_script_target WHERE entry IN (25896);
INSERT INTO spell_script_target VALUES
(25896, 1, 15299, 0);
-- Fankriss spell targets (credit to YTDB)
DELETE FROM spell_target_position WHERE id IN (518,25831,25832);
INSERT INTO spell_target_position (id,target_map,target_position_x,target_position_y,target_position_z,target_orientation) VALUES
(518, 531, -8028.5, 1050.9, -54, 0),
(25831, 531, -8158.03, 1139.3, -83.95, 0),
(25832, 531, -8029.25, 1237.78, -85.2285, 0);
-- other missing script target (credit to YTDB)
DELETE FROM spell_script_target WHERE entry=5628;
INSERT INTO spell_script_target VALUES
(5628, 1, 2011, 0),
(5628, 1, 2010, 0);
-- despawn globes on evade
DELETE FROM dbscripts_on_spell WHERE id IN (26608);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(26608,0,18,0,0,'Glob of Viscidus - Despawn');
-- Viscidus globes (guesswork - needs proper confirmation)
DELETE FROM spell_target_position WHERE id BETWEEN 25865 AND 25884;
INSERT INTO spell_target_position (id,target_map,target_position_x,target_position_y,target_position_z,target_orientation) VALUES
(25865, 531, -8023.594, 964.772, -41.229, 5.376),
(25878, 531, -8032.750, 948.274, -41.919, 5.595),
(25872, 531, -8037.889, 929.679, -43.416, 6.024),
(25866, 531, -8042.127, 911.263, -42.841, 6.200),
(25879, 531, -8037.076, 887.268, -43.581, 0.675),
(25873, 531, -8015.408, 867.734, -45.607, 1.103),
(25867, 531, -7999.364, 860.525, -47.206, 1.417),
(25880, 531, -7992.213, 857.500, -47.762, 1.664),
(25874, 531, -7982.804, 857.172, -48.212, 1.500),
(25868, 531, -7971.303, 862.581, -48.099, 2.148),
(25881, 531, -7960.709, 872.483, -48.759, 2.360),
(25875, 531, -7952.122, 883.183, -48.194, 2.430),
(25869, 531, -7943.205, 903.804, -48.473, 3.078),
(25882, 531, -7942.983, 918.616, -46.401, 3.306),
(25876, 531, -7947.219, 939.122, -44.014, 3.718),
(25870, 531, -7954.376, 958.562, -41.609, 3.962),
(25883, 531, -7964.316, 967.879, -42.112, 4.087),
(25877, 531, -7975.772, 974.820, -41.584, 4.417),
(25871, 531, -7997.188, 979.192, -41.653, 4.896),
(25884, 531, -8015.242, 976.553, -41.647, 4.947);
-- linking
DELETE FROM creature_linking_template WHERE entry IN (15922);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(15922, 531, 15299, 4112, 0);
