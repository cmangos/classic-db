-- source: https://www.youtube.com/watch?v=NdA2fjMllxU

DROP PROCEDURE IF EXISTS script_npc;

DELIMITER $$  
CREATE PROCEDURE script_npc(npc_guid INT, npc_script_id INT)

    BEGIN
    DECLARE PX FLOAT Default 0 ;
    DECLARE PY FLOAT Default 0 ;
    DECLARE PZ FLOAT Default 0 ;
    DECLARE PO FLOAT Default 0 ;
    SET PX = (SELECT position_x FROM creature WHERE guid = npc_guid);
    SET PY = (SELECT position_y FROM creature WHERE guid = npc_guid);
    SET PZ = (SELECT position_z FROM creature WHERE guid = npc_guid);
    SET PO = (SELECT orientation FROM creature WHERE guid = npc_guid);
    DELETE FROM creature_movement WHERE id = npc_script_id;
    INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,script_id, waittime) VALUES
    (npc_guid,1,PX,PY,PZ,PO,npc_script_id, 2000);

    UPDATE creature SET MovementType=2,spawndist=0 WHERE guid=npc_guid;

END $$

-- Generic scripts for groups of Scarshield NPCs chatting
-- Two legionnaires, one warlock, one spell binder
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909701;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909701, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909701, 6, 1, 1, 0, 0, 0, 0, 11, 21, 6, 0, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909701, 15, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909701, 21, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909701, 33, 1, 1, 0, 9097, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909701, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one Spellbinder, one acolyte
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909702;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909702, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909702, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909702, 21, 1, 1, 0, 9045, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Acolyte random emote'),
(909702, 33, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909702, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one warlock, one acolyte
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909703;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909703, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909703, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909703, 21, 1, 1, 0, 9045, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Acolyte random emote'),
(909703, 33, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909703, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one warlock, one Spellbinder
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909704;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909704, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909704, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909704, 21, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909704, 33, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909704, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Generic scripts for NPC drinking/eating (different timers)
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909705;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909705, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909705, 2, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909705, 19, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id=909706;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909706, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909706, 9, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909706, 20, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id=909707;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909707, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909707, 18, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909707, 21, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- ----------------------------------------------
-- HORDEMAR CITY
-- ----------------------------------------------

call script_npc(160068, 909704);
call script_npc(160070, 909702);

UPDATE creature SET orientation=2.8416 WHERE guid=160070;

-- Ramp down: removed group of four wrongly placed and respawned it near brasero
DELETE FROM creature WHERE guid=42875;
DELETE FROM creature_addon WHERE guid=42875;
DELETE FROM creature_movement WHERE id=42875;
DELETE FROM game_event_creature WHERE guid=42875;
DELETE FROM game_event_creature_data WHERE guid=42875;
DELETE FROM creature_battleground WHERE guid=42875;
DELETE FROM creature_linking WHERE guid=42875 OR master_guid=42875;
DELETE FROM creature WHERE guid=42876;
DELETE FROM creature_addon WHERE guid=42876;
DELETE FROM creature_movement WHERE id=42876;
DELETE FROM game_event_creature WHERE guid=42876;
DELETE FROM game_event_creature_data WHERE guid=42876;
DELETE FROM creature_battleground WHERE guid=42876;
DELETE FROM creature_linking WHERE guid=42876 OR master_guid=42876;
DELETE FROM creature WHERE guid=42877;
DELETE FROM creature_addon WHERE guid=42877;
DELETE FROM creature_movement WHERE id=42877;
DELETE FROM game_event_creature WHERE guid=42877;
DELETE FROM game_event_creature_data WHERE guid=42877;
DELETE FROM creature_battleground WHERE guid=42877;
DELETE FROM creature_linking WHERE guid=42877 OR master_guid=42877;
DELETE FROM creature WHERE guid=42878;
DELETE FROM creature_addon WHERE guid=42878;
DELETE FROM creature_movement WHERE id=42878;
DELETE FROM game_event_creature WHERE guid=42878;
DELETE FROM game_event_creature_data WHERE guid=42878;
DELETE FROM creature_battleground WHERE guid=42878;
DELETE FROM creature_linking WHERE guid=42878 OR master_guid=42878;
DELETE FROM creature WHERE guid=42875;
INSERT INTO creature VALUES (42875,9097,229,0,0,61.1247,-437.231,42.1525,5.29322,2*60*60,0,0,7599,0,0,0);
call script_npc(42875, 909701);
DELETE FROM creature WHERE guid=42876;
INSERT INTO creature VALUES (42876,9097,229,0,0,66.684,-442.8688,40.768,2.83099,2*60*60,0,0,7599,0,0,0);
DELETE FROM creature WHERE guid=42877;
INSERT INTO creature VALUES (42877,9098,229,0,0,67.391,-440.770,40.992,3.40276,2*60*60,0,0,6273,4234,0,0);
DELETE FROM creature WHERE guid=42878;
INSERT INTO creature VALUES (42878,9257,229,0,0,65.1742,-437.335,41.803,4.353869,2*60*60,0,0,6273,2117,0,0);

-- Ramp bottom
-- Group right before the bridge: changed orientation
UPDATE creature SET orientation=3.18126 WHERE guid=42879;
call script_npc(42879, 909702);
UPDATE creature SET orientation=0.16690 WHERE guid=42880;
UPDATE creature SET orientation=4.82745 WHERE guid=42887;
-- Group in the far right corner after the ramp bottom: changed orientation of the group of 4
UPDATE creature SET orientation=5.29083 WHERE guid=43458;
call script_npc(43458, 909701);
UPDATE creature SET orientation=4.01221 WHERE guid=43459;
UPDATE creature SET orientation=0.81956 WHERE guid=43457;
UPDATE creature SET orientation=2.15710 WHERE guid=43460;


-- After bridge far left corner:
call script_npc(43467, 909703);
-- respawned and changed orientation of two casters
DELETE FROM creature WHERE guid=43470;
DELETE FROM creature_addon WHERE guid=43470;
DELETE FROM creature_movement WHERE id=43470;
DELETE FROM game_event_creature WHERE guid=43470;
DELETE FROM game_event_creature_data WHERE guid=43470;
DELETE FROM creature_battleground WHERE guid=43470;
DELETE FROM creature_linking WHERE guid=43470 OR master_guid=43470;
DELETE FROM creature WHERE guid=43473;
DELETE FROM creature_addon WHERE guid=43473;
DELETE FROM creature_movement WHERE id=43473;
DELETE FROM game_event_creature WHERE guid=43473;
DELETE FROM game_event_creature_data WHERE guid=43473;
DELETE FROM creature_battleground WHERE guid=43473;
DELETE FROM creature_linking WHERE guid=43473 OR master_guid=43473;
DELETE FROM creature WHERE guid=43470;
INSERT INTO creature VALUES (43470,9257,229,0,0,75.5058,-587.496,30.604,3.12235,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43473;
INSERT INTO creature VALUES (43473,9098,229,0,0,71.28,-587.309,30.604,6.21996,2*60*60,0,0,6273,4234,0,0);
-- changed orientation of the two grunts
UPDATE creature SET orientation=1.48402 WHERE guid=43469;
UPDATE creature SET orientation=4.55571 WHERE guid=43468;

-- First group after second bridge: wrong placed (deleted and respawned with correct orientation)
DELETE FROM creature WHERE guid=43486;
DELETE FROM creature_addon WHERE guid=43486;
DELETE FROM creature_movement WHERE id=43486;
DELETE FROM game_event_creature WHERE guid=43486;
DELETE FROM game_event_creature_data WHERE guid=43486;
DELETE FROM creature_battleground WHERE guid=43486;
DELETE FROM creature_linking WHERE guid=43486 OR master_guid=43486;
DELETE FROM creature WHERE guid=43475;
DELETE FROM creature_addon WHERE guid=43475;
DELETE FROM creature_movement WHERE id=43475;
DELETE FROM game_event_creature WHERE guid=43475;
DELETE FROM game_event_creature_data WHERE guid=43475;
DELETE FROM creature_battleground WHERE guid=43475;
DELETE FROM creature_linking WHERE guid=43475 OR master_guid=43475;
DELETE FROM creature WHERE guid=43474;
DELETE FROM creature_addon WHERE guid=43474;
DELETE FROM creature_movement WHERE id=43474;
DELETE FROM game_event_creature WHERE guid=43474;
DELETE FROM game_event_creature_data WHERE guid=43474;
DELETE FROM creature_battleground WHERE guid=43474;
DELETE FROM creature_linking WHERE guid=43474 OR master_guid=43474;
DELETE FROM creature WHERE guid=43481;
DELETE FROM creature_addon WHERE guid=43481;
DELETE FROM creature_movement WHERE id=43481;
DELETE FROM game_event_creature WHERE guid=43481;
DELETE FROM game_event_creature_data WHERE guid=43481;
DELETE FROM creature_battleground WHERE guid=43481;
DELETE FROM creature_linking WHERE guid=43481 OR master_guid=43481;
DELETE FROM creature WHERE guid=43486;
INSERT INTO creature VALUES (43486,9098,229,0,0,-2.46548,-580.496,29.1909,4.07033,2*60*60,0,0,6273,4234,0,0);
DELETE FROM creature WHERE guid=43475;
INSERT INTO creature VALUES (43475,9257,229,0,0,-8.47001,-581.302,29.1909,5.28141,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43481;
INSERT INTO creature VALUES (43481,9097,229,0,0,-7.73006,-586.411,29.1909,0.711965,2*60*60,0,0,7599,0,0,0);
call script_npc(43481, 909701);
DELETE FROM creature WHERE guid=43474;
INSERT INTO creature VALUES (43474,9097,229,0,0,-2.27374,-587.212,29.1909,2.32046,2*60*60,0,0,7599,0,0,0);

-- Group next wall: the grunt are sleeping, the caster is removed
DELETE FROM creature WHERE guid=43482;
DELETE FROM creature_addon WHERE guid=43482;
DELETE FROM creature_movement WHERE id=43482;
DELETE FROM game_event_creature WHERE guid=43482;
DELETE FROM game_event_creature_data WHERE guid=43482;
DELETE FROM creature_battleground WHERE guid=43482;
DELETE FROM creature_linking WHERE guid=43482 OR master_guid=43482;
DELETE FROM creature WHERE guid=43485;
DELETE FROM creature_addon WHERE guid=43485;
DELETE FROM creature_movement WHERE id=43485;
DELETE FROM game_event_creature WHERE guid=43485;
DELETE FROM game_event_creature_data WHERE guid=43485;
DELETE FROM creature_battleground WHERE guid=43485;
DELETE FROM creature_linking WHERE guid=43485 OR master_guid=43485;
DELETE FROM creature WHERE guid=43485;
INSERT INTO creature VALUES (43485,9097,229,0,0,-34.1753,-585.505,29.1909,6.24981,2*60*60,0,0,7599,0,0,0); -- asleep
DELETE FROM `creature_addon` WHERE `guid`= 43485;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43485,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=43484;
DELETE FROM creature_addon WHERE guid=43484;
DELETE FROM creature_movement WHERE id=43484;
DELETE FROM game_event_creature WHERE guid=43484;
DELETE FROM game_event_creature_data WHERE guid=43484;
DELETE FROM creature_battleground WHERE guid=43484;
DELETE FROM creature_linking WHERE guid=43484 OR master_guid=43484;
DELETE FROM creature WHERE guid=43484;
INSERT INTO creature VALUES (43484,9097,229,0,0,-37.8278,-585.13,29.1909,1.47773,2*60*60,0,0,7599,0,0,0); -- asleep
DELETE FROM `creature_addon` WHERE `guid`= 43484;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43484,0,3,1,16,0,0,'6606');

-- Groups in the far left corner:
-- changed orientation of two grunts (delete/respawned)
DELETE FROM creature WHERE guid=43478;
DELETE FROM creature_addon WHERE guid=43478;
DELETE FROM creature_movement WHERE id=43478;
DELETE FROM game_event_creature WHERE guid=43478;
DELETE FROM game_event_creature_data WHERE guid=43478;
DELETE FROM creature_battleground WHERE guid=43478;
DELETE FROM creature_linking WHERE guid=43478 OR master_guid=43478;
DELETE FROM creature WHERE guid=43478;
INSERT INTO creature VALUES (43478,9097,229,0,0,-63.9999,-572.651,29.1909,6.18384,2*60*60,0,0,7599,0,0,0); -- Sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 43478;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43478,0,1,1,16,0,0,NULL);
call script_npc(43478, 909705);
DELETE FROM creature WHERE guid=43479;
DELETE FROM creature_addon WHERE guid=43479;
DELETE FROM creature_movement WHERE id=43479;
DELETE FROM game_event_creature WHERE guid=43479;
DELETE FROM game_event_creature_data WHERE guid=43479;
DELETE FROM creature_battleground WHERE guid=43479;
DELETE FROM creature_linking WHERE guid=43479 OR master_guid=43479;
DELETE FROM creature WHERE guid=43479;
INSERT INTO creature VALUES (43479,9097,229,0,0,-70.37,-575.97,29.1909,1.57276,2*60*60,0,0,7599,0,0,0); -- Sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 43479;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43479,0,1,1,16,0,0,NULL);
call script_npc(43479, 909706);

-- Respawned the group of four around the plates
DELETE FROM creature WHERE guid=43477;
DELETE FROM creature_addon WHERE guid=43477;
DELETE FROM creature_movement WHERE id=43477;
DELETE FROM game_event_creature WHERE guid=43477;
DELETE FROM game_event_creature_data WHERE guid=43477;
DELETE FROM creature_battleground WHERE guid=43477;
DELETE FROM creature_linking WHERE guid=43477 OR master_guid=43477;
DELETE FROM creature WHERE guid=43477;
INSERT INTO creature VALUES (43477,9097,229,0,0,-60.3966,-585.973,29.1909,0.580012,2*60*60,0,0,7599,0,0,0);
call script_npc(43477, 909703);
DELETE FROM creature WHERE guid=43476;
DELETE FROM creature_addon WHERE guid=43476;
DELETE FROM creature_movement WHERE id=43476;
DELETE FROM game_event_creature WHERE guid=43476;
DELETE FROM game_event_creature_data WHERE guid=43476;
DELETE FROM creature_battleground WHERE guid=43476;
DELETE FROM creature_linking WHERE guid=43476 OR master_guid=43476;
DELETE FROM creature WHERE guid=43476;
INSERT INTO creature VALUES (43476,9045,229,0,0,-52.6788,-585.094,29.1909,2.93307,2*60*60,0,0,6078,2041,0,0);
DELETE FROM creature WHERE guid=43488;
DELETE FROM creature_addon WHERE guid=43488;
DELETE FROM creature_movement WHERE id=43488;
DELETE FROM game_event_creature WHERE guid=43488;
DELETE FROM game_event_creature_data WHERE guid=43488;
DELETE FROM creature_battleground WHERE guid=43488;
DELETE FROM creature_linking WHERE guid=43488 OR master_guid=43488;
DELETE FROM creature WHERE guid=43488;
INSERT INTO creature VALUES (43488,9257,229,0,0,-53.7342,-579.435,29.1909,3.91796,2*60*60,0,0,6078,2041,0,0);
DELETE FROM creature WHERE guid=43489;
DELETE FROM creature_addon WHERE guid=43489;
DELETE FROM creature_movement WHERE id=43489;
DELETE FROM game_event_creature WHERE guid=43489;
DELETE FROM game_event_creature_data WHERE guid=43489;
DELETE FROM creature_battleground WHERE guid=43489;
DELETE FROM creature_linking WHERE guid=43489 OR master_guid=43489;
DELETE FROM creature WHERE guid=43489;
INSERT INTO creature VALUES (43489,9098,229,0,0,-57.2777,-586.384,29.1909,1.41175,2*60*60,0,0,6078,4082,0,0);

-- First group on the right: deleted and respawned three NPCs
DELETE FROM creature WHERE guid=43487;
DELETE FROM creature_addon WHERE guid=43487;
DELETE FROM creature_movement WHERE id=43487;
DELETE FROM game_event_creature WHERE guid=43487;
DELETE FROM game_event_creature_data WHERE guid=43487;
DELETE FROM creature_battleground WHERE guid=43487;
DELETE FROM creature_linking WHERE guid=43487 OR master_guid=43487;
DELETE FROM creature WHERE guid=43487;
INSERT INTO creature VALUES (43487,9045,229,0,0,-31.7166,-564.232,29.1909,0.821129,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43483;
DELETE FROM creature_addon WHERE guid=43483;
DELETE FROM creature_movement WHERE id=43483;
DELETE FROM game_event_creature WHERE guid=43483;
DELETE FROM game_event_creature_data WHERE guid=43483;
DELETE FROM creature_battleground WHERE guid=43483;
DELETE FROM creature_linking WHERE guid=43483 OR master_guid=43483;
DELETE FROM creature WHERE guid=43483;
INSERT INTO creature VALUES (43483,9098,229,0,0,-27.0788,-563.404,29.1909,2.86316,2*60*60,0,0,6273,4234,0,0);
DELETE FROM creature WHERE guid=43480;
DELETE FROM creature_addon WHERE guid=43480;
DELETE FROM creature_movement WHERE id=43480;
DELETE FROM game_event_creature WHERE guid=43480;
DELETE FROM game_event_creature_data WHERE guid=43480;
DELETE FROM creature_battleground WHERE guid=43480;
DELETE FROM creature_linking WHERE guid=43480 OR master_guid=43480;
DELETE FROM creature WHERE guid=43480;
INSERT INTO creature VALUES (43480,9097,229,0,0,-32.392,-558.642,29.1909,5.39921,2*60*60,0,0,7842,0,0,10);
call script_npc(43480, 909702);

-- Added missing raider near its worgs
DELETE FROM creature WHERE guid=43482;
INSERT INTO creature VALUES (43482,9258,229,0,0,-60.5682,-548.082,29.1909,0.690753,2*60*60,0,0,7599,0,0,0);

-- Group under the tent: removed the three wrong spawns and respawned them
DELETE FROM creature WHERE guid=43496;
DELETE FROM creature_addon WHERE guid=43496;
DELETE FROM creature_movement WHERE id=43496;
DELETE FROM game_event_creature WHERE guid=43496;
DELETE FROM game_event_creature_data WHERE guid=43496;
DELETE FROM creature_battleground WHERE guid=43496;
DELETE FROM creature_linking WHERE guid=43496 OR master_guid=43496;
DELETE FROM creature WHERE guid=43496;
INSERT INTO creature VALUES (43496,9045,229,0,0,-68.4459,-539.299,29.1909,2.17437,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43498;
DELETE FROM creature_addon WHERE guid=43498;
DELETE FROM creature_movement WHERE id=43498;
DELETE FROM game_event_creature WHERE guid=43498;
DELETE FROM game_event_creature_data WHERE guid=43498;
DELETE FROM creature_battleground WHERE guid=43498;
DELETE FROM creature_linking WHERE guid=43498 OR master_guid=43498;
DELETE FROM creature WHERE guid=43498;
INSERT INTO creature VALUES (43498,9097,229,0,0,-67.1433,-534.974,29.1909,3.64778,2*60*60,0,0,7599,0,0,0);
call script_npc(43498, 909702);
DELETE FROM creature WHERE guid=43497;
DELETE FROM creature_addon WHERE guid=43497;
DELETE FROM creature_movement WHERE id=43497;
DELETE FROM game_event_creature WHERE guid=43497;
DELETE FROM game_event_creature_data WHERE guid=43497;
DELETE FROM creature_battleground WHERE guid=43497;
DELETE FROM creature_linking WHERE guid=43497 OR master_guid=43497;
DELETE FROM creature WHERE guid=43497;
INSERT INTO creature VALUES (43497,9098,229,0,0,-73.8189,-537.626,29.1909,0.107986,2*60*60,0,0,6078,4082,0,0);

call script_npc(43500, 909701);

-- ----------------------------------------------
-- MOK'DOOM
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9197, 9198, 9199, 9200, 9201, 9216);

-- Changed orientation of two guards on the bridge: removed and respawned
DELETE FROM creature WHERE guid=43506;
DELETE FROM creature_addon WHERE guid=43506;
DELETE FROM creature_movement WHERE id=43506;
DELETE FROM game_event_creature WHERE guid=43506;
DELETE FROM game_event_creature_data WHERE guid=43506;
DELETE FROM creature_battleground WHERE guid=43506;
DELETE FROM creature_linking WHERE guid=43506 OR master_guid=43506;
DELETE FROM creature WHERE guid=43506;
INSERT INTO creature VALUES (43506,9201,229,0,0,-30.7344,-429.156,31.7927,3.94546,2*60*60,0,0,10130,10205,0,0);
DELETE FROM creature WHERE guid=43520;
DELETE FROM creature_addon WHERE guid=43520;
DELETE FROM creature_movement WHERE id=43520;
DELETE FROM game_event_creature WHERE guid=43520;
DELETE FROM game_event_creature_data WHERE guid=43520;
DELETE FROM creature_battleground WHERE guid=43520;
DELETE FROM creature_linking WHERE guid=43520 OR master_guid=43520;
DELETE FROM creature WHERE guid=43520;
INSERT INTO creature VALUES (43520,9200,229,0,0,-44.1083,-429.344,31.7916,5.42672,2*60*60,0,0,12665,0,0,0);

-- Added missing spawn on bridge before main room
DELETE FROM creature WHERE guid=660075;
INSERT INTO creature VALUES (660075,9200,229,0,0,-38.0091,-405.164,31.5373,1.24134,2*60*60,0,0,12665,0,0,0);

-- Fixed entry of patrol along bridge
UPDATE creature SET id=9199, equipment_id=0, curhealth=12665 WHERE guid=43507;

-- Respawned a few ogres:
DELETE FROM creature WHERE guid=43511;
DELETE FROM creature_addon WHERE guid=43511;
DELETE FROM creature_movement WHERE id=43511;
DELETE FROM game_event_creature WHERE guid=43511;
DELETE FROM game_event_creature_data WHERE guid=43511;
DELETE FROM creature_battleground WHERE guid=43511;
DELETE FROM creature_linking WHERE guid=43511 OR master_guid=43511;
DELETE FROM creature WHERE guid=43511;
INSERT INTO creature VALUES (43511,9201,229,0,0,-25.5023,-346.151,31.6168,1.98312,2*60*60,0,0,10455,10585,0,0);
UPDATE creature SET id=9200, equipment_id=0, curhealth=12665, MovementType=1, spawndist=2 WHERE guid=43510;
DELETE FROM creature WHERE guid=43509;
DELETE FROM creature_addon WHERE guid=43509;
DELETE FROM creature_movement WHERE id=43509;
DELETE FROM game_event_creature WHERE guid=43509;
DELETE FROM game_event_creature_data WHERE guid=43509;
DELETE FROM creature_battleground WHERE guid=43509;
DELETE FROM creature_linking WHERE guid=43509 OR master_guid=43509;
DELETE FROM creature WHERE guid=43509;
INSERT INTO creature VALUES (43509,9201,229,0,0,-44.9234,-363.5,31.6182,0.687995,2*60*60,0,0,10455,10585,0,0);
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid=43508;
DELETE FROM creature WHERE guid=660079;
INSERT INTO creature VALUES (660079,9200,229,0,0,-30.519,-364.791,31.6182,1.34537,2*60*60,2,0,12665,0,0,1);

-- Added random movement to the last ogre before Omokk group
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid=43512;

-- Updated position of one of Omokk counselor
DELETE FROM creature WHERE guid=43515;
DELETE FROM creature_addon WHERE guid=43515;
DELETE FROM creature_movement WHERE id=43515;
DELETE FROM game_event_creature WHERE guid=43515;
DELETE FROM game_event_creature_data WHERE guid=43515;
DELETE FROM creature_battleground WHERE guid=43515;
DELETE FROM creature_linking WHERE guid=43515 OR master_guid=43515;
DELETE FROM creature WHERE guid=43515;
INSERT INTO creature VALUES (43515,9201,229,0,0,-20.1226,-307.731,31.6163,2.21873,2*60*60,0,0,10455,10585,0,0);


-- ----------------------------------------------
-- TAZZ'ALAOR
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9239,9240,9241,9265,9266,9267,9268,9269);

-- Generic scripts for groups of Smolderthorn NPCs chatting
-- Two headhunter, one witch doctor, one seer
DELETE FROM `dbscripts_on_creature_movement` WHERE id=924101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(924101, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(924101, 6, 1, 1, 0, 0, 0, 0, 11, 21, 6, 0, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924101, 15, 1, 1, 0, 9269, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Seer random emote'),
(924101, 21, 1, 1, 0, 9241, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924101, 33, 1, 1, 0, 9266, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Witch Doctor random emote'),
(924101, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Two axe thrower, one shadow priest
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926701;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926701, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926701, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Axe Thrower random emote'),
(926701, 21, 1, 1, 0, 9267, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Axe Thrower random emote'),
(926701, 33, 1, 1, 0, 9240, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Shadow Priest random emote'),
(926701, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One headhunter, one shadow priest, one seer
DELETE FROM `dbscripts_on_creature_movement` WHERE id=924102;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(924102, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(924102, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924102, 21, 1, 1, 0, 9269, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Seer random emote'),
(924102, 33, 1, 1, 0, 9240, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Shadow Priest random emote'),
(924102, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

call script_npc(43543, 926701);
call script_npc(43571, 924101);

-- Respawn group at the top near Bijou
DELETE FROM creature WHERE guid=43558;
DELETE FROM creature_addon WHERE guid=43558;
DELETE FROM creature_movement WHERE id=43558;
DELETE FROM game_event_creature WHERE guid=43558;
DELETE FROM game_event_creature_data WHERE guid=43558;
DELETE FROM creature_battleground WHERE guid=43558;
DELETE FROM creature_linking WHERE guid=43558 OR master_guid=43558;
DELETE FROM creature WHERE guid=43558;
INSERT INTO creature VALUES (43558,9240,229,0,0,-35.3191,-548.441,16.1143,4.47325,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43556;
DELETE FROM creature_addon WHERE guid=43556;
DELETE FROM creature_movement WHERE id=43556;
DELETE FROM game_event_creature WHERE guid=43556;
DELETE FROM game_event_creature_data WHERE guid=43556;
DELETE FROM creature_battleground WHERE guid=43556;
DELETE FROM creature_linking WHERE guid=43556 OR master_guid=43556;
DELETE FROM creature WHERE guid=43556;
INSERT INTO creature VALUES (43556,9267,229,0,0,-33.3368,-552.47,16.1143,3.02969,2*60*60,0,0,8097,0,0,0);
DELETE FROM creature WHERE guid=43557;
DELETE FROM creature_addon WHERE guid=43557;
DELETE FROM creature_movement WHERE id=43557;
DELETE FROM game_event_creature WHERE guid=43557;
DELETE FROM game_event_creature_data WHERE guid=43557;
DELETE FROM creature_battleground WHERE guid=43557;
DELETE FROM creature_linking WHERE guid=43557 OR master_guid=43557;
DELETE FROM creature WHERE guid=43557;
INSERT INTO creature VALUES (43557,9267,229,0,0,-40.495,-552.886,16.1286,0.352268,2*60*60,0,0,8097,0,0,0);

-- First room before War Master Voone: added a missing NPC (guid from NPC deleted in main room)
DELETE FROM creature WHERE guid=43575;
DELETE FROM creature_addon WHERE guid=43575;
DELETE FROM creature_movement WHERE id=43575;
DELETE FROM game_event_creature WHERE guid=43575;
DELETE FROM game_event_creature_data WHERE guid=43575;
DELETE FROM creature_battleground WHERE guid=43575;
DELETE FROM creature_linking WHERE guid=43575 OR master_guid=43575;
DELETE FROM creature WHERE guid=43575;
INSERT INTO creature VALUES (43575,9241,229,0,0,-58.680,-450.553,-18.6442,4.32324,2*60*60,0,0,8352,0,0,0);

-- Second room before War Master Voone: added two missing NPCs
DELETE FROM creature WHERE guid=660081;
INSERT INTO creature VALUES (660081,9266,229,0,0,-41.2865,-457.887,-18.6442,0.00433396,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE guid=660081;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(660081,0,1,1,16,0,0,NULL);
DELETE FROM creature WHERE guid=660082;
INSERT INTO creature VALUES (660082,9241,229,0,0,-37.2773,-461.396,-18.6442,2.44535,2*60*60,0,0,8352,0,0,0);
DELETE FROM `creature_addon` WHERE guid=660082;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(660082,0,1,1,16,0,0,NULL);

-- War Master Voone: udpated position
UPDATE creature SET position_x=-10.045, position_y=-458.635, position_z=-18.645, orientation=3.231534 WHERE id=9237;

-- Middle of the ramps: changed (respawned) two types
DELETE FROM creature WHERE guid=43554;
DELETE FROM creature_addon WHERE guid=43554;
DELETE FROM creature_movement WHERE id=43554;
DELETE FROM game_event_creature WHERE guid=43554;
DELETE FROM game_event_creature_data WHERE guid=43554;
DELETE FROM creature_battleground WHERE guid=43554;
DELETE FROM creature_linking WHERE guid=43554 OR master_guid=43554;
DELETE FROM creature WHERE guid=43554;
INSERT INTO creature VALUES (43554,9269,229,0,0,-44.4268,-513.147,4.50927,5.64349,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=43553;
DELETE FROM creature_addon WHERE guid=43553;
DELETE FROM creature_movement WHERE id=43553;
DELETE FROM game_event_creature WHERE guid=43553;
DELETE FROM game_event_creature_data WHERE guid=43553;
DELETE FROM creature_battleground WHERE guid=43553;
DELETE FROM creature_linking WHERE guid=43553 OR master_guid=43553;
DELETE FROM creature WHERE guid=43553;
INSERT INTO creature VALUES (43553,9269,229,0,0,-44.5597,-521.677,4.50925,0.779523,2*60*60,0,0,6477,2163,0,0);

-- Room of Vosh'Gajin
-- Removed two npcs, moved (deleted and respawned) four more and made them channel the braseros
DELETE FROM creature WHERE guid=43548;
DELETE FROM creature_addon WHERE guid=43548;
DELETE FROM creature_movement WHERE id=43548;
DELETE FROM game_event_creature WHERE guid=43548;
DELETE FROM game_event_creature_data WHERE guid=43548;
DELETE FROM creature_battleground WHERE guid=43548;
DELETE FROM creature_linking WHERE guid=43548 OR master_guid=43548;
DELETE FROM creature WHERE guid=43548;
INSERT INTO creature VALUES (43548,9239,229,0,0,-108.768,-475.778,24.2549,1.60891,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43549;
DELETE FROM creature_addon WHERE guid=43549;
DELETE FROM creature_movement WHERE id=43549;
DELETE FROM game_event_creature WHERE guid=43549;
DELETE FROM game_event_creature_data WHERE guid=43549;
DELETE FROM creature_battleground WHERE guid=43549;
DELETE FROM creature_linking WHERE guid=43549 OR master_guid=43549;
DELETE FROM creature WHERE guid=43549;
INSERT INTO creature VALUES (43549,9240,229,0,0,-106.384,-473.381,24.2549,3.19541,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43547;
DELETE FROM creature_addon WHERE guid=43547;
DELETE FROM creature_movement WHERE id=43547;
DELETE FROM game_event_creature WHERE guid=43547;
DELETE FROM game_event_creature_data WHERE guid=43547;
DELETE FROM creature_battleground WHERE guid=43547;
DELETE FROM creature_linking WHERE guid=43547 OR master_guid=43547;
DELETE FROM creature WHERE guid=43547;
INSERT INTO creature VALUES (43547,9265,229,0,0,-108.969,-486.557,24.2551,4.65311,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43546;
DELETE FROM creature_addon WHERE guid=43546;
DELETE FROM creature_movement WHERE id=43546;
DELETE FROM game_event_creature WHERE guid=43546;
DELETE FROM game_event_creature_data WHERE guid=43546;
DELETE FROM creature_battleground WHERE guid=43546;
DELETE FROM creature_linking WHERE guid=43546 OR master_guid=43546;
DELETE FROM creature WHERE guid=43546;
INSERT INTO creature VALUES (43546,9269,229,0,0,-106.491,-488.549,24.2551,3.12944,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (43548,43549,43547,43546);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43546,0,0,1,16,0,0,'13236'),
(43547,0,0,1,16,0,0,'13236'),
(43548,0,0,1,16,0,0,'13236'),
(43549,0,0,1,16,0,0,'13236');
-- Changed orientation of Vosh'Gajin and its two nearby NPCs and made them kneel
UPDATE creature SET orientation=3.175776 WHERE guid=43522;
UPDATE creature SET orientation=1.633253 WHERE guid=43551;
UPDATE creature SET orientation=4.744217 WHERE guid=43550;
DELETE FROM `creature_addon` WHERE `guid` IN (43551,43551);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43551,0,8,1,16,0,0,'12380'),
(43550,0,8,1,16,0,0,'12380');
DELETE FROM `creature_template_addon` WHERE entry=9236;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(9236,0,8,1,16,0,0,'12380');

-- First room after ramp from Hordemar City
-- Spawned two mobs near the table
DELETE FROM creature WHERE guid=43544;
DELETE FROM creature_addon WHERE guid=43544;
DELETE FROM creature_movement WHERE id=43544;
DELETE FROM game_event_creature WHERE guid=43544;
DELETE FROM game_event_creature_data WHERE guid=43544;
DELETE FROM creature_battleground WHERE guid=43544;
DELETE FROM creature_linking WHERE guid=43544 OR master_guid=43544;
DELETE FROM creature WHERE guid=43545;
DELETE FROM creature_addon WHERE guid=43545;
DELETE FROM creature_movement WHERE id=43545;
DELETE FROM game_event_creature WHERE guid=43545;
DELETE FROM game_event_creature_data WHERE guid=43545;
DELETE FROM creature_battleground WHERE guid=43545;
DELETE FROM creature_linking WHERE guid=43545 OR master_guid=43545;
DELETE FROM creature WHERE guid=43544;
INSERT INTO creature VALUES (43544,9267,229,0,0,-29.9323,-481.091,16.3433,6.26701,2*60*60,0,0,8097,0,0,0);	-- sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 43544;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43544,0,1,1,16,0,0,NULL);
call script_npc(43544, 909705);
DELETE FROM creature WHERE guid=43545;
INSERT INTO creature VALUES (43545,9267,229,0,0,-20.9982,-480.733,16.3041,3.15055,2*60*60,0,0,7842,0,0,0); -- sitting drinking
DELETE FROM `creature_addon` WHERE `guid`= 43545;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43545,0,1,1,16,0,0,NULL);
call script_npc(43545, 909706);
DELETE FROM `creature_addon` WHERE `guid`= 43539;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43539,0,1,1,16,0,0,NULL);
call script_npc(43539, 909707);
-- Made sit the four NPCs in the far right corner
DELETE FROM `creature_addon` WHERE `guid` IN (43534,43535,43536,43537);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43534,0,1,1,16,0,0,NULL),
(43535,0,1,1,16,0,0,NULL),
(43536,0,1,1,16,0,0,NULL),
(43537,0,1,1,16,0,0,NULL);

-- Made group of four near the brasero cast a channel spell
DELETE FROM `creature_addon` WHERE `guid` IN (43530,43531,43532,43533);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43530,0,0,1,16,0,0,'13236'),
(43531,0,0,1,16,0,0,'13236'),
(43532,0,0,1,16,0,0,'13236'),
(43533,0,0,1,16,0,0,'13236');

-- Main bottom room
-- NW corner: respawned the group of four and removed berserker
DELETE FROM creature WHERE guid=43568;
DELETE FROM creature_addon WHERE guid=43568;
DELETE FROM creature_movement WHERE id=43568;
DELETE FROM game_event_creature WHERE guid=43568;
DELETE FROM game_event_creature_data WHERE guid=43568;
DELETE FROM creature_battleground WHERE guid=43568;
DELETE FROM creature_linking WHERE guid=43568 OR master_guid=43568;
DELETE FROM creature WHERE guid=43568;
INSERT INTO creature VALUES (43568,9240,229,0,0,-7.052,-474.520,-18.778,1.60419,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43569;
DELETE FROM creature_addon WHERE guid=43569;
DELETE FROM creature_movement WHERE id=43569;
DELETE FROM game_event_creature WHERE guid=43569;
DELETE FROM game_event_creature_data WHERE guid=43569;
DELETE FROM creature_battleground WHERE guid=43569;
DELETE FROM creature_linking WHERE guid=43569 OR master_guid=43569;
DELETE FROM creature WHERE guid=43569;
INSERT INTO creature VALUES (43569,9241,229,0,0,-1.69604,-479.888,-18.794,1.42591,2*60*60,0,0,8097,0,0,0);
call script_npc(43569, 924102);
DELETE FROM creature WHERE guid=43566;
DELETE FROM creature_addon WHERE guid=43566;
DELETE FROM creature_movement WHERE id=43566;
DELETE FROM game_event_creature WHERE guid=43566;
DELETE FROM game_event_creature_data WHERE guid=43566;
DELETE FROM creature_battleground WHERE guid=43566;
DELETE FROM creature_linking WHERE guid=43566 OR master_guid=43566;
DELETE FROM creature WHERE guid=43566;
INSERT INTO creature VALUES (43566,9240,229,0,0,-4.16821,-477.159,-18.7882,5.8587,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43567;
DELETE FROM creature_addon WHERE guid=43567;
DELETE FROM creature_movement WHERE id=43567;
DELETE FROM game_event_creature WHERE guid=43567;
DELETE FROM game_event_creature_data WHERE guid=43567;
DELETE FROM creature_battleground WHERE guid=43567;
DELETE FROM creature_linking WHERE guid=43567 OR master_guid=43567;
DELETE FROM creature WHERE guid=43567;
INSERT INTO creature VALUES (43567,9269,229,0,9269,-0.912777,-476.174,-18.7933,4.13553,2*60*60,0,0,6477,2163,0,0);

-- Middle: respawned (deleted and added) the two berserkers, made the group of four use random movement, changed entries
DELETE FROM creature WHERE guid=43563;
DELETE FROM creature_addon WHERE guid=43563;
DELETE FROM creature_movement WHERE id=43563;
DELETE FROM game_event_creature WHERE guid=43563;
DELETE FROM game_event_creature_data WHERE guid=43563;
DELETE FROM creature_battleground WHERE guid=43563;
DELETE FROM creature_linking WHERE guid=43563 OR master_guid=43563;
DELETE FROM creature WHERE guid=43564;
DELETE FROM creature_addon WHERE guid=43564;
DELETE FROM creature_movement WHERE id=43564;
DELETE FROM game_event_creature WHERE guid=43564;
DELETE FROM game_event_creature_data WHERE guid=43564;
DELETE FROM creature_battleground WHERE guid=43564;
DELETE FROM creature_linking WHERE guid=43564 OR master_guid=43564;
DELETE FROM creature WHERE guid=43564;
INSERT INTO creature VALUES (43564,9268,229,0,0,-37.0854,-507.072,-18.7812,5.36782,2*60*60,5,0,8352,0,0,1);
DELETE FROM creature WHERE guid=43562;
DELETE FROM creature_addon WHERE guid=43562;
DELETE FROM creature_movement WHERE id=43562;
DELETE FROM game_event_creature WHERE guid=43562;
DELETE FROM game_event_creature_data WHERE guid=43562;
DELETE FROM creature_battleground WHERE guid=43562;
DELETE FROM creature_linking WHERE guid=43562 OR master_guid=43562;
DELETE FROM creature WHERE guid=43562;
INSERT INTO creature VALUES (43562,9268,229,0,0,-42.1008,-527.685,-18.4778,2.12491,2*60*60,5,0,8613,0,0,1);
UPDATE creature SET id=9239, curhealth=6273, curmana=2117, spawndist=5, MovementType=1 WHERE guid=43754;
UPDATE creature SET id=9266, curhealth=6477, curmana=2163, spawndist=5, MovementType=1 WHERE guid=43752;
UPDATE creature SET id=9241, curhealth=8097, curmana=0, spawndist=5, MovementType=1 WHERE guid=43753;
UPDATE creature SET id=9241, curhealth=8097, curmana=0, spawndist=5, MovementType=1 WHERE guid=43751;

-- Western Wall : remade the group of four (deleted/respawned) and removed a wrong spawn
DELETE FROM creature WHERE guid=43757;
DELETE FROM creature_addon WHERE guid=43757;
DELETE FROM creature_movement WHERE id=43757;
DELETE FROM game_event_creature WHERE guid=43757;
DELETE FROM game_event_creature_data WHERE guid=43757;
DELETE FROM creature_battleground WHERE guid=43757;
DELETE FROM creature_linking WHERE guid=43757 OR master_guid=43757;
DELETE FROM creature WHERE guid=43757;
INSERT INTO creature VALUES (43757,9240,229,0,0,-35.417,-477.805,-18.7734,0.0451778,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43756;
DELETE FROM creature_addon WHERE guid=43756;
DELETE FROM creature_movement WHERE id=43756;
DELETE FROM game_event_creature WHERE guid=43756;
DELETE FROM game_event_creature_data WHERE guid=43756;
DELETE FROM creature_battleground WHERE guid=43756;
DELETE FROM creature_linking WHERE guid=43756 OR master_guid=43756;
DELETE FROM creature WHERE guid=43756;
INSERT INTO creature VALUES (43756,9266,229,0,0,-32.8316,-477.702,-18.7734,3.14907,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=43755;
DELETE FROM creature_addon WHERE guid=43755;
DELETE FROM creature_movement WHERE id=43755;
DELETE FROM game_event_creature WHERE guid=43755;
DELETE FROM game_event_creature_data WHERE guid=43755;
DELETE FROM creature_battleground WHERE guid=43755;
DELETE FROM creature_linking WHERE guid=43755 OR master_guid=43755;
DELETE FROM creature WHERE guid=43755;
INSERT INTO creature VALUES (43755,9269,229,0,0,-33.635,-472.792,-18.7668,0.88791,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43574;
DELETE FROM creature_addon WHERE guid=43574;
DELETE FROM creature_movement WHERE id=43574;
DELETE FROM game_event_creature WHERE guid=43574;
DELETE FROM game_event_creature_data WHERE guid=43574;
DELETE FROM creature_battleground WHERE guid=43574;
DELETE FROM creature_linking WHERE guid=43574 OR master_guid=43574;
DELETE FROM creature WHERE guid=43574;
INSERT INTO creature VALUES (43574,9240,229,0,0,-29.3655,-473.768,-18.7656,4.67667,2*60*60,0,0,6477,2163,0,0);

-- NE corner: removed wrong group of three and respawn proper group of four
DELETE FROM creature WHERE guid=43750;
DELETE FROM creature_addon WHERE guid=43750;
DELETE FROM creature_movement WHERE id=43750;
DELETE FROM game_event_creature WHERE guid=43750;
DELETE FROM game_event_creature_data WHERE guid=43750;
DELETE FROM creature_battleground WHERE guid=43750;
DELETE FROM creature_linking WHERE guid=43750 OR master_guid=43750;
DELETE FROM creature WHERE guid=43760;
DELETE FROM creature_addon WHERE guid=43760;
DELETE FROM creature_movement WHERE id=43760;
DELETE FROM game_event_creature WHERE guid=43760;
DELETE FROM game_event_creature_data WHERE guid=43760;
DELETE FROM creature_battleground WHERE guid=43760;
DELETE FROM creature_linking WHERE guid=43760 OR master_guid=43760;
DELETE FROM creature WHERE guid=43749;
DELETE FROM creature_addon WHERE guid=43749;
DELETE FROM creature_movement WHERE id=43749;
DELETE FROM game_event_creature WHERE guid=43749;
DELETE FROM game_event_creature_data WHERE guid=43749;
DELETE FROM creature_battleground WHERE guid=43749;
DELETE FROM creature_linking WHERE guid=43749 OR master_guid=43749;
DELETE FROM creature WHERE guid=43750;
INSERT INTO creature VALUES (43750,9241,229,0,0,-19.0644,-557.877,-18.778,4.6806,2*60*60,0,0,8097,0,0,0);
DELETE FROM creature WHERE guid=43749;
INSERT INTO creature VALUES (43749,9241,229,0,0,-19.2464,-563.486,-18.7757,1.56728,2*60*60,0,0,8097,0,0,0);
DELETE FROM creature WHERE guid=43760;
INSERT INTO creature VALUES (43760,9266,229,0,0,-22.8984,-557.704,-18.7822,6.22312,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43563;
INSERT INTO creature VALUES (43563,9269,229,0,0,-16.367,-557.751,-18.775,3.05325,2*60*60,0,0,6477,2163,0,0);

-- Eastern wall: full respawn of the group of four
DELETE FROM creature WHERE guid=43761;
DELETE FROM creature_addon WHERE guid=43761;
DELETE FROM creature_movement WHERE id=43761;
DELETE FROM game_event_creature WHERE guid=43761;
DELETE FROM game_event_creature_data WHERE guid=43761;
DELETE FROM creature_battleground WHERE guid=43761;
DELETE FROM creature_linking WHERE guid=43761 OR master_guid=43761;
DELETE FROM creature WHERE guid=43761;
INSERT INTO creature VALUES (43761,9269,229,0,0,-30.8244,-580.121,-18.8525,5.23194,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=43707;
DELETE FROM creature_addon WHERE guid=43707;
DELETE FROM creature_movement WHERE id=43707;
DELETE FROM game_event_creature WHERE guid=43707;
DELETE FROM game_event_creature_data WHERE guid=43707;
DELETE FROM creature_battleground WHERE guid=43707;
DELETE FROM creature_linking WHERE guid=43707 OR master_guid=43707;
DELETE FROM creature WHERE guid=43707;
INSERT INTO creature VALUES (43707,9266,229,0,0,-37.1037,-576.521,-18.8406,3.23075,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43578;
DELETE FROM creature_addon WHERE guid=43578;
DELETE FROM creature_movement WHERE id=43578;
DELETE FROM game_event_creature WHERE guid=43578;
DELETE FROM game_event_creature_data WHERE guid=43578;
DELETE FROM creature_battleground WHERE guid=43578;
DELETE FROM creature_linking WHERE guid=43578 OR master_guid=43578;
DELETE FROM creature WHERE guid=43578;
INSERT INTO creature VALUES (43578,9266,229,0,0,-41.1078,-576.433,-18.8398,0.0357499,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43577;
DELETE FROM creature_addon WHERE guid=43577;
DELETE FROM creature_movement WHERE id=43577;
DELETE FROM game_event_creature WHERE guid=43577;
DELETE FROM game_event_creature_data WHERE guid=43577;
DELETE FROM creature_battleground WHERE guid=43577;
DELETE FROM creature_linking WHERE guid=43577 OR master_guid=43577;
DELETE FROM creature WHERE guid=43577;
INSERT INTO creature VALUES (43577,9265,229,0,0,-42.036,-581.509,-18.840,4.30046,2*60*60,0,0,6477,2163,0,0);
DELETE FROM `creature_addon` WHERE `guid` =43577;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43577,0,0,1,16,0,0,'12380');

-- SE corner: full respawn of the group of four
DELETE FROM creature WHERE guid=43576;
DELETE FROM creature_addon WHERE guid=43576;
DELETE FROM creature_movement WHERE id=43576;
DELETE FROM game_event_creature WHERE guid=43576;
DELETE FROM game_event_creature_data WHERE guid=43576;
DELETE FROM creature_battleground WHERE guid=43576;
DELETE FROM creature_linking WHERE guid=43576 OR master_guid=43576;
DELETE FROM creature WHERE guid=43576;
INSERT INTO creature VALUES (43576,9240,229,0,0,-71.3291,-578.313,-18.8578,4.18635,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43758;
DELETE FROM creature_addon WHERE guid=43758;
DELETE FROM creature_movement WHERE id=43758;
DELETE FROM game_event_creature WHERE guid=43758;
DELETE FROM game_event_creature_data WHERE guid=43758;
DELETE FROM creature_battleground WHERE guid=43758;
DELETE FROM creature_linking WHERE guid=43758 OR master_guid=43758;
DELETE FROM creature WHERE guid=43758;
INSERT INTO creature VALUES (43758,9240,229,0,0,-75.1835,-582.664,-18.8456,0.769083,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43748;
DELETE FROM creature_addon WHERE guid=43748;
DELETE FROM creature_movement WHERE id=43748;
DELETE FROM game_event_creature WHERE guid=43748;
DELETE FROM game_event_creature_data WHERE guid=43748;
DELETE FROM creature_battleground WHERE guid=43748;
DELETE FROM creature_linking WHERE guid=43748 OR master_guid=43748;
DELETE FROM creature WHERE guid=43748;
INSERT INTO creature VALUES (43748,9266,229,0,0,-74.6853,-578.084,-18.8531,5.41,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43759;
DELETE FROM creature_addon WHERE guid=43759;
DELETE FROM creature_movement WHERE id=43759;
DELETE FROM game_event_creature WHERE guid=43759;
DELETE FROM game_event_creature_data WHERE guid=43759;
DELETE FROM creature_battleground WHERE guid=43759;
DELETE FROM creature_linking WHERE guid=43759 OR master_guid=43759;
DELETE FROM creature WHERE guid=43759;
INSERT INTO creature VALUES (43759,9269,229,0,0,-79.0262,-579.281,-18.8349,2.98783,2*60*60,0,0,6681,2241,0,0);

-- Shadow glow
DELETE FROM `creature_addon` WHERE `guid` IN (43552,43577,43757,43568);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43552,0,0,1,16,0,0,'12380'),
(43577,0,0,1,16,0,0,'12380'),
(43757,0,0,1,16,0,0,'12380'),
(43568,0,0,1,16,0,0,'12380');
