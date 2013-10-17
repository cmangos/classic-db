-- Removed equipment of creatures 1458 (Telurinon Moonshadow) and 1482 (Andrea Halloran)
-- as they should not wear equipment
-- source: http://old.wowhead.com/npc=1458
--		   http://old.wowhead.com/npc=1482
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` IN (1482, 1458);
