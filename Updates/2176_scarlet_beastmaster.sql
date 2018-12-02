-- Fix NPC 40070 having its own waypoints instead of following the NPC leading the patrol
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=40070;
DELETE FROM creature_movement WHERE id=40070;

DELETE FROM creature_linking WHERE guid=40070;
INSERT INTO creature_linking VALUES
(40070, 40068, 515);
