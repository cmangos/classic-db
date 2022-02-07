-- Fix pools for Gloom Weed after Tirisfal Glades update
DELETE FROM pool_template WHERE entry IN (8493, 8498, 8502, 8506);
DELETE FROM pool_gameobject WHERE pool_entry IN (8493, 8498, 8502, 8506);

-- Fix pool for Musty Tome in Darrowshire after moving to spawn group
DELETE FROM pool_template WHERE entry=16476;
DELETE FROM pool_gameobject_template WHERE pool_entry=16476;
