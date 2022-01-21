
UPDATE creature SET position_x=-6241.2, position_y=319.528, position_z=382.653, currentwaypoint=0 WHERE guid=334; -- setting to first waypoint
UPDATE creature SET position_z=181.3 WHERE guid=34503; -- falling below map

-- https://github.com/cmangos/tbc-db/commit/26e25fdaa0764593d767d6b06d15aaa83acca3ed#diff-65afe5b17416c1a6fb640eaf7c8444583addeeb8cc23db2176a6dda2fa56859bR12
UPDATE creature_movement SET orientation=100 WHERE id=411 AND point=7;

DELETE FROM creature_movement WHERE id=26197;
UPDATE creature SET MovementType=1 WHERE guid=26197;
UPDATE creature SET currentwaypoint=0, spawndist=0 WHERE map > 1 AND currentwaypoint > 0;

UPDATE creature SET currentwaypoint=0 WHERE currentwaypoint=1 AND movementtype=2;
UPDATE creature SET currentwaypoint=0 WHERE currentwaypoint != 0 AND movementtype != 2;
