-- Add 3 missing Salt Flats Vulture Spawns
DELETE FROM `creature` WHERE `guid` BETWEEN 32583 AND 32585;
INSERT INTO creature (guid,  id,  map,  modelid,  equipment_id,  position_x,  position_y,  position_z,  orientation,  spawntimesecsmin,  spawntimesecsmax,  spawndist,  curhealth,  curmana,  MovementType) VALUES
(32583, 4158, 1, 0, 0, -6040.297, -4084.69, -58.62503, 2.364358, 300, 300, 30, 0, 0, 1),
(32584, 4158, 1, 0, 0, -6290.337, -3564.309, -58.62499, 0.9042752, 300, 300, 30, 0, 0, 1),
(32585, 4158, 1, 0, 0, -6582.022, -3923.567, -58.62503, 5.822472, 300, 300, 30, 0, 0, 1);
	
UPDATE `creature` SET `modelid` = 0, `spawndist` = 30, `MovementType` = 1 WHERE `id` = 4158;
