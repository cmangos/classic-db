
UPDATE `creature` SET `position_x` = '432.488067626953125', `position_y` = '-4213.39990234375', `position_z` = '24.5885009765625', `orientation` = '5.288347721099853515' WHERE (`guid` = '12218');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('12236', '5824', '1', '0', '0', '-94.3402786254882812', '-4010.994384765625', '62.58942794799804687', '0.418879032135009765', '18000', '28800', '0', '0', '666', '0', '0', '0'),
('12270', '5824', '1', '0', '0', '27.13693618774414062', '-4337.977050781250', '73.13382720947265625', '1.151917338371276855', '18000', '28800', '0', '0', '666', '0', '0', '0');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1254', '1', 'Captain Flat Tusk (5824)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5824', '1254', '0', 'Captain Flat Tusk (5824)');
