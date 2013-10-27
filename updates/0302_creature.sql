-- Removed spawn of creatures 4528 (Stone Rumbler), 4526 (Wind Howler), 4535 (Tamed Battleboar), 4534 (Tamed Hyena)
-- Because those creatures are summoned and already handled by ACID
-- Source: http://www.wowwiki.com/Razorfen_Kraul#Mobs
-- Removed creature addons
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4526, 4528, 4535, 4534));
-- Removed creatures spawns
DELETE FROM `creature` WHERE `id` IN (4526, 4528, 4535, 4534);

-- Removed waypoint path of one of the Stone Rumblers
DELETE FROM `creature_movement` WHERE `id` = 87300;

-- Switched waypoint movement patrol of one of the removed Stone Rumbler to its Quilboar summoner
-- as they should use the same (the Stone Rumbler is the one summoned by this NPC)
UPDATE `creature` SET `guid` = 87303, `position_x` = 2007.13, `position_y` = 1643.03, `position_z` = 80.3822, `spawndist` = 0, `currentwaypoint` = 1, `MovementType`= 2 WHERE `guid`= 87301;
-- Changed creature addon guid to make it match the change above
UPDATE `creature_addon` SET `guid` = 87303 WHERE `guid` = 87301;
