-- Wetlands Farm
-- XYZ: -4050 -1436 165 0
DELETE FROM creature WHERE guid IN (660112, 660113, 660114, 660115, 660116, 660117, 660118, 660119, 660120, 660121, 660122, 660123, 660124, 660125, 660126, 660127, 660128, 660129, 660130, 660131, 660132, 660133, 660134, 660135, 660136, 660137, 660138, 660139, 660140, 660141);
-- Ironforge Mountaineer
INSERT INTO creature VALUES (660112,727,0,0,727,-3972.82,-1513.31,169.195,5.53077,60,0,0,1918,0,0,0);
INSERT INTO creature VALUES (660113,727,0,0,727,-3985.24,-1508.53,168.705,4.14848,60,0,0,1918,0,0,0);
-- Dwarven Farmer
INSERT INTO creature VALUES (660114,12998,0,0,12998,-4029.86,-1453.53,167.187,4.37309,60,5,0,644,0,0,1); -- Movement
INSERT INTO creature VALUES (660115,12998,0,0,12998,-4101.46,-1260.41,148.958,4.91972,60,0,0,644,0,0,0);
INSERT INTO creature VALUES (660116,12998,0,0,12998,-4074.56,-1256.74,146.399,0.106011,60,0,0,644,0,0,2); -- Waypoints
DELETE FROM creature_movement WHERE id=660116;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,1, -4056.620361,-1257.126343,146.314026, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,2, -4022.127441,-1239.042236,146.314026, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,3, -4027.524902,-1197.605469,146.314026, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,4, -4073.563477,-1205.958008,146.314026, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,5, -4074.819824,-1234.274048,146.480789, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,6, -4071.617432,-1244.778442,146.406143, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660116,7, -4073.642090,-1253.109619,146.433029, 0);
INSERT INTO creature VALUES (660117,12998,0,0,12998,-4110.72,-1068.8,168.909,4.87338,60,5,0,644,0,0,1); -- Movement
INSERT INTO creature VALUES (660118,12998,0,0,12998,-4147.28,-1106.97,168.917,0.341632,60,0,0,644,0,0,0);
-- Ram
INSERT INTO creature VALUES (660119,2098,0,0,0,-4142.79,-1053.89,167.925,5.52528,60,0,0,102,0,0,0);
INSERT INTO creature VALUES (660120,2098,0,0,0,-4131.62,-1063.01,167.925,4.41786,60,0,0,102,0,0,0);
-- Chicken
INSERT INTO creature VALUES (660121,620,0,0,0,-4126.41,-1091.58,168.916,4.29377,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660122,620,0,0,0,-4117.23,-1101.1,168.953,3.54764,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660123,620,0,0,0,-4137.29,-1102.33,168.916,3.74399,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660124,620,0,0,0,-4080.96,-1256.69,146.684,3.85709,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660125,620,0,0,0,-4074.13,-1268.01,146.158,4.99592,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660126,620,0,0,0,-4091.94,-1279.57,146.18,3.76912,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660127,620,0,0,0,-4039.9,-1446.43,166.2,4.68177,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660128,620,0,0,0,-4022.11,-1449.52,165.607,5.71378,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660129,620,0,0,0,-4017.85,-1460.55,168.343,4.69512,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660130,620,0,0,0,-4001.15,-1502.53,169.703,5.06818,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660131,620,0,0,0,-3964.18,-1526.38,169.163,5.06818,60,5,0,64,0,0,1);
-- Mounted Ironforge Mountaineer
INSERT INTO creature VALUES (660132,12996,0,0,12996,-4025.61,-1404.07,155.248,3.81547,60,0,0,1605,686,0,2); -- Waypoints
DELETE FROM creature_movement WHERE id=660132;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,1, -4032.538330,-1410.321655,156.720917, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,2, -4074.892578,-1407.427246,166.030777, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,3, -4121.196777,-1392.128540,186.617004, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,4, -4139.651367,-1392.912354,194.530472, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,5, -4160.594238,-1400.398682,197.085068, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,6, -4139.072754,-1393.150391,194.301208, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,7, -4120.764160,-1392.221558,186.412323, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,8, -4074.232178,-1407.582153,165.770020, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,9, -4032.554688,-1410.221680,156.711700, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,10, -4020.632568,-1397.177612,153.370529, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,11, -4017.038086,-1356.276855,148.045929, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,12, -4009.141602,-1314.063843,146.624283, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,13, -4018.539795,-1285.383789,146.625275, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,14, -3993.255859,-1242.821777,146.910553, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,15, -3994.514648,-1185.122559,154.931198, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,16, -4020.875244,-1159.386475,157.863708, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,17, -4044.102051,-1151.667358,160.278809, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,18, -4067.387207,-1109.543213,166.369003, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,19, -4087.611328,-1099.665649,168.503937, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,20, -4128.911133,-1098.015015,168.916885, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,21, -4136.272949,-1079.660400,168.917053, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,22, -4128.578613,-1098.301392,168.915970, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,23, -4086.780518,-1099.881348,168.434265, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,24, -4066.847900,-1110.063354,166.182816, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,25, -4043.639893,-1151.813477,160.211899, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,26, -4020.616943,-1159.421021,157.841202, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,27, -3994.119629,-1185.264404,154.956360, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,28, -3992.988525,-1243.204102,146.900711, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,29, -4018.415039,-1285.849365,146.622818, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,30, -4008.842529,-1314.119019,146.627106, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,31, -4016.710449,-1356.628784,148.064545, 0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (660132,32, -4020.152344,-1397.473877,153.434326, 0);
-- Rabbit
INSERT INTO creature VALUES (660133,721,0,0,0,-3971.98,-1494.18,169.931,2.12686,60,5,0,1,0,0,1);
INSERT INTO creature VALUES (660134,721,0,0,0,-3994.42,-1376.7,150.124,1.10741,60,5,0,1,0,0,1);
INSERT INTO creature VALUES (660135,721,0,0,0,-4026.06,-1270.89,146.802,1.82841,60,5,0,1,0,0,1);
INSERT INTO creature VALUES (660136,721,0,0,0,-4096.43,-1088.23,170.199,1.84097,60,5,0,1,0,0,1);
-- Black Rat
INSERT INTO creature VALUES (660137,2110,0,0,0,-4110.85,-1068.93,168.91,1.74516,60,5,0,1,0,0,1);
INSERT INTO creature VALUES (660138,2110,0,0,0,-4048.29,-1227.35,146.314,5.142,60,5,0,1,0,0,1);
-- Cow
INSERT INTO creature VALUES (660139,2442,0,0,0,-4053.71,-1187.58,146.314,4.69747,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660140,2442,0,0,0,-4041.5,-1230.92,146.314,3.80212,60,5,0,64,0,0,1);
INSERT INTO creature VALUES (660141,2442,0,0,0,-4055.91,-1247.15,146.314,4.19089,60,5,0,64,0,0,1);


