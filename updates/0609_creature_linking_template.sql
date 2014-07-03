-- Linked creature 7343 (Splinterbone Skeleton) to 7357 (Mordresh Fire Eye) in Razorfen Downs
-- The fight will now work as intended
-- Source: http://www.wowwiki.com/Mordresh_Fire_Eye
DELETE FROM `creature_linking_template` WHERE `entry` = 7343;
INSERT INTO `creature_linking_template` VALUES
(7343, 129, 7357, 3, 20);
