-- Fixed spawn time of item 126260 (Ancient Chest) near Uldaman as it should not despawn when looted
UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `guid` = 126260;
