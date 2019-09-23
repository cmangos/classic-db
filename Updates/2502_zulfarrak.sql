-- Add missing spawn in a patrol
SET @GUID := 2090275;

INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@GUID, 5649, 209, 1775.91, 858.567, 8.87745, 3.8720, 7200, 7200, 0, 0, 0, 0); -- Sandfury Blood Drinker

DELETE FROM creature_linking WHERE guid=@GUID;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID, 81456, 515); -- Sandfury Blood Drinker -> Sandfury Witch Doctor

-- Increase respawn time of two critters
UPDATE creature SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE guid IN (155622, 155624);
