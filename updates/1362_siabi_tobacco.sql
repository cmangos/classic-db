-- Fixed respawn time of GO 176248 (Premium Siabi Tobacco) in Stratholme
-- it was respawn within a few minutes
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 WHERE id = 176248;
