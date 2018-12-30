-- Increase Boss Respawntime in Blackrock Depths, 12h is not enough 
UPDATE creature SET spawntimesecsmin=604800, spawntimesecsmax=604800 WHERE id IN (8923, 8929, 8983, 9016, 9017, 9018, 9019, 9024, 9025, 9033, 9034, 9035, 9036, 9037, 9038, 9039, 9040, 9041, 9042, 9056, 9156, 9319, 9499, 9543);
