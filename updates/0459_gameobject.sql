-- Fixed spawn for the Spectral Chalice, but initially despawned.
-- Talking to Gloom'rel with a 230+ miner that doesn't know "Dark Iron Smelting" should spawn the object.
-- Note: the data is taken from UDB, but their position is wrong. They spawn it next to Anger'rel.
--       Fixed position with my own data from sniffs (patch 3.1.3 data).
DELETE FROM `gameobject` WHERE `id` = 164869;
INSERT INTO `gameobject` (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(67871, 164869, 230, 1224.6047, -244.5426, -85.0765, 2.26893, 0, 0, 0.906307, 0.422619, -250, 0, 1);
