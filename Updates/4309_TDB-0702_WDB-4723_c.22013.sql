-- Stormwind Emissary Patrol
-- -- 18	1	30240	6240	283	0	Call to Arms: Alterac Valley!
-- -- 19	1	30240	6240	284	0	Call to Arms: Warsong Gulch!
-- -- 20	1	30240	6240	285	0	Call to Arms: Arathi Basin!
-- 21	1	40320	6240	353	0	0	Call to Arms: Eye of the Storm! - not needed in classic!

-- classic/tbcmangos
DELETE FROM creature_addon WHERE guid IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM creature_movement WHERE id IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM game_event_creature WHERE guid IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM game_event_creature_data WHERE guid IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM creature_battleground WHERE guid IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM creature_linking WHERE guid IN (190520,190522,190524,190526,190521,190523,190525,190527);
DELETE FROM creature where guid IN (
190520, -- 15103	-8570.55	536.096	101.568
190522, -- 15102	-8570.55	536.096	101.568
190524, -- 14991	-8570.55	536.096	101.568
190526, -- 22013	-8570.55	536.096	101.568
190521, -- 15103	-8569.02	537.091	101.549
190523, -- 15102	-8569.02	537.091	101.549
190525, -- 14991	-8569.02	537.091	101.549
190527 --  22013	-8569.02	537.091	101.549
);

-- missing Stormwind spawns added
DELETE FROM creature_addon WHERE guid BETWEEN 11559 AND 11562; -- free in all repos
DELETE FROM creature_movement WHERE id BETWEEN 11559 AND 11562;
DELETE FROM game_event_creature WHERE guid BETWEEN 11559 AND 11562;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 11559 AND 11562;
DELETE FROM creature_battleground WHERE guid BETWEEN 11559 AND 11562;
DELETE FROM creature_linking WHERE guid BETWEEN 11559 AND 11562
 OR master_guid BETWEEN 11559 AND 11562;
DELETE FROM creature WHERE guid BETWEEN 11559 AND 11562;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(11559,0,0,-8351.663,627.2608,95.24413,5.21675,300,300,0,0),
(11560,0,0,-8351.663,627.2608,95.24413,5.21675,300,300,0,0);
-- (11561,22013,0,-8411.891,575.0306,92.31787,0.8552,300,300,0,0), -- 190183, 190176
-- (11562,22013,0,-8409.065,578.2552,92.0611,3.9968,300,300,0,0); -- 190182, 190177 classic moved guids around instead of just leaving spaces.

-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 19980;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19980, 'Stormwind - Battleground Emissary x2 - Patrol', 0, 0, 19998, 0x02 | 0x08);

DELETE FROM conditions WHERE condition_entry IN (19998,6018,6019,6020);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(6018, 12, 18, 0, 0, 0, 0, 'Event ID 18 Active'),
(6019, 12, 19, 0, 0, 0, 0, 'Event ID 19 Active'),
(6020, 12, 20, 0, 0, 0, 0, 'Event ID 20 Active'),
-- (6021, 12, 21, 0, 0, 0, 0, 'Event ID 21 Active'), -- dont insert, not even as placeholder
(19998, -2, 6018, 6019, 6020, 0, 0, 'any classic Battleground Emissary Event Active');

-- wotlkmangos
-- (6025, 12, 25, 0, 0, 0, 0, 'Event ID 25 Active'), -- 25	1	60480	5758	400	0	0	Call to Arms: Strand of the Ancients!
-- (6038, 12, 38, 0, 0, 0, 0, 'Event ID 25 Active'), -- 38	1	60480	5758	420	0	0	Call to Arms: Isle of Conquest!
-- (20XX1, -2, 6018, 6019, 6020, 6021, 0, 'any classic/tbc Battleground Emissary Event Active'),
-- (20XX2, -2, 6025, 6038, 0, 0, 0, 'any wotlk Battleground Emissary Event Active'),
-- (19998, -2, 20XX1, 20XX2, 0, 0, 0, 'any classic/tbc/wotlk Battleground Emissary Event Active');

DELETE FROM `spawn_group_spawn` WHERE id = 19980;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19980, 11559, 0),
(19980, 11560, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19980;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19980, 1, 2, 0, 19980, 4, 'Stormwind - Battleground Emissary x2 - Patrol'); -- linear

DELETE FROM `waypoint_path_name` WHERE PathId = 19980;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19980,'Stormwind - Battleground Battleground Emissary x2 - Patrol');

DELETE FROM `waypoint_path` WHERE PathId = 19980;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19980,1,-8351.663,627.2608,95.24413,100,1000,0),
(19980,2,-8363.127,632.2651,95.07245,100,0,0),
(19980,3,-8378.72,627.1265,94.89453,100,0,0),
(19980,4,-8389.176,617.4152,95.37381,100,0,0),
(19980,5,-8384.296,598.2947,93.380875,100,0,0),
(19980,6,-8388.227,578.85675,91.47244,100,0,0),
(19980,7,-8401.302,571.39307,91.58093,100,0,0),
(19980,8,-8420.658,567.49426,93.0561,100,0,0),
(19980,9,-8443.538,581.21405,94.413445,100,0,0),
(19980,10,-8470.391,570.26605,96.30837,100,0,0),
(19980,11,-8493.312,557.61017,97.59486,100,0,0),
(19980,12,-8505.21,539.63995,97.31416,100,0,0),
(19980,13,-8512.854,526.2791,98.35401,100,0,0),
(19980,14,-8525.093,516.315,98.757,100,0,0),
(19980,15,-8544.109,501.27182,98.74218,100,0,0),
(19980,16,-8559.256,519.32446,100.38309,100,0,0),
(19980,17,-8567.603,533.7415,101.50375,100,0,0),
(19980,18,-8577.797,543.3222,102.04463,100,0,0),
(19980,19,-8591.31,533.95166,105.074165,100,0,0),
(19980,20,-8612.86,513.72125,103.57382,100,0,0),
(19980,21,-8609.7295,507.20865,103.60631,100,0,0),
(19980,22,-8631.775,488.39865,102.76812,100,0,0),
(19980,23,-8646.212,477.90338,102.55401,100,0,0),
(19980,24,-8661.906,495.7377,100.71064,100,0,0),
(19980,25,-8674.477,493.99902,99.25506,100,0,0),
(19980,26,-8694.031,474.67984,95.35401,100,0,0),
(19980,27,-8705.777,491.66162,95.754,100,0,0),
(19980,28,-8721.278,512.70245,96.69924,100,0,0),
(19980,29,-8714.409,518.65436,97.094025,100,0,0),
(19980,30,-8725.304,536.42773,100.69182,100,0,0),
(19980,31,-8748.596,560.2326,97.72797,100,0,0),
(19980,32,-8734.539,574.5367,97.35347,100,0,0),
(19980,33,-8755.247,593.1271,97.354004,100,0,0),
(19980,34,-8770.291,608.7362,97.27698,100,0,0),
(19980,35,-8798.293,587.83044,97.45663,100,0,0),
(19980,36,-8808.913,603.09546,96.47263,100,0,0),
(19980,37,-8825.08,622.95,93.953995,100,0,0),
(19980,38,-8846.551,645.74304,96.67357,100,0,0),
(19980,39,-8849.47,662.81305,97.35369,100,0,0),
(19980,40,-8824.904,677.9788,97.623825,100,0,0),
(19980,41,-8834.502,700.5805,97.765816,100,0,0),
(19980,42,-8844.934,721.8606,97.36842,100,0,0),
(19980,43,-8861.537,747.9759,99.8836,100,0,0),
(19980,44,-8870.212,760.57245,96.78373,100,0,0),
(19980,45,-8882.365,756.3934,96.059044,100,0,0),
(19980,46,-8895.369,772.8528,91.18892,100,0,0),
(19980,47,-8909.075,791.7792,87.48499,100,0,0),
(19980,48,-8936.099,774.0041,88.85958,100,0,0),
(19980,49,-8959.365,772.25726,93.59099,100,0,0),
(19980,50,-8980.489,784.70715,98.20743,100,0,0),
(19980,51,-8988.452,796.3327,101.43053,100,0,0),
(19980,52,-8992.996,814.8192,104.02627,100,0,0),
(19980,53,-8993.173,835.8615,105.78762,100,0,0),
(19980,54,-8981.276,844.9066,105.77998,100,0,0),
(19980,55,-8975.698,855.4273,106.00868,100,0,0),
(19980,56,-8976.115,868.4386,106.75847,100,0,0),
(19980,57,-8954.422,864.9407,105.08281,100,0,0),
(19980,58,-8939.5,860.5026,103.01871,100,0,0),
(19980,59,-8912.994,850.80743,96.629456,100,0,0),
(19980,60,-8904.731,851.3345,96.24922,100,0,0),
(19980,61,-8895.823,866.664,97.206314,100,0,0),
(19980,62,-8889.581,887.30646,102.545746,100,0,0),
(19980,63,-8886.724,898.1724,105.98683,100,0,0),
(19980,64,-8894.397,911.9976,110.99902,100,0,0),
(19980,65,-8877.115,920.93555,107.65978,100,0,0),
(19980,66,-8854.57,932.6676,102.077965,100,0,0),
(19980,67,-8850.542,929.094,102.07189,100,0,0),
(19980,68,-8834.071,940.5589,105.33398,100,0,0),
(19980,69,-8816.6045,954.2069,100.80087,100,0,0),
(19980,70,-8805.646,941.0434,101.35402,100,0,0),
(19980,71,-8789.291,954.13556,100.80458,100,0,0),
(19980,72,-8762.579,976.2786,98.99217,100,0,0),
(19980,73,-8738.936,993.1801,96.929184,100,0,0),
(19980,74,-8731.334,1028.1381,94.18728,100,0,0),
(19980,75,-8737.871,1055.2648,90.30808,100,0,0),
(19980,76,-8749.182,1082.7451,90.80248,100,0,0);

DELETE FROM game_event_creature WHERE guid IN (11559,11560); -- does not work with spawn_group
-- INSERT INTO game_event_creature (guid, event) VALUES
-- (11559,18),
-- (11560,18),
-- (11559,19),
-- (11560,19),
-- (11559,20),
-- (11560,20),
-- (11559,21),
-- (11560,21);

DELETE FROM game_event_creature_data WHERE guid IN (11559,11560);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/tbc/npc=15103/stormpike-emissary
(11559,18, 15103),
(11560,18, 15103),
-- https://www.wowhead.com/tbc/npc=15102/silverwing-emissary
(11559,19, 15102),
(11560,19, 15102),
-- https://www.wowhead.com/tbc/npc=14991/league-of-arathor-emissary
(11559,20, 14991),
(11560,20, 14991);
-- https://www.wowhead.com/tbc/npc=22013/eye-of-the-storm-emissary
-- (11559,21, 22013),
-- (11560,21, 22013);
-- https://www.wowhead.com/wotlk/npc=30566/strand-of-the-ancients-emissary
-- wotlk has two more battleground events, add them to a seperate condition and link that one into 19998 too, 
-- so all spawns in all expansions can have same conditions, spawn groups and partly overlapping creature_data

-- add stationary group to game event
-- one day will move them all to spawn Groups
-- DELETE FROM game_event_creature WHERE guid IN (11561,11562);
-- INSERT INTO game_event_creature (guid, event) VALUES
-- (11561,21),
-- (11562,21); -- all revamped in classic/tbcmangos

