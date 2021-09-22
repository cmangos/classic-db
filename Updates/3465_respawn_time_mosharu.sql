-- Fix respawn time of Mosh'aru Tablet
UPDATE gameobject SET spawntimesecsmin=43200, spawntimesecsmax=43200 WHERE id IN (175949, 175950);
