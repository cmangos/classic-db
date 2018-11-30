-- Deadmines updates
-- Consolidated from:
-- https://github.com/cmangos/wotlk-db/commit/432c11dd0449f7ef50e1e9e69cb616bd5df5f218
-- https://github.com/cmangos/tbc-db/commit/5bbc63ffcf93c56b58fc1c4e1c2b231a324fafb2
-- https://github.com/classicdb/database/issues/487
-- and Brady WoW Dungeon Companion from 2006
-- Closes https://github.com/classicdb/database/issues/487

-- ---------------------------------------------
-- Generic changes
-- ---------------------------------------------

-- Update spawn time for creatures
UPDATE creature SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE map=36; -- all NPCs
UPDATE creature SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE map=36 AND id IN (636, 639, 642, 644, 645, 646, 647, 1763, 3586); -- Bosses
UPDATE creature SET spawntimesecsmin=15*60, spawntimesecsmax=15*60 WHERE map=36 AND id=4075; -- Critters

-- ---------------------------------------------
-- Entrance and corridor to Rhahk'Zor
-- ---------------------------------------------

-- Link together the two NPCs 1725 (Defias Watchman) near Rhahk'Zor
DELETE FROM creature_linking_template WHERE entry=1725;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(1725, 36, 1725, 3, 30); -- Defias Watchman -> Defias Watchman

-- Add missing movement and remove redundant ones by using linking instead
-- Group 1 Pathing (Respawns on Rhahk'Zor Death)
UPDATE creature SET position_x=-169.588608, position_y=-402.076477, position_z=57.082920, orientation=0.354403, MovementType=0 WHERE guid=79374;
DELETE FROM creature_movement WHERE id IN (79374);
-- Defias Evoker(GUID 79374) and Defias Overseer(GUID 79373) will now patrol and behave as a group.
-- NOTE: They will (re)spawn once Rhahk'Zor(GUID 79168) is killed.
DELETE FROM creature_linking WHERE guid IN (79374, 79373, 79168);
INSERT INTO creature_linking  VALUES 
(79373, 79168, 64), -- RESPAWN_ON_DEATH
(79374, 79373, 1667); -- CANT_SPAWN_IF_BOSS_DEAD, FOLLOW, RESPAWN_ON_RESPAWN, TO_AGGRO_ON_AGGRO, AGGRO_ON_AGGRO

-- Waypoints for Defias Overseer(GUID 79373)
DELETE FROM creature_movement WHERE id=79373; -- Clear previous waypoints.
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,script_id,waittime) VALUES 
(79373,1, -182.146881,-417.780182,54.576420,0.884214, 0,0),
(79373,2, -177.373688,-411.173187,55.898495,0.884214, 0,0),
(79373,3, -171.122406,-403.762238,57.029308,0.678047, 0,0),
(79373,4, -164.538498,-398.670898,56.563553,6.226885, 0,0),
(79373,5, -156.580734,-398.417175,56.349751,5.979485, 0,0),
(79373,6, -148.941345,-401.040558,56.895615,6.036426, 0,0),
(79373,7, -148.606384,-401.758606,56.888397,4.328187, 0,0),
(79373,8, -150.612442,-402.308105,56.935658,2.745614, 0,0),
(79373,9, -155.068680,-399.149689,56.454491,2.851643, 0,0),
(79373,10, -162.296326,-397.860199,56.551296,3.562426, 0,0),
(79373,11, -168.356201,-400.704437,57.194504,3.929597, 0,0),
(79373,12, -174.847427,-407.909637,56.062431,4.063114, 0,0);

-- Rhahk'Zor waypoints
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE id=644;
DELETE FROM creature_movement_template WHERE entry=644;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(644,1,-193.304,-440.544,53.5319,0,0,1.76218),
(644,2,-192.834,-435.956,53.2713,15000,0,1.3577),
(644,3,-193.565,-441.151,53.568,0,0,4.49458),
(644,4,-191.926,-453.598,54.4336,0,0,4.94932),
(644,5,-192.789,-447.285,54.3726,40000,0,1.6483);

-- ---------------------------------------------
-- Corridor to Sneed
-- ---------------------------------------------

-- Linked 2 Defias NPC Right After Rhahk'Zor, they will now patrol and behave as a group.
UPDATE creature SET position_x=-186.89, position_y=-489.55, position_z=54.05, orientation=4.88205, spawndist=0, MovementType=0 WHERE guid=79171;
DELETE FROM creature_linking WHERE master_guid IN (79273);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79171,79273,515); -- Defias Evoker

-- Remove duplicate NPCs (part of a patrol now)
DELETE FROM creature WHERE guid IN (79281, 79170);

-- Fix an Defias Overseer Pathing (Removed bad waypoint)
DELETE FROM creature_movement WHERE id IN (79273);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(79273,1,-181.386,-491.686,54.0401,0,0,6.21382),
(79273,2,-180.97,-498.254,53.4632,0,0,4.81189),
(79273,3,-183.791,-502.539,53.3808,0,0,4.13016),
(79273,4,-193.579,-506.077,53.1769,0,0,3.4987),
(79273,5,-193.943,-496.426,53.2004,0,0,1.58704),
(79273,6,-192.601,-488.515,54.0488,0,0,1.32122),
(79273,7,-187.413,-492.182,53.5523,0,0,5.87846);

-- Make a Defias Evoker roam
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid=79177;

-- Group pathing (Respawns on Sneed Death)
UPDATE creature SET position_x=-206.025070, position_y=-505.739960, position_z=51.897705, orientation=3.121361, MovementType=0 WHERE guid=79245;
DELETE FROM creature_movement WHERE id IN (79245);
DELETE FROM creature_linking WHERE master_guid IN (79244, 79223);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79244, 79223, 64), -- RESPAWN_ON_DEATH
(79245,79244,1667); -- CANT_SPAWN_IF_BOSS_DEAD, FOLLOW, RESPAWN_ON_RESPAWN, TO_AGGRO_ON_AGGRO, AGGRO_ON_AGGRO

-- ---------------------------------------------
-- Mast Room and corridor to Goblin Foundry
-- ---------------------------------------------

-- Group Pathing
DELETE FROM creature_movement WHERE id IN (79229);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79229);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79230);
DELETE FROM creature_linking WHERE master_guid IN (79230);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79229,79230,515); -- Defias Wizard linked to Defias Taskmaster

-- Group Pathing
UPDATE creature_movement SET id=79233 WHERE id=79376;
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79376);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79233);
DELETE FROM creature_linking WHERE master_guid IN (79233);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79376,79233,515); -- Defias Evoker linked to Defias Taskmaster

-- Removed NPC that are more than probably part of a patrol path instead of a regular spawn
DELETE FROM creature WHERE guid IN (79377);

-- ---------------------------------------------
-- Goblin Foundry
-- ---------------------------------------------

-- Fix NPC Z Problem
UPDATE creature SET position_z=28.4 WHERE guid IN (79242);
-- Fix NPC Placement
UPDATE creature SET position_x=-209.043808, position_y=-590.668701, position_z=20.976866, orientation=2.302266 WHERE guid=79212;
UPDATE creature SET position_x=-196.753937, position_y=-582.341492, position_z=20.976866, orientation=1.217631 WHERE guid=79209;

-- Top group Pathing
-- Respawn on Gilnid death
UPDATE creature SET position_x=-230.55, position_y=-574.55, position_z=51.23, orientation=1.30298 WHERE guid=79284;
UPDATE creature SET position_x=-232.19, position_y=-576.18, position_z=51.23, orientation=1.30298 WHERE guid=79285;
UPDATE creature SET position_x=-229.80, position_y=-577.32, position_z=51.23, orientation=1.58573 WHERE guid=79283;
DELETE FROM creature_movement WHERE id IN (79283,79285);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79283);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79285);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79284);
DELETE FROM creature_linking WHERE master_guid IN (79284, 79206);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79284, 79206, 64), -- RESPAWN_ON_DEATH
(79283,79284,1667), -- Defias Overseer linked to Defias Wizard CANT_SPAWN_IF_BOSS_DEAD, FOLLOW, RESPAWN_ON_RESPAWN, TO_AGGRO_ON_AGGRO, AGGRO_ON_AGGRO
(79285,79284,1667); -- Defias Overseer linked to Defias Wizard CANT_SPAWN_IF_BOSS_DEAD, FOLLOW, RESPAWN_ON_RESPAWN, TO_AGGRO_ON_AGGRO, AGGRO_ON_AGGRO

-- Bottom group Pathing
UPDATE creature SET position_x=-208.265869, position_y=-555.223206, position_z=19.306499, orientation=3.021687 WHERE guid=79380;
DELETE FROM creature_movement WHERE id IN (79379,79380);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79379);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79380);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79378);
DELETE FROM creature_linking WHERE master_guid IN (79378);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79379,79378,515), -- Defias Overseer linked to Defias Wizard
(79380,79378,515); -- Defias Overseer linked to Defias Wizard

-- ---------------------------------------------
-- Corridor to Iron Clove
-- ---------------------------------------------

-- Group 5 Pathing
UPDATE creature SET position_x=-112.329689, position_y=-645.826172, position_z=8.976121, orientation=5.168961 WHERE guid=79260;
DELETE FROM creature_movement WHERE id IN (79260);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79260);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79361);
DELETE FROM creature_linking WHERE master_guid IN (79361);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79260,79361,515); -- Defias Wizard linked to Defias Overseer

-- Fix NPC Random Movement
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (79296);

-- Summon Defias Overseer on Gunpowder GO Use
DELETE FROM dbscripts_on_go_template_use WHERE id=17155;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17155,2,10,634,60000,0,0,8,0,0,0,0,0,0,0,0,'Summon Defias Overseer');

-- ---------------------------------------------
-- Corridor to Iron Clove
-- ---------------------------------------------

-- Fix two NPC 636 (Defias Blackguard) position near Edwin Vancleef
UPDATE creature SET position_x=-77.80708, position_y=-815.0969, position_y=40.01878, orientation=3.263766 WHERE guid=79369;
UPDATE creature SET position_x=-78.27914, position_y=-824.784, position_y=40.00071, orientation=2.932153 WHERE guid=79368;

-- Fix two NPC 636 (Defias Blackguard) position near Mr. Smite
UPDATE creature SET position_x=-0.314941, position_y=-783.811, position_y=10.09053, orientation=1.151917 WHERE guid=79345;
UPDATE creature SET position_x=-5.206597, position_y=-778.9324, position_y=9.773645, orientation=0.8377581 WHERE guid=79346;

-- Linked Aggro Between Defias Pirate and Defias Squallshaper Behind Mr. Smite
UPDATE creature SET position_x=-22.056364, position_y=-809.104553, position_z=19.543686, orientation=1.330994 WHERE guid=79338;
UPDATE creature SET position_x=-34.434910, position_y=-796.904114, position_z=18.909523, orientation=6.229524 WHERE guid=79330;
DELETE FROM creature_linking WHERE master_guid IN (79338);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79330,79338,3);

-- Fix NPC Random Movement of Pirates on the Ship
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (79323,79325,79305,79327);

-- Move Pirates Beside Captain Greenskin
UPDATE creature SET position_x=-61.0881, position_y=-822.202759, position_z=41.638664, orientation=0.797708, SpawnDist=0, MovementType=0 WHERE guid=79335;
UPDATE creature SET position_x=-61.088074, position_y=-820.519287, position_z=41.468719, orientation=0.794565, SpawnDist=0, MovementType=0 WHERE guid=79334;
UPDATE creature SET position_x=-58.39, position_y=-819.83, position_z=41.73, orientation=0.72, SpawnDist=0 WHERE guid=79333;

-- Update movement template for NPC 647 (Captain Greenskin)
DELETE FROM creature_movement_template WHERE entry=647;
INSERT INTO creature_movement_template VALUES
(647, 0, 1, -55.78435, -812.3325, 41.96623, 100, 0, 0, ''),
(647, 0, 2, -50.19228, -809.0906, 42.50024, 100, 0, 0, ''),
(647, 0, 3, -63.76807, -808.2733, 41.21822, 100, 0, 0, ''),
(647, 0, 4, -79.45795, -807.5516, 39.83706, 100, 0, 0, ''),
(647, 0, 5, -91.9668, -808.2596, 38.83189, 100, 0, 0, ''),
(647, 0, 6, -103.5676, -814.1779, 37.99392, 100, 0, 0, ''),
(647, 0, 7, -102.9695, -824.1078, 38.04074, 100, 0, 0, ''),
(647, 0, 8, -92.63673, -831.0884, 38.81192, 100, 0, 0, ''),
(647, 0, 9, -76.55396, -835.9163, 40.1191, 100, 0, 0, ''),
(647, 0, 10, -65.46484, -836.7028, 41.12366, 100, 0, 0, ''),
(647, 0, 11, -64.1282, -832.9458, 41.23405, 100, 0, 0, ''),
(647, 0, 12, -56.56912, -830.9819, 41.92698, 100, 0, 0, ''),
(647, 0, 13, -56.50835, -826.0676, 41.92096, 100, 0, 0, '');
