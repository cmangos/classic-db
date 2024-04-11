-- Add your query below.
-- https://github.com/vmangos/core/commit/42ea6e2aa880d98db6c191bd9672bd621bacaaa4

-- Pathing for Harb Foulmountain Entry: 14426
SET @NPC := 14426;
UPDATE `creature` SET `spawndist`=0,`movementtype`=4,`position_x`=-4929.023,`position_y`=-2066.4766,`position_z`=85.52668 WHERE `id`=@NPC;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`) VALUES
(@NPC,1,-4929.023,-2066.4766,85.52668,100,0),
(@NPC,2,-4905.3555,-2069.9805,84.25914,100,0),
(@NPC,3,-4899.6943,-2061.0269,83.636856,100,0),
(@NPC,4,-4891.1626,-2039.651,83.30705,100,0),
(@NPC,5,-4881.945,-2017.6359,86.298546,100,0),
(@NPC,6,-4873.128,-1993.7965,91.65875,100,0),
(@NPC,7,-4878.21,-1974.4436,92.018616,100,0),
(@NPC,8,-4873.579,-1956.8225,90.450455,100,0),
(@NPC,9,-4862.9395,-1946.7357,86.90235,100,0),
(@NPC,10,-4834.9155,-1923.0642,84.13316,100,0),
(@NPC,11,-4801.48,-1895.6833,89.333145,100,0),
(@NPC,12,-4776.8984,-1881.0486,90.39604,100,0),
(@NPC,13,-4751.4434,-1865.2213,88.92392,100,0);
-- .go xyz -4929.023 -2066.4766 85.52668

-- End of migration.

