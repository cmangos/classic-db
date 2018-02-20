-- Fixed respawn time of GO 179784 (Suppression Device) in Blackwing Lair
-- It is now handled by script
UPDATE gameobject SET spawntimesecsmin=7*24*3600, spawntimesecsmax=7*24*3600 WHERE id=179784;
