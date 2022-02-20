UPDATE `creature` SET `MovementType`=0 WHERE `id` IN (11827, 11828);
DELETE FROM `creature_movement` WHERE `id` IN (90481, 90482);

DELETE FROM `spawn_group` WHERE `id`=12;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(12, "Stormwind - Kelly Grant and Kimberly Grant", 0, 0, 0, 3);

DELETE FROM `spawn_group_spawn` WHERE `id`=12;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(12, 90482, 0),
(12, 90481, 2);

DELETE FROM `spawn_group_formation` WHERE `Id`=12;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(12, 2, 1, 0, 90482, 2, "Stormwind - Kelly Grant and Kimberly Grant");

DELETE FROM `waypoint_path` WHERE `PathId`=90482;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(90482, 1, -8761.27, 1062.22, 90.7778, 3.04402, 500, 0, "Kelly Grant"),
(90482, 2, -8778.38, 1070.87, 90.7803, 2.67331, 500, 0, "Kelly Grant"),
(90482, 3, -8789.21, 1082.85, 90.5537, 2.16437, 750, 0, "Kelly Grant"),
(90482, 4, -8794.05, 1099.71, 90.7805, 1.85021, 750, 0, "Kelly Grant"),
(90482, 5, -8787.64, 1132.91, 90.7809, 0.332823, 2000, 0, "Kelly Grant"),
(90482, 6, -8783.06, 1132.02, 91.2157, 6.09136, 0, 0, "Kelly Grant"),
(90482, 7, -8773.38, 1126.85, 92.525, 6.25158, 0, 0, "Kelly Grant"),
(90482, 8, -8753.1, 1130.37, 92.5448, 0.178885, 500, 0, "Kelly Grant"),
(90482, 9, -8736.74, 1118.04, 92.5401, 4.68079, 1500, 0, "Kelly Grant"),
(90482, 10, -8737.67, 1088.66, 92.5282, 5.04835, 0, 0, "Kelly Grant"),
(90482, 11, -8730.16, 1075.13, 90.7322, 0.797779, 0, 0, "Kelly Grant"),
(90482, 12, -8725.81, 1077.14, 90.7802, 0.433354, 0, 0, "Kelly Grant"),
(90482, 13, -8715.35, 1101.82, 90.3253, 1.65229, 0, 0, "Kelly Grant"),
(90482, 14, -8717.51, 1128.35, 90.7797, 1.65229, 0, 0, "Kelly Grant"),
(90482, 15, -8751.02, 1147.41, 90.3588, 3.23566, 0, 0, "Kelly Grant"),
(90482, 16, -8778.51, 1146.38, 90.7808, 3.17911, 0, 0, "Kelly Grant"),
(90482, 17, -8795.87, 1127.45, 90.7566, 4.59597, 0, 0, "Kelly Grant"),
(90482, 18, -8799.38, 1097.38, 90.7814, 4.59597, 0, 0, "Kelly Grant"),
(90482, 19, -8783.24, 1067.4, 90.7812, 6.10001, 0, 0, "Kelly Grant"),
(90482, 20, -8764.99, 1061.95, 90.7812, 5.99319, 1000, 0, "Kelly Grant");

