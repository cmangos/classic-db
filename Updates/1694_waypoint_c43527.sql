-- Added missing waypoint for creature 43527 in LBRS
DELETE FROM creature_movement WHERE id=43527 AND point=5;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(43527,5, -17.082922,-460.110382,16.551907, 0.109955);
