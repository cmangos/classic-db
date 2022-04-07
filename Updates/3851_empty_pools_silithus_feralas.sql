-- Remove empty minerals pools in Silithus and Feralas
DELETE FROM pool_template WHERE entry IN (5915, 5918, 5921, 5925);
