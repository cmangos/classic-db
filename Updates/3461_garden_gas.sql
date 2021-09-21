SET @CGUID := 5330000; -- creatures

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+1170, 17231, 533, 2801.12, -3535.08, 250.242, 2.26893, 7200, 7200, 0, 0, 0, 0), -- Garden Gas
(@CGUID+1171, 17231, 533, 2798.66, -3525.69, 250.242, 3.82227, 7200, 7200, 0, 0, 0, 0), -- Garden Gas
(@CGUID+1172, 17231, 533, 2794.29, -3536.64, 250.242, 1.41372, 7200, 7200, 0, 0, 0, 0), -- Garden Gas
(@CGUID+1173, 17231, 533, 2789.92, -3525.28, 250.242, 5.63741, 7200, 7200, 0, 0, 0, 0), -- Garden Gas
(@CGUID+1174, 17231, 533, 2787.71, -3534.53, 250.242, 0.593412, 7200, 7200, 0, 0, 0, 0); -- Garden Gas
