-- -- Quest 'Alien Egg' id - 4821
DELETE FROM dbscripts_on_quest_end WHERE id = '4821';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4821,0,0,31,10581,100,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Terminate Script when creature is not alive'),
(4821,0,1,9,157006,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Respawn Gameobject'),
(4821,0,2,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Set Active'),
(4821,4000,0,13,0,0,0,175567,5,1,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Activate Gameobject'),
(4821,4000,1,10,10581,0,0,0,0,0,1,0,0,0,0,-5443.8447,-2399.1797,89.3327,5.5850,0,0,'Alien Egg - Spawn Creature'),
(4821,4000,2,15,10389,0,0,10581,5,7,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Spawn Creature'),
(4821,9000,0,43,0,0,0,175567,5,1,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Activate Gameobject'),
(4821,9000,1,40,0,0,0,175567,5,1,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Despawn Gameobject'),
(4821,9000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Remove Active');

UPDATE `quest_template` SET `CompleteScript`='4821' WHERE `entry`='4821'; 

-- Free guid in Classic, TBC and WOTLK
DELETE FROM gameobject WHERE guid = '157006';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`) VALUES 
('157006', '175567', '1', '-5444.2744', '-2399.079', '89.24637', '5.8817606', '-0.19936752', '0.9799248', '-9', '-9', '1');

UPDATE `creature_template` SET `UnitFlags`='768', `Faction`='14', `MovementType`='2' WHERE (`Entry`='10581');

DELETE FROM `creature_movement_template` WHERE entry = 10581;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(10581,0,1,-5443.8447,-2399.1797,89.3327,100,3000,0),
(10581,0,2,-5452.08,-2420.4788,89.55369,100,0,0),
(10581,0,3,-5460.4624,-2437.259,89.66293,100,0,0),
(10581,0,4,-5456.5273,-2444.5684,90.010345,100,0,0),
(10581,0,5,-5446.4844,-2442.8086,89.906586,100,0,0),
(10581,0,6,-5445.3784,-2422.4116,89.42869,100,0,0),
(10581,0,7,-5444.078,-2404.7761,89.30369,100,0,0),
(10581,0,8,-5447.545,-2394.3118,89.261826,100,0,0),
(10581,0,9,-5447.846,-2393.177,90.7796,100,0,0),
(10581,0,10,-5448.6235,-2390.6304,91.61294,100,0,0),
(10581,0,11,-5449.413,-2388.0369,88.83508,100,0,0),
(10581,0,12,-5450.5757,-2384.4739,75.862564,100,0,0),
(10581,0,13,-5452.0205,-2380.3386,62.223392,100,0,0),
(10581,0,14,-5453.1104,-2376.9172,46.72318,100,0,0),
(10581,0,15,-5454.221,-2373.6519,27.222952,100,100,1);

-- Quest Sacred Fire
DELETE FROM dbscripts_on_quest_end WHERE id = '5062';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5062,0,0,15,17117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sacred Fire - Magatha Grimtotem - Cast Spell'),
(5062,5000,0,31,4046,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sacred Fire - Spam Prevention');

UPDATE `quest_template` SET `CompleteScript`='5062' WHERE `entry`='5062';