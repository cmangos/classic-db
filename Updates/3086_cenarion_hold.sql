-- the only difference here is the old point 2 has been removed (it was the same as point 3 without the wait time)
DELETE FROM `creature_movement` WHERE `id`=42916;
INSERT INTO creature_movement (id, `point`, position_x, position_y, position_z, orientation, waittime, script_id, `comment`) VALUES
(42916, 1, -6854.69, 737.165, 55.052, 1.9927, 0, 0, ''),
(42916, 2, -6855.73, 739.504, 55.052, 2.01233, 5000, 0, ''),
(42916, 3, -6853.8, 733.092, 55.052, 5.15785, 0, 0, '');
