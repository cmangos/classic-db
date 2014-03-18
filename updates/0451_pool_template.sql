-- Fixed spawn of creature 3586 (Miner Johnson) in Deadmines as it should not spawn 100% of the time
-- This closes #271 

-- set 'Miner Johnson' rank to Rare-Elite
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 3586;

-- spawn additional NPC 'Rat'
DELETE FROM `creature` WHERE `guid` = 79147;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(79147, 4075, 36, 1141, 0, -152.545, -526.434, 51.133, 1.73877, 43200, 10, 0, 120, 0, 0, 1);

--  pool 'Miner' Johnson and previously added 'Rat' placeholder
DELETE FROM `pool_template` WHERE `entry` = 1182;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1182, 1, 'Miner Johnson (3586) Deadmines');
DELETE FROM `pool_creature` WHERE `guid` IN (84079, 79147);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(84079, 1182, 20, 'Miner Johnson (3586) Deadmines'),
(79147, 1182, 80, 'Alternate creature to Miner Johnson (3586) Deadmines');
