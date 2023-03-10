-- Start script for Quest 'Distracting Jarven'
-- Quest is available when you accept Bitter Rivals
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`entry`='308');

DELETE FROM conditions WHERE condition_entry = 3751;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `comments`) VALUES ('3751', '9', '310', 'Distract Jarven - Quest Bitter Rivals taken');
UPDATE `quest_template` SET `RequiredCondition`='3751' WHERE (`entry`='308');

DELETE FROM `dbscripts_on_quest_end` WHERE id = '308';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(308,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Set Active'),
(308,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Remove NPC Flags'),
(308,0,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Start Movement'),
(308,0,32,0,0,0,0,0,0,0,127,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Say Text');

UPDATE `quest_template` SET `CompleteScript`='308' WHERE `entry`='308';

SET @PATH := 1373;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,0,1,-5605.8213,-544.3539,392.55997,100,0,0,''),
(@PATH,0,2,-5602.8955,-542.2716,392.56,100,0,137300,'Change Gameobject'),
(@PATH,0,3,-5597.4175,-544.2648,393.47446,100,0,0,''),
(@PATH,0,4,-5597.6616,-549.1274,395.65552,100,0,0,''),
(@PATH,0,5,-5606.2666,-549.3079,399.2596,100,0,0,''),
(@PATH,0,6,-5606.6406,-546.8222,399.2825,100,0,0,''),
(@PATH,0,7,-5604.7217,-542.8309,399.17358,100,0,0,''),
(@PATH,0,8,-5600.2764,-541.1395,399.30725,100,0,0,''),
(@PATH,0,9,-5597.328,-539.017,399.2509,100,0,0,''),
(@PATH,0,10,-5597.7075,-535.45636,399.16,100,0,0,''),
(@PATH,0,11,-5597.95,-529.76855,399.65842,100,0,0,''),
(@PATH,0,12,-5601.2363,-529.56573,399.6584,100,0,0,''),
(@PATH,0,13,-5602.804,-530.8537,399.6584,100,17000,137301,'Top Event'),
(@PATH,0,14,-5597.1274,-531.0143,399.65842,100,0,0,''),
(@PATH,0,15,-5597.4155,-537.65393,399.16,100,0,0,''),
(@PATH,0,16,-5597.5083,-540.71375,399.18384,100,0,0,''),
(@PATH,0,17,-5597.852,-542.4621,399.15347,100,0,0,''),
(@PATH,0,18,-5601.8604,-542.9759,399.23264,100,0,0,''),
(@PATH,0,19,-5606.3613,-544.98035,399.25223,100,0,0,''),
(@PATH,0,20,-5605.413,-549.94464,399.2023,100,0,0,''),
(@PATH,0,21,-5604.0063,-549.7447,398.6631,100,0,0,''),
(@PATH,0,22,-5597.9478,-549.56366,395.6651,100,0,137302,'Say Text'),
(@PATH,0,23,-5597.6836,-544.17053,393.40372,100,0,0,''),
(@PATH,0,24,-5598.1704,-541.6491,392.55997,100,0,0,''),
(@PATH,0,25,-5604.195,-542.8377,392.56,100,0,0,''),
(@PATH,0,26,-5605.957,-544.4507,392.55997,100,1000,0,''),
(@PATH,0,27,-5605.957,-544.4507,392.55997,0.977384388446807861,1000,137303,'');

UPDATE `gameobject` SET `spawntimesecsmin`='62', `spawntimesecsmax`='62' WHERE (`guid`='1037');

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN(137300, 137301, 137302, 137303);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(137300,0,0,9,35875,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Respawn Unguarded Thunderbrew Barrel'),
(137300,1000,1,40,0,0,0,269,10,1,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Despawn Guarded Thunderbrew Barrel'),
(137301,1000,1,0,0,0,0,0,0,0,125,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Say Text'),
(137302,1000,1,0,0,0,0,0,0,0,126,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Say Text'),
(137303,0,0,40,0,0,0,270,10,1,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Despawn Unguarded Thunderbrew Barrel'),
(137303,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Remove Active'),
(137303,0,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Add NPC Flags'),
(137303,0,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Remove Movement');

-- TBC Only
-- On tbc ptr this quest was no longer doable
-- DELETE FROM `gameobject_questrelation` WHERE (`id`='269') AND (`quest`='403');
-- DELETE FROM `gameobject_involvedrelation` WHERE (`id`='269') AND (`quest`='403');

-- Classic Only
-- On classic before accepting quest Distracting Jarven you can get Quest 'Guarded Thunderbrew Barrel' from object 'Guarded Thunder Ale Barrel'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '403';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(403,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Set Active'),
(403,0,1,36,0,0,0,1373,5,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Face Player'),
(403,0,2,0,0,0,0,1373,5,0,2048,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Say Text'),
(403,18000,0,36,1,0,0,1373,5,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Reset Orientation'),
(403,20000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Remove Active'),
(403,20000,1,31,1373,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jarven Thunderbrew - Spam Prevention');

UPDATE `quest_template` SET `CompleteScript`='403' WHERE `entry`='403';

-- Quest is repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE (`entry`='403');

DELETE FROM gameobject_questrelation WHERE id = '269' AND quest = '403';
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('269', '403');
DELETE FROM gameobject_involvedrelation WHERE id = '269' AND quest = '403';
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('269', '403');
-- Condition
DELETE FROM conditions WHERE condition_entry = 3750;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `comments`) VALUES ('3750', '22', '308', 'Guarded Thunder Ale Barrel');
UPDATE `quest_template` SET `RequiredCondition`='3750' WHERE (`entry`='403');

