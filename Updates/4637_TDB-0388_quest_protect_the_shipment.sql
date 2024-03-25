-- Protect the Shipment Escort Path
SET @PATH := 1379;

-- Miran escort waypoints
DELETE FROM waypoint_path_name WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (@PATH, 'Loch Modan - Miran - Protect the Shipment Escort Quest');

DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-5764.806,-3433.9333,305.89038,100,1000,0),
(@PATH,2,-5751.164,-3450.2922,302.45914,100,0,0),
(@PATH,3,-5737.4673,-3486.4268,302.19592,100,0,0),
(@PATH,4,-5728.1,-3501.6533,303.34442,100,0,0),
(@PATH,5,-5717.149,-3519.3572,302.8644,100,0,0),
(@PATH,6,-5712.0923,-3528.7327,304.61722,100,0,0),
(@PATH,7,-5698.518,-3559.003,307.1724,100,0,0),
(@PATH,8,-5689.358,-3573.9585,309.2788,100,0,0),
(@PATH,9,-5679.814,-3584.678,310.06387,100,0,0),
(@PATH,10,-5675.2456,-3603.6702,312.3123,100,0,0),
(@PATH,11,-5671.625,-3626.4856,311.11926,100,0,0),
(@PATH,12,-5677.7764,-3644.4307,314.56738,100,0,0),
(@PATH,13,-5682.9844,-3649.1074,314.9604,100,0,0),
(@PATH,14,-5691.712,-3669.0032,312.35095,100,0,0),
(@PATH,15,-5699.7666,-3699.7002,314.42508,100,0,0),
-- using same wp doubled to get correct delays in cpp script
(@PATH,16,-5700.0195,-3733.447,318.5934,100,1000,0),
(@PATH,17,-5700.0195,-3733.447,318.5934,100,0,0),
(@PATH,18,-5701.547,-3756.4023,322.3683,100,0,0),
(@PATH,19,-5692.01,-3769.2769,324.0049,100,0,0),
(@PATH,20,-5688.092,-3783.6924,322.55017,100,0,0),
(@PATH,21,-5699.122,-3792.007,322.45114,100,1000,0);

-- Correct respawn times to Miran, it respawns between 60 and 70 seconds after escort death
UPDATE creature SET spawntimesecsmin = "60", spawntimesecsmax = "70" WHERE guid = "8975" AND id = "1379";

-- Correct speed
-- [0] WalkSpeed: 2.5
-- [0] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = "1", SpeedRun = "1.14286" WHERE entry = 1379;
