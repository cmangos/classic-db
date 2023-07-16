-- Add wotlkmangos generic scripts.

-- Attacking Summoned Squad
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (20756,20757,20758,30602,30603,30604,30605,30606);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- NEW GENERICS
(30602,1,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 2'),
(30603,1,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 3'),
(30604,1,20,2,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 4'),
(30605,1,20,2,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 5'),
(30606,1,20,2,6,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 6');
DELETE FROM creature_spawn_data_template WHERE `Entry` BETWEEN 102 AND 106;
INSERT INTO creature_spawn_data_template (Entry,SpawnFlags,RelayId,Name) VALUES
(102,1,30602,'- SPAWN FLAG RUN, Relayid 30602'),
(103,1,30603,'- SPAWN FLAG RUN, Relayid 30603'),
(104,1,30604,'- SPAWN FLAG RUN, Relayid 30604'),
(105,1,30605,'- SPAWN FLAG RUN, Relayid 30605'),
(106,1,30606,'- SPAWN FLAG RUN, Relayid 30606');

