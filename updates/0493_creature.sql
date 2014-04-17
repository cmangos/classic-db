-- Removed duplicate entries of creature 15324 (Qiraji Gladiator) in Ruins of Ahn'Qiraj
-- Thanks Metal for pointing. This close #145 
DELETE FROM `creature` WHERE `id` = 15324 AND `guid` BETWEEN 140235 AND 140242;
