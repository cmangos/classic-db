-- Despawns GO 148937 (Atal'ai Light BIG (DND)) and GO 148883 (Atal'ai Light SMALL (DND))
-- in Sunken Temple : they are spawned by script
-- Thanks TheTrueAnimal for reporting. This closes #635
-- Value from UDB
UPDATE `gameobject` SET `spawntimesecs` = -43200 WHERE `id` IN (148883, 148937);
