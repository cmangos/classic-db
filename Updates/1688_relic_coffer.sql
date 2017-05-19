-- Fixed restock time of GO 160836 (Relic Coffer) that had default 30 sec restock time
-- This closes #53
UPDATE gameobject_template SET data2 = 3 * 60 * 60 WHERE entry = 160836;
