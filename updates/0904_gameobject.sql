-- Fixed Z position of GO 30856 (Atal'ai Artifact) in Swamp of Sorrows
-- Thanks TheTrueAnimal for pointing. This closes #697
UPDATE `gameobject` SET `position_z` = 18.79 WHERE `guid` = 30561
