-- more generics created
-- dbscripts_on_relay
-- creature_spawn_data_template
DELETE FROM dbscripts_on_relay WHERE id = 30597;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 30607 AND 30610;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 30612 AND 30620;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30607,1,20,2,7 ,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 7'),
(30608,1,20,2,8 ,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 8'),
(30609,1,20,2,9 ,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 9'),
(30610,1,20,2,10,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 10'),
(30597,1,20,2,11,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 11'), -- 30611 used by smth else
(30612,1,20,2,12,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 12'),
(30613,1,20,2,13,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 13'),
(30614,1,20,2,14,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 14'),
(30615,1,20,2,15,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 15'),
(30616,1,20,2,16,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 16'),
(30617,1,20,2,17,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 17'),
(30618,1,20,2,18,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 18'),
(30619,1,20,2,19,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 19'),
(30620,1,20,2,20,0,0,0,4,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints - Path 20');

DELETE FROM creature_spawn_data_template WHERE `entry` BETWEEN 107 AND 120;
INSERT INTO creature_spawn_data_template (entry, SpawnFlags,RelayId,Name) VALUES
(107,1,30607,'GENERIC - SPAWN FLAG RUN, RelayId 30607 (Path7)'),
(108,1,30608,'GENERIC - SPAWN FLAG RUN, RelayId 30608 (Path8)'),
(109,1,30609,'GENERIC - SPAWN FLAG RUN, RelayId 30609 (Path9)'),
(110,1,30610,'GENERIC - SPAWN FLAG RUN, RelayId 30610 (Path10)'),
(111,1,30597,'GENERIC - SPAWN FLAG RUN, RelayId 30597 (Path11)'),
(112,1,30612,'GENERIC - SPAWN FLAG RUN, RelayId 30612 (Path12)'),
(113,1,30613,'GENERIC - SPAWN FLAG RUN, RelayId 30613 (Path13)'),
(114,1,30614,'GENERIC - SPAWN FLAG RUN, RelayId 30614 (Path14)'),
(115,1,30615,'GENERIC - SPAWN FLAG RUN, RelayId 30615 (Path15)'),
(116,1,30616,'GENERIC - SPAWN FLAG RUN, RelayId 30616 (Path16)'),
(117,1,30617,'GENERIC - SPAWN FLAG RUN, RelayId 30617 (Path17)'),
(118,1,30618,'GENERIC - SPAWN FLAG RUN, RelayId 30618 (Path18)'),
(119,1,30619,'GENERIC - SPAWN FLAG RUN, RelayId 30619 (Path19)'),
(120,1,30620,'GENERIC - SPAWN FLAG RUN, RelayId 30620 (Path20)');

-- Update comments for existing ones
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 1' WHERE id = 20663; -- exists
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 2' WHERE id = 30602; -- exists
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 3' WHERE id = 30603;
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 4' WHERE id = 30604;
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 5' WHERE id = 30605;
UPDATE dbscripts_on_relay SET comments = 'GENERIC - SET waypoints - Path 6' WHERE id = 30606;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 20663 (Path1)'  WHERE Entry = 88;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 30602 (Path2)'  WHERE Entry = 102;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 30603 (Path3)'  WHERE Entry = 103;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 30604 (Path4)'  WHERE Entry = 104;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 30605 (Path5)'  WHERE Entry = 105;
UPDATE creature_spawn_data_template SET Name = 'GENERIC - SPAWN FLAG RUN, RelayId 30606 (Path6)'  WHERE Entry = 106;

