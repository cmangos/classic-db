-- Fix spawn time of chests in dungeons, some were respawning in a matter of minutes
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE map NOT IN (0, 1) AND id=153469;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE map NOT IN (0, 1) AND id=75298;
