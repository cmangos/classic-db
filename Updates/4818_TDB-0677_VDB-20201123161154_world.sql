-- Add your query below.
-- https://github.com/vmangos/core/commit/8b49cfa38d087b50026364e263597880d78161ff

-- taskmaster fizzule waypoints
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 7233;
DELETE FROM `creature_movement_template` WHERE `entry` = 7233;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `ScriptId`) VALUES
(7233, 1, 1250.2, -2989.1, 92.013, 100, 5000, 0),
(7233, 2, 1243.54, -2995.17, 91.7152, 100, 0, 0),
(7233, 3, 1236.79, -2994.62, 91.6789, 4.46804, 15000, 0);

-- peon farm waypoints and scripts
-- peon 1
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 13759;
DELETE FROM `creature_movement` WHERE `id` = 13759;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `ScriptId`) VALUES
(13759, 1, -3.25799, -3652.25, 27.4564, 100, 0, 0),
(13759, 2, 0.177813, -3648.13, 27.4543, 100, 2000, 0),
(13759, 3, 0.144287, -3647.29, 27.444, 100, 7000, 0),
(13759, 4, -2.63763, -3650.74, 27.4736, 100, 0, 0),
(13759, 5, -7.90023, -3654.5, 27.5215, 100, 0, 0),
(13759, 6, -20.9433, -3653.2, 28.1662, 100, 0, 0),
(13759, 7, -24.7774, -3654.66, 28.2013, 100, 30000, 1490102),
(13759, 8, -14.5986, -3658.9, 27.5461, 100, 0, 0),
(13759, 9, -9.02303, -3658.26, 27.4323, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1490102;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`command`, `datalong`, `datalong2`, `data_flags`, `comments`) VALUES
(1490102, 20, 1, 10, 0, 'Peon - MovementType 1 and Spawndist 10');

-- peon 2
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 13773;
DELETE FROM `creature_movement` WHERE `id` = 13773;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `ScriptId`) VALUES
(13773, 1, -15.4464, -3596.94, 29.3809, 100, 180000, 1490103),
(13773, 2, -11.3165, -3598.43, 29.5024, 100, 0, 0),
(13773, 3, -0.019636, -3604.77, 28.0801, 100, 0, 0),
(13773, 4, 6.76175, -3610.11, 27.2468, 100, 0, 0),
(13773, 5, 5.11723, -3616.32, 27.2354, 100, 0, 0),
(13773, 6, -8.21167, -3632.89, 27.4275, 100, 0, 0),
(13773, 7, -12.9296, -3628.42, 27.3826, 1.37923, 10000, 1490101),
(13773, 8, -10.0537, -3630.23, 27.3955, 100, 0, 0),
(13773, 9, -5.77771, -3629.71, 27.3532, 100, 0, 0),
(13773, 10, 1.80455, -3622.63, 27.2553, 100, 0, 0),
(13773, 11, 5.96865, -3613.71, 27.2366, 100, 0, 0),
(13773, 12, 9.78298, -3604.09, 27.2572, 100, 0, 0),
(13773, 13, 7.8457, -3593.53, 27.3611, 100, 0, 0),
(13773, 14, -2.5139, -3587.95, 27.5999, 100, 2000, 0),
(13773, 15, 4.58175, -3590.9, 27.4462, 100, 0, 0),
(13773, 16, 8.31512, -3599.14, 27.3059, 100, 0, 0),
(13773, 17, 9.08023, -3604.5, 27.2624, 100, 0, 0),
(13773, 18, 2.52405, -3605.41, 27.4355, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1490103;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`command`, `datalong`, `datalong2`, `data_flags`, `comments`) VALUES
(1490103, 20, 1, 5, 0, 'Peon - MovementType 1 and Spawndist 5');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1490101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `data_flags`, `comments`) VALUES
(1490101, 4000, 1, 25, 4, 'Peon - Emote');

-- tarban hearthgrain waypoints and scripts
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 8307;
DELETE FROM `creature_movement_template` WHERE `entry` = 8307;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `ScriptId`) VALUES
(8307, 1, -555.068, -2966.62, 91.6705, 100, 120000, 830702),
(8307, 2, -557.7, -2966.81, 91.6677, 100, 0, 0),
(8307, 3, -557.72, -2967.72, 91.6677, 100, 5000, 830701);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 830701;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `data_flags`, `comments`) VALUES
(830701, 2000, 28, 8, 4, 'Tarban - Kneel'),
(830701, 4000, 28, 0, 4, 'Tarban - Stand');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 830702;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `command`, `datalong`, `datalong2`, `data_flags`, `comments`) VALUES
(830702, 20, 1, 3, 0, 'Tarban - MovementType 1 and Spawndist 3');

-- allow barrens guard to roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 3 WHERE `guid` IN (14071, 14073);

-- durotar
-- allow razor hill guards to roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 4 WHERE `guid` IN (7668, 6385, 6388, 10278, 7294, 8424, 10279, 8417, 10276, 10271, 10273, 10427, 6383, 7669, 10274); -- most go from 5 to 4

-- mulgore
-- bloodhoof villiage guards should roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 15 WHERE `guid` IN (25468, 25797, 25768, 25996, 25946); -- most go from 10 to 15

-- camp narache guards should roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 7 WHERE `guid` IN (25345, 25242, 24932, 24949); -- 0

-- desolace
-- nijels point guards should roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5 WHERE `guid` IN (29128, 29125, 29121, 29120, 29131, 29123, 29124, 29130, 29122, 29129); -- 0
UPDATE `creature` SET `position_x` = 74.2370, `position_y` = 1227.28, `position_z` = 160.064 WHERE `guid` = 29130; -- too close to Z cliff

-- bibbly waypoints and scripts
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 29103 AND `id` = 11438;
DELETE FROM `creature_movement_template` WHERE `entry` = 11438;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `ScriptId`) VALUES
(11438, 1, -715.986, 1431.79, 90.5104, 0.526435, 35000, 1143801),
(11438, 2, -715.626, 1427.62, 90.5727, 4.79836, 7000, 1143802),
(11438, 3, -724.091, 1427.08, 90.3854, 3.21158, 5000, 1143803);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1143801 AND 1143803;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `o`, `comments`) VALUES
(1143801, 10000, 1, 10, 0, 'Bibbly - Emote'),
(1143801, 14000, 1, 0, 0, 'Bibbly - Emote'),
(1143802, 4000, 1, 11, 0, 'Bibbly - Emote'),
(1143803, 2000, 1, 21, 0, 'Bibbly - Emote');

-- End of migration.

