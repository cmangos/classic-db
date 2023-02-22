-- Young Forest Bear 822
-- they covering large area
UPDATE creature SET position_x = -9504.297852, position_y = -1088.555664, position_z = 50.673645, spawndist = 15, MovementType = 1 WHERE guid = 80884; -- close to river
UPDATE creature SET position_x = -10053.2, position_y = 61.5641, position_z = 32.1729, spawndist = 20, MovementType = 1 WHERE guid = 81381; -- smaller area than others
UPDATE creature SET position_x = -9989.627930, position_y = 294.511688, position_z = 34.385521, spawndist = 30, MovementType = 1 WHERE guid = 80669;
UPDATE creature SET position_x = -10030.711914, position_y = 193.351959, position_z = 30.019306, spawndist = 30, MovementType = 1 WHERE guid = 80667;
UPDATE creature SET position_x = -9931.558594, position_y = -68.111267, position_z = 32.015610, spawndist = 30, MovementType = 1 WHERE guid = 80729;
UPDATE creature SET position_x = -9797.852539, position_y = -89.320328, position_z = 26.151112, spawndist = 30, MovementType = 1 WHERE guid = 80715;
UPDATE creature SET position_x = -9723.583984, position_y = -106.231735, position_z = 34.377224, spawndist = 30, MovementType = 1 WHERE guid = 80712;
UPDATE creature SET position_x = -9701.223633, position_y = -169.592407, position_z = 42.749363, spawndist = 30, MovementType = 1 WHERE guid = 80754;
UPDATE creature SET position_x = -9707.075195, position_y = -337.379150, position_z = 56.022369, spawndist = 30, MovementType = 1 WHERE guid = 80772;
UPDATE creature SET position_x = -9884.666016, position_y = -304.822296, position_z = 35.256882, spawndist = 30, MovementType = 1 WHERE guid = 80786;
UPDATE creature SET position_x = -9808.151367, position_y = -511.686890, position_z = 31.006832, spawndist = 30, MovementType = 1 WHERE guid = 79609;
UPDATE creature SET position_x = -9769.682617, position_y = -573.101868, position_z = 36.801636, spawndist = 30, MovementType = 1 WHERE guid = 80814;
UPDATE creature SET position_x = -9770.818359, position_y = -653.407227, position_z = 39.347893, spawndist = 30, MovementType = 1 WHERE guid = 79614;
UPDATE creature SET position_x = -9726.320312, position_y = -643.834717, position_z = 45.194233, spawndist = 30, MovementType = 1 WHERE guid = 80825;
UPDATE creature SET position_x = -9751.439453, position_y = -744.468384, position_z = 41.457726, spawndist = 30, MovementType = 1 WHERE guid = 80828;
UPDATE creature SET position_x = -9809.437500, position_y = -1000.897766, position_z = 39.391338, spawndist = 30, MovementType = 1 WHERE guid = 80862;
UPDATE creature SET position_x = -9496.058594, position_y = -782.313171, position_z = 60.539097, spawndist = 30, MovementType = 1 WHERE guid = 80915;
UPDATE creature SET position_x = -9416.070312, position_y = -852.643860, position_z = 62.125313, spawndist = 30, MovementType = 1 WHERE guid = 80911;
UPDATE creature SET position_x = -9361.178711, position_y = -917.560181, position_z = 64.616699, spawndist = 30, MovementType = 1 WHERE guid = 80899;
UPDATE creature SET position_x = -9511.092773, position_y = -1034.211182, position_z = 52.483101, spawndist = 30, MovementType = 1 WHERE guid = 81177;
UPDATE creature SET position_x = -9504.297852, position_y = -1088.555664, position_z = 50.673645, spawndist = 30, MovementType = 1 WHERE guid = 80884;
UPDATE creature SET position_x = -9373.671875, position_y = -1150.854370, position_z = 63.828693, spawndist = 30, MovementType = 1 WHERE guid = 81268;
UPDATE creature SET position_x = -9376.991211, position_y = -1211.328369, position_z = 62.895630, spawndist = 30, MovementType = 1 WHERE guid = 81342;
UPDATE creature SET position_x = -9294.934570, position_y = -1326.045288, position_z = 69.863625, spawndist = 30, MovementType = 1 WHERE guid = 81264;
UPDATE creature SET position_x = -9392.194336, position_y = -1469.591309, position_z = 62.338116, spawndist = 30, MovementType = 1 WHERE guid = 81397;
UPDATE creature SET position_x = -9399.574219, position_y = -1429.595947, position_z = 59.169491, spawndist = 30, MovementType = 1 WHERE guid = 81395;

-- Prowler 118
-- duplicates
DELETE FROM creature_addon WHERE guid IN (81431,81376);
DELETE FROM creature_movement WHERE Id IN (81431,81376);
DELETE FROM game_event_creature WHERE guid IN (81431,81376);
DELETE FROM game_event_creature_data WHERE guid IN (81431,81376);
DELETE FROM creature_battleground WHERE guid IN (81431,81376);
DELETE FROM creature_linking WHERE guid IN (81431,81376) OR master_guid IN (81431,81376);
DELETE FROM creature WHERE guid IN (81431,81376);
-- update
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 118; -- no idea why we had some with spawndist = 0
UPDATE creature SET position_x = -9482.156250, position_y = -1442.788208, position_z = 59.370399 WHERE guid = 81399;

