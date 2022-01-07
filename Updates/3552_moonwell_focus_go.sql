-- Reinsert one spawn of spellfocus GO 181899 (Moonwell) that was wrongly deleted and was later confirmed as valid spawn. Now respawned in Temple of Elune in Darnassus
-- Thanks @AnonXS for pointing out and @insunaa for confirming
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(59, 181899, 0, 3181.08, -4379.36, 174.123, -2.03472, -0.065392, 0.119494, -0.842275, 0.521553, 900, 900, 100, 1);
