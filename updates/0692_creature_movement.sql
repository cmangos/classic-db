-- The creature 11501 (King Gordok guid 138183) in Dire Maul should not have any movements
-- This closes #550 
-- NPC: http://www.wowhead.com/npc=11501
-- Source: https://www.youtube.com/watch?v=TRaI91-6kO0 (8:30)
UPDATE `creature` SET `MovementType` = 0, `position_x` = 828.074, `position_y` = 480.751, `position_z` = 37.318, `orientation` = 3.184 WHERE `id` = 11501;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 11501;
DELETE from `creature_movement` WHERE `id` = 138183;
