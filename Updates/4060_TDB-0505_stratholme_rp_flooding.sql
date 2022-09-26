-- DB-SCRIPTS: Process table dbscripts_on_creature_movement id 5405201, command 26 source can not attack (Attacker: Creature (Entry: 10390 Counter: 9010436) DBGuid: 9010436, Target: Creature (Entry: 10418 Counter: 3290355) DBGuid: 3290355)- Wanted: The Scroll of Skyriss" removed.
-- DB-SCRIPTS: Process table dbscripts_on_creature_movement id 5407601, command 26 source can not attack (Attacker: Creature (Entry: 10391 Counter: 9010437) DBGuid: 9010437, Target: Creature (Entry: 10418 Counter: 3290370) DBGuid: 3290370) Random Daily - Manalicious" removed.
-- DB-SCRIPTS: Process table dbscripts_on_creature_movement id 5407901, command 26 source can not attack (Attacker: Creature (Entry: 10390 Counter: 9010438) DBGuid: 9010438, Target: Creature (Entry: 10419 Counter: 3290372) DBGuid: 3290372) Random Daily - Super Hot Stew" started.
-- DB-SCRIPTS: Process table dbscripts_on_creature_movement id 5405601, command 26 source can not attack (Attacker: Creature (Entry: 10391 Counter: 9010439) DBGuid: 9010439, Target: Creature (Entry: 10418 Counter: 3290359) DBGuid: 3290359) Random Daily - The One That Got Away" started.
-- Can not attack as 2 scarlet spawns should have special faction allowing this event
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 1041801;
INSERT INTO `creature_spawn_data_template` (entry, faction) VALUES
(1041801, 89);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (5405201,5405601,5407901,5407601); -- dont use depricated guid as scriptid

