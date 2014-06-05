-- correct boundingradius of lucifron & adds, else they follow way too far off

UPDATE `creature_model_info` SET `bounding_radius` = 0 WHERE `modelid` = 12030 OR 13031