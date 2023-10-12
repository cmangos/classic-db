-- Squiddic 14270
-- Duplicates Removed - TBC/Classic - diff guids PLS correct
-- 1 spawn left - guid = 10169
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169)
 OR master_guid IN (SELECT guid FROM creature where id = 14270 AND guid != 10169);
DELETE FROM creature WHERE id = 14270 AND guid != 10169;
-- Removed from pools
DELETE FROM pool_creature_template WHERE id = 14270; -- 1095	1	Squiddic (14270)
DELETE FROM pool_template WHERE entry = 1095;
-- wps
UPDATE creature SET position_x = -9519.936, position_y = -2576.626, position_z = 51.65629, spawndist = 0, MovementType = 2 WHERE id = 14270;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14270;
DELETE FROM creature_movement WHERE id IN (10169);
DELETE FROM creature_movement_template WHERE entry = 14270;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(14270,1 ,-9519.936,-2576.626,51.65629,100,0,0),
(14270,2 ,-9552.533,-2579.19,53.43765,100,0,0),
(14270,3 ,-9550.569,-2611.4473,53.784504,100,0,0),
(14270,4 ,-9551.546,-2648.616,52.78072,100,0,0),
(14270,5 ,-9549.171,-2680.0127,52.446655,100,0,0),
(14270,6 ,-9546.93,-2714.0422,52.00598,100,0,0),
(14270,7 ,-9522.62,-2739.667,46.962234,100,0,0),
(14270,8 ,-9488.057,-2750.3303,47.687325,100,0,0),
(14270,9 ,-9447.107,-2745.761,43.969578,100,0,0),
(14270,10,-9420.145,-2716.4578,45.219208,100,0,0),
(14270,11,-9404.2705,-2685.8096,51.52495,100,0,0),
(14270,12,-9386.397,-2674.8538,53.73822,100,0,0),
(14270,13,-9381.029,-2644.0718,45.08824,100,0,0),
(14270,14,-9350.273,-2616.7996,29.851065,100,0,0),
(14270,15,-9344.348,-2585.2432,23.476347,100,0,0),
(14270,16,-9339.8,-2547.5325,16.689884,100,0,0),
(14270,17,-9321.223,-2519.3645,21.85187,100,0,0),
(14270,18,-9319.624,-2479.8213,38.13477,100,0,0),
(14270,19,-9332.45,-2452.6458,46.595295,100,0,0),
(14270,20,-9347.441,-2430.7454,42.506027,100,0,0),
(14270,21,-9371.673,-2410.3157,36.52871,100,0,0),
(14270,22,-9412.264,-2411.139,51.03227,100,0,0),
(14270,23,-9444.449,-2412.266,53.813065,100,0,0),
(14270,24,-9479.387,-2421.909,53.740257,100,0,0),
(14270,25,-9515.257,-2450.3674,47.931736,100,0,0),
(14270,26,-9520.9375,-2486.408,39.263382,100,0,0),
(14270,27,-9513.316,-2513.1453,45.109367,100,0,0),
(14270,28,-9495.657,-2545.3882,50.606506,100,0,0);

