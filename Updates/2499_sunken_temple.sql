-- Complete Sunken Temple Puzzle Gos

-- Start synchronising instance GUIDs with TBC-DB
SET @GUID := 1090036;

-- Add three kind of Atal'ai Statues, one of each at each of the six spots
DELETE FROM gameobject WHERE id IN (177484, 177485, 148837);
DELETE FROM gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 18;
INSERT INTO gameobject VALUES
(@GUID + 1, 177484, 109, -490.969, 135.714, -148.74, 0.226892, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 2, 177484, 109, -420.155, 94.3731, -148.74, -2.32129, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 3, 177484, 109, -515.046, 95.1471, -148.74, 2.74016, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 4, 177484, 109, -491.396, 53.5787, -148.74, -0.471238, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 5, 177484, 109, -443.55, 53.9243, -148.74, 0.90757, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 6, 177484, 109, -444.448, 136.106, -148.74, 0.331611, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 7, 177485, 109, -490.969, 135.714, -148.74, 0.226892, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 8, 177485, 109, -420.155, 94.3731, -148.74, -2.32129, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 9, 177485, 109, -515.046, 95.1471, -148.74, 2.74016, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 10, 177485, 109, -491.396, 53.5787, -148.74, -0.471238, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 11, 177485, 109, -443.55, 53.9243, -148.74, 0.90757, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 12, 177485, 109, -444.448, 136.106, -148.74, 0.331611, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 13, 148837, 109, -490.969, 135.714, -148.74, 0.226892, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 14, 148837, 109, -420.155, 94.3731, -148.74, -2.32129, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 15, 148837, 109, -515.046, 95.1471, -148.74, 2.74016, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 16, 148837, 109, -491.396, 53.5787, -148.74, -0.471238, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 17, 148837, 109, -443.55, 53.9243, -148.74, 0.90757, 0, 0, 0, 1, 180, 180, 255, 1),
(@GUID + 18, 148837, 109, -444.448, 136.106, -148.74, 0.331611, 0, 0, 0, 1, 180, 180, 255, 1);


SET @POOL := 45800;
-- Pool together all three traps at each spot
DELETE FROM pool_gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 18;
INSERT INTO pool_gameobject VALUES
(@GUID + 1, @POOL, 0, 'Atal\'ai Statue (Group 1)'),
(@GUID + 7, @POOL, 0, 'Atal\'ai Statue (Group 1)'),
(@GUID + 13, @POOL, 0, 'Atal\'ai Statue (Group 1)'),
(@GUID + 2, @POOL + 1, 0, 'Atal\'ai Statue (Group 2)'),
(@GUID + 8, @POOL + 1, 0, 'Atal\'ai Statue (Group 2)'),
(@GUID + 14, @POOL + 1, 0, 'Atal\'ai Statue (Group 2)'),
(@GUID + 3, @POOL + 2, 0, 'Atal\'ai Statue (Group 3)'),
(@GUID + 9, @POOL + 2, 0, 'Atal\'ai Statue (Group 3)'),
(@GUID + 15, @POOL + 2, 0, 'Atal\'ai Statue (Group 3)'),
(@GUID + 4, @POOL + 3, 0, 'Atal\'ai Statue (Group 4)'),
(@GUID + 10, @POOL + 3, 0, 'Atal\'ai Statue (Group 4)'),
(@GUID + 16, @POOL + 3, 0, 'Atal\'ai Statue (Group 4)'),
(@GUID + 5, @POOL + 4, 0, 'Atal\'ai Statue (Group 5)'),
(@GUID + 11, @POOL + 4, 0, 'Atal\'ai Statue (Group 5)'),
(@GUID + 17, @POOL + 4, 0, 'Atal\'ai Statue (Group 5)'),
(@GUID + 6, @POOL + 5, 0, 'Atal\'ai Statue (Group 6)'),
(@GUID + 12, @POOL + 5, 0, 'Atal\'ai Statue (Group 6)'),
(@GUID + 18, @POOL + 5, 0, 'Atal\'ai Statue (Group 6)');

DELETE FROM pool_template WHERE entry BETWEEN @POOL AND @POOL + 5;
INSERT INTO pool_template VALUES
(@POOL, 1, 'Atal\'ai Statue (Group 1)'),
(@POOL + 1, 1, 'Atal\'ai Statue (Group 2)'),
(@POOL + 2, 1, 'Atal\'ai Statue (Group 3)'),
(@POOL + 3, 1, 'Atal\'ai Statue (Group 4)'),
(@POOL + 4, 1, 'Atal\'ai Statue (Group 5)'),
(@POOL + 5, 1, 'Atal\'ai Statue (Group 6)');
