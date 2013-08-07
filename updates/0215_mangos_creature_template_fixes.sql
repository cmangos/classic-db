-- Fixed equipment for creature 10429 (Rend Blackhand) who should wear a polearm
-- Thanks stan84 for pointing
-- Source: http://www.wowhead.com/npc=10429#screenshots
UPDATE `creature_template` SET `equipment_id` = 1082  WHERE `entry` = 10429;
