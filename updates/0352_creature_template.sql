-- Thanks Ela for fixing
-- Change weapon of creature 16156 (Dark Touched Warrior) from axe to bucket.
-- Source: http://www.wowhead.com/npc=16156#screenshots:id=46064
UPDATE `creature_template` SET `equipment_id` = 1139 WHERE `entry` = 16156;
