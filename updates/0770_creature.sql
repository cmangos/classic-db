-- Fixed position of NPC 3880 (Sentinel Frostshadow) and 3901 (Illiyana) in Ashenvale
-- because they were located in Forest Song and were located elsewhere back in Classic
-- Thanks Zingzah for pointing. This closes #621 
UPDATE `creature` SET `position_x` = 2636.49, `position_y` = 417.815, `position_z` = 74.1523, `orientation` = 5.58505 WHERE `id` = 3880;
UPDATE `creature` SET `position_x` = 2622.5, `position_y` = 446.768, `position_z` = 73.7489, `orientation` = 2.77507 WHERE `id` = 3901;
