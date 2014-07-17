-- Fixed respawn time of GO 126260 in Uldaman
UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `id` = 126260;
