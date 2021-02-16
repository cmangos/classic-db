-- Lazy Peon 10556
-- controled by sd2 script - no need double waypoint setting
-- fixed: `ERROR:Creature (Entry: 10556 Guid: 6523) attempt to MoveWaypoint() but is already using waypoint`
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 10556;
