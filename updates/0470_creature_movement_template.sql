-- Added patrol movement to creature 15509 (Princess Huhuran) in Temple of Ahn'Qiraj
-- This closes #165 
-- Source: http://www.youtube.com/watch?v=qVIsccuTj1w
DELETE FROM `creature_movement_template` WHERE `entry` = 15509;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(15509, 1, -8532.32, 1697.61, -90.4501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58808, 0, 0),
(15509, 2, -8535.5, 1718.89, -91.3187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89281, 0, 0),
(15509, 3, -8550.59, 1738.63, -91.4988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44652, 0, 0),
(15509, 4, -8574.31, 1751.98, -91.2906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.04185, 0, 0),
(15509, 5, -8609.33, 1747.88, -90.4756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.58299, 0, 0),
(15509, 6, -8574.31, 1751.98, -91.2906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.04185, 0, 0),
(15509, 7, -8550.59, 1738.63, -91.4988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44652, 0, 0),
(15509, 8, -8535.5, 1718.89, -91.3187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89281, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 15509;
