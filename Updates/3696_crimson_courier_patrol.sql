-- Convert Crimson Courier Patrol to spawn_group with SPAWN_GROUP_FORMATION_TYPE_CIRCLE_THE_LEADER
-- https://youtu.be/cpqr6cPpEJA?t=35

UPDATE creature SET MovementType=0, spawndist=0 WHERE id IN (13118, 12337); -- set to movementtype=2 when dberrors resolved
-- Add CREATURE_EXTRA_FLAG_DYNGUID as these are the only spawns of this entry
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(13118, 12337); -- 0x00100000

DELETE FROM spawn_group WHERE id=7;
INSERT INTO spawn_group (id, name, type, maxcount, worldstate, flags) VALUES
(7, 'Eastern Plaguelands - Crimson Courier (c.id 13118, 12337)', 0, 0, 0, 3);

DELETE FROM spawn_group_spawn WHERE id=7;
INSERT INTO spawn_group_spawn (id, guid, slotid) VALUES
(7, 92287, 0),
(7, 92288, 1),
(7, 92289, 2),
(7, 92290, 3),
(7, 92291, 4);

-- INSERT INTO spawn_group_entry (id, entry, mincount, maxcount, chance) VALUES

DELETE FROM spawn_group_formation WHERE id=7;
INSERT INTO spawn_group_formation (id, formationtype, formationspread, formationoptions, pathid, movementtype, comment) VALUES
(7, 6, 3, 0, 92287, 2, 'Eastern Plaguelands - Crimson Courier (c.id 13118, 12337)'); -- SPAWN_GROUP_FORMATION_TYPE_CIRCLE_THE_LEADER, bit smaller formationspread normally i take 4 here 3 seems more adequate
-- 0x02 SPAWN_GROUP_FORMATION_OPTION_KEEP_COMPACT, makes all of them walk in the same spot and ignore formationspread

DELETE FROM creature_linking WHERE guid BETWEEN 92287 AND 92291;
DELETE FROM creature_linking WHERE master_guid BETWEEN 92287 AND 92291;

DELETE FROM creature_linking_template WHERE entry IN (13118, 12337);
DELETE FROM creature_linking_template WHERE master_entry IN (13118, 12337);

REPLACE INTO waypoint_path (pathid,point,positionx,positiony,positionz,orientation,scriptid,comment) SELECT id as pathid, point, positionx, positiony, positionz, 100 as orientation, scriptid, comment FROM creature_movement where id=92287;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (13118, 12337));
