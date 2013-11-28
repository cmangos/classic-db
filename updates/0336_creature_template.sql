-- Removed equipment for creature 3345 (Godan) as it should not wear any
-- but currently wield a fishing pole
-- Source: http://www.wowwiki.com/Godan
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` = 3345;
