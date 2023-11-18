-- Add your query below.
-- https://github.com/vmangos/core/commit/71781a0a17e9406703a3e06c0c39895a8240c179

-- Pathing for Lady Zephris Entry: 14277
-- https://www.youtube.com/watch?v=GAzEaEKKtgU&t=6027s
SET @NPC := 14277;
UPDATE `creature` SET `spawndist`=0,`movementtype`=4,`position_x`=-1473.6924,`position_y`=-1099.3652,`position_z`=-4.3176775 WHERE `id`=@NPC;
DELETE FROM `creature_movement` WHERE `id` = 16047;
DELETE FROM `pool_creature_template` WHERE `id` = 14277;
DELETE FROM `pool_template` WHERE `entry` = 1080; -- 1080	1	Lady Zephris (14277)
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-1473.6924,-1099.3652,-4.3176775,100,0,0),
(@NPC,2,-1478.4865,-1077.9651,-6.023244,100,0,0),
(@NPC,3,-1460.6696,-1051.921,-7.36767,100,0,0),
(@NPC,4,-1427.7164,-1040.4044,-2.0780458,100,0,0),
(@NPC,5,-1397.5704,-1032.105,-1.5046282,100,0,0),
(@NPC,6,-1359.5472,-1021.6162,-1.1081097,100,0,0),
(@NPC,7,-1318.3431,-1009.285,-1.7393727,100,0,0),
(@NPC,8,-1293.9735,-994.2434,-0.91534543,100,0,0),
(@NPC,9,-1279.4846,-972.2039,-1.0127575,100,0,0),
(@NPC,10,-1259.8593,-943.91235,0.43451452,100,0,0),
(@NPC,11,-1245.7662,-916.38556,0.21085262,100,0,0),
(@NPC,12,-1230.8981,-889.93195,-0.2990613,100,0,0),
(@NPC,13,-1202.3557,-861.0522,0.1274085,100,0,0),
(@NPC,14,-1181.9938,-838.1403,-0.07147527,100,0,0),
(@NPC,15,-1155.6682,-812.21387,0.00438118,100,0,0),
(@NPC,16,-1135.0479,-793.8221,0.73909044,100,0,0),
(@NPC,17,-1101.6415,-791.8814,-0.24045515,100,0,0);
-- 0x204CB000000DF140000007000039B364 .go xyz -1473.6924 -1099.3652 -4.3176775

-- End of migration.

