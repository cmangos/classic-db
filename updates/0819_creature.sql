-- Fixed spawn time of NPC 11489 (Tendris Warpwood) in Dire Maul
-- Thanks TheTrueAnimal for pointing. This closes #654 
UPDATE `creature` SET `spawntimesecs` = 3 * 3600 WHERE `id` = 11489;
