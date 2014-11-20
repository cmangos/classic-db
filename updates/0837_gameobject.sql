-- Fixed respawntime of GO 177287 (Unfinished Painting)
-- Thanks TheTrueAnimal for reporting. This closes #676 
-- Source: https://www.youtube.com/watch?v=2Dm3YwxxJUo
UPDATE `gameobject` SET `spawntimesecs` = '0' WHERE `id` = '177287';
