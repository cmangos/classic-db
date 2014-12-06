-- Fixed quest 2882 (Cuergo's Gold) by adding script on GO use
-- for GO 142189 (Inconspicuous Landmark)
-- Source: YTDB
-- http://www.wowhead.com/object=142189#comments
-- http://www.wowhead.com/quest=2882#comments
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 142189;
INSERT INTO `dbscripts_on_go_template_use` VALUES 
(142189, 0, 15, 11462, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- summons NPC trigger 7898
(142189, 3, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 4, 15, 11485, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 9, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 10, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 11, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `MovementType` = 1 WHERE `Entry` IN (7899, 7902, 7901);
