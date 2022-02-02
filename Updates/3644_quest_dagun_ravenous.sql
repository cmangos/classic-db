-- Add missing gameobject spawns.
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state, animprogress) VALUES 
(14189, 2872, 1, -2369.22, -4091.97, 8.74555, 6.07375, 0, 0, -0.104528, 0.994522, -120, -120, 1, 100),
(14190, 2872, 1, -2370.43, -4092.22, 8.73379, 5.98648, 0, 0, -0.147809, 0.989016, -120, -120, 1, 100),
(14191, 2872, 1, -2370.81, -4091.5, 8.72544, 0.366518, 0, 0, 0.182235, 0.983255, -120, -120, 1, 100),
(14192, 2872, 1, -2369.27, -4090.82, 8.54136, 0, 0, 0, 0, 1, -120, -120, 1, 100),
(14193, 20917, 1, -2370.01, -4091.62, 9.75972, 0, 0, 0, 0, 1, -120, -120, 1, 100);

-- Update script which summons Dagun the Ravenous.
DELETE FROM dbscripts_on_event WHERE id='452';
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('452 ', '0', '10', '2937', '300000', '0', '0', '0', '0', '0', '0', '-2405.19', '-4172.46', '-7.055216', '0.977384', 'Enchanted Sea Kelp - Summon Creature Dagun the Ravenous'),
('452 ', '0', '9', '14189', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14189)'),
('452 ', '0', '9', '14190', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14190)'),
('452 ', '0', '9', '14191', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14191)'),
('452 ', '0', '9', '14192', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Enchanted Sea Kelp - Respawn GameObject Enchanted Sea Kelp (Guid: 14192)'),
('452 ', '0', '9', '14193', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Enchanted Sea Kelp - Respawn GameObject Blue Aura (Guid: 14193)');

-- Waypoints for Dagun the Ravenous.
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(2937, 0, 1, -2404.259766, -4170.693359, -6.805216, 100.000000, 0, 0),
(2937, 0, 2, -2394.033203, -4151.228516, -0.012980, 100.000000, 0, 0),
(2937, 0, 3, -2389.862305, -4143.289551, 2.730242, 100.000000, 0, 0),
(2937, 0, 4, -2380.409668, -4121.422852, 6.931906, 100.000000, 0, 0),
(2937, 0, 5, -2377.267334, -4104.551758, 6.827217, 100.000000, 0, 0),
(2937, 0, 6, -2373.932861, -4095.415771, 6.722568, 100.000000, 11000, 0),
(2937, 0, 7, -2379.112793, -4091.868408, 6.722568, 100.000000, 120000, 0),
(2937, 0, 8, -2378.163574, -4108.716797, 7.028881, 100.000000, 0, 0),
(2937, 0, 9, -2381.520508, -4120.508789, 6.823725, 100.000000, 0, 0),
(2937, 0, 10, -2387.505615, -4134.225098, 4.900465, 100.000000, 0,  0),
(2937, 0, 11, -2394.902344, -4150.740234, 0.187639, 100.000000, 0, 0),
(2937, 0, 12, -2404.299316, -4171.755371, -7.025187, 100.000000, 1000, 1),
(2937, 0, 13, -2404.299316, -4171.755371, -7.025187, 100.000000, 0, 0);

UPDATE creature_template SET MovementType=2, InhabitType=1 WHERE entry=2937; 
