-- Thelsamar - Loch Modan

-- Thelsamar Mountaineer 8055
-- shouldnt be there
DELETE FROM creature_addon WHERE guid=9406;
DELETE FROM creature_movement WHERE id=9406;
DELETE FROM game_event_creature WHERE guid=9406;
DELETE FROM game_event_creature_data WHERE guid=9406;
DELETE FROM creature_battleground WHERE guid=9406;
DELETE FROM creature_linking WHERE guid=9406
 OR master_guid=9406;
DELETE FROM creature WHERE guid=9406;

-- Mountaineer Harn 2506
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 2506;

-- Mountaineer Ozmok 2510
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE id = 2510;

-- Mountaineer Langarr 2517
UPDATE creature SET position_x = -5349.044434, position_y = -2982.273926, position_z = 323.870056, spawndist = 3, MovementType = 1 WHERE id = 2517;

-- Mountaineer Wuar 2508
UPDATE creature SET position_x = -5261.833496, position_y = -2973.667480, position_z = 346.573425, spawndist = 5, MovementType = 1 WHERE id = 2508;

-- Mountaineer Cragg 2509
UPDATE creature SET position_x = -5271.786133, position_y = -2929.112061, position_z = 350.226746, spawndist = 5, MovementType = 1 WHERE id = 2509;

-- Mountaineer Dalk 1338
UPDATE creature SET position_x = -5245.689453, position_y = -2999.479004, position_z = 331.008484, spawndist = 5, MovementType = 1 WHERE id = 1338;

-- Mountaineer Uthan 2507
UPDATE creature SET position_x = -5253.019531, position_y = -3041.876465, position_z = 338.009918, spawndist = 5, MovementType = 1 WHERE id = 2507;

-- Mountaineer Bludd 2511
UPDATE creature SET position_x = -5293.876953, position_y = -3068.288330, position_z = 343.833954, spawndist = 5, MovementType = 1 WHERE id = 2511;

-- Mountaineer Fazgard 2515
UPDATE creature SET position_x = -5353.411133, position_y = -3063.566650, position_z = 344.984467, spawndist = 5, MovementType = 1 WHERE id = 2515;

-- Mountaineer Swarth 2518
UPDATE creature SET position_x = -5389.030762, position_y = -3027.919678, position_z = 348.550415, spawndist = 5, MovementType = 1 WHERE id = 2518;

-- Mountaineer Roghan 2512
UPDATE creature SET position_x = -5433.442871, position_y = -2952.091064, position_z = 350.478241, spawndist = 7, MovementType = 1 WHERE id = 2512;

-- Mountaineer Modax 2514
UPDATE creature SET position_x = -5307.227051, position_y = -3031.258301, position_z = 324.285278, spawndist = 5, MovementType = 1 WHERE id = 2514;
DELETE FROM creature_movement WHERE id IN (8236);

-- Mountaineer Gwarth 1337
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 1337;
DELETE FROM creature_movement WHERE id IN (8304);

-- Mountaineer Janha 2513
UPDATE creature_template SET MovementType = 2 WHERE Entry = 2513;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 2513;
DELETE FROM creature_movement WHERE id IN (8237);
DELETE FROM creature_movement_template WHERE entry = 2513;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2513,1,-5305.818,-2970.573,346.63016,3.66186,60000,0),
(2513,2,-5292.368,-2966.6975,350.6925,100,0,0);

-- Mountaineer Kadrell 1340
UPDATE creature_template SET MovementType = 2 WHERE Entry = 1340;
UPDATE creature SET position_x = -5367.582, position_y = -2936.2083, position_z = 327.6403, spawndist = 0, MovementType = 2 WHERE id = 1340;
DELETE FROM creature_movement WHERE id IN (8742);
DELETE FROM creature_movement_template WHERE entry = 1340;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1340,1,-5367.582,-2936.2083,327.6403,100,0,0),
(1340,2,-5383.0415,-2920.7136,333.789,100,0,0),
(1340,3,-5392.748,-2909.121,338.15594,100,0,0),
(1340,4,-5397.4463,-2902.0103,339.67352,100,0,0),
(1340,5,-5402.143,-2894.7766,341.5991,100,0,0),
(1340,6,-5398.1035,-2903.051,339.6159,100,0,0),
(1340,7,-5391.07,-2913.002,336.7763,100,0,0),
(1340,8,-5379.58,-2925.7773,331.9743,100,0,0),
(1340,9,-5365.318,-2938.39,326.82092,100,0,0),
(1340,10,-5356.2173,-2949.9868,324.00916,100,0,0),
(1340,11,-5351.3276,-2961.7864,323.88416,100,0,0),
(1340,12,-5347.1963,-2976.2473,324.37387,100,0,0),
(1340,13,-5340.868,-2988.347,323.74887,100,0,0),
(1340,14,-5338.276,-2999.2102,323.84335,100,0,0),
(1340,15,-5336.951,-3009.508,324.22464,100,0,0),
(1340,16,-5333.172,-3018.8977,324.24454,100,0,0),
(1340,17,-5328.7725,-3022.3794,324.07828,100,0,0),
(1340,18,-5320.26,-3023.7024,324.20767,100,0,0),
(1340,19,-5306.8794,-3024.5286,324.07632,100,0,0),
(1340,20,-5286.1562,-3022.7673,324.2688,100,0,0),
(1340,21,-5269.3535,-3013.7205,325.20947,100,0,0),
(1340,22,-5259.6807,-3006.779,327.50864,100,0,0),
(1340,23,-5272.7666,-3015.8997,324.79834,100,0,0),
(1340,24,-5281.762,-3021.1375,324.18945,100,0,0),
(1340,25,-5292.693,-3022.9146,324.24927,100,0,0),
(1340,26,-5306.523,-3024.0059,324.07632,100,0,0),
(1340,27,-5316.5415,-3025.1194,324.07632,100,0,0),
(1340,28,-5325.3706,-3024.2166,324.07632,100,0,0),
(1340,29,-5331.681,-3020.5056,324.0424,100,0,0),
(1340,30,-5336.662,-3013.1345,324.33255,100,0,0),
(1340,31,-5338.3804,-3001.6204,323.97122,100,0,0),
(1340,32,-5339.8306,-2989.3547,323.74887,100,0,0),
(1340,33,-5343.668,-2982.284,324.07114,100,0,0),
(1340,34,-5348.254,-2973.2366,324.37387,100,0,0),
(1340,35,-5350.712,-2960.7065,323.78235,100,0,0),
(1340,36,-5357.532,-2946.7402,324.30432,100,0,0);

-- Mountaineer Stenn 1278
UPDATE creature_template SET MovementType = 2 WHERE Entry = 1278;
UPDATE creature SET position_x = -5385.401, position_y = -2874.934, position_z = 341.09842, spawndist = 0, MovementType = 2 WHERE id = 1278;
DELETE FROM creature_movement_template WHERE entry = 1278;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1278,1,-5385.401,-2874.934,341.09842,100,0,0),
(1278,2,-5393.8423,-2884.0344,341.91898,100,0,0),
(1278,3,-5396.5483,-2889.0977,341.91898,100,0,0),
(1278,4,-5400.0684,-2890.885,342.00314,1.571,60000,0),
(1278,5,-5402.481,-2884.2573,342.6362,100,0,0),
(1278,6,-5396.956,-2881.7124,342.03714,100,0,0),
(1278,7,-5385.517,-2874.8918,341.09354,100,0,0),
(1278,8,-5376.2427,-2867.6233,340.66898,100,0,0),
(1278,9,-5367.3916,-2861.6072,340.53302,100,0,0),
(1278,10,-5358.194,-2859.1604,339.8609,100,0,0),
(1278,11,-5346.847,-2858.043,340.30157,100,0,0),
(1278,12,-5322.527,-2861.0005,339.5642,100,0,0),
(1278,13,-5311.0107,-2864.3875,339.42285,100,0,0),
(1278,14,-5297.2744,-2870.3196,339.08035,100,0,0),
(1278,15,-5285.6504,-2877.588,338.8467,100,0,0),
(1278,16,-5275.1274,-2882.3528,338.84476,100,0,0),
(1278,17,-5262.815,-2883.9531,339.22354,100,0,0),
(1278,18,-5247.65,-2884.1675,339.26114,100,0,0),
(1278,19,-5240.0635,-2880.8137,338.97354,100,0,0),
(1278,20,-5221.147,-2866.3352,337.4262,100,0,0),
(1278,21,-5205.6313,-2855.375,336.35687,100,0,0),
(1278,22,-5191.6562,-2850.122,335.83655,100,0,0),
(1278,23,-5166.758,-2844.8057,334.48743,100,0,0),
(1278,24,-5191.9155,-2850.2246,335.78894,100,0,0),
(1278,25,-5203.2573,-2854.864,336.13348,100,0,0),
(1278,26,-5214.619,-2861.625,336.9355,100,0,0),
(1278,27,-5227.9976,-2871.2993,338.06952,100,0,0),
(1278,28,-5241.155,-2882.0657,338.97354,100,0,0),
(1278,29,-5246.8105,-2883.6885,339.20377,100,0,0),
(1278,30,-5256.9976,-2884.8328,339.34854,100,0,0),
(1278,31,-5271.8325,-2883.1067,339.00516,100,0,0),
(1278,32,-5279.9434,-2881.1145,338.71976,100,0,0),
(1278,33,-5288.963,-2875.438,338.84476,100,0,0),
(1278,34,-5298.9004,-2869.2915,339.21976,100,0,0),
(1278,35,-5327.9663,-2859.7532,339.76318,100,0,0),
(1278,36,-5345.935,-2858.2246,340.2359,100,0,0),
(1278,37,-5360.096,-2859.9106,340.00812,100,0,0),
(1278,38,-5366.2983,-2860.871,340.49396,100,0,0),
(1278,39,-5372.3315,-2864.812,340.58868,100,0,0);
