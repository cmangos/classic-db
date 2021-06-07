-- Correct Position and SetRun for Flik's Frog 14866 in Elwynn
-- should be formation
UPDATE creature SET position_x=-9502.26, position_y=77.9182, position_z=57.5324, orientation=5.78642 WHERE guid=144020 AND id=14866;
UPDATE creature_movement SET script_id=5 WHERE id=144020 AND point=1;
