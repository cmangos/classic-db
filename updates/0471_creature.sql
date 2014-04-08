-- Updated position of creature 15378 (Merithra of Dream), 15379 (Caelestrasz) and 15380 (Arygos) in Temple of Ahn'Qiraj
-- to place them in the middle of the 3 gameobjects after C'Thun encounter
-- This closes #167 
UPDATE `creature` SET `position_x` = -8663.34, `position_y` = 2029.9, `position_z` = 108.58 WHERE `guid` = 87563;
UPDATE `creature` SET `position_x` = -8660.63, `position_y` = 2022.4, `position_z` = 108.58 WHERE `guid` = 87562;
UPDATE `creature` SET `position_x` = -8652.2, `position_y` = 2020.92, `position_z` = 108.58 WHERE `guid` = 87561;
