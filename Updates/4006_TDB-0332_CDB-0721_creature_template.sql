-- Fixed stats of creature 8208 (Murderous Blisterpaw) in Tanaris & add rough waypoints
-- https://classic.wowhead.com/npc=8208/murderous-blisterpaw#map
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `Entry` = 8208;

UPDATE `creature` SET `position_x` = -7529.07, `position_y` = -4106.24, `position_z` = 11.4291, `MovementType` = 4 WHERE `id` = 8208;
DELETE FROM `creature_movement_template` WHERE `entry` = 8208;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`) VALUES
(8208, 0, 1, -7529.07, -4106.24, 11.4291),
(8208, 0, 2, -7484.07, -3945.09, 10.1258),
(8208, 0, 3, -7455.05, -3985.49, 11.4905),
(8208, 0, 4, -7389.93, -3990.88, 9.19264),
(8208, 0, 5, -7364.4, -3887.94, 14.0009),
(8208, 0, 6, -7406.35, -3828.79, 10.0113), -- old spawn
(8208, 0, 7, -7368.14, -3641.06, 11.2229),
(8208, 0, 8, -7119.98, -3516.72, 10.0818),
(8208, 0, 9, -7086.01, -3521.54, 11.7477); -- spawnpoints ccsdb

-- https://web.archive.org/web/20050209084717/http://wow.allakhazam.com/db/mob.html?wmob=8208
-- https://web.archive.org/web/20080417230936/http://wow.allakhazam.com:80/db/mob.html?wmob=8208
DELETE FROM `creature_loot_template` WHERE `entry` = 8208;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8208, 4583, 20, 0, 1, 1, 0, 'Thick Furry Mane'),
(8208, 4584, 10, 0, 1, 1, 0, 'Large Trophy Paw'),
(8208, 8146, 2, 0, 1, 1, 0, 'Wicked Claw'),
(8208, 9439, -100, 0, 1, 1, 0, 'Untested Hyena Sample'),
(8208, 12037, 30, 0, 1, 1, 0, 'Mystery Meat'),
(8208, 12203, 30, 0, 1, 1, 0, 'Red Wolf Meat'),
(8208, 12208, 20, 0, 1, 1, 0, 'Tender Wolf Meat'),
(8208, 8623, 1, 0, 1, 1, 0, 'OOX-17/TN Distress Beacon'),
(8208, 60170, 100, 0, -60170, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 42-46) - (NPC Levels: 43)'),
(8208, 60246, 0.05, 0, -60246, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 41-45) - (NPC Levels: 43)'),
(8208, 60306, 0.004, 0, -60306, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 42-44) - (NPC Levels: 43)');

