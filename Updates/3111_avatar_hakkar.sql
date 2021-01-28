-- GameObject 148998 (Evil Circle) is spawned by script
UPDATE gameobject SET spawntimesecsmin=-30*60, spawntimesecsmax=-30*60 WHERE id=148998;

-- Fix animation progress of gates GameObject 149432 and 149433 used in Avatar of Hakkar encounter so they don't close instantly
UPDATE gameobject SET animprogress=100 WHERE id IN (149432, 149433);
