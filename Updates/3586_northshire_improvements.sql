-- Small Improvements for Northshire and Starter Zone Aggro Ranges

UPDATE pool_template set max_limit=12 where entry=25518; -- 10
-- https://youtu.be/ewkbw5H3zlc?t=50
UPDATE gameobject SET spawntimesecsmin=60 WHERE id=161557; -- Respawntime more like 60secs minimum as seen in video
UPDATE gameobject SET position_x=-9042.6005859375, position_y=-316.675018310546875, position_z=73.5157012939453125, orientation=1.082102894783020019, rotation2=0.51503753662109375, rotation3=0.857167601585388183 WHERE guid=34799 AND id=161557;
UPDATE gameobject SET position_x=-9073.197265625, position_y=-298.4835205078125, position_z=73.45377349853515625, orientation=2.70525527000427246, rotation2=0.97629547119140625, rotation3=0.216442063450813293 WHERE guid=30667 AND id=161557;
UPDATE gameobject SET position_x=-9026.8115234375, position_y=-331.989105224609375, position_z=73.70142364501953125, orientation=1.012289404869079589, rotation2=0.484808921813964843, rotation3=0.87462007999420166 WHERE guid=26764 AND id=161557;
UPDATE gameobject SET position_x=-9054.4208984375, position_y=-358.899749755859375, position_z=73.46669769287109375, orientation=-0.76794385910034179, rotation2=-0.37460613250732421, rotation3=0.927184045314788818 WHERE guid=30658 AND id=161557;
UPDATE gameobject SET position_x=-9061.6044921875, position_y=-372.467926025390625, position_z=73.51473236083984375, orientation=-0.20943944156169891, rotation2=-0.10452842712402343, rotation3=0.994521915912628173 WHERE guid=87761 AND id=161557;
UPDATE gameobject SET position_x=-9045.1923828125, position_y=-351.078033447265625, position_z=73.52664947509765625, orientation=-1.41371512413024902, rotation2=-0.64944744110107421, rotation3=0.760406434535980224 WHERE guid=29583 AND id=161557;
UPDATE gameobject SET position_x=-9051.6728515625, position_y=-340.49163818359375, position_z=73.45177459716796875, orientation=1.239183306694030761, rotation2=0.580702781677246093, rotation3=0.814115643501281738 WHERE guid=34805 AND id=161557;
UPDATE gameobject SET position_x=-9095.6513671875, position_y=-334.190093994140625, position_z=73.45169830322265625, orientation=-0.89011663198471069, rotation2=-0.43051052093505859, rotation3=0.902585566043853759 WHERE guid=33838 AND id=161557;
UPDATE gameobject SET position_x=-9068.6416015625, position_y=-344.9346923828125, position_z=73.45172882080078125, orientation=0.017452461645007133, rotation2=0.008726119995117187, rotation3=0.999961912631988525 WHERE guid=33840 AND id=161557;
UPDATE gameobject SET position_x=-9104.1279296875, position_y=-342.145294189453125, position_z=73.44927978515625, orientation=-0.43633157014846801, rotation2=-0.21643924713134765, rotation3=0.976296067237854003 WHERE guid=34802 AND id=161557;
UPDATE gameobject SET position_x=-9105.7548828125, position_y=-323.819976806640625, position_z=73.27245330810546875, orientation=-0.33161070942878723, rotation2=-0.16504669189453125, rotation3=0.986285746097564697 WHERE guid=26752 AND id=161557;
UPDATE gameobject SET position_x=-9074.818359375, position_y=-379.73870849609375, position_z=73.44518280029296875, orientation=-2.79251837730407714, rotation2=-0.98480701446533203, rotation3=0.173652306199073791 WHERE guid=30663 AND id=161557;
UPDATE gameobject SET position_x=-9083.8935546875, position_y=-370.696136474609375, position_z=73.45184326171875, orientation=-0.48869124054908752, rotation2=-0.24192142486572265, rotation3=0.970295846462249755 WHERE guid=30668 AND id=161557;
UPDATE gameobject SET position_x=-9105.359375, position_y=-332.52593994140625, position_z=73.43007659912109375, orientation=-2.12930059432983398, rotation2=-0.8746194839477539, rotation3=0.484810054302215576 WHERE guid=33837 AND id=161557;
UPDATE gameobject SET position_x=-9113.0986328125, position_y=-341.447052001953125, position_z=73.324615478515625, orientation=1.012289404869079589, rotation2=0.484808921813964843, rotation3=0.87462007999420166 WHERE guid=26755 AND id=161557;
UPDATE gameobject SET position_x=-9072.03125, position_y=-361.7060546875, position_z=73.45172882080078125, orientation=-0.24434557557106018, rotation2=-0.12186908721923828, rotation3=0.9925462007522583 WHERE guid=87764 AND id=161557;
UPDATE gameobject SET position_x=-9038.2001953125, position_y=-325.137115478515625, position_z=73.466827392578125, orientation=1.221729278564453125, rotation2=0.573575973510742187, rotation3=0.819152355194091796 WHERE guid=29283 AND id=161557;
UPDATE gameobject SET position_x=-9085.576171875, position_y=-340.105316162109375, position_z=73.45172882080078125, orientation=0.541050612926483154, rotation2=0.267237663269042968, rotation3=0.96363067626953125 WHERE guid=29278 AND id=161557;
UPDATE gameobject SET position_x=-9114.7421875, position_y=-331.55224609375, position_z=73.15077972412109375, orientation=0.750490784645080566, rotation2=0.3665008544921875, rotation3=0.93041771650314331 WHERE guid=34900 AND id=161557;
UPDATE gameobject SET position_x=-9064.080078125, position_y=-312.04107666015625, position_z=73.45172882080078125, orientation=-0.62831687927246093, rotation2=-0.30901622772216796, rotation3=0.95105677843093872 WHERE guid=26758 AND id=161557;
UPDATE gameobject SET position_x=-9060.9580078125, position_y=-297.314849853515625, position_z=73.4599456787109375, orientation=-1.06464958190917968, rotation2=-0.507537841796875, rotation3=0.861629426479339599 WHERE guid=33843 AND id=161557;
UPDATE gameobject SET position_x=-9081.916015625, position_y=-352.130767822265625, position_z=73.45172882080078125, orientation=-2.77506852149963378, rotation2=-0.98325443267822265, rotation3=0.182238012552261352 WHERE guid=26761 AND id=161557;
UPDATE gameobject SET position_x=-9086.5673828125, position_y=-310.063690185546875, position_z=73.38622283935546875, orientation=0.715584874153137207, rotation2=0.350207328796386718, rotation3=0.936672210693359375 WHERE guid=32168 AND id=161557;
UPDATE gameobject SET position_x=-9095.9296875, position_y=-318.186187744140625, position_z=73.37416839599609375, orientation=1.32644820213317871, rotation2=0.615660667419433593, rotation3=0.788011372089385986 WHERE guid=26754 AND id=161557;
UPDATE gameobject SET position_x=-9052.654296875, position_y=-319.3873291015625, position_z=73.4539031982421875, orientation=-1.39626181125640869, rotation2=-0.64278697967529296, rotation3=0.766044974327087402 WHERE guid=26757 AND id=161557;
UPDATE gameobject SET position_x=-9092.744140625, position_y=-345.370330810546875, position_z=73.45172882080078125, orientation=0.663223206996917724, rotation2=0.325567245483398437, rotation3=0.945518851280212402 WHERE guid=29280 AND id=161557;
UPDATE gameobject SET position_x=-9084.2548828125, position_y=-323.96881103515625, position_z=73.45172882080078125, orientation=-2.16420578956604003, rotation2=-0.88294696807861328, rotation3=0.469472706317901611 WHERE guid=34901 AND id=161557;
UPDATE gameobject SET position_x=-9074.0048828125, position_y=-314.5693359375, position_z=73.4517059326171875, orientation=-0.36651757359504699, rotation2=-0.18223476409912109, rotation3=0.98325502872467041 WHERE guid=26753 AND id=161557;
UPDATE gameobject SET position_x=-9068.66015625, position_y=-336.238433837890625, position_z=73.45172882080078125, orientation=0.331610709428787231, rotation2=0.16504669189453125, rotation3=0.986285746097564697 WHERE guid=32169 AND id=161557;
UPDATE gameobject SET position_x=-9085.3310546875, position_y=-361.117950439453125, position_z=73.45172882080078125, orientation=0.174532115459442138, rotation2=0.087155342102050781, rotation3=0.996194720268249511 WHERE guid=30666 AND id=161557;
UPDATE gameobject SET position_x=-9056.3076171875, position_y=-348.569183349609375, position_z=73.451751708984375, orientation=-1.30899548530578613, rotation2=-0.60876083374023437, rotation3=0.793353796005249023 WHERE guid=30672 AND id=161557;
UPDATE gameobject SET position_x=-9096.3359375, position_y=-358.27349853515625, position_z=73.45244598388671875, orientation=3.141592741012573242, rotation2=-1, rotation3=0 WHERE guid=26760 AND id=161557;
UPDATE gameobject SET position_x=-9039.7392578125, position_y=-343.684844970703125, position_z=73.5142974853515625, orientation=0.663223206996917724, rotation2=0.325567245483398437, rotation3=0.945518851280212402 WHERE guid=26763 AND id=161557;
UPDATE gameobject SET position_x=-9062.96875, position_y=-358.678863525390625, position_z=73.451934814453125, orientation=-0.2617981731891632, rotation2=-0.13052558898925781, rotation3=0.991444945335388183 WHERE guid=30665 AND id=161557;
-- wotlk-db
UPDATE gameobject SET rotation2=-0.139173, rotation3=0.990268 WHERE guid=26759 AND id=161557;
UPDATE gameobject SET rotation2=-0.0436197, rotation3=0.999048 WHERE guid=26762 AND id=161557;
UPDATE gameobject SET rotation2=0.707106, rotation3=-0.707107 WHERE guid=30664 AND id=161557;
UPDATE gameobject SET rotation2=0.798636, rotation3=0.601815 WHERE guid=34806 AND id=161557;

DELETE FROM gameobject WHERE guid=75314;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(75314, 1731, 0, -9070.51171875, -550.896484375, 59.4019775390625, -1.65806186199188232, -0.73727703094482421, 0.67559051513671875, 45, 90, 255, 1);

DELETE FROM pool_gameobject WHERE guid=75314;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(75314, 2011, 0, 'Elwynn Forest - Copper Vein'); -- Master Mineral Pool - Elwynn Forest

-- Source Detection: vmangos for classic creatures
UPDATE creature_template SET Detection=10, CallForHelp=5 WHERE entry IN ( -- 20 10
6, -- Kobold Vermin
38, -- Defias Thug
69, -- Timber Wolf
80, -- Kobold Laborer
103, -- Garrick Padfoot
257, -- Kobold Worker
299, -- Young Wolf
704, -- Ragged Timber Wolf
705, -- Ragged Young Wolf
706, -- Frostmane Troll Whelp
707, -- Rockjaw Trogg
708, -- Small Crag Boar
708, -- Small Crag Boar
724, -- Burly Rockjaw Trogg
808, -- Grik'nir the Cold
946, -- Frostmane Novice
1501, -- Mindless Zombie
1502, -- Wretched Zombie
1504, -- Young Night Web Spider
1505, -- Night Web Spider
1506, -- Scarlet Convert
1507, -- Scarlet Initiate
1508, -- Young Scavenger
1509, -- Ragged Scavenger
1512, -- Duskbat
1513, -- Mangy Duskbat
1667, -- Meven Korgal
1688, -- Night Web Matriarch
1890, -- Rattlecage Skeleton
1916, -- Stephen Bhartec
1917, -- Daniel Ulfman
1918, -- Karrel Grayves
1919, -- Samuel Fipps
1984, -- Young Thistle Boar
1985, -- Thistle Boar
1986, -- Webwood Spider
1988, -- Grell
1989, -- Grellkin
1994, -- Githyiss the Vile
2031, -- Young Nightsaber
2032, -- Mangy Nightsaber
2952, -- Bristleback Quilboar
2953, -- Bristleback Shaman
2954, -- Bristleback Battleboar
2955, -- Plainstrider
2961, -- Mountain Cougar
2966, -- Battleboar
3098, -- Mottled Boar
3101, -- Vile Familiar
3102, -- Felstalker
3124, -- Scorpid Worker
3183, -- Yarrog Baneshadow
3229, -- "Squealer" Thornmantle
3281, -- Sarkoth
8554  -- Chief Sharptusk Thornmantle
);

-- https://www.wowhead.com/npc=5764
UPDATE creature_template SET Faction=16, Detection=40, MechanicImmuneMask=650870783 WHERE entry=5764;
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id=2077;

-- Remove bad spawns
-- https://www.wowhead.com/npc=62/gug-fatcandle#comments:id=1958522 - patch 4.x
DELETE FROM creature WHERE guid=101196 AND id=62; -- https://wowpedia.fandom.com/wiki/Gug_Fatcandle?oldid=2895123
DELETE FROM creature WHERE guid=80252 AND id=38; -- duplicate 80246 - already deleted in wotlk-db
DELETE FROM creature WHERE guid=80259 AND id=38; -- d.80148 without spawndist
DELETE FROM creature WHERE guid=80257 AND id=38; -- d.80150 without spawndist
DELETE FROM creature WHERE guid IN (80244,80245); -- d.80256 - reuse for cave patrols
DELETE FROM creature WHERE guid=247 AND id=80; -- changed guid to 80077 to match guid range, 80077 was second patrol spawn in cave
DELETE FROM creature WHERE guid=80071 AND id=80; -- first patrol spawn in cave
DELETE FROM creature WHERE guid=80134 AND id=69; -- Inside Tree

-- Reinsert deleted wotlk-db spawns which are legit
DELETE FROM creature WHERE guid IN (79944,79947,79972,79991,80002,80003,80020,80022,80029,80032,80034,80036,80038,80046,80047,80049,80054,80056,80057,80061,80062,80063,80069,80073,80089,80093,80096,80097,80103,80104,80107,80111,80114,80120,80121,80123,80124,80125,80126,80128,80132,80133,80159,80160,80166,80167,80172,80173,80177,80178,80179,80192,80197,80198,80212,80215,80217,80233,80234,80239,80240,80242,80243,80249,80266);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
(79944, 721, 0, -8954.53, -161.289, 81.7223, 4.62946, 180, 180, 10, 1),
(79947, 721, 0, -8931.63, -137.105, 82.8369, 1.21334, 180, 180, 10, 1),
(79972, 721, 0, -8890.02, -214.179, 80.9554, 5.9517, 180, 180, 10, 1),
(79991, 721, 0, -8829.68, -213.486, 83.9962, 1.54931, 180, 180, 10, 1),
(80002, 6, 0, -8785.46, -171.229, 81.6764, 5.11032, 180, 180, 5, 1),
(80003, 257, 0, -8763.31, -159.256, 82.9625, 5.98151, 180, 180, 5, 1),
(80020, 257, 0, -8768.63, -113.135, 83.7815, 0.0699, 180, 180, 5, 1),
(80022, 257, 0, -8770.12, -117.703, 83.4954, 0, 180, 180, 0, 0),
(80029, 721, 0, -8752.2, -197.95, 86.1366, 3.12472, 180, 180, 10, 1),
(80032, 6, 0, -8768.17, -190.502, 84.5514, 6.08596, 180, 180, 5, 1),
(80034, 257, 0, -8717.47, -144.581, 86.4988, 0.432977, 180, 180, 5, 1),
(80036, 257, 0, -8742.24, -176.21, 85.6366, 5.59501, 180, 180, 5, 1),
(80038, 721, 0, -8680.28, -83.5984, 91.627, 5.55718, 180, 180, 10, 1),
(80046, 257, 0, -8701.35, -118.101, 88.8733, 0.843928, 180, 180, 5, 1),
(80047, 257, 0, -8718.7, -98.3166, 88.3631, 5.60389, 180, 180, 5, 1),
(80049, 257, 0, -8695.04, -103.437, 89.6117, 3.47724, 180, 180, 5, 1),
(80054, 257, 0, -8698.44, -70.5609, 90.2794, 2.97837, 180, 180, 5, 1),
(80056, 257, 0, -8680.79, -120.071, 90.8183, 2.58309, 180, 180, 0, 0),
(80057, 257, 0, -8671.76, -127.471, 91.9537, 3.69248, 180, 180, 7, 1),
(80061, 721, 0, -8718.02, -112.688, 87.425, 0, 180, 180, 10, 1),
(80062, 721, 0, -8673.78, -189.267, 91.329, 0.563237, 180, 180, 10, 1),
(80063, 883, 0, -8686.67, -197.311, 92.329, 3.94988, 180, 180, 5, 1),
(80069, 80, 0, -8657.9, -124.669, 90.9269, 5.76153, 180, 180, 7, 1),
(80073, 721, 0, -8707.05, -204.728, 90.7831, 0.74278, 180, 180, 10, 1),
(80089, 257, 0, -8732.69, -197.638, 88.1356, 5.84854, 180, 180, 0, 0),
(80093, 721, 0, -8812.31, 4.68013, 92.2564, 1.22803, 180, 180, 10, 1),
(80096, 257, 0, -8732.07, -205.732, 89.1581, 5.04892, 180, 180, 5, 1),
(80097, 721, 0, -8693.17, -293.164, 86.948, 1.53297, 180, 180, 10, 1),
(80103, 257, 0, -8778.08, -254.596, 82.0667, 1.81161, 180, 180, 5, 1),
(80104, 721, 0, -8753.21, -215.544, 87.0546, 5.40769, 180, 180, 10, 1),
(80107, 257, 0, -8769.02, -272.632, 78.2358, 2.58601, 180, 180, 5, 1),
(80111, 257, 0, -8813.27, -244.145, 82.2872, 0, 180, 180, 0, 0),
(80114, 6, 0, -8806.91, -226.327, 82.8712, 5.20619, 180, 180, 5, 1),
(80120, 257, 0, -8823.45, -236.78, 82.4202, 4.01583, 180, 180, 5, 1),
(80121, 257, 0, -8819.6, -252.86, 82.5452, 0.517106, 180, 180, 5, 1),
(80123, 883, 0, -8877.66, 14.8767, 93.475, 0.440051, 180, 180, 5, 1),
(80124, 721, 0, -8863.43, 12.5133, 93.6489, 5.15324, 180, 180, 10, 1),
(80125, 890, 0, -8877.7, 13.7454, 93.701, 3.94909, 180, 180, 0, 0),
(80126, 721, 0, -8836.24, -248.546, 82.953, 5.87392, 180, 180, 10, 1),
(80128, 721, 0, -8840.98, -250.706, 82.828, 2.85951, 180, 180, 10, 1),
(80132, 721, 0, -8795.52, -296.763, 76.1108, 5.20217, 180, 180, 10, 1),
(80133, 257, 0, -8705.78, -201.821, 90.9366, 2.87979, 180, 180, 0, 0),
(80159, 721, 0, -9058.14, -245.824, 72.6166, 3.9617, 180, 180, 10, 1),
(80160, 883, 0, -9063.94, -246.895, 72.9306, 1.68514, 180, 180, 5, 1),
(80166, 721, 0, -9027.87, -86.8298, 87.9876, 4.52992, 180, 180, 10, 1),
(80167, 721, 0, -9105.58, -286.043, 72.2814, 2.9609, 180, 180, 10, 1),
(80172, 721, 0, -9104.76, -222.075, 74.0504, 0.212502, 180, 180, 10, 1),
(80173, 721, 0, -9086.03, -256.365, 73.7064, 3.90171, 180, 180, 10, 1),
(80177, 721, 0, -9118.81, -295.869, 73.1261, 2.62033, 180, 180, 10, 1),
(80178, 721, 0, -9133.86, -302.699, 73.6015, 1.65986, 180, 180, 10, 1),
(80179, 721, 0, -9074.24, -344.455, 73.5757, 6.20538, 180, 180, 10, 1),
(80192, 721, 0, -9038.39, -330.808, 73.5767, 6.08521, 180, 180, 10, 1),
(80197, 721, 0, -9152.42, -371.24, 71.9054, 5.00839, 180, 180, 10, 1),
(80198, 883, 0, -9111.69, -363.262, 73.6354, 4.57914, 180, 180, 5, 1),
(80212, 721, 0, -9014.25, -337.865, 74.904, 4.34468, 180, 180, 10, 1),
(80215, 721, 0, -9076.57, -417.09, 75.1228, 4.1304, 180, 180, 10, 1),
(80217, 721, 0, -9062.82, -445.859, 72.3721, 2.75623, 180, 180, 10, 1),
(80233, 883, 0, -9002.12, -420.868, 69.827, 3.13183, 180, 180, 5, 1),
(80234, 721, 0, -8938.28, -391.842, 70.048, 0.868378, 180, 180, 10, 1),
(80239, 721, 0, -8911.16, -418.504, 66.6302, 5.18603, 180, 180, 10, 1),
(80240, 883, 0, -8927.37, -436.047, 66.9626, 0.182826, 180, 180, 5, 1),
(80242, 721, 0, -8893.94, -387.5, 68.8146, 4.92776, 180, 180, 10, 1),
(80243, 721, 0, -8875.71, -389.825, 68.1029, 4.35911, 180, 180, 10, 1),
(80249, 721, 0, -8885.43, -450.312, 65.3791, 4.33639, 180, 180, 10, 1),
(80266, 721, 0, -9009.96, -0.049045, 89.1085, 0, 180, 180, 10, 1);

-- Move spawns (mostly slight changes)

-- Echo Ridge Mine (Inside)
UPDATE creature SET position_x=-8564.4580078125, position_y=-204.276077270507812, position_z=84.195037841796875, orientation=0.783881306648254394, spawndist=2, MovementType=1 WHERE guid=80088 AND id=80;
UPDATE creature SET position_x=-8557.7666015625, position_y=-210.4986572265625, position_z=84.303131103515625, orientation=5.781903743743896484, spawndist=2, MovementType=1 WHERE guid=80084 AND id=80;
UPDATE creature SET position_x=-8561.0517578125, position_y=-217.528427124023437, position_z=85.6754913330078125, orientation=0.835242688655853271, spawndist=2, MovementType=1 WHERE guid=80087 AND id=80;
UPDATE creature SET position_x=-8530.3681640625, position_y=-200.973098754882812, position_z=83.71219635009765625, orientation=3.405654191970825195, spawndist=2, MovementType=1 WHERE guid=80077 AND id=80; -- g.247 befor
UPDATE creature SET position_x=-8537.5126953125, position_y=-182.703567504882812, position_z=84.18082427978515625, orientation=3.040954351425170898, spawndist=2, MovementType=1 WHERE guid=80085 AND id=80;
UPDATE creature SET position_x=-8549.9384765625, position_y=-162.641952514648437, position_z=86.6930694580078125, orientation=0.31669732928276062, spawndist=2, MovementType=1 WHERE guid=80080 AND id=80;
UPDATE creature SET position_x=-8555.830078125, position_y=-147.974929809570312, position_z=88.62181854248046875, orientation=3.338104486465454101, spawndist=2, MovementType=1 WHERE guid=80083 AND id=80;
UPDATE creature SET position_x=-8574.1181640625, position_y=-151.2518310546875, position_z=89.76804351806640625, orientation=3.061751365661621093, spawndist=2, MovementType=1 WHERE guid=80082 AND id=80;
UPDATE creature SET position_x=-8582.537109375, position_y=-171.54876708984375, position_z=91.0548248291015625, orientation=0.737023890018463134, spawndist=2, MovementType=1 WHERE guid=80081 AND id=80;
UPDATE creature SET position_x=-8588.6455078125, position_y=-148.147445678710937, position_z=89.64556121826171875, orientation=5.164839744567871093, spawndist=2, MovementType=1 WHERE guid=80079 AND id=80;
UPDATE creature SET position_x=-8600.880859375, position_y=-137.783859252929687, position_z=87.8886260986328125, orientation=3.570696353912353515, spawndist=2, MovementType=1 WHERE guid=80078 AND id=80;
UPDATE creature SET position_x=-8616.5537109375, position_y=-143.339813232421875, position_z=87.46306610107421875, orientation=1.123633503913879394, spawndist=2, MovementType=1 WHERE guid=80065 AND id=80;
UPDATE creature SET position_x=-8613.9326171875, position_y=-152.721572875976562, position_z=86.10882568359375, orientation=5.938042640686035156, spawndist=2, MovementType=1 WHERE guid=80074 AND id=80;
UPDATE creature SET position_x=-8611.2021484375, position_y=-171.811981201171875, position_z=85.7065582275390625, orientation=3.938332796096801757, spawndist=2, MovementType=1 WHERE guid=80075 AND id=80;
UPDATE creature SET position_x=-8595.4169921875, position_y=-174.217437744140625, position_z=87.119964599609375, orientation=0.461670130491256713, spawndist=2, MovementType=1 WHERE guid=80076 AND id=80;
UPDATE creature SET position_x=-8630.8916015625, position_y=-142.883392333984375, position_z=86.3377685546875, orientation=2.002968549728393554, spawndist=2, MovementType=1 WHERE guid=80064 AND id=80;
UPDATE creature SET position_x=-8640.193359375, position_y=-143.559036254882812, position_z=86.88291168212890625, orientation=1.448623299598693847, spawndist=2, MovementType=1 WHERE guid=80066 AND id=80;
UPDATE creature SET position_x=-8640.3701171875, position_y=-131.9298095703125, position_z=87.23908233642578125, orientation=4.292001247406005859, spawndist=2, MovementType=1 WHERE guid=80070 AND id=80;
UPDATE creature SET position_x=-8659.2939453125, position_y=-123.865653991699218, position_z=91.2222747802734375, orientation=3.559646844863891601, spawndist=2, MovementType=1 WHERE guid=80069 AND id=80;
UPDATE creature SET position_x=-8667.755859375, position_y=-116.916488647460937, position_z=92.39163970947265625, orientation=4.559987068176269531, spawndist=2, MovementType=1 WHERE guid=80059 AND id=257;
UPDATE creature SET spawndist=2 WHERE guid=80057 AND id=257;
UPDATE creature SET spawndist=2 WHERE guid=80060 AND id=80;

-- Echo Ridge Mine (Outside)
UPDATE creature SET position_x=-8790.98046875, position_y=-104.69537353515625, position_z=83.42055511474609375, spawndist=3, MovementType=1 WHERE guid=80021 AND id=257;
UPDATE creature SET spawndist=4 WHERE guid=80013 AND id=6;
UPDATE creature SET spawndist=4 WHERE guid=79995 AND id=6;
UPDATE creature SET position_x=-8786.5908203125, position_y=-143.45770263671875, position_z=82.41024017333984375, spawndist=4, MovementType=1 WHERE guid=79996 AND id=6;
UPDATE creature SET position_x=-8797.119140625, position_y=-174.592605590820312, position_z=81.62673187255859375, spawndist=4, MovementType=1 WHERE guid=79994 AND id=6;
UPDATE creature SET position_x=-8684.7958984375, position_y=-71.5388336181640625, position_z=91.04107666015625, spawndist=3, MovementType=1 WHERE guid=80053 AND id=257;
UPDATE creature SET position_x=-8780.0986328125, position_y=-112.460502624511718, position_z=83.0667877197265625, orientation=6.125873565673828125, spawndist=0, MovementType=0 WHERE guid=80020 AND id=257; -- Path!
UPDATE creature SET position_x=-8759.0078125, position_y=-128.905075073242187, position_z=83.24677276611328125, spawndist=3, MovementType=1 WHERE guid=80024 AND id=6;
-- 80133 movement/path?
UPDATE creature SET position_x=-8756.294921875, position_y=-171.586639404296875, position_z=84.8865966796875, spawndist=3, MovementType=1 WHERE guid=80004 AND id=257;

-- defias vineyard
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80256 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80196 AND id=38;
UPDATE creature SET position_x=-9116.7314453125, position_y=-247.562789916992187, position_z=74.90079498291015625, spawndist=3, MovementType=1 WHERE guid=80175 AND id=38;
UPDATE creature SET position_x=-9092.6865234375, position_y=-354.062286376953125, position_z=73.63507080078125, spawndist=3, MovementType=1 WHERE guid=80207 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80191 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80187 AND id=38;
UPDATE creature SET position_x=-9087.908203125, position_y=-313.7406005859375, position_z=73.47158050537109375, spawndist=3, MovementType=1 WHERE guid=80186 AND id=38;
UPDATE creature_movement SET position_x=-9080.2734375, position_y=-302.56488037109375, position_z=73.4873046875, orientation=2.356194496154785156 WHERE id=80190 AND point=3;
UPDATE creature_movement SET position_x=-9078.1689453125, position_y=-331.13232421875, position_z=73.47158050537109375, orientation=5.257537841796875 WHERE id=80190 AND point=6;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80169 AND id=38;
UPDATE creature SET position_x=-9054.853515625, position_y=-307.7750244140625, position_z=73.5711517333984375, spawndist=3, MovementType=1 WHERE guid=80193 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80194 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80206 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80213 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80214 AND id=38;
UPDATE creature SET position_x=-9028.1826171875, position_y=-337.57403564453125, position_z=73.87834930419921875, spawndist=3, MovementType=1 WHERE guid=80211 AND id=38;
UPDATE creature SET position_x=-9046.0185546875, position_y=-379.35345458984375, position_z=74.0130615234375, spawndist=3, MovementType=1 WHERE guid=80209 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80174 AND id=38;
UPDATE creature SET position_x=-9036.68359375, position_y=-263.01239013671875, position_z=73.43058013916015625, spawndist=3, MovementType=1 WHERE guid=80158 AND id=38;
UPDATE creature SET position_x=-9036.5791015625, position_y=-284.93218994140625, position_z=75.47977447509765625, spawndist=3, MovementType=1 WHERE guid=80153 AND id=38;
UPDATE creature SET position_x=-9087.181640625, position_y=-279.47332763671875, position_z=73.86504364013671875, spawndist=3, MovementType=1 WHERE guid=80168 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80180 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80202 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80199 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80203 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80204 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80224 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80226 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80223 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80222 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80228 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80255 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80254 AND id=38;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=80253 AND id=38;

-- critters
DELETE FROM creature WHERE guid IN (100863,100864,100865); -- location does not exist (-8827.84	-158.623	79.942)
DELETE FROM pool_creature WHERE pool_entry=16291;
DELETE FROM pool_template WHERE entry=16291;

DELETE FROM creature WHERE guid IN (100379,100380); -- d.80062
DELETE FROM pool_creature WHERE pool_entry=16049;
DELETE FROM pool_template WHERE entry=16049;

DELETE FROM creature WHERE guid IN (100896,100897,100898); -- d.80063
DELETE FROM pool_creature WHERE pool_entry=16302;
DELETE FROM pool_template WHERE entry=16302;

DELETE FROM creature WHERE guid IN (100883,100882); -- only deer (100881) - maybe movement as only one spawn was found
DELETE FROM pool_creature WHERE pool_entry=16297;
DELETE FROM pool_template WHERE entry=16297;

DELETE FROM creature WHERE guid IN (100890,100891,100892,100894,100895); -- only deer (100893)
DELETE FROM pool_creature WHERE pool_entry IN (16300,16301);
DELETE FROM pool_template WHERE entry IN (16300,16301);

DELETE FROM creature WHERE guid=100376; -- only rabbit
DELETE FROM pool_creature WHERE pool_entry=16047;
DELETE FROM pool_template WHERE entry=16047;

DELETE FROM creature WHERE guid IN (100885,100886); -- only deer
DELETE FROM pool_creature WHERE pool_entry=16298;
DELETE FROM pool_template WHERE entry=16298;

DELETE FROM creature WHERE guid IN (100335,100336); -- d.80093
DELETE FROM pool_creature WHERE pool_entry=16027;
DELETE FROM pool_template WHERE entry=16027;

DELETE FROM creature WHERE guid IN (100878,100879,100880); -- d.80123
DELETE FROM pool_creature WHERE pool_entry=16296;
DELETE FROM pool_template WHERE entry=16296;
REPLACE INTO creature_spawn_entry (guid, entry) VALUES (80123, 883),(80123, 890); -- Deer, Fawn
UPDATE creature SET id=0 WHERE guid=80123;

DELETE FROM creature WHERE guid IN (100304,100325,100326,100327,100328,100359,100360); -- only one rabbit (100303)
DELETE FROM pool_creature WHERE pool_entry IN (16011,16022,16023,16039);
DELETE FROM pool_template WHERE entry IN (16011,16022,16023,16039);

DELETE FROM creature WHERE guid IN (100285,100286,100367,100368); -- only one rabbit (79944)
DELETE FROM pool_creature WHERE pool_entry IN (16002,16043);
DELETE FROM pool_template WHERE entry IN (16002,16043);

DELETE FROM creature WHERE guid IN (100309,100310,100315,100316,100321,100322); -- only one rabbit (79972)
DELETE FROM pool_creature WHERE pool_entry IN (16014,16017,16020);
DELETE FROM pool_template WHERE entry IN (16014,16017,16020);

DELETE FROM creature WHERE guid IN (100333,100334); -- (79991)
DELETE FROM pool_creature WHERE pool_entry=16026;
DELETE FROM pool_template WHERE entry=16026;

DELETE FROM creature WHERE guid IN (100347,100348,100353,100354,100355,100356,100381,100382); -- only one rabbit (80029)
DELETE FROM pool_creature WHERE pool_entry IN (16033,16036,16037,16050);
DELETE FROM pool_template WHERE entry IN (16033,16036,16037,16050);

DELETE FROM creature WHERE guid IN (100349,100350,100351,100352,100369,100370); -- only one rabbit (80104)
DELETE FROM pool_creature WHERE pool_entry IN (16034,16035,16044);
DELETE FROM pool_template WHERE entry IN (16034,16035,16044);

DELETE FROM creature WHERE guid IN (100377,100378); -- (80097)
DELETE FROM pool_creature WHERE pool_entry=16048;
DELETE FROM pool_template WHERE entry=16048;

DELETE FROM creature WHERE guid IN (100383,100384); -- (80124)
DELETE FROM pool_creature WHERE pool_entry=16051;
DELETE FROM pool_template WHERE entry=16051;

DELETE FROM creature WHERE guid IN (100357,100358); -- (80128/80126, one might be d)
DELETE FROM pool_creature WHERE pool_entry=16038;
DELETE FROM pool_template WHERE entry=16038;	

DELETE FROM creature WHERE guid IN (100337,100338); -- (80132)
DELETE FROM pool_creature WHERE pool_entry=16028;
DELETE FROM pool_template WHERE entry=16028;

DELETE FROM creature WHERE guid IN (100329,100330,100331,100332,100361,100362,100363,100364); -- only one rabbit (80166)
DELETE FROM pool_creature WHERE pool_entry IN (16024,16025,16040,16041);
DELETE FROM pool_template WHERE entry IN (16024,16025,16040,16041);

DELETE FROM creature WHERE guid IN (100281,100282,100365,100366); -- (80266)
DELETE FROM pool_creature WHERE pool_entry IN (16000,16042);
DELETE FROM pool_template WHERE entry IN (16000,16042);

DELETE FROM creature WHERE guid IN (100340,100343,100344); -- only one rabbit (100339)
DELETE FROM pool_creature WHERE pool_entry IN (16029,16031);
DELETE FROM pool_template WHERE entry IN (16029,16031);

DELETE FROM creature WHERE guid IN (100311,100312,100313,100314,100317,100318,100320); -- only one rabbit (100319)
DELETE FROM pool_creature WHERE pool_entry IN (16015,16016,16018,16019);
DELETE FROM pool_template WHERE entry IN (16015,16016,16018,16019);

DELETE FROM creature WHERE guid=100342; -- only one rabbit (100341)
DELETE FROM pool_creature WHERE pool_entry=16030;
DELETE FROM pool_template WHERE entry=16030;

DELETE FROM creature WHERE guid=100302; -- only one rabbit (100301)
DELETE FROM pool_creature WHERE pool_entry=16010;
DELETE FROM pool_template WHERE entry=16010;

DELETE FROM creature WHERE guid=100306; -- only one rabbit (100305)
DELETE FROM pool_creature WHERE pool_entry=16012;
DELETE FROM pool_template WHERE entry=16012;

DELETE FROM creature WHERE guid=100374; -- only one rabbit (100373)
DELETE FROM pool_creature WHERE pool_entry=16046;
DELETE FROM pool_template WHERE entry=16046;

DELETE FROM creature WHERE guid IN (100345,100346,100888,100889); -- only one deer (100887)
DELETE FROM pool_creature WHERE pool_entry IN (16032,16299);
DELETE FROM pool_template WHERE entry IN (16032,16299);

DELETE FROM creature WHERE guid IN (100307,100308); -- (79947)
DELETE FROM pool_creature WHERE pool_entry=16013;
DELETE FROM pool_template WHERE entry=16013;

DELETE FROM creature WHERE guid=100372; -- only one rabbit (100371)
DELETE FROM pool_creature WHERE pool_entry=16045;
DELETE FROM pool_template WHERE entry=16045;

DELETE FROM creature WHERE guid=100324; -- only one rabbit (100323)
DELETE FROM pool_creature WHERE pool_entry=16021;
DELETE FROM pool_template WHERE entry=16021;

DELETE FROM creature WHERE guid IN (100875,100876,100877); -- no sign of groups of critters at this loaction
DELETE FROM pool_creature WHERE pool_entry=16295;
DELETE FROM pool_template WHERE entry=16295;

UPDATE creature SET position_x=-9011.8662109375, position_y=-375.94818115234375, position_z=74.28177642822265625, spawndist=10, MovementType=1 WHERE guid=80227 AND id=883;
UPDATE creature SET position_x=-8934.7197265625, position_y=-409.910369873046875, position_z=66.76636505126953125, spawndist=3, MovementType=1 WHERE guid=80232 AND id=721;
UPDATE creature SET position_x=-9109.2236328125, position_y=-225.481048583984375, position_z=75.0229339599609375, spawndist=3, MovementType=1 WHERE guid=80172 AND id=721;
UPDATE creature SET position_x=-8928.841796875, position_y=-145.51739501953125, position_z=81.92733001708984375 WHERE guid=79947 AND id=721;
UPDATE creature SET position_x=-9092.32421875, position_y=-242.914535522460937, position_z=74.1246337890625 WHERE guid=80160 AND id=883;
UPDATE creature SET position_x=-9088.80566406, position_y=-245.360260009765625, position_z=74.0752868652343 WHERE guid=80163 AND id=890;
UPDATE creature SET position_x=-8987.27734375, position_y=-400.650726318359375, position_z=71.47527313232421875, spawndist=5, MovementType=1 WHERE guid=80233 AND id=883;
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid=80220 AND id=890;
UPDATE creature SET position_x=-9004.31640625, position_y=3.596060037612915039, position_z=91.7077484130859375 WHERE guid=80266 AND id=721;
UPDATE creature SET position_x=-8936.240234375, position_y=-212.720199584960937, position_z=80.09253692626953125 WHERE guid=100305 AND id=721;

DELETE FROM creature WHERE guid IN (80044,80219,80244,80245); -- for wotlk-db (guid 80245 -> 21394 Guid: 107787 in tbc)
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
(80244, 80, 0, -8595.6826171875, -165.30426025390625, 86.78154754638671875, 3.473205089569091796, 180, 300, 0, 2),
(80245, 80, 0, -8587.267578125, -182.257156372070312, 90.8597869873046875, 1.047197580337524414, 180, 300, 0, 2),
(80044, 257, 0, -8753.3095703125, -187.993606567382812, 85.43350982666015625, 4.886921882629394531, 300, 300, 0, 0), -- pair with 80028
(80219, 257, 0, -8749.3837890625, -204.236648559570312, 86.61733245849609375, 0, 300, 300, 2, 1);

DELETE FROM creature_movement WHERE id IN (80244,80245);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(80244, 1, -8602.316, -171.27771, 86.90294, 100, 0, 0),
(80244, 2, -8610.887, -171.69647, 85.71135, 100, 0, 0),
(80244, 3, -8613.497, -163.13908, 85.84101, 100, 0, 0),
(80244, 4, -8613.564, -154.80931, 85.99671, 100, 0, 0),
(80244, 5, -8615.792, -145.80377, 87.478966, 100, 0, 0),
(80244, 6, -8633.49, -146.47, 86.23, 100, 0, 0), -- guessed
(80244, 7, -8645.87, -130.70, 87.62, 100, 0, 0), -- guessed
(80244, 8, -8654.90, -127.00, 89.54, 100, 0, 0), -- guessed via single spawn point
(80244, 9, -8675.37, -119.43, 91.58, 100, 15000, 0), -- guessed via single spawn point
(80244, 10, -8654.90, -127.00, 89.54, 100, 0, 0),
(80244, 11, -8645.87, -130.70, 87.62, 100, 0, 0),
(80244, 12, -8633.49, -146.47, 86.23, 100, 0, 0),
(80244, 13, -8615.792, -145.80377, 87.478966, 100, 0, 0),
(80244, 14, -8613.564, -154.80931, 85.99671, 100, 0, 0),
(80244, 15, -8613.497, -163.13908, 85.84101, 100, 0, 0),
(80244, 16, -8610.887, -171.69647, 85.71135, 100, 0, 0),
(80244, 17, -8602.316, -171.27771, 86.90294, 100, 0, 0),
(80244, 18, -8597.448, -164.56607, 86.72324, 100, 0, 0),
(80244, 19, -8595.534, -162.82173, 86.596756, 100, 0, 0),
(80244, 20, -8595.6826171875, -165.30426025390625, 86.78154754638671875, 3.473205089569091796, 15000, 0), -- spawn point

(80245, 1, -8583.419, -176.35497, 91.23377, 100, 0, 0),
(80245, 2, -8584.538, -162.57129, 91.22785, 100, 0, 0),
(80245, 3, -8579.88, -151.72572, 90.49171, 100, 0, 0),
(80245, 4, -8579.53, -151.78058, 90.44163, 100, 0, 0),
(80245, 5, -8581.539, -151.99066, 90.680084, 100, 0, 0),
(80245, 6, -8578.913, -152.72342, 90.27303, 100, 0, 0),
(80245, 7, -8587.941, -146.21007, 89.78357, 100, 0, 0),
(80245, 8, -8595.029, -140.30205, 88.646454, 100, 0, 0),
(80245, 9, -8602.003, -138.54997, 87.66282, 100, 0, 0),
(80245, 10, -8609.083, -141.23924, 87.61843, 100, 15000, 0),
(80245, 11, -8602.003, -138.54997, 87.66282, 100, 0, 0),
(80245, 12, -8595.029, -140.30205, 88.646454, 100, 0, 0),
(80245, 13, -8587.941, -146.21007, 89.78357, 100, 0, 0),
(80245, 14, -8581.539, -151.99066, 90.680084, 100, 0, 0),
(80245, 15, -8584.538, -162.57129, 91.22785, 100, 0, 0),
(80245, 16, -8587.267578125, -182.257156372070312, 90.8597869873046875, 1.047197580337524414, 15000, 0); -- spawn point

-- Bonus: 6 Slot Bags
DELETE FROM creature_loot_template WHERE entry=62; -- Gug Fatcandle introduced in 4.x
UPDATE creature_template SET lootid=0 WHERE entry=62;

-- 60400 and 60441 are the same
UPDATE creature_loot_template SET item=60441, ChanceOrQuestChance=0.5, mincountOrRef=-60441 WHERE mincountOrRef=-60400; -- 
UPDATE gameobject_loot_template SET item=60441, mincountOrRef=-60441, comments='NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)' WHERE mincountOrRef=-60400; -- Tattered Chest 2845 / Battered Chest 106318
UPDATE reference_loot_template_names SET name='NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)' WHERE entry=60441;
DELETE FROM reference_loot_template WHERE entry=60400;
DELETE FROM reference_loot_template_names WHERE entry=60400;

-- https://web.archive.org/web/20080502071220/http://wow.allakhazam.com/db/mob.html?wmob=1916 - not just black
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE mincountOrRef=-60441; -- 1% befor (79 had 85 which is wrong, 99 already at 0.5 chances vary between ~0.3 and 1)
DELETE FROM creature_loot_template WHERE item IN (805,828,4496,5571,5572); -- refloot 60441 contains these (old chance 0.25 per item)

DELETE FROM creature_loot_template WHERE mincountOrRef=-60441 AND entry IN (30,38,69,103,113,118,119,299,330,704,705,706,707,708,724,808,946,1125,1126,1127,1128,1131,1133,1138,1190,1195,1199,1201,1501,1502,1504,1505,1506,1507,1508,1509,1512,1513,1547,1548,1549,1553,1554,1555,1667,1688,1718,1765,1890,1916,1917,1918,1919,1922,1984,1985,1986,1988,1989,1994,1995,1996,1997,1998,1999,2000,2001,2031,2032,2033,2034,2042,2043,2070,2231,2234,2952,2953,2954,2955,2956,2957,2958,2961,2966,2969,2970,2971,2972,2973,3035,3098,3099,3100,3101,3102,3107,3108,3110,3123,3124,3125,3126,3127,3183,3225,3226,3227,3229,3281,6789,8554,
1211,3122,5826,199,481,834,1172,1173,1530,1532,1539,1540,1769,2014,2030,2176,2189,2965,3118,3131,3198,3199,3267,3268,3379); -- vmangos and legit
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60441, 0.5, 0, -60441, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)' FROM creature_template WHERE entry IN (
-- classic
30,38,69,103,113,118,119,299,330,704,705,706,707,708,724,808,946,1125,1126,1127,1128,1131,1133,1138,1190,1195,1199,1201,1501,1502,1504,1505,1506,1507,1508,1509,1512,1513,1547,1548,1549,1553,1554,1555,1667,1688,1718,1765,1890,1916,1917,1918,1919,1922,1984,1985,1986,1988,1989,1994,1995,1996,1997,1998,1999,2000,2001,2031,2032,2033,2034,2042,2043,2070,2231,2234,2952,2953,2954,2955,2956,2957,2958,2961,2966,2969,2970,2971,2972,2973,3035,3098,3099,3100,3101,3102,3107,3108,3110,3123,3124,3125,3126,3127,3183,3225,3226,3227,3229,3281,6789,8554,
-- vmangos additions (all level 10-11, except 1211,3122,5826)
1211,3122,5826,199,481,834,1172,1173,1530,1532,1539,1540,1769,2014,2030,2176,2189,2965,3118,3131,3198,3199,3267,3268,3379);

-- Slightly increased ChanceOrQuestChance for some mobs
UPDATE creature_loot_template SET ChanceOrQuestChance=0.66 WHERE mincountOrRef=-60441 AND entry IN (6,80,257,6866,1124,808,724,1199,707,1718,1533,1890,1918,1501,1918,1935,2013,6911,3281);

-- 2973,3225,3226 not strangly - https://web.archive.org/web/20080430135734/http://wow.allakhazam.com/db/mob.html?wmob=2973
-- level 10-11 mobs seem to have both bag loots in tbc c.119,1765,2034,2070,2234,3110,3227,16350,17525
UPDATE creature_loot_template SET ChanceOrQuestChance=0.75 WHERE mincountOrRef=-60441 AND entry IN (199,481,834,1172,1173,1530,1532,1539,1540,1769,2014,2030,2176,2189,2965,3118,3131,3198,3199,3267,3268,3379,119,1765,2034,2070,2234,3110,3199,3227,2973,3225,3226);
UPDATE creature_loot_template SET ChanceOrQuestChance=0.25 WHERE mincountOrRef=-60442 AND entry IN (199,481,834,1172,1173,1530,1532,1539,1540,1769,2014,2030,2176,2189,2965,3118,3131,3198,3199,3267,3268,3379,119,1765,2034,2070,2234,3110,3199,3227,2973,3225,3226);

-- Correct new Name
UPDATE creature_loot_template SET comments='NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)' WHERE mincountOrRef=-60441;

-- Outside Northshire
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (80391,80399,80403,80404) AND id=116;
UPDATE creature SET position_x=-9952.3564453125, position_y=-132.7373046875, position_z=25.45180892944335937, orientation=3.473205089569091796 WHERE guid=80737 AND id=6846; -- most static waypoint

UPDATE creature_template SET CallForHelp=5 WHERE entry IN ( -- 10
116 -- Defias Bandit (see c.285075)
);
