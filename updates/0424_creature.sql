-- Fixed position of creature 1667 (Meven Korgal) in Tirisfal Glade
-- Thanks Neretz for poiting. This closes #261 
-- Source: http://www.wowhead.com/npc=1667
UPDATE `creature` SET `position_x` = 1765.15, `position_y` = 1382.99, `position_z` = 92.056 WHERE `id` = 1667;
