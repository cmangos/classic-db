-- Add your query below.

-- remove unused event game object in ironforge
DELETE FROM `gameobject` WHERE `guid` = 5051; -- duplicate.50672 (Event 1)

-- add correct position for objects inside deeprun tram.
UPDATE `gameobject` SET `position_z` = -4.29736 WHERE `id` = 178304;

-- remove quest the reason for the season (7062) from courier hammerfall (10877)
DELETE FROM `creature_questrelation` WHERE `quest` = 7062 AND `id` = 10877;

-- End of migration.

