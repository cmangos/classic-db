
SET @CHANCE := 0.5;

SET @SUN        := 20874;
SET @NIGHT      := 20875;
SET @DEATH      := 20876;
SET @SAGE       := 20877;
SET @REBIRTH    := 20878;
SET @LIFE       := 20879;
SET @STRIFE     := 20881;
SET @WAR        := 20882;

-- ---------------------------------

DELETE FROM `creature_loot_template` WHERE `item` IN (@SUN , @NIGHT, @DEATH, @SAGE, @REBIRTH, @LIFE, @STRIFE, @WAR);

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @SUN, @CHANCE, '0', '1', '1', '0'),
('15277', @SUN, @CHANCE, '0', '1', '1', '0'),
('15311', @SUN, @CHANCE, '0', '1', '1', '0'),
('15262', @SUN, @CHANCE, '0', '1', '1', '0'),
('15312', @SUN, @CHANCE, '0', '1', '1', '0'),
('15233', @SUN, @CHANCE, '0', '1', '1', '0'),
('15247', @SUN, @CHANCE, '0', '1', '1', '0'),
('15230', @SUN, @CHANCE, '0', '1', '1', '0'),
('15229', @SUN, @CHANCE, '0', '1', '1', '0'),
('15240', @SUN, @CHANCE, '0', '1', '1', '0'),
('15236', @SUN, @CHANCE, '0', '1', '1', '0'),
('15235', @SUN, @CHANCE, '0', '1', '1', '0'),
('15249', @SUN, @CHANCE, '0', '1', '1', '0'),
('15246', @SUN, @CHANCE, '0', '1', '1', '0'),
('15250', @SUN, @CHANCE, '0', '1', '1', '0'),
('15252', @SUN, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15277', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15311', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15262', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15312', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15233', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15247', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15230', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15229', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15240', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15236', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15235', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15249', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15246', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15250', @NIGHT, @CHANCE, '0', '1', '1', '0'),
('15252', @NIGHT, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15277', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15311', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15262', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15312', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15233', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15247', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15230', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15229', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15240', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15236', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15235', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15249', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15246', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15250', @DEATH, @CHANCE, '0', '1', '1', '0'),
('15252', @DEATH, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15277', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15311', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15262', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15312', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15233', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15247', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15230', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15229', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15240', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15236', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15235', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15249', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15246', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15250', @SAGE, @CHANCE, '0', '1', '1', '0'),
('15252', @SAGE, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15277', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15311', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15262', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15312', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15233', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15247', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15230', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15229', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15240', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15236', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15235', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15249', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15246', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15250', @REBIRTH, @CHANCE, '0', '1', '1', '0'),
('15252', @REBIRTH, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15277', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15311', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15262', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15312', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15233', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15247', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15230', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15229', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15240', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15236', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15235', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15249', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15246', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15250', @LIFE, @CHANCE, '0', '1', '1', '0'),
('15252', @LIFE, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15277', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15311', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15262', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15312', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15233', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15247', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15230', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15229', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15240', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15236', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15235', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15249', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15246', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15250', @STRIFE, @CHANCE, '0', '1', '1', '0'),
('15252', @STRIFE, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15264', @WAR, @CHANCE, '0', '1', '1', '0'),
('15277', @WAR, @CHANCE, '0', '1', '1', '0'),
('15311', @WAR, @CHANCE, '0', '1', '1', '0'),
('15262', @WAR, @CHANCE, '0', '1', '1', '0'),
('15312', @WAR, @CHANCE, '0', '1', '1', '0'),
('15233', @WAR, @CHANCE, '0', '1', '1', '0'),
('15247', @WAR, @CHANCE, '0', '1', '1', '0'),
('15230', @WAR, @CHANCE, '0', '1', '1', '0'),
('15229', @WAR, @CHANCE, '0', '1', '1', '0'),
('15240', @WAR, @CHANCE, '0', '1', '1', '0'),
('15236', @WAR, @CHANCE, '0', '1', '1', '0'),
('15235', @WAR, @CHANCE, '0', '1', '1', '0'),
('15249', @WAR, @CHANCE, '0', '1', '1', '0'),
('15246', @WAR, @CHANCE, '0', '1', '1', '0'),
('15250', @WAR, @CHANCE, '0', '1', '1', '0'),
('15252', @WAR, @CHANCE, '0', '1', '1', '0');
