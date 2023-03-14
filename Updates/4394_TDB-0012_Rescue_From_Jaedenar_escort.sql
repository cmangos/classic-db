-- Captured Arko'narin 11016 (hp ~6186) - healthmulti 3
-- Arko'narin 11018 (hp ~5270) - 18167 18163 - healthmulti 2
-- update creature_template set speedwalk = 5 where entry IN (11016,11018); -- testing
UPDATE `creature_template` SET `HealthMultiplier` = 2 WHERE `entry` = 11018;
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES (11018, 1, '18167'); -- 18163 has cast time.

SET @PATH := 11016;

-- Captured Arkonarin escort quest waypoints
DELETE FROM waypoint_path_name WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (@PATH, 'Felwood - Captured Arko''narin 11016 - Escort Quest 5203');

DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,5005.385,-440.50992,319.2293,100, 4000, 0),
(@PATH,2,4991.4385,-444.48938,317.5795,100,0,0),
(@PATH,3,4991.4385,-444.48938,317.5795,100,0,0),
(@PATH,4,4984.9556,-460.7537,316.28778,100,0,0),
(@PATH,5,4988.1978,-467.31284,317.44144,100,0,0),
(@PATH,6,4994.9087,-469.4273,318.79675,100,0,0),
(@PATH,7,5002.31,-467.15088,320.10434,100,0,0),
(@PATH,8,5012.154,-461.27045,321.65796,100,0,0),
(@PATH,9,5017.807,-460.28842,322.10263,100,0,0),
(@PATH,10,5024.5728,-460.24817,321.99585,100,0,0),
(@PATH,11,5029.4185,-467.0096,320.13037,100,0,0),
(@PATH,12,5027.9434,-473.5292,319.05075,100,0,0),
(@PATH,13,5026.78,-482.70178,317.9169,100,0,0),
(@PATH,14,5027.596,-495.37738,316.86572,100,0,0),
(@PATH,15,5031.8604,-509.9055,314.5707,100,0,0),
(@PATH,16,5037.6606,-520.79224,313.40643,100,8000,@PATH*100+1),
(@PATH,17,5052.1323,-517.8808,313.2293,100,0,0),
(@PATH,18,5059.9575,-521.26807,313.2293,100,0,0),
(@PATH,19,5062.8857,-527.3165,313.2293,100,0,0),
(@PATH,20,5064.819,-537.95984,313.47986,100,0,0),
(@PATH,21,5060.314,-549.9413,313.3523,100,0,0),
(@PATH,22,5058.979,-557.11633,312.138,100,0,0),
(@PATH,23,5059.847,-563.6537,309.9297,100,0,0),
(@PATH,24,5050.1973,-568.97754,306.84048,100,0,0),
(@PATH,25,5039.7983,-564.5896,303.17828,100,0,0),
(@PATH,26,5036.656,-556.73517,300.7241,100,0,0),
(@PATH,27,5039.9565,-544.66254,297.99673,100,0,0),
(@PATH,28,5046.519,-535.02594,298.0221,100,0,0),
(@PATH,29,5064.163,-524.0127,297.82928,100,0,0),
(@PATH,30,5068.3394,-513.4797,297.113,100,0,0),
(@PATH,31,5063.6235,-505.21686,297.71915,100,0,0),
(@PATH,32,5061.36,-495.92786,297.6322,100,0,0),
(@PATH,33,5070.411,-489.17145,298.23187,5.393067359924316406, 8000, @PATH*100+2),
(@PATH,34,5107.8843,-528.0179,296.82925,100,0,0),
(@PATH,35,5110.363,-532.89453,296.99344,100,8000, @PATH*100+3),
(@PATH,36,5110.363,-532.89453,296.99344,1.867502331733703613,11000, @PATH*100+4),
(@PATH,37,5089.5312,-495.15326,296.82928,100,1,@PATH*100+5),
(@PATH,38,5073.8433,-481.31906,298.43106,100,0,@PATH*100+6),
(@PATH,39,5063.9375,-491.75717,298.24835,100,0,0),
(@PATH,40,5061.162,-502.3304,297.8974,100,0,0),
(@PATH,41,5068.2134,-518.224,297.75003,100,0,0),
(@PATH,42,5063.979,-525.0657,297.82928,100,0,0),
(@PATH,43,5047.276,-531.2634,297.82394,100,0,0),
(@PATH,44,5039.152,-542.5412,298.02368,100,0,0),
(@PATH,45,5037.066,-561.35284,301.9989,100,0,0),
(@PATH,46,5045.567,-568.8012,305.17484,100,0,0),
(@PATH,47,5056.2344,-567.3854,308.34384,100,0,0),
(@PATH,48,5062.1025,-558.711,311.37115,100,0,0),
(@PATH,49,5060.6504,-547.4586,313.3523,100,0,0),
(@PATH,50,5065.0493,-532.2166,313.2293,100,0,0),
(@PATH,51,5058.3022,-521.01886,313.2293,100,0,0),
(@PATH,52,5047.1064,-518.18115,313.31708,100,0,0),
(@PATH,53,5035.7124,-519.3962,313.45596,100,0,0),
(@PATH,54,5035.7124,-519.3962,313.45596,100,0,0),
(@PATH,55,5029.696,-467.94873,319.98193,100,0,0),
(@PATH,56,5024.152,-461.2814,321.97348,100,0,0),
(@PATH,57,5019.582,-458.42606,322.1191,100,0,0),
(@PATH,58,5010.1294,-464.2136,321.4234,100,0,0),
(@PATH,59,4988.3423,-467.53082,317.51245,100,0,0),
(@PATH,60,4984.4624,-455.97217,316.22925,100,0,0),
(@PATH,61,4999.1963,-439.00473,318.9561,100,0,0),
(@PATH,62,4994.8633,-423.0736,318.85876,100,0,0),
(@PATH,63,4986.932,-417.27542,320.33014,100,0,0),
(@PATH,64,4975.5933,-427.3023,323.7214,100,0,0),
(@PATH,65,4966.3696,-431.93497,325.14087,100,0,0),
(@PATH,66,4956.235,-425.33032,326.28345,100,0,0),
(@PATH,67,4951.4956,-408.74103,327.92834,100,0,0),
(@PATH,68,4941.843,-401.1662,329.89993,100,0,0),
(@PATH,69,4929.8115,-399.1336,331.82446,100,0,0),
(@PATH,70,4919.568,-395.4346,333.9033,100,0,0),
(@PATH,71,4915.311,-393.2736,333.82928,100,0,0),
(@PATH,72,4909.621,-394.9223,333.3041,100,0,0),
(@PATH,73,4903.3105,-397.09467,335.84195,100,0,0),
(@PATH,74,4896.3345,-394.248,337.85352,100,0,0),
(@PATH,75,4893.8433,-388.0936,339.49973,100,0,0),
(@PATH,76,4895.888,-381.97626,341.19412,100,0,0),
(@PATH,77,4908.1626,-379.1542,344.5292,100,0,0),
(@PATH,78,4912.6416,-383.83063,346.25305,100,0,0),
(@PATH,79,4909.004,-395.9782,349.56396,100,0,0),
(@PATH,80,4902.413,-397.6088,351.25735,100,0,0),
(@PATH,81,4894.701,-391.7082,351.64682,100,0,0),
(@PATH,82,4875.6304,-395.53656,349.80856,100,0,0),
(@PATH,83,4875.6304,-395.53656,349.80856,3.3,10000,@PATH*100+7),
(@PATH,84,4875.6304,-395.53656,349.80856,100,4000,@PATH*100+8),
(@PATH,85,4875.6304,-395.53656,349.80856,100,3000,0),
(@PATH,86,4850.2827,-395.76785,351.11014,100,0,0),
(@PATH,87,4809.8555,-400.96445,349.46268,100,0,0),
(@PATH,88,4790.0693,-431.56894,344.31335,100,2000,@PATH*100+9);

DELETE FROM `dbscripts_on_creature_movement` WHERE id BETWEEN @PATH*100+1 AND @PATH*100+9;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@PATH*100+1,2000,0,0,0,0,0,0,0,0,6456,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarinn - Say Text'),
(@PATH*100+1,2000,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarinn - Emote Exclamation'),
(@PATH*100+2,3000,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Emote Point'),
(@PATH*100+2,3000,1,0,0,0,0,0,0,0,6457,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Say Text'),
(@PATH*100+2,7000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Set Run'),
(@PATH*100+3,0,0,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Kneel'),
(@PATH*100+3,4000,0,13,0,0,0,176225,5,1,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Open Chest'),
(@PATH*100+3,8000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Remove Kneel'),
(@PATH*100+4,0,0,15,18163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Cast Strength of Arko''narin'),
(@PATH*100+4,4000,0,44,11018,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Update Entry'),
(@PATH*100+4,4000,1,0,0,0,0,0,0,0,6458,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Say Text'),
(@PATH*100+4,4000,2,15,18167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Cast Holy Fire'), -- seems to be as template, but make it in script due to tempalte change overwrite etc.
(@PATH*100+4,8000,0,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Emote'),
(@PATH*100+4,10000,0,53,0,0,0,0,0,0,6507,1,0,0,0,0,0,0,0,0,0,'Arkonarinn - Spawn Felwood - Jaedenar Legionnaire (3) (q.5203)'),
(@PATH*100+4,11000,0,53,0,0,0,0,0,0,6507,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Unset Worldstate'),
(@PATH*100+4,11000,0,0,0,0,0,0,0,0,6460,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Say Text'),
(@PATH*100+5,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Arkonarin - Set Run off'),
(@PATH*100+6,1000,0,10,9862,300000,0,0,0,0,0,0,0,0,0,5048.734,-542.875,297.8015,1.276,0,0,'Arkonarinn - Spawn Jaedener Legionnaire'),
(@PATH*100+6,1000,0,10,9862,300000,0,0,0,0,0,0,0,0,0,5038.699,-539.362,297.8013,0.6297,0,0,'Arkonarinn - Spawn Jaedener Legionnaire'),
(@PATH*100+7,1000,0,0,0,0,0,0,0,0,6461,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Say Text'),
(@PATH*100+7,1000,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Emote Cheer'),
(@PATH*100+7,6000,0,10,11141,60000,1,0,0,0,1,0,0,0,0,4822.424,-410.268,350.019,1.283,0,0,'Arkonarinn - Spawn Spirit of Trey'),
(@PATH*100+7,10000,0,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Emote Cry'),
(@PATH*100+7,10000,1,0,0,0,0,0,0,0,6463,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Say Text'),
(@PATH*100+8,1000,0,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Emote Cry'),
(@PATH*100+8,1000,1,0,0,0,0,0,0,0,6468,0,0,0,0,0,0,0,0,0,0,'Arkonarinn - Say Text'),
(@PATH*100+8,1000,2,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarin - Set Run'),
(@PATH*100+9,1000,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Arkonarin - Despawn self');

-- Pre spawned Jaedenar Legionnaire
DELETE FROM `creature` WHERE `guid` IN (40500, 40501, 40502); -- free classic-wotlk
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES 
('40500', '9862', '1','5077.29', '-474.842', '298.368', '5.596', '120', '120', '0', '2'), 
('40501', '9862', '1','5070.46', '-481.638', '298.331', '5.59208', '120', '120', '0', '2'),
('40502', '9862', '1','5070.68', '-491.728', '297.619', '0.337759', '120', '120', '0', '2');

-- Spirit of Trey and Jaedenar Legionnaire waypoints
DELETE FROM creature_movement WHERE Id IN (40500,40501,40502);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`,`WaitTime`, `ScriptId`, `Comment`) VALUES 
(40500, 1, 5077.29,-474.842,298.368,100, 0, 0, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire'),
(40500, 2, 5081.596,-483.499,298.011,100, 1, 3, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire'), -- GENERIC - Change Movement To 0 - Idle
(40501, 1, 5070.46,-481.638,298.331,100, 0, 0, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire'),
(40501, 2, 5079.288,-487.634,297.511,100, 1, 3, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire'),
(40502, 1, 5070.68,-491.728,297.619,100, 0, 0, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire'),
(40502, 2, 5080.429,-490.970,296.85,100, 1, 3, 'Felwood - Rescue From Jaedenar - Jaedenar Legionnaire');

DELETE FROM `spawn_group` WHERE `Id` IN (19030, 19031);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
('19030', 'Felwood - Jaedenar Legionnaire (3) (q.5203)', '0', '0', '6507', '0');

DELETE FROM `spawn_group_spawn` WHERE `Id` IN (19030);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
('19030', '40500', '0'),
('19030', '40501', '1'),
('19030', '40502', '2');

DELETE FROM `worldstate_name` WHERE `Id` IN (6507);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
('6507', 'Quest ID 5203 - Jaedenar Legionnaire Spawn');

DELETE FROM `conditions` WHERE `condition_entry` IN (6507);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
('6507', '42', '6507', '0', '1', '0', '0', 'Quest ID 5203 - Jaedenar Legionnaire Spawn');

-- Spirit of Trey  waypoints
DELETE FROM creature_movement_template WHERE Entry IN (11141);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`,`WaitTime`, `ScriptId`, `Comment`) VALUES 
(11141, 1, 1, 4822.424, -410.268, 350.019, 100, 0, 1114101, 'Felwood - Rescue From Jaedenar - Spirit of Trey'),
(11141, 1, 2, 4829.3555,-399.14017,350.9813, 100, 0, 0, 'Felwood - Rescue From Jaedenar - Spirit of Trey'),
(11141, 1, 3, 4860.6094,-397.3873,351.33194, 100, 0, 0, 'Felwood - Rescue From Jaedenar - Spirit of Trey');

UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='11141'); -- Spirit of Trey Lightforge
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='9862'); -- Jaedenar Legionnaire (now prespawned with movementtype 2) - movement seems bugged.

DELETE FROM `dbscripts_on_creature_movement` WHERE id = 1114101;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1114101,0,0,0,0,0,0,0,0,0,6466,0,0,0,0,0,0,0,0,0,0,'Spirit of Trey - Say Text');

-- change of operation enum for CONDITION_WORLDSTATE to official enum
UPDATE conditions SET value2=1 WHERE type=42 AND value2=0 and condition_entry = 6507;

