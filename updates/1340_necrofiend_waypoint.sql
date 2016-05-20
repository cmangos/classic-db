-- Updated default movement of NPC 11551 (Necrofiend) in Scholomance
-- Moved to creature_movement_template the path followed by the two necrofiends
-- located in the entrance room of Scholomance (before the Viewing Room)
-- The other patrolling necrofiends in the instance still use their path from creature_movement
-- This change is required because one of the necrofiend is spawned dynamically
DELETE FROM creature_movement WHERE id = 154674;
DELETE FROM creature_movement_template WHERE entry = 11551;
INSERT INTO `creature_movement_template` VALUES 
(11551, 1, 206.346, 80.7189, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 2, 221.189, 86.5182, 104.715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 3, 207.384, 91.5904, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 4, 199.815, 104.765, 104.715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 5, 192.953, 90.7216, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 6, 178.803, 86.621, 104.716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 7, 192.998, 81.0231, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(11551, 8, 199.444, 69.7478, 104.716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

UPDATE creature_template SET MovementType = 2 WHERE Entry = 11551;
