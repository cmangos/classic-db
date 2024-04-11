-- Add your query below.
-- https://github.com/vmangos/core/commit/b7ce8fc63a9f1d976c32af32d9673fddc782a1a4

-- Pathing for Rex Ashil Entry: 14475
SET @NPC := 14475;
UPDATE `creature` SET `spawndist`=0,`movementtype`=4,`position_x`=-6630.2847,`position_y`=945.4344,`position_z`=-52.96825 WHERE `id`=@NPC;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`) VALUES
(@NPC,1,-6630.2847,945.4344,-52.96825,100,0),
(@NPC,2,-6627.747,929.4205,-53.191467,100,0),
(@NPC,3,-6609.186,929.8785,-53.16585,100,0),
(@NPC,4,-6591.815,909.97754,-48.229885,100,0),
(@NPC,5,-6591.289,896.8762,-44.285564,100,0),
(@NPC,6,-6595.7266,884.783,-44.09041,100,0),
(@NPC,7,-6581.963,877.2528,-44.54215,100,0),
(@NPC,8,-6570.469,885.4149,-43.199642,100,0),
(@NPC,9,-6555.0957,885.0344,-39.406754,100,0),
(@NPC,10,-6545.19,871.5345,-32.738403,100,0),
(@NPC,11,-6535.754,862.1162,-29.028198,100,0),
(@NPC,12,-6518.3926,866.1533,-30.434242,100,0),
(@NPC,13,-6512.0576,887.03265,-39.736877,100,0),
(@NPC,14,-6497.0356,901.76587,-41.681843,100,0),
(@NPC,15,-6473.988,908.0661,-41.303955,100,0),
(@NPC,16,-6480.6694,921.8447,-41.822407,100,0);
-- .go xyz -6630.2847 945.4344 -52.96825

UPDATE `creature_template` SET `SpeedWalk` = 1, `Faction` = 310 WHERE `entry` IN (14475,14474,14473);

-- https://web.archive.org/web/20080504043440/http://wow.allakhazam.com/db/mob.html?wmob=14475
-- https://web.archive.org/web/20080430161743/http://wow.allakhazam.com/db/mob.html?wmob=14474
-- https://web.archive.org/web/20080430135127/http://wow.allakhazam.com/db/mob.html?wmob=14473
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14475, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(14474, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'),
(14473, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)');

-- End of migration.

