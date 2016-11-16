-- Added Ogre patrol before Mok'doom entrance in Blackrock Spire
-- First and easy contribution to #822
DELETE FROM creature_movement WHERE id=43503;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43503,1, -24.539305,-514.424866,29.163296, 2.98,0),
(43503,2, -24.539305,-514.424866,29.163296, 2.98,30000),
(43503,3, -49.821911,-513.863159,29.187195, 0.006,0),
(43503,4, -49.821911,-513.863159,29.187195, 0.006,30000);
UPDATE creature SET MovementType=2 WHERE guid=43503; 
