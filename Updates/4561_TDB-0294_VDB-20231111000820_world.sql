-- Add your query below.
-- https://github.com/vmangos/core/commit/f8c9d5cf98a1c2cc506380abc46305081142b83a

-- Pathing for Alshirr Banebreath Entry: 14340
-- https://www.youtube.com/watch?v=tYD3tUv-KqI
SET @NPC := 14340;
UPDATE `creature` SET `spawndist`=0,`movementtype`=4,`position_x`=4026.523,`position_y`=-555.293,`position_z`=342.505 WHERE `id`=@NPC;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`) VALUES
(@NPC,1,4026.523,-555.293,342.505,100,0),
(@NPC,2,3999.6077,-585.43585,338.0969,100,0),
(@NPC,3,3967.8643,-599.3677,338.82224,100,0),
(@NPC,4,3939.5344,-610.4964,340.5994,100,0),
(@NPC,5,3918.8508,-620.3714,339.56857,100,0),
(@NPC,6,3893.1277,-649.1434,334.0132,100,0),
(@NPC,7,3867.4185,-662.55194,330.74258,100,0),
(@NPC,8,3851.004,-677.2051,328.14557,100,0),
(@NPC,9,3841.1611,-713.5064,325.38644,100,0),
(@NPC,10,3836.204,-740.03125,319.4985,100,0),
(@NPC,11,3827.0447,-763.3758,314.87888,100,0),
(@NPC,12,3818.8672,-787.662,307.59967,100,0),
(@NPC,13,3792.5173,-812.1507,307.89844,100,0),
(@NPC,14,3768.1362,-831.72095,310.0974,100,0),
(@NPC,15,3771.9072,-848.68176,305.3522,100,0),
(@NPC,16,3757.2969,-866.6099,313.99258,100,0);
-- .go xyz 4026.523 -555.293 342.505

UPDATE `creature_template` SET `SpeedWalk` = 1, `ResistanceArcane` = 0 WHERE `entry` = 14340;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14340, 11674, -50, 0, 1, 1, 0, 'Jadefire Felbind');
DELETE FROM `creature_loot_template` WHERE `entry` = 14340 AND `item` IN (8838,8846,13466); -- Sungrass,Gromsblood,Plaguebloom

-- End of migration.

