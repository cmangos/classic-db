-- Removed creature 14351 (Gordok Bushwacker) in Dire Maul North as this NPC is spawned
-- Thanks Metalica for pointing. This closes #562 
DELETE FROM `creature` WHERE `id` = 14351;
