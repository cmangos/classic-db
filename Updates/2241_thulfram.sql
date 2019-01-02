-- Add Pathing for Innkeeper Thulfram 7744
SET @ENTRY := 7744;
UPDATE creature SET spawndist=0,MovementType=2,position_x=399.7252,position_y=-2119.737,position_z=131.5627 WHERE id=@ENTRY;
DELETE FROM creature_movement_template WHERE entry=@ENTRY;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(@ENTRY, 1, 399.7252, -2119.737, 131.5627, 100, 0, 0),
(@ENTRY, 2, 395.5192, -2100.759, 131.5623, 100, 0, 0),
(@ENTRY, 3, 393.132, -2090.723, 131.5623, 100, 0, 0),
(@ENTRY, 4, 390.9173, -2081.426, 131.5595, 100, 0, 0),
(@ENTRY, 5, 393.132, -2090.723, 131.5623, 100, 0, 0),
(@ENTRY, 6, 395.5192, -2100.759, 131.5623, 100, 0, 0);
