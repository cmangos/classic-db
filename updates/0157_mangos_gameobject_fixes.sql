-- Replaces two mithril ore's found in Durotar with Copper Nodes
-- Fixes one of the Copper Ore nodes that's half way in the world
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7321;
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7304;
UPDATE `gameobject` SET `position_z` = -8.4 WHERE `guid` = 5455;
