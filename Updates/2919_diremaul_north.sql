SET @MAPINDEX := 4290000;

DELETE FROM creature_linking WHERE master_guid IN (138195, 138203);
INSERT INTO creature_linking VALUES
(138196, 138195, 3),
(138197, 138195, 3),
(138198, 138195, 3),
(138199, 138195, 3),
(138200, 138195, 3),
(138201, 138203, 515),
(138202, 138203, 515),
(138701, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138698, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138700, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138696, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138694, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138697, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138695, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138693, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138699, 138692, 3), -- Carrion Swarmer -> Carrion Swarmer
(138705, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138706, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138704, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138710, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138707, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138711, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138708, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138709, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138703, 138702, 3), -- Carrion Swarmer -> Carrion Swarmer
(138721, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138720, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138715, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138718, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138716, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138719, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138714, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138717, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(138717, 138712, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1065, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1066, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1067, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1068, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1069, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1070, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1071, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1072, @MAPINDEX+1064, 3), -- Carrion Swarmer -> Carrion Swarmer
(@MAPINDEX+1073, @MAPINDEX+1064, 3); -- Carrion Swarmer -> Carrion Swarmer

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(134819, 11441),(134819, 13036); -- Gordok Brute, Gordok Mastiff

UPDATE creature SET id=0 WHERE guid=134819;
UPDATE creature SET position_x=731.356, position_y=440.905, position_z=28.1809, orientation=0.813315, spawndist=0, MovementType=0 WHERE guid=138201;
UPDATE creature SET position_x=733.43, position_y=442.60, position_z=28.17, orientation=0.813315, spawndist=0, MovementType=0 WHERE guid=138202;
UPDATE creature SET position_x=412.695, position_y=-61.5281, position_z=-25.3884, orientation=6.03884, spawndist=0, MovementType=0 WHERE guid=138251;
UPDATE creature SET position_x=783.33, position_y=486.98, position_z=36.58, orientation=4.05614, spawndist=0, MovementType=0 WHERE guid=138276;
UPDATE creature SET position_x=785.77, position_y=489.81, position_z=37.13, orientation=4.05614, spawndist=0, MovementType=0 WHERE guid=138277;
UPDATE creature SET position_x=409.139, position_y=327.11, position_z=2.93415, orientation=6.0912, spawndist=0, MovementType=0 WHERE guid=138294;
