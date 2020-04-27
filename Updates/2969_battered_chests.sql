-- Battered Chest - ID 2843 - spawn points & pools rework

 -- delete all old battered chest spawn points
DELETE FROM gameobject WHERE guid=1397; 
DELETE FROM gameobject WHERE guid=1454; 
DELETE FROM gameobject WHERE guid=26749;
DELETE FROM gameobject WHERE guid=26756;
DELETE FROM gameobject WHERE guid=34797;
DELETE FROM gameobject WHERE guid=34798;
DELETE FROM gameobject WHERE guid=45106;
DELETE FROM gameobject WHERE guid=45110;
DELETE FROM gameobject WHERE guid=49528;
DELETE FROM gameobject WHERE guid=49529;
 -- delete old battered chest pool_gameobjects
DELETE FROM pool_gameobject WHERE guid=1397; -- Dun Morogh - Battered Chest (2843)
DELETE FROM pool_gameobject WHERE guid=1454; -- Dun Morogh - Battered Chest (2843)
-- delete old battered chest master chest pool
DELETE FROM pool_template WHERE entry=39900; -- Dun Morogh - Master Chest Pool
 -- Delete old battered chest pool_gameobjects
DELETE FROM pool_gameobject WHERE guid=49528; -- Teldrassil - Battered Chest (2843)
DELETE FROM pool_gameobject WHERE guid=49529; -- Teldrassil - Battered Chest (2843)
DELETE FROM pool_gameobject WHERE guid=45106; -- Tirisfal Glades - Battered Chest (2843)
DELETE FROM pool_gameobject WHERE guid=45110; -- Tirisfal Glades - Battered Chest (2843)

-- Implement new spawns & pools according to: https://classic.wowhead.com/object=2843/battered-chest

-- Tirisfal (Deathknell) 7 total spawns points packed in 2 chest spawn pools
-- cave spawns
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('1090055','2843','0','2021.08','1855.79','102.886','4.55772','0','0','0.759624','-0.650363','3600','3600','100','1'),
('1090056','2843','0','2036.59','1916.59','102.783','6.23153','0','0','0.025824','-0.999667','3600','3600','100','1'),
('1090057','2843','0','2084.86','1967.65','101.082','2.77971','0','0','0.983675','0.179955','3600','3600','100','1'),
-- other location spawns
('1090058','2843','0','1784.69','1344.27','89.4032','5.77809','0','0','0.249873','-0.968279','3600','3600','100','1'),
('1090059','2843','0','1963.77','1383.59','64.1604','5.77888','0','0','0.249489','-0.968378','3600','3600','100','1'),
('1090060','2843','0','1901.18','1487.25','93.9502','1.633','0','0','0.728753','0.684777','3600','3600','100','1'),
('1090061','2843','0','1966.76','1617.83','88.1989','4.29629','0','0','0.837914','-0.545803','3600','3600','100','1');
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
('45806','1','Battered Chests (2843)- Tirisfal - Deathknell'),
('45807','1','Battered Chests (2843)- Tirisfal - Deathknell - Cave');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
('1090055','45807','0','Battered Chest (2843) - Tirisfal - Deathknell - Cave #1'),
('1090056','45807','0','Battered Chest (2843) - Tirisfal - Deathknell - Cave #2'),
('1090057','45807','0','Battered Chest (2843) - Tirisfal - Deathknell - Cave #3'),
('1090058','45806','0','Battered Chest (2843) - Tirisfal - Deathknell #1'),
('1090059','45806','0','Battered Chest (2843) - Tirisfal - Deathknell #2'),
('1090060','45806','0','Battered Chest (2843) - Tirisfal - Deathknell #3'),
('1090061','45806','0','Battered Chest (2843) - Tirisfal - Deathknell #3');

-- Dun Morogh (Coldridge Valley) 6 total spawns points packed in 2 chest spawn pools
-- cave spawns
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('1090062','2843','0','-6538.18','359.67','371.134','5.3418','0','0','0.453505','-0.891254','3600','3600','100','1'),
('1090063','2843','0','-6541.69','362.199','384.464','1.23852','0','0','0.580434','0.814307','3600','3600','100','1'),
('1090064','2843','0','-6516.55','288.024','372.061','0.760217','0','0','0.371021','0.928624','3600','3600','100','1'),
-- other location spawns
('1090065','2843','0','-6396.81','784.359','386.216','5.19288','0','0','0.518547','-0.855049','3600','3600','100','1'),
('1090066','2843','0','-6520.52','688.075','387.612','6.21242','0','0','0.0353748','-0.999374','3600','3600','100','1'),
('1090067','2843','0','-6493.9','502.314','387.246','0.977737','0','0','0.469627','0.882865','3600','3600','100','1');
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
('45808','1','Battered Chests (2843) - Dun Morogh - Coldridge Valley - Cave'),
('45809','1','Battered Chests (2843) - Dun Morogh - Coldridge Valley');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
('1090062','45808','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley - Cave #1'),
('1090063','45808','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley - Cave #2'),
('1090064','45808','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley - Cave #3'),
('1090065','45809','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley #1'),
('1090066','45809','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley #2'),
('1090067','45809','0','Battered Chest (2843) - Dun Morogh - Coldridge Valley #3');

--  Teldrassil (Shadowglen) 7 total spawns points packed in 2 chest spawn pools
-- cave spawns
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('1090068','2843','1','10942.8','942.153','1340.68','5.62352','0','0','0.323884','-0.946097','3600','3600','100','1'),
('1090069','2843','1','10912.2','977.162','1338.64','3.82496','0','0','0.942192','-0.335074','3600','3600','100','1'),
('1090070','2843','1','10912','847.282','1329.49','1.92878','0','0','0.821702','0.569918','3600','3600','100','1'),
('1090071','2843','1','10812.8','897.368','1336.4','0.444496','0','0','0.220423','0.975404','3600','3600','100','1'),
-- other location spawns
('1090072','2843','1','10262.1','961.428','1340.93','5.89251','0','0','0.194099','-0.980982','3600','3600','100','1'),
('1090073','2843','1','10328.5','1032.25','1339.25','5.38933','0','0','0.432199','-0.901778','3600','3600','100','1'),
('1090074','2843','1','10490.6','1059.5','1325.47','5.69801','0','0','0.28843','-0.957501','3600','3600','100','1');
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
('45810','1','Battered Chests (2843) - Teldrassil - Shadowglen - Cave'),
('45811','1','Battered Chests (2843) - Teldrassil - Shadowglen');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
('1090068','45810','0','Battered Chest (2843) - Teldrassil - Shadowglen - Cave #1'),
('1090069','45810','0','Battered Chest (2843) - Teldrassil - Shadowglen - Cave #2'),
('1090070','45810','0','Battered Chest (2843) - Teldrassil - Shadowglen - Cave #3'),
('1090071','45810','0','Battered Chest (2843) - Teldrassil - Shadowglen - Cave #4'),
('1090072','45811','0','Battered Chest (2843) - Teldrassil - Shadowglen #1'),
('1090073','45811','0','Battered Chest (2843) - Teldrassil - Shadowglen #2'),
('1090074','45811','0','Battered Chest (2843) - Teldrassil - Shadowglen #3');

--  Elwynn Forest (Northshire) 6 total spawns points packed in 2 chest spawn pools
-- cave spawns
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('1090075','2843','0','-8556.45','-197.175','86.1021','4.63248','0','0','0.734788','-0.678297','3600','3600','100','1'),
('1090076','2843','0','-8613.8','-176.181','86.2264','0.830514','0','0','0.403425','0.915013','3600','3600','100','1'),
-- other location spawns
('1090077','2843','0','-9040.66','-301.843','74.3497','1.6332','0','0','0.728822','0.684704','3600','3600','100','1'),
('1090078','2843','0','-9138.74','-281.144','71.8988','5.89453','0','0','0.193107','-0.981178','3600','3600','100','1'),
('1090079','2843','0','-9058.76','-459.731','72.5574','1.30176','0','0','0.605886','0.795551','3600','3600','100','1'),
('1090080','2843','0','-8952.76','-433.578','64.9468','2.01555','0','0','0.845646','0.533744','3600','3600','100','1');
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
('45812','1','Battered Chests (2843) - Elwynn Forest - Northshire - Cave'),
('45813','1','Battered Chests (2843) - Elwynn Forest - Northshire');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
('1090075','45812','0','Battered Chest (2843) - Elwynn Forest - Northshire - Cave #1'),
('1090076','45812','0','Battered Chest (2843) - Elwynn Forest - Northshire - Cave #2'),
('1090077','45813','0','Battered Chest (2843) - Elwynn Forest - Northshire #1'),
('1090078','45813','0','Battered Chest (2843) - Elwynn Forest - Northshire #2'),
('1090079','45813','0','Battered Chest (2843) - Elwynn Forest - Northshire #3 '),
('1090080','45813','0','Battered Chest (2843) - Elwynn Forest - Northshire #4');
