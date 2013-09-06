-- Updated respawn time of quest gameobject 13949 (Pitted Iron Chest) as it should not despawned
UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `id` = 13949;
