-- Add your query below.
-- https://github.com/vmangos/core/commit/c9628cbd7c440cecc72293a1681abdc4d135b860
-- seemingly more spawns and paths

-- Pathing for Zora Entry: 14474
SET @NPC := 14474;
UPDATE `creature` SET `spawndist`=0,`movementtype`=2,`position_x`=-7378.239,`position_y`=1714.3088,`position_z`=-91.72752 WHERE `id`=@NPC;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-7378.239,1714.3088,-91.72752,100,0,0),
(@NPC,2,-7393.453,1717.8257,-92.846466,100,0,0),
(@NPC,3,-7401.651,1709.8647,-92.29474,100,0,0),
(@NPC,4,-7396.23,1696.348,-92.5287,100,0,0),
(@NPC,5,-7377.1226,1687.7341,-91.2392,100,0,0),
(@NPC,6,-7368.2925,1700.2347,-86.44376,100,0,0);
-- 0x204CB000200E22800000A80000679D55 .go xyz -7378.239 1714.3088 -91.72752

-- End of migration.

