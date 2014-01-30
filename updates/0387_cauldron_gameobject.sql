-- Removed weird spawn of GO 186451 in Theramore
-- Thanks Neotmiren for pointing and fixing
DELETE FROM `gameobject` WHERE `guid` = 7569 AND `id` = 186451;
