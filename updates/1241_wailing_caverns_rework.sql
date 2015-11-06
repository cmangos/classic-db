-- Wailing Caverns:
-- Spawn Distance adjustments:
-- 15-rane (used for select critters):
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid IN (38145, 87154);
-- 10-range:
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid IN (33964, 33957, 33932, 45722, 85901, 38121);
-- 7-range:
UPDATE creature SET spawndist=7, MovementType=1 WHERE guid IN (33946, 33987, 85919, 85965, 86137, 86013, 87143, 87156, 18682, 26203, 38147);
-- 6-range:
UPDATE creature SET spawndist=6, MovementType=1 WHERE guid IN (33956, 85959, 18679, 18681, 18680);
-- 0 (DISABLE):
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (85948);

-- Spawn Distance Adjustments to already spawned lashers:
UPDATE creature SET spawndist=6, MovementType=1 WHERE guid IN (18686, 18683, 18684, 18685, 33980, 33981, 33982, 38126, 38120, 38132, 38127, 45721, 48752, 85920, 85916, 85912, 85917, 85918, 85989, 87112, 85988, 87111, 87110, 87106, 87109, 87103, 87098, 87102, 87101, 87097, 86104, 87120, 87119, 87118, 87135, 87137, 87138, 87136, 87151, 87149, 87152, 87148);

-- Critter Adjustments:
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid IN (38135, 38125, 33985, 33978, 33979, 18677, 26219, 26238, 26215, 26222, 26226, 26201, 26222, 26238, 27358, 27358, 27347, 27370, 27373, 27377, 33937, 33968, 33953, 33940);
UPDATE creature SET position_x = '17.817574', position_y = '435.634857', position_z = '-81.148735', orientation = '3.737468' WHERE guid = '33937'; -- Snake (ID 2914)
UPDATE creature SET position_x = '-70.924637', position_y = '371.368103', position_z = '-105.181313', orientation = '5.058896' WHERE guid = '27370';
UPDATE creature SET position_x = '-23.271814', position_y = '132.678024', position_z = '-106.161560', orientation = '1.518708' WHERE guid = '26219'; -- (Bile Toad 3835)
