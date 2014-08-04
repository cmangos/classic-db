-- Lowered to 10 min the spawntime of gameobject 176785 (Ammo Crate) used in quest Ammo for Rumbleshot
-- Thanks Zingzah for pointing, this closes #518 
UPDATE `gameobject` SET `spawntimesecs` = 10 * 60 WHERE `id` = 176785;
