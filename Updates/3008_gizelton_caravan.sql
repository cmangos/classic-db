-- Caravan Event - Desolace

-- distances between team corrected
-- Gizelton Caravan Kodo
UPDATE creature SET position_x = -1296.776733, position_y = 1231.951660, position_z = 109.608498, orientation = 6.27641 WHERE guid = 27290;
UPDATE creature SET position_x = -1311.058350, position_y = 1233.628662, position_z = 109.805885, orientation = 6.27641 WHERE guid = 27289;
-- Rigger Gizelton
UPDATE creature SET position_x = -1305.422607, position_y = 1233.683960, position_z = 109.750687, orientation = 6.27641 WHERE guid = 28728;

-- Script update to avoid errors
/*
 DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1162501, command 25 has buddy 11626 not found in range 100 of searcher Creature (Entry: 11625 Guid: 28714) (data-flags 7), skipping.
 DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1162501, command 29 has buddy 11626 not found in range 100 of searcher Creature (Entry: 11625 Guid: 28714) (data-flags 7), skipping.
 DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1162501, command 22 has buddy 11626 not found in range 100 of searcher Creature (Entry: 11625 Guid: 28714) (data-flags 7), skipping.
*/
UPDATE dbscripts_on_creature_movement SET search_radius = 28728, data_flags = 7 | 0x10 WHERE id = 1162501 AND buddy_entry = 11626;

-- Raging Thunder Lizard
-- shouldnt stay on middle of the road
UPDATE creature SET position_x = -1284.287, position_y = 1257.581, position_z = 99.968132 WHERE guid = 28858;
