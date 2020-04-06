-- Set proper respawn time for Shatterspear trolls
UPDATE creature SET spawntimesecsmin=300, spawntimesecsmax=300 WHERE id IN (10919,11196,11815,11816);
