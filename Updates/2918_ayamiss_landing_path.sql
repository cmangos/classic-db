-- ayamiss landing path
DELETE FROM creature_movement_template WHERE entry=15369;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(15369,1,0,-9689.981,1548.296,33.27733,0,0,100),
(15369,1,1,-9682.716,1554.252,31.41621,0,0,100),
(15369,1,2,-9677.917,1558.839,27.24953,1000,0,100);
