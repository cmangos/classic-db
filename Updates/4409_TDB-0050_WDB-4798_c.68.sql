-- Stormwind City Guard 68

-- not confirmed to not exist as path, random movement around about that spawn location with guid 120692.
-- duplicate removed
-- had also custom made path 
DELETE FROM creature_addon WHERE guid=79689;
DELETE FROM creature_movement WHERE Id=79689;
DELETE FROM game_event_creature WHERE guid=79689;
DELETE FROM game_event_creature_data WHERE guid=79689;
DELETE FROM creature_battleground WHERE guid=79689;
DELETE FROM creature_linking WHERE guid=79689
OR master_guid=79689;
DELETE FROM creature WHERE guid=79689;

-- custom made path removed
UPDATE creature SET spawndist = 0, MovementType = 0, `position_x` = -8832.56, `position_y` = 541.723, `position_z` = 97.0386, `orientation` = 2.68781 WHERE guid=79666;
DELETE FROM creature_movement WHERE id = 79666;

DELETE FROM `creature` WHERE `guid` IN (120692,8156,8161,66737,120693,120788,120789) AND `id` IN (68,16733,18568); -- not a static spawn!
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(120692, 68, 0, 1, -8826.53, 614.393, 94.3294, 1.05716, 180, 180, 5, 1);
-- (8156, 16733, 530, 1, -3735.1, -11505.9, -133.999, 2.72271, 300, 300, 0, 0); -- slightly different xyzo
-- (8161, 16733, 530, 1, -3883.73, -11577.1, -132.846, 0.896179, 300, 300, 0, 0), -- 60907
-- (66737, 18568, 530, 1, -2047.15, 5589.73, 53.159, 4.1888, 300, 300, 0, 0), -- wrong
-- (120788, 1976, 0, 1, -8892.7, 636.073, 99.5227, 3.64467, 180, 180, 5, 1), -- tempspawn
-- (120789, 1976, 0, 1, -8919.07, 522.929, 94.4534, 5.32334, 180, 180, 5, 1); -- tempspawn


DELETE FROM `creature` WHERE `guid` = 80445 AND `id` = 1423; -- d.80498

UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` IN (
68, -- Stormwind City Guard
727, -- Ironforge Mountaineer
1423, -- Stormwind Guard
1735, -- Deathguard Abraham
1738, -- Deathguard Terrence
1742, -- Deathguard Bartholomew
1743, -- Deathguard Lawrence
1744, -- Deathguard Mort
1745, -- Deathguard Morris
1746, -- Deathguard Cyrus
1976, -- Stormwind City Patroller
2209, -- Deathguard Gavin
2210, -- Deathguard Royann
3084, -- Bluffwatcher
3212, -- Brave Ironhorn
3215, -- Brave Strongbash
3217, -- Brave Dawneagle
3218, -- Brave Swiftwind
3219, -- Brave Leaping Deer
3220, -- Brave Darksky
3221, -- Brave Rockhorn
3222, -- Brave Wildrunner
3223, -- Brave Rainchaser
3224, -- Brave Cloudmane
3296, -- Orgrimmar Grunt
3571, -- Teldrassil Sentinel
4262, -- Darnassus Sentinel
5595, -- Ironforge Guard
5624, -- Undercity Guardian
5725, -- Deathguard Lundmark
5953, -- Razor Hill Grunt
12996, -- Mounted Ironforge Mountaineer
13076, -- Dun Morogh Mountaineer
16221, -- Silvermoon Guardian
16222, -- Silvermoon City Guardian
16733, -- Exodar Peacekeeper
18038, -- Azuremyst Peacekeeper
18549, -- Aldor Vindicator
18568, -- Scryer Arcane Guardian
19687, -- Shattrath City Peacekeeper
20556, -- Stormwind Marine
20674, -- Shield of Velen
24491 -- Deathguard Florence
); -- 60, 120, 190, 250, 275, 285, 300, 350, 360, 720, 900, 25000

