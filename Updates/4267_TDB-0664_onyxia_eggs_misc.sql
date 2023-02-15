-- onyxia eggs 30secs respawn
-- whelp corpse 5sec despawn time
UPDATE `creature_template` SET `CorpseDecay` = 5, `MovementType` = 0 WHERE `entry` = 11262;
-- INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
-- (176510, 5, 11686, 'Onyxia Whelp Spawner', 14, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- classicmangos (spawns whelps, somehow)
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
-- this is a cast squence, need coords for the remaining spell components! (the ones we have are def wrong, as her breath is supposed to "clear" towards the entrance of the raid.
(21131, 249, -90.4244, -214.602, -82.4827, 3.142), -- classicmangos
(21132, 249, -120.471, -214.335, -71.9481, 3.142), -- wotlkmangos (seems to have the more correct coords)
(21132, 249, -120.471, -214.335, -71.9481, 3.142),
(21133, 249, -142.719, -213.206, -68.8335, 3.142),
(21135, 249, -162.585, -205.683, -68.7282, 3.142),
(21136, 249, -194.92, -206.546, -68.7282, 3.142),
(21137, 249, -173.573, -186.406, -66.1293, 3.142),
(21138, 249, -164.067, -164.104, -59.5405, 3.142),
(21139, 249, -144.485, -149.742, -53.8462, 3.142);

