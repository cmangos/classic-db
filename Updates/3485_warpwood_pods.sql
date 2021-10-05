-- Remove duplicate GO 179528 (Warpwood Pod) in Dire Maul
DELETE FROM gameobject WHERE guid BETWEEN 17793 AND 17807;
DELETE FROM pool_gameobject WHERE guid BETWEEN 17793 AND 17807;
