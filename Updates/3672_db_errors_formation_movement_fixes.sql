-- Add missing spawn distance for Deviate Crocolisk
UPDATE creature SET spawndist=5 WHERE guid=26197;

-- Remove creature_linking that were replaced by formation
DELETE FROM creature_linking WHERE guid IN (88398, 88399, 88442, 88441, 88459, 88797, 88796, 88809, 88810, 89126, 89127, 87676, 87673, 87674, 139728, 139729, 139731, 139732, 139799, 139800, 87677, 87672, 87675, 87940, 87942, 87944);

-- Remove creature paths for creatures that were replaced by formation
DELETE FROM creature_movement WHERE id IN (99030, 88440, 88465, 88466);
