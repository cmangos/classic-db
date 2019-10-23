-- they should never despawn
UPDATE gameobject SET spawntimesecsmin=0,spawntimesecsmax=0 WHERE id IN(52,54,57,58);
