-- ----------------------------------------------
-- FIREBRAND HALLS
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9259,9260,9261,9262,9263,9264, 9596);

-- Generic scripts for groups of Firebrand NPCs chatting
-- One grunt, one invoker, one darkweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=925901;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(925901, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(925901, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Grunt random emote'),
(925901, 21, 1, 1, 0, 9261, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Darkweaver random emote'),
(925901, 33, 1, 1, 0, 9262, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Evoker random emote'),
(925901, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One grunt, one darkweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926101, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926101, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Darkweaver random emote'),
(926101, 21, 1, 1, 0, 9259, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Grunt random emote'),
(926101, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one pyromcancer, one dreadweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926001;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926001, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926001, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Legionnaire random emote'),
(926001, 21, 1, 1, 0, 9263, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Dreadweaver random emote'),
(926001, 33, 1, 1, 0, 9264, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Pyromancer random emote'),
(926001, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');


-- Room near Tazz Alaor
DELETE FROM creature WHERE guid=660089;
INSERT INTO creature VALUES (660089,9262,229,0,0,21.0812,-577.884,-18.6008,4.93743,2*60*60,0,0,6681,3361,0,0);
DELETE FROM creature WHERE guid=660090;
INSERT INTO creature VALUES (660090,9261,229,0,0,19.9416,-583.695,-18.6008,1.26648,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=660091;
INSERT INTO creature VALUES (660091,9259,229,0,0,24.2473,-581.663,-18.6008,2.75245,2*60*60,0,0,8352,0,0,0);
call script_npc(660091, 925901);
DELETE FROM creature WHERE guid=660092;
INSERT INTO creature VALUES (660092,9259,229,0,0,22.9569,-567.826,-18.6008,2.71711,2*60*60,0,0,8352,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`= 660092;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(660092,0,3,1,16,0,0,'6606');

-- First Corridor

-- Clean up: those spawns are not here (the guids are reused below)
DELETE FROM creature WHERE guid=43766;
DELETE FROM creature_addon WHERE guid=43766;
DELETE FROM creature_movement WHERE id=43766;
DELETE FROM game_event_creature WHERE guid=43766;
DELETE FROM game_event_creature_data WHERE guid=43766;
DELETE FROM creature_battleground WHERE guid=43766;
DELETE FROM creature_linking WHERE guid=43766 OR master_guid=43766;
DELETE FROM creature WHERE guid=44008;
DELETE FROM creature_addon WHERE guid=44008;
DELETE FROM creature_movement WHERE id=44008;
DELETE FROM game_event_creature WHERE guid=44008;
DELETE FROM game_event_creature_data WHERE guid=44008;
DELETE FROM creature_battleground WHERE guid=44008;
DELETE FROM creature_linking WHERE guid=44008 OR master_guid=44008;
DELETE FROM creature WHERE guid=44019;
DELETE FROM creature_addon WHERE guid=44019;
DELETE FROM creature_movement WHERE id=44019;
DELETE FROM game_event_creature WHERE guid=44019;
DELETE FROM game_event_creature_data WHERE guid=44019;
DELETE FROM creature_battleground WHERE guid=44019;
DELETE FROM creature_linking WHERE guid=44019 OR master_guid=44019;
DELETE FROM creature WHERE guid=44337;
DELETE FROM creature_addon WHERE guid=44337;
DELETE FROM creature_movement WHERE id=44337;
DELETE FROM game_event_creature WHERE guid=44337;
DELETE FROM game_event_creature_data WHERE guid=44337;
DELETE FROM creature_battleground WHERE guid=44337;
DELETE FROM creature_linking WHERE guid=44337 OR master_guid=44337;
DELETE FROM creature WHERE guid=44338;
DELETE FROM creature_addon WHERE guid=44338;
DELETE FROM creature_movement WHERE id=44338;
DELETE FROM game_event_creature WHERE guid=44338;
DELETE FROM game_event_creature_data WHERE guid=44338;
DELETE FROM creature_battleground WHERE guid=44338;
DELETE FROM creature_linking WHERE guid=44338 OR master_guid=44338;

-- First tent: removed wrong spawn (probably static from patrol) and respawned the group of 3
DELETE FROM creature WHERE guid=43762;
DELETE FROM creature_addon WHERE guid=43762;
DELETE FROM creature_movement WHERE id=43762;
DELETE FROM game_event_creature WHERE guid=43762;
DELETE FROM game_event_creature_data WHERE guid=43762;
DELETE FROM creature_battleground WHERE guid=43762;
DELETE FROM creature_linking WHERE guid=43762 OR master_guid=43762;

DELETE FROM creature WHERE guid=44269;
DELETE FROM creature_addon WHERE guid=44269;
DELETE FROM creature_movement WHERE id=44269;
DELETE FROM game_event_creature WHERE guid=44269;
DELETE FROM game_event_creature_data WHERE guid=44269;
DELETE FROM creature_battleground WHERE guid=44269;
DELETE FROM creature_linking WHERE guid=44269 OR master_guid=44269;
DELETE FROM creature WHERE guid=44269;
INSERT INTO creature VALUES (44269,9262,229,0,0,28.345,-494.843,-18.7528,1.02144,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=44270;
DELETE FROM creature_addon WHERE guid=44270;
DELETE FROM creature_movement WHERE id=44270;
DELETE FROM game_event_creature WHERE guid=44270;
DELETE FROM game_event_creature_data WHERE guid=44270;
DELETE FROM creature_battleground WHERE guid=44270;
DELETE FROM creature_linking WHERE guid=44270 OR master_guid=44270;
DELETE FROM creature WHERE guid=44270;
INSERT INTO creature VALUES (44270,9259,229,0,0,28.5412,-491.049,-18.7405,5.15027,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=44154;
DELETE FROM creature_addon WHERE guid=44154;
DELETE FROM creature_movement WHERE id=44154;
DELETE FROM game_event_creature WHERE guid=44154;
DELETE FROM game_event_creature_data WHERE guid=44154;
DELETE FROM creature_battleground WHERE guid=44154;
DELETE FROM creature_linking WHERE guid=44154 OR master_guid=44154;
DELETE FROM creature WHERE guid=44154;
INSERT INTO creature VALUES (44154,9261,229,0,0,34.0536,-491.542,-18.9058,4.95864,2*60*60,0,0,6477,2163,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44154;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44154,0,0,1,16,0,0,'13236');

-- Second tent: despawned and remade two of the group of three NPCs, spawned a missing NPC
DELETE FROM creature WHERE guid=660096;
INSERT INTO creature VALUES (660096,9259,229,0,0,26.9751,-471.558,-18.4795,4.47248,2*60*60,0,0,8097,0,0,0);
call script_npc(660096, 925901);
DELETE FROM creature WHERE guid=44152;
DELETE FROM creature_addon WHERE guid=44152;
DELETE FROM creature_movement WHERE id=44152;
DELETE FROM game_event_creature WHERE guid=44152;
DELETE FROM game_event_creature_data WHERE guid=44152;
DELETE FROM creature_battleground WHERE guid=44152;
DELETE FROM creature_linking WHERE guid=44152 OR master_guid=44152;
DELETE FROM creature WHERE guid=44152;
INSERT INTO creature VALUES (44152,9262,229,0,0,30.1009,-474.712,-18.6041,3.16793,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=43766;
INSERT INTO creature VALUES (43766,9259,229,0,0,33.681,-473.821,-18.6236,1.49503,2*60*60,0,0,8097,0,0,0);

-- Second corridor
-- 1st tent right side of corridor: respawned the whole group of three
DELETE FROM creature WHERE guid=43765;
DELETE FROM creature_addon WHERE guid=43765;
DELETE FROM creature_movement WHERE id=43765;
DELETE FROM game_event_creature WHERE guid=43765;
DELETE FROM game_event_creature_data WHERE guid=43765;
DELETE FROM creature_battleground WHERE guid=43765;
DELETE FROM creature_linking WHERE guid=43765 OR master_guid=43765;
DELETE FROM creature WHERE guid=43765;
INSERT INTO creature VALUES (43765,9259,229,0,0,-16.0105,-407.241,-18.9344,6.2404,2*60*60,0,0,8352,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`= 43765;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43765,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44151;
DELETE FROM creature_addon WHERE guid=44151;
DELETE FROM creature_movement WHERE id=44151;
DELETE FROM game_event_creature WHERE guid=44151;
DELETE FROM game_event_creature_data WHERE guid=44151;
DELETE FROM creature_battleground WHERE guid=44151;
DELETE FROM creature_linking WHERE guid=44151 OR master_guid=44151;
DELETE FROM creature WHERE guid=44151;
INSERT INTO creature VALUES (44151,9262,229,0,0,-26.8415,-412.158,-18.9344,0.788159,2*60*60,0,0,6681,3361,0,0);
DELETE FROM creature WHERE guid=44007;
DELETE FROM creature_addon WHERE guid=44007;
DELETE FROM creature_movement WHERE id=44007;
DELETE FROM game_event_creature WHERE guid=44007;
DELETE FROM game_event_creature_data WHERE guid=44007;
DELETE FROM creature_battleground WHERE guid=44007;
DELETE FROM creature_linking WHERE guid=44007 OR master_guid=44007;
DELETE FROM creature WHERE guid=44007;
INSERT INTO creature VALUES (44007,9261,229,0,0,-23.0763,-407.473,-18.935,4.70572,2*60*60,0,0,6477,2163,0,0);

-- 1st tent left side of corridor: respawned the whole group of four
DELETE FROM creature WHERE guid=43768;
DELETE FROM creature_addon WHERE guid=43768;
DELETE FROM creature_movement WHERE id=43768;
DELETE FROM game_event_creature WHERE guid=43768;
DELETE FROM game_event_creature_data WHERE guid=43768;
DELETE FROM creature_battleground WHERE guid=43768;
DELETE FROM creature_linking WHERE guid=43768 OR master_guid=43768;
DELETE FROM creature WHERE guid=43768;
INSERT INTO creature VALUES (43768,9259,229,0,9259,-36.5694,-424.192,-18.935,3.4648,2*60*60,0,0,8352,0,0,0);
call script_npc(43768, 925901);
DELETE FROM creature WHERE guid=44149;
DELETE FROM creature_addon WHERE guid=44149;
DELETE FROM creature_movement WHERE id=44149;
DELETE FROM game_event_creature WHERE guid=44149;
DELETE FROM game_event_creature_data WHERE guid=44149;
DELETE FROM creature_battleground WHERE guid=44149;
DELETE FROM creature_linking WHERE guid=44149 OR master_guid=44149;
DELETE FROM creature WHERE guid=44149;
INSERT INTO creature VALUES (44149,9262,229,0,9262,-42.426,-422.135,-18.935,5.43458,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=44078;
DELETE FROM creature_addon WHERE guid=44078;
DELETE FROM creature_movement WHERE id=44078;
DELETE FROM game_event_creature WHERE guid=44078;
DELETE FROM game_event_creature_data WHERE guid=44078;
DELETE FROM creature_battleground WHERE guid=44078;
DELETE FROM creature_linking WHERE guid=44078 OR master_guid=44078;
DELETE FROM creature WHERE guid=44078;
INSERT INTO creature VALUES (44078,9261,229,0,9261,-38.6279,-427.411,-18.935,1.96469,2*60*60,0,0,6477,2163,0,0);

-- Third tent right side of the corridor: respawned the group of two and added two missing spawns and made one of the grunt sit
DELETE FROM creature WHERE guid=44150;
DELETE FROM creature_addon WHERE guid=44150;
DELETE FROM creature_movement WHERE id=44150;
DELETE FROM game_event_creature WHERE guid=44150;
DELETE FROM game_event_creature_data WHERE guid=44150;
DELETE FROM creature_battleground WHERE guid=44150;
DELETE FROM creature_linking WHERE guid=44150 OR master_guid=44150;
DELETE FROM creature WHERE guid=44150;
INSERT INTO creature VALUES (44150,9262,229,0,0,-52.1838,-411.215,-18.935,3.17656,2*60*60,0,0,6681,3361,0,0);
DELETE FROM creature WHERE guid=44009;
DELETE FROM creature_addon WHERE guid=44009;
DELETE FROM creature_movement WHERE id=44009;
DELETE FROM game_event_creature WHERE guid=44009;
DELETE FROM game_event_creature_data WHERE guid=44009;
DELETE FROM creature_battleground WHERE guid=44009;
DELETE FROM creature_linking WHERE guid=44009 OR master_guid=44009;
DELETE FROM creature WHERE guid=44009;
INSERT INTO creature VALUES (44009,9261,229,0,0,-56.3033,-407.741,-18.9349,5.06701,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44009;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44009,0,0,1,16,0,0,'13236');
DELETE FROM creature WHERE guid=44008;
INSERT INTO creature VALUES (44008,9262,229,0,0,-61.0062,-412.273,-18.9348,1.29317,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=44019;
INSERT INTO creature VALUES (44019,9261,229,0,0,-61.5615,-407.644,-18.9348,5.31284,2*60*60,0,0,6477,2163,0,0);

-- Bannok Grimaxe 2nd spawn, alternate and addon (sit)
DELETE FROM `creature_addon` WHERE `guid`=44020;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44020,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44337;
INSERT INTO creature VALUES (44337,9596,229,0,0,-74.7427,-405.157,-18.9348,5.15026,8*60*60,0,0,8883,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44337;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44337,0,1,1,16,0,0,'');
DELETE FROM `creature_addon` WHERE `guid`=45843;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45843,0,1,1,16,0,0,'');

DELETE FROM pool_creature WHERE guid IN (44020, 44337, 45843);
INSERT INTO pool_creature VALUES
(44020, 25608, 0, 'LBRS - Bannok Grimaxe'),
(44337, 25608, 25, 'LBRS - Bannok Grimaxe'),
(45843, 25608, 25, 'LBRS - Bannok Grimaxe');
DELETE FROM pool_template WHERE entry=25608;
INSERT INTO pool_template VALUES
(25608, 1, 'LBRS - Bannok Grimaxe');

-- Next room
-- Right corner: removed wrong spawns and respawned the two NPCs that should sleep
DELETE FROM creature WHERE guid=44271;
DELETE FROM creature_addon WHERE guid=44271;
DELETE FROM creature_movement WHERE id=44271;
DELETE FROM game_event_creature WHERE guid=44271;
DELETE FROM game_event_creature_data WHERE guid=44271;
DELETE FROM creature_battleground WHERE guid=44271;
DELETE FROM creature_linking WHERE guid=44271 OR master_guid=44271;
DELETE FROM creature WHERE guid=44272;
DELETE FROM creature_addon WHERE guid=44272;
DELETE FROM creature_movement WHERE id=44272;
DELETE FROM game_event_creature WHERE guid=44272;
DELETE FROM game_event_creature_data WHERE guid=44272;
DELETE FROM creature_battleground WHERE guid=44272;
DELETE FROM creature_linking WHERE guid=44272 OR master_guid=44272;
DELETE FROM creature WHERE guid=44339;
DELETE FROM creature_addon WHERE guid=44339;
DELETE FROM creature_movement WHERE id=44339;
DELETE FROM game_event_creature WHERE guid=44339;
DELETE FROM game_event_creature_data WHERE guid=44339;
DELETE FROM creature_battleground WHERE guid=44339;
DELETE FROM creature_linking WHERE guid=44339 OR master_guid=44339;
DELETE FROM creature WHERE guid=44312;
DELETE FROM creature_addon WHERE guid=44312;
DELETE FROM creature_movement WHERE id=44312;
DELETE FROM game_event_creature WHERE guid=44312;
DELETE FROM game_event_creature_data WHERE guid=44312;
DELETE FROM creature_battleground WHERE guid=44312;
DELETE FROM creature_linking WHERE guid=44312 OR master_guid=44312;
DELETE FROM creature WHERE guid=44312;
INSERT INTO creature VALUES (44312,9259,229,0,0,-94.9831,-424.653,-18.935,5.92388,2*60*60,0,0,8097,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 44312;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44312,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44311;
DELETE FROM creature_addon WHERE guid=44311;
DELETE FROM creature_movement WHERE id=44311;
DELETE FROM game_event_creature WHERE guid=44311;
DELETE FROM game_event_creature_data WHERE guid=44311;
DELETE FROM creature_battleground WHERE guid=44311;
DELETE FROM creature_linking WHERE guid=44311 OR master_guid=44311;
DELETE FROM creature WHERE guid=44311;
INSERT INTO creature VALUES (44311,9262,229,0,0,-94.2403,-421.059,-18.935,6.19406,2*60*60,0,0,6477,3244,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 44311;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44311,0,3,1,16,0,0,'6606');
-- Tent: made the grunt sit, respawned the two others NPCs
DELETE FROM `creature_addon` WHERE `guid`=44308;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44308,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44310;
DELETE FROM creature_addon WHERE guid=44310;
DELETE FROM creature_movement WHERE id=44310;
DELETE FROM game_event_creature WHERE guid=44310;
DELETE FROM game_event_creature_data WHERE guid=44310;
DELETE FROM creature_battleground WHERE guid=44310;
DELETE FROM creature_linking WHERE guid=44310 OR master_guid=44310;
DELETE FROM creature WHERE guid=44310;
INSERT INTO creature VALUES (44310,9261,229,0,0,-96.6062,-434.567,-18.935,4.5243,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44309;
DELETE FROM creature_addon WHERE guid=44309;
DELETE FROM creature_movement WHERE id=44309;
DELETE FROM game_event_creature WHERE guid=44309;
DELETE FROM game_event_creature_data WHERE guid=44309;
DELETE FROM creature_battleground WHERE guid=44309;
DELETE FROM creature_linking WHERE guid=44309 OR master_guid=44309;
DELETE FROM creature WHERE guid=44309;
INSERT INTO creature VALUES (44309,9262,229,0,0,-96.723,-440.326,-18.935,1.56413,2*60*60,0,0,6477,3244,0,0);
-- Near the wagon: changed orientation of a NPC and respawned the others
UPDATE creature SET orientation=3.185983 WHERE guid=44313;
DELETE FROM creature WHERE guid=44314;
DELETE FROM creature_addon WHERE guid=44314;
DELETE FROM creature_movement WHERE id=44314;
DELETE FROM game_event_creature WHERE guid=44314;
DELETE FROM game_event_creature_data WHERE guid=44314;
DELETE FROM creature_battleground WHERE guid=44314;
DELETE FROM creature_linking WHERE guid=44314 OR master_guid=44314;
DELETE FROM creature WHERE guid=44314;
INSERT INTO creature VALUES (44314,9261,229,0,0,-114.098,-434.593,-18.9349,0.0773761,2*60*60,0,0,6477,2163,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 44314;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44314,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44316;
DELETE FROM creature_addon WHERE guid=44316;
DELETE FROM creature_movement WHERE id=44316;
DELETE FROM game_event_creature WHERE guid=44316;
DELETE FROM game_event_creature_data WHERE guid=44316;
DELETE FROM creature_battleground WHERE guid=44316;
DELETE FROM creature_linking WHERE guid=44316 OR master_guid=44316;
DELETE FROM creature WHERE guid=44316;
INSERT INTO creature VALUES (44316,9259,229,0,0,-119.271,-427.243,-18.9349,0.8345,2*60*60,0,0,8097,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 44316;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44316,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44317;
DELETE FROM creature_addon WHERE guid=44317;
DELETE FROM creature_movement WHERE id=44317;
DELETE FROM game_event_creature WHERE guid=44317;
DELETE FROM game_event_creature_data WHERE guid=44317;
DELETE FROM creature_battleground WHERE guid=44317;
DELETE FROM creature_linking WHERE guid=44317 OR master_guid=44317;
DELETE FROM creature WHERE guid=44317;
INSERT INTO creature VALUES (44317,9261,229,0,0,-119.079,-421.583,-18.9349,6.17756,2*60*60,0,0,6477,2163,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 44317;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44317,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44271;
INSERT INTO creature VALUES (44271,9259,229,0,0,-115.351,-425.966,-18.9349,4.79055,2*60*60,0,0,8352,0,0,0);	-- sitting
DELETE FROM `creature_addon` WHERE `guid`=44271;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44271,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44315;
DELETE FROM creature_addon WHERE guid=44315;
DELETE FROM creature_movement WHERE id=44315;
DELETE FROM game_event_creature WHERE guid=44315;
DELETE FROM game_event_creature_data WHERE guid=44315;
DELETE FROM creature_battleground WHERE guid=44315;
DELETE FROM creature_linking WHERE guid=44315 OR master_guid=44315;

-- Group near the wagon on opposite side: full respawn
DELETE FROM creature WHERE guid=44304;
DELETE FROM creature_addon WHERE guid=44304;
DELETE FROM creature_movement WHERE id=44304;
DELETE FROM game_event_creature WHERE guid=44304;
DELETE FROM game_event_creature_data WHERE guid=44304;
DELETE FROM creature_battleground WHERE guid=44304;
DELETE FROM creature_linking WHERE guid=44304 OR master_guid=44304;
DELETE FROM creature WHERE guid=44304;
INSERT INTO creature VALUES (44304,9259,229,0,0,-80.9574,-451.587,-18.935,4.81018,2*60*60,0,0,8097,0,0,0);
call script_npc(44304, 925901);
DELETE FROM creature WHERE guid=44305;
DELETE FROM creature_addon WHERE guid=44305;
DELETE FROM creature_movement WHERE id=44305;
DELETE FROM game_event_creature WHERE guid=44305;
DELETE FROM game_event_creature_data WHERE guid=44305;
DELETE FROM creature_battleground WHERE guid=44305;
DELETE FROM creature_linking WHERE guid=44305 OR master_guid=44305;
DELETE FROM creature WHERE guid=44305;
INSERT INTO creature VALUES (44305,9262,229,0,0,-77.619,-452.602,-18.935,3.55826,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=44307;
DELETE FROM creature_addon WHERE guid=44307;
DELETE FROM creature_movement WHERE id=44307;
DELETE FROM game_event_creature WHERE guid=44307;
DELETE FROM game_event_creature_data WHERE guid=44307;
DELETE FROM creature_battleground WHERE guid=44307;
DELETE FROM creature_linking WHERE guid=44307 OR master_guid=44307;
DELETE FROM creature WHERE guid=44307;
INSERT INTO creature VALUES (44307,9261,229,0,0,-82.5495,-454.355,-18.9348,1.00729,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44306;
DELETE FROM creature_addon WHERE guid=44306;
DELETE FROM creature_movement WHERE id=44306;
DELETE FROM game_event_creature WHERE guid=44306;
DELETE FROM game_event_creature_data WHERE guid=44306;
DELETE FROM creature_battleground WHERE guid=44306;
DELETE FROM creature_linking WHERE guid=44306 OR master_guid=44306;
DELETE FROM creature WHERE guid=44306;
INSERT INTO creature VALUES (44306,9259,229,0,0,-84.647,-452.275,-18.9348,0.0388896,2*60*60,0,0,8352,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44318;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44318,0,1,1,16,0,0,'');

-- Group before the ramp to spiders: full respawn and removed wrong pseudo patrols
DELETE FROM creature WHERE guid=44331;
DELETE FROM creature_addon WHERE guid=44331;
DELETE FROM creature_movement WHERE id=44331;
DELETE FROM game_event_creature WHERE guid=44331;
DELETE FROM game_event_creature_data WHERE guid=44331;
DELETE FROM creature_battleground WHERE guid=44331;
DELETE FROM creature_linking WHERE guid=44331 OR master_guid=44331;
DELETE FROM creature WHERE guid=44336;
DELETE FROM creature_addon WHERE guid=44336;
DELETE FROM creature_movement WHERE id=44336;
DELETE FROM game_event_creature WHERE guid=44336;
DELETE FROM game_event_creature_data WHERE guid=44336;
DELETE FROM creature_battleground WHERE guid=44336;
DELETE FROM creature_linking WHERE guid=44336 OR master_guid=44336;
DELETE FROM creature WHERE guid=44332;
DELETE FROM creature_addon WHERE guid=44332;
DELETE FROM creature_movement WHERE id=44332;
DELETE FROM game_event_creature WHERE guid=44332;
DELETE FROM game_event_creature_data WHERE guid=44332;
DELETE FROM creature_battleground WHERE guid=44332;
DELETE FROM creature_linking WHERE guid=44332 OR master_guid=44332;
DELETE FROM creature WHERE guid=44335;
DELETE FROM creature_addon WHERE guid=44335;
DELETE FROM creature_movement WHERE id=44335;
DELETE FROM game_event_creature WHERE guid=44335;
DELETE FROM game_event_creature_data WHERE guid=44335;
DELETE FROM creature_battleground WHERE guid=44335;
DELETE FROM creature_linking WHERE guid=44335 OR master_guid=44335;
DELETE FROM creature WHERE guid=44334;
DELETE FROM creature_addon WHERE guid=44334;
DELETE FROM creature_movement WHERE id=44334;
DELETE FROM game_event_creature WHERE guid=44334;
DELETE FROM game_event_creature_data WHERE guid=44334;
DELETE FROM creature_battleground WHERE guid=44334;
DELETE FROM creature_linking WHERE guid=44334 OR master_guid=44334;
DELETE FROM creature WHERE guid=44333;
DELETE FROM creature_addon WHERE guid=44333;
DELETE FROM creature_movement WHERE id=44333;
DELETE FROM game_event_creature WHERE guid=44333;
DELETE FROM game_event_creature_data WHERE guid=44333;
DELETE FROM creature_battleground WHERE guid=44333;
DELETE FROM creature_linking WHERE guid=44333 OR master_guid=44333;
DELETE FROM creature WHERE guid=44329;
DELETE FROM creature_addon WHERE guid=44329;
DELETE FROM creature_movement WHERE id=44329;
DELETE FROM game_event_creature WHERE guid=44329;
DELETE FROM game_event_creature_data WHERE guid=44329;
DELETE FROM creature_battleground WHERE guid=44329;
DELETE FROM creature_linking WHERE guid=44329 OR master_guid=44329;
DELETE FROM creature WHERE guid=44330;
DELETE FROM creature_addon WHERE guid=44330;
DELETE FROM creature_movement WHERE id=44330;
DELETE FROM game_event_creature WHERE guid=44330;
DELETE FROM game_event_creature_data WHERE guid=44330;
DELETE FROM creature_battleground WHERE guid=44330;
DELETE FROM creature_linking WHERE guid=44330 OR master_guid=44330;
DELETE FROM creature WHERE guid=44327;
DELETE FROM creature_addon WHERE guid=44327;
DELETE FROM creature_movement WHERE id=44327;
DELETE FROM game_event_creature WHERE guid=44327;
DELETE FROM game_event_creature_data WHERE guid=44327;
DELETE FROM creature_battleground WHERE guid=44327;
DELETE FROM creature_linking WHERE guid=44327 OR master_guid=44327;
DELETE FROM creature WHERE guid=44334;
INSERT INTO creature VALUES (44334,9262,229,0,0,-117.666,-479.186,-18.4573,5.29713,2*60*60,0,0,6477,3244,0,0);
DELETE FROM creature WHERE guid=44333;
INSERT INTO creature VALUES (44333,9261,229,0,0,-115.015,-483.19,-18.4573,2.22151,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=44329;
INSERT INTO creature VALUES (44329,9259,229,0,0,-111.718,-484.087,-18.4573,5.88854,2*60*60,0,0,8352,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44329;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44329,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44330;
INSERT INTO creature VALUES (44330,9261,229,0,0,-106.142,-483.786,-18.4573,3.15535,2*60*60,0,0,6477,2163,0,0);
call script_npc(44330, 926101);
DELETE FROM creature WHERE guid=44327;
INSERT INTO creature VALUES (44327,9259,229,0,0,-100.732,-491.571,-18.4573,1.68901,2*60*60,0,0,8097,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`= 44327;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44327,0,3,1,16,0,0,'6606');

-- Dreadweavers corner: respawned the three groups
-- group 1
DELETE FROM creature WHERE guid=44322;
DELETE FROM creature_addon WHERE guid=44322;
DELETE FROM creature_movement WHERE id=44322;
DELETE FROM game_event_creature WHERE guid=44322;
DELETE FROM game_event_creature_data WHERE guid=44322;
DELETE FROM creature_battleground WHERE guid=44322;
DELETE FROM creature_linking WHERE guid=44322 OR master_guid=44322;
DELETE FROM creature WHERE guid=44322;
INSERT INTO creature VALUES (44322,9260,229,0,0,-143.435,-512.94,-18.4564,0.774024,2*60*60,0,0,8613,0,0,0);
call script_npc(44322, 926001);
DELETE FROM creature WHERE guid=44323;
DELETE FROM creature_addon WHERE guid=44323;
DELETE FROM creature_movement WHERE id=44323;
DELETE FROM game_event_creature WHERE guid=44323;
DELETE FROM game_event_creature_data WHERE guid=44323;
DELETE FROM creature_battleground WHERE guid=44323;
DELETE FROM creature_linking WHERE guid=44323 OR master_guid=44323;
DELETE FROM creature WHERE guid=44323;
INSERT INTO creature VALUES (44323,9263,229,0,0,-143.495,-510.424,-18.4564,5.57438,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44326;
DELETE FROM creature_addon WHERE guid=44326;
DELETE FROM creature_movement WHERE id=44326;
DELETE FROM game_event_creature WHERE guid=44326;
DELETE FROM game_event_creature_data WHERE guid=44326;
DELETE FROM creature_battleground WHERE guid=44326;
DELETE FROM creature_linking WHERE guid=44326 OR master_guid=44326;
DELETE FROM creature WHERE guid=44326;
INSERT INTO creature VALUES (44326,9264,229,0,0,-140.14,-512.166,-18.456,2.83726,2*60*60,0,0,6681,2241,0,0);
-- group 2
DELETE FROM creature WHERE guid=44324;
DELETE FROM creature_addon WHERE guid=44324;
DELETE FROM creature_movement WHERE id=44324;
DELETE FROM game_event_creature WHERE guid=44324;
DELETE FROM game_event_creature_data WHERE guid=44324;
DELETE FROM creature_battleground WHERE guid=44324;
DELETE FROM creature_linking WHERE guid=44324 OR master_guid=44324;
DELETE FROM creature WHERE guid=44324;
INSERT INTO creature VALUES (44324,9263,229,0,0,-146.468,-497.174,-18.4564,6.17913,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44324;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44324,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44321;
DELETE FROM creature_addon WHERE guid=44321;
DELETE FROM creature_movement WHERE id=44321;
DELETE FROM game_event_creature WHERE guid=44321;
DELETE FROM game_event_creature_data WHERE guid=44321;
DELETE FROM creature_battleground WHERE guid=44321;
DELETE FROM creature_linking WHERE guid=44321 OR master_guid=44321;
DELETE FROM creature WHERE guid=44321;
INSERT INTO creature VALUES (44321,9260,229,0,0,-142.639,-495.548,-18.4564,4.72143,2*60*60,0,0,8613,0,0,0);
call script_npc(44321, 926001);
DELETE FROM creature WHERE guid=44325;
DELETE FROM creature_addon WHERE guid=44325;
DELETE FROM creature_movement WHERE id=44325;
DELETE FROM game_event_creature WHERE guid=44325;
DELETE FROM game_event_creature_data WHERE guid=44325;
DELETE FROM creature_battleground WHERE guid=44325;
DELETE FROM creature_linking WHERE guid=44325 OR master_guid=44325;
DELETE FROM creature WHERE guid=44325;
INSERT INTO creature VALUES (44325,9264,229,0,0,-141.446,-499.833,-18.4564,2.61656,2*60*60,0,0,6681,2241,0,0);
-- group 3
DELETE FROM creature_addon WHERE guid=44319;
DELETE FROM creature_movement WHERE id=44319;
DELETE FROM game_event_creature WHERE guid=44319;
DELETE FROM game_event_creature_data WHERE guid=44319;
DELETE FROM creature_battleground WHERE guid=44319;
DELETE FROM creature_linking WHERE guid=44319 OR master_guid=44319;
DELETE FROM creature WHERE guid=44319;
INSERT INTO creature VALUES (44319,9264,229,0,0,-156.567,-495.882,-18.4564,2.97942,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44320;
DELETE FROM creature_addon WHERE guid=44320;
DELETE FROM creature_movement WHERE id=44320;
DELETE FROM game_event_creature WHERE guid=44320;
DELETE FROM game_event_creature_data WHERE guid=44320;
DELETE FROM creature_battleground WHERE guid=44320;
DELETE FROM creature_linking WHERE guid=44320 OR master_guid=44320;
DELETE FROM creature WHERE guid=44320;
INSERT INTO creature VALUES (44320,9263,229,0,0,-158.99,-499.009,-18.4564,2.61185,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (44320,44319);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44320,0,0,1,16,0,0,'12380'),
(44319,0,0,1,16,0,0,'12380');

-- ----------------------------------------------
-- BLOODAXE HALLS
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9716,9717,9718,10221,9736);
UPDATE creature SET MovementType=1, spawndist=3 WHERE id=10221;

-- Generic scripts for groups of Bloodaxe NPCs chatting
-- Two Warmonger, one evoker
DELETE FROM `dbscripts_on_creature_movement` WHERE id=971601;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(971601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(971601, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971601, 21, 1, 1, 0, 9716, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971601, 33, 1, 1, 0, 9693, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Evoker random emote'),
(971601, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Two Warmonger, one summoner
DELETE FROM `dbscripts_on_creature_movement` WHERE id=971602;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(971602, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(971602, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971602, 21, 1, 1, 0, 9716, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971602, 33, 1, 1, 0, 9717, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Summoner random emote'),
(971602, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One veteran, one evoker
DELETE FROM `dbscripts_on_creature_movement` WHERE id=958301;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(958301, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(958301, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Veteran random emote'),
(958301, 33, 1, 1, 0, 9693, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Evoker random emote'),
(958301, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');


-- First hall, stair left (to quatermaster)
-- Respawned group of three on first level
DELETE FROM creature WHERE guid=45742;
DELETE FROM creature_addon WHERE guid=45742;
DELETE FROM creature_movement WHERE id=45742;
DELETE FROM game_event_creature WHERE guid=45742;
DELETE FROM game_event_creature_data WHERE guid=45742;
DELETE FROM creature_battleground WHERE guid=45742;
DELETE FROM creature_linking WHERE guid=45742 OR master_guid=45742;
DELETE FROM creature WHERE guid=45742;
INSERT INTO creature VALUES (45742,9716,229,0,0,-168.491,-410.858,76.1473,4.65782,2*60*60,2,0,8352,0,0,1);
DELETE FROM creature WHERE guid=45741;
DELETE FROM creature_addon WHERE guid=45741;
DELETE FROM creature_movement WHERE id=45741;
DELETE FROM game_event_creature WHERE guid=45741;
DELETE FROM game_event_creature_data WHERE guid=45741;
DELETE FROM creature_battleground WHERE guid=45741;
DELETE FROM creature_linking WHERE guid=45741 OR master_guid=45741;
DELETE FROM creature WHERE guid=45741;
INSERT INTO creature VALUES (45741,9716,229,0,0,-168.363,-416.843,76.1473,1.57277,2*60*60,2,0,8613,0,0,1);
DELETE FROM creature WHERE guid=45734;
DELETE FROM creature_addon WHERE guid=45734;
DELETE FROM creature_movement WHERE id=45734;
DELETE FROM game_event_creature WHERE guid=45734;
DELETE FROM game_event_creature_data WHERE guid=45734;
DELETE FROM creature_battleground WHERE guid=45734;
DELETE FROM creature_linking WHERE guid=45734 OR master_guid=45734;
DELETE FROM creature WHERE guid=45734;
INSERT INTO creature VALUES (45734,9717,229,0,0,-164.702,-414.037,76.1473,3.1687,2*60*60,2,0,6681,2241,0,1);

-- Second level, right before quatermaster room
DELETE FROM creature WHERE guid=45748;
DELETE FROM creature_addon WHERE guid=45748;
DELETE FROM creature_movement WHERE id=45748;
DELETE FROM game_event_creature WHERE guid=45748;
DELETE FROM game_event_creature_data WHERE guid=45748;
DELETE FROM creature_battleground WHERE guid=45748;
DELETE FROM creature_linking WHERE guid=45748 OR master_guid=45748;
DELETE FROM creature WHERE guid=45744;
DELETE FROM creature_addon WHERE guid=45744;
DELETE FROM creature_movement WHERE id=45744;
DELETE FROM game_event_creature WHERE guid=45744;
DELETE FROM game_event_creature_data WHERE guid=45744;
DELETE FROM creature_battleground WHERE guid=45744;
DELETE FROM creature_linking WHERE guid=45744 OR master_guid=45744;
DELETE FROM creature WHERE guid=45744;
INSERT INTO creature VALUES (45744,9716,229,0,0,-171.586,-460.339,87.3903,1.59791,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45756;
DELETE FROM creature_addon WHERE guid=45756;
DELETE FROM creature_movement WHERE id=45756;
DELETE FROM game_event_creature WHERE guid=45756;
DELETE FROM game_event_creature_data WHERE guid=45756;
DELETE FROM creature_battleground WHERE guid=45756;
DELETE FROM creature_linking WHERE guid=45756 OR master_guid=45756;
DELETE FROM creature WHERE guid=45756;
INSERT INTO creature VALUES (45756,9716,229,0,0,-175.165,-459.312,87.3903,0.814864,2*60*60,0,0,8352,0,0,0);
call script_npc(45756, 971602);
DELETE FROM creature WHERE guid=45743;
DELETE FROM creature_addon WHERE guid=45743;
DELETE FROM creature_movement WHERE id=45743;
DELETE FROM game_event_creature WHERE guid=45743;
DELETE FROM game_event_creature_data WHERE guid=45743;
DELETE FROM creature_battleground WHERE guid=45743;
DELETE FROM creature_linking WHERE guid=45743 OR master_guid=45743;
DELETE FROM creature WHERE guid=45743;
INSERT INTO creature VALUES (45743,9717,229,0,0,-175.122,-454.259,87.3903,5.69062,2*60*60,0,0,6681,2241,0,0);

-- Quatermaster Zigris room
-- First group: full respawn
DELETE FROM creature WHERE guid=45751;
DELETE FROM creature_addon WHERE guid=45751;
DELETE FROM creature_movement WHERE id=45751;
DELETE FROM game_event_creature WHERE guid=45751;
DELETE FROM game_event_creature_data WHERE guid=45751;
DELETE FROM creature_battleground WHERE guid=45751;
DELETE FROM creature_linking WHERE guid=45751 OR master_guid=45751;
DELETE FROM creature WHERE guid=45751;
INSERT INTO creature VALUES (45751,9716,229,0,0,-206.131,-458.016,87.3903,4.69395,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45750;
DELETE FROM creature_addon WHERE guid=45750;
DELETE FROM creature_movement WHERE id=45750;
DELETE FROM game_event_creature WHERE guid=45750;
DELETE FROM game_event_creature_data WHERE guid=45750;
DELETE FROM creature_battleground WHERE guid=45750;
DELETE FROM creature_linking WHERE guid=45750 OR master_guid=45750;
DELETE FROM creature WHERE guid=45750;
INSERT INTO creature VALUES (45750,9716,229,0,0,-204.508,-463.535,87.3903,2.49248,2*60*60,0,0,8352,0,0,0);
call script_npc(45750, 971602);
DELETE FROM creature WHERE guid=45752;
DELETE FROM creature_addon WHERE guid=45752;
DELETE FROM creature_movement WHERE id=45752;
DELETE FROM game_event_creature WHERE guid=45752;
DELETE FROM game_event_creature_data WHERE guid=45752;
DELETE FROM creature_battleground WHERE guid=45752;
DELETE FROM creature_linking WHERE guid=45752 OR master_guid=45752;
DELETE FROM creature WHERE guid=45752;
INSERT INTO creature VALUES (45752,9717,229,0,0,-208.295,-463.045,87.3903,0.938958,2*60*60,0,0,6891,2289,0,0);

-- Quatermaster Zigris group: full respawn
DELETE FROM creature WHERE guid=45753;
DELETE FROM creature_addon WHERE guid=45753;
DELETE FROM creature_movement WHERE id=45753;
DELETE FROM game_event_creature WHERE guid=45753;
DELETE FROM game_event_creature_data WHERE guid=45753;
DELETE FROM creature_battleground WHERE guid=45753;
DELETE FROM creature_linking WHERE guid=45753 OR master_guid=45753;
DELETE FROM creature WHERE guid=45753;
INSERT INTO creature VALUES (45753,9717,229,0,0,-207.791,-477.928,87.3903,5.14162,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45754;
DELETE FROM creature_addon WHERE guid=45754;
DELETE FROM creature_movement WHERE id=45754;
DELETE FROM game_event_creature WHERE guid=45754;
DELETE FROM game_event_creature_data WHERE guid=45754;
DELETE FROM creature_battleground WHERE guid=45754;
DELETE FROM creature_linking WHERE guid=45754 OR master_guid=45754;
DELETE FROM creature WHERE guid=45754;
INSERT INTO creature VALUES (45754,9716,229,0,0,-207.922,-482.942,87.3903,0.937386,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45755;
DELETE FROM creature_addon WHERE guid=45755;
DELETE FROM creature_movement WHERE id=45755;
DELETE FROM game_event_creature WHERE guid=45755;
DELETE FROM game_event_creature_data WHERE guid=45755;
DELETE FROM creature_battleground WHERE guid=45755;
DELETE FROM creature_linking WHERE guid=45755 OR master_guid=45755;
DELETE FROM creature WHERE guid=45755;
INSERT INTO creature VALUES (45755,9716,229,0,0,-202.722,-481.842,87.3903,3.18127,2*60*60,0,0,8352,0,0,0);
call script_npc(45755, 971602);
DELETE FROM creature WHERE guid=45749;
DELETE FROM creature_addon WHERE guid=45749;
DELETE FROM creature_movement WHERE id=45749;
DELETE FROM game_event_creature WHERE guid=45749;
DELETE FROM game_event_creature_data WHERE guid=45749;
DELETE FROM creature_battleground WHERE guid=45749;
DELETE FROM creature_linking WHERE guid=45749 OR master_guid=45749;
DELETE FROM creature WHERE guid=45749;
INSERT INTO creature VALUES (45749,9736,229,0,0,-203.989,-478.353,87.3903,3.84964,8*60*60,0,0,23688,0,0,2); -- Zigriss patrols
DELETE FROM creature_movement_template WHERE entry=9736;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime) VALUES 
(9736,1, -203.918762,-478.135529,87.390259, 100, 0),
(9736,2, -203.918762,-478.135529,87.390259, 3.965122, 30000),
(9736,3, -190.850479,-475.261963,87.390259, 100, 0),
(9736,4, -190.850479,-475.261963,87.390259, 5.671793, 30000),
(9736,5, -203.945038,-478.388702,87.390259, 100, 0),
(9736,6, -203.945038,-478.388702,87.390259, 3.965122, 10000),
(9736,7, -198.345413,-469.427399,87.390259, 100, 0),
(9736,8, -199.085068,-461.424805,87.390259, 100, 0),
(9736,9, -202.574509,-459.329315,87.390259, 100, 0),
(9736,10, -202.574509,-459.329315,87.390259, 3.687093, 30000),
(9736,11, -198.197937,-461.801727,87.390259, 100, 0),
(9736,12, -198.052750,-469.985870,87.390259, 100, 0);
DELETE FROM creature WHERE guid=45748;
INSERT INTO creature VALUES (45748,9716,229,0,0,-188.459,-477.045,87.3903,5.61679,2*60*60,0,0,8352,0,0,0);

-- Corridor near Halycon: full respawn
DELETE FROM creature WHERE guid=45492;
DELETE FROM creature_addon WHERE guid=45492;
DELETE FROM creature_movement WHERE id=45492;
DELETE FROM game_event_creature WHERE guid=45492;
DELETE FROM game_event_creature_data WHERE guid=45492;
DELETE FROM creature_battleground WHERE guid=45492;
DELETE FROM creature_linking WHERE guid=45492 OR master_guid=45492;
DELETE FROM creature WHERE guid=45785;
DELETE FROM creature_addon WHERE guid=45785;
DELETE FROM creature_movement WHERE id=45785;
DELETE FROM game_event_creature WHERE guid=45785;
DELETE FROM game_event_creature_data WHERE guid=45785;
DELETE FROM creature_battleground WHERE guid=45785;
DELETE FROM creature_linking WHERE guid=45785 OR master_guid=45785;
DELETE FROM creature WHERE guid=45786;
DELETE FROM creature_addon WHERE guid=45786;
DELETE FROM creature_movement WHERE id=45786;
DELETE FROM game_event_creature WHERE guid=45786;
DELETE FROM game_event_creature_data WHERE guid=45786;
DELETE FROM creature_battleground WHERE guid=45786;
DELETE FROM creature_linking WHERE guid=45786 OR master_guid=45786;
DELETE FROM creature WHERE guid=45492;
INSERT INTO creature VALUES (45492,9716,229,0,0,-166.83,-328.162,64.4017,1.72829,2*60*60,0,0,8352,0,0,0);
call script_npc(45492, 971601);
DELETE FROM creature WHERE guid=45785;
INSERT INTO creature VALUES (45785,9716,229,0,0,-169.543,-324.113,64.4017,6.07546,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45786;
INSERT INTO creature VALUES (45786,9693,229,0,0,-163.763,-324.845,64.4017,3.04383,2*60*60,0,0,6891,2289,0,0);

-- Main hall
-- First group in the right: full respawn
DELETE FROM creature WHERE guid=45768;
DELETE FROM creature_addon WHERE guid=45768;
DELETE FROM creature_movement WHERE id=45768;
DELETE FROM game_event_creature WHERE guid=45768;
DELETE FROM game_event_creature_data WHERE guid=45768;
DELETE FROM creature_battleground WHERE guid=45768;
DELETE FROM creature_linking WHERE guid=45768 OR master_guid=45768;
DELETE FROM creature WHERE guid=45762;
DELETE FROM creature_addon WHERE guid=45762;
DELETE FROM creature_movement WHERE id=45762;
DELETE FROM game_event_creature WHERE guid=45762;
DELETE FROM game_event_creature_data WHERE guid=45762;
DELETE FROM creature_battleground WHERE guid=45762;
DELETE FROM creature_linking WHERE guid=45762 OR master_guid=45762;
DELETE FROM creature WHERE guid=45769;
DELETE FROM creature_addon WHERE guid=45769;
DELETE FROM creature_movement WHERE id=45769;
DELETE FROM game_event_creature WHERE guid=45769;
DELETE FROM game_event_creature_data WHERE guid=45769;
DELETE FROM creature_battleground WHERE guid=45769;
DELETE FROM creature_linking WHERE guid=45769 OR master_guid=45769;
DELETE FROM creature WHERE guid=45770;
DELETE FROM creature_addon WHERE guid=45770;
DELETE FROM creature_movement WHERE id=45770;
DELETE FROM game_event_creature WHERE guid=45770;
DELETE FROM game_event_creature_data WHERE guid=45770;
DELETE FROM creature_battleground WHERE guid=45770;
DELETE FROM creature_linking WHERE guid=45770 OR master_guid=45770;
DELETE FROM creature WHERE guid=45768;
INSERT INTO creature VALUES (45768,9716,229,0,0,-124,-351.438,70.9524,0.361695,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45762;
INSERT INTO creature VALUES (45762,9717,229,0,0,-122.095,-347.072,70.9524,5.27986,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=45769;
INSERT INTO creature VALUES (45769,9716,229,0,0,-117.003,-347.917,70.9524,3.51742,2*60*60,0,0,8613,0,0,0);
call script_npc(45769, 971602);

-- Second group on left, near the corner
DELETE FROM creature WHERE guid=45777;
DELETE FROM creature_addon WHERE guid=45777;
DELETE FROM creature_movement WHERE id=45777;
DELETE FROM game_event_creature WHERE guid=45777;
DELETE FROM game_event_creature_data WHERE guid=45777;
DELETE FROM creature_battleground WHERE guid=45777;
DELETE FROM creature_linking WHERE guid=45777 OR master_guid=45777;
DELETE FROM creature WHERE guid=45775;
DELETE FROM creature_addon WHERE guid=45775;
DELETE FROM creature_movement WHERE id=45775;
DELETE FROM game_event_creature WHERE guid=45775;
DELETE FROM game_event_creature_data WHERE guid=45775;
DELETE FROM creature_battleground WHERE guid=45775;
DELETE FROM creature_linking WHERE guid=45775 OR master_guid=45775;
DELETE FROM creature WHERE guid=45776;
DELETE FROM creature_addon WHERE guid=45776;
DELETE FROM creature_movement WHERE id=45776;
DELETE FROM game_event_creature WHERE guid=45776;
DELETE FROM game_event_creature_data WHERE guid=45776;
DELETE FROM creature_battleground WHERE guid=45776;
DELETE FROM creature_linking WHERE guid=45776 OR master_guid=45776;
DELETE FROM creature WHERE guid=45771;
DELETE FROM creature_addon WHERE guid=45771;
DELETE FROM creature_movement WHERE id=45771;
DELETE FROM game_event_creature WHERE guid=45771;
DELETE FROM game_event_creature_data WHERE guid=45771;
DELETE FROM creature_battleground WHERE guid=45771;
DELETE FROM creature_linking WHERE guid=45771 OR master_guid=45771;
DELETE FROM creature WHERE guid=45767;
DELETE FROM creature_addon WHERE guid=45767;
DELETE FROM creature_movement WHERE id=45767;
DELETE FROM game_event_creature WHERE guid=45767;
DELETE FROM game_event_creature_data WHERE guid=45767;
DELETE FROM creature_battleground WHERE guid=45767;
DELETE FROM creature_linking WHERE guid=45767 OR master_guid=45767;
DELETE FROM creature WHERE guid=45764;
DELETE FROM creature_addon WHERE guid=45764;
DELETE FROM creature_movement WHERE id=45764;
DELETE FROM game_event_creature WHERE guid=45764;
DELETE FROM game_event_creature_data WHERE guid=45764;
DELETE FROM creature_battleground WHERE guid=45764;
DELETE FROM creature_linking WHERE guid=45764 OR master_guid=45764;
DELETE FROM creature WHERE guid=45772;
DELETE FROM creature_addon WHERE guid=45772;
DELETE FROM creature_movement WHERE id=45772;
DELETE FROM game_event_creature WHERE guid=45772;
DELETE FROM game_event_creature_data WHERE guid=45772;
DELETE FROM creature_battleground WHERE guid=45772;
DELETE FROM creature_linking WHERE guid=45772 OR master_guid=45772;
DELETE FROM creature WHERE guid=45791;
DELETE FROM creature_addon WHERE guid=45791;
DELETE FROM creature_movement WHERE id=45791;
DELETE FROM game_event_creature WHERE guid=45791;
DELETE FROM game_event_creature_data WHERE guid=45791;
DELETE FROM creature_battleground WHERE guid=45791;
DELETE FROM creature_linking WHERE guid=45791 OR master_guid=45791;
DELETE FROM creature WHERE guid=45777;
INSERT INTO creature VALUES (45777,9716,229,0,0,-139.884,-307.624,70.9524,1.46596,2*60*60,0,0,8352,0,0,0);	-- sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 45777;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45777,0,1,1,16,0,0,NULL);
call script_npc(45777, 909705);
DELETE FROM creature WHERE guid=45775;
INSERT INTO creature VALUES (45775,9583,229,0,0,-137.597,-302.617,70.9524,2.91659,2*60*60,0,0,8883,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 45775;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45775,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=45776;
INSERT INTO creature VALUES (45776,9583,229,0,0,-144.06,-300.461,70.9524,4.78584,2*60*60,0,0,8883,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 45776;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45776,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=45771;
INSERT INTO creature VALUES (45771,9583,229,0,0,-135.985,-298.889,70.9525,3.46716,2*60*60,0,0,8613,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`= 45771;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45771,0,3,1,16,0,0,'6606');

-- Third group between the two tents: full respawn
DELETE FROM creature WHERE guid=45803;
DELETE FROM creature_addon WHERE guid=45803;
DELETE FROM creature_movement WHERE id=45803;
DELETE FROM game_event_creature WHERE guid=45803;
DELETE FROM game_event_creature_data WHERE guid=45803;
DELETE FROM creature_battleground WHERE guid=45803;
DELETE FROM creature_linking WHERE guid=45803 OR master_guid=45803;
DELETE FROM creature WHERE guid=45789;
DELETE FROM creature_addon WHERE guid=45789;
DELETE FROM creature_movement WHERE id=45789;
DELETE FROM game_event_creature WHERE guid=45789;
DELETE FROM game_event_creature_data WHERE guid=45789;
DELETE FROM creature_battleground WHERE guid=45789;
DELETE FROM creature_linking WHERE guid=45789 OR master_guid=45789;
DELETE FROM creature WHERE guid=45790;
DELETE FROM creature_addon WHERE guid=45790;
DELETE FROM creature_movement WHERE id=45790;
DELETE FROM game_event_creature WHERE guid=45790;
DELETE FROM game_event_creature_data WHERE guid=45790;
DELETE FROM creature_battleground WHERE guid=45790;
DELETE FROM creature_linking WHERE guid=45790 OR master_guid=45790;
DELETE FROM creature WHERE guid=45780;
DELETE FROM creature_addon WHERE guid=45780;
DELETE FROM creature_movement WHERE id=45780;
DELETE FROM game_event_creature WHERE guid=45780;
DELETE FROM game_event_creature_data WHERE guid=45780;
DELETE FROM creature_battleground WHERE guid=45780;
DELETE FROM creature_linking WHERE guid=45780 OR master_guid=45780;
DELETE FROM creature WHERE guid=45779;
DELETE FROM creature_addon WHERE guid=45779;
DELETE FROM creature_movement WHERE id=45779;
DELETE FROM game_event_creature WHERE guid=45779;
DELETE FROM game_event_creature_data WHERE guid=45779;
DELETE FROM creature_battleground WHERE guid=45779;
DELETE FROM creature_linking WHERE guid=45779 OR master_guid=45779;
DELETE FROM creature WHERE guid=45778;
DELETE FROM creature_addon WHERE guid=45778;
DELETE FROM creature_movement WHERE id=45778;
DELETE FROM game_event_creature WHERE guid=45778;
DELETE FROM game_event_creature_data WHERE guid=45778;
DELETE FROM creature_battleground WHERE guid=45778;
DELETE FROM creature_linking WHERE guid=45778 OR master_guid=45778;
DELETE FROM creature WHERE guid=45803;
INSERT INTO creature VALUES (45803,9693,229,0,0,-119.934,-294.888,70.9524,0.42924,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45789;
INSERT INTO creature VALUES (45789,9583,229,0,0,-114.808,-295.624,70.9524,2.52233,2*60*60,0,0,8613,0,0,0);
call script_npc(45789, 958301);
DELETE FROM creature WHERE guid=45790;
INSERT INTO creature VALUES (45790,9693,229,0,0,-117.101,-291.242,70.9524,4.42299,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45780;
INSERT INTO creature VALUES (45780,9717,229,0,0,-90.6146,-304.129,70.9524,1.9482,2*60*60,8,0,6891,2289,0,1);

-- Fourth group, other side of the chiasm near the tents + crates and barrels: full respawn
DELETE FROM creature WHERE guid=45763;
DELETE FROM creature_addon WHERE guid=45763;
DELETE FROM creature_movement WHERE id=45763;
DELETE FROM game_event_creature WHERE guid=45763;
DELETE FROM game_event_creature_data WHERE guid=45763;
DELETE FROM creature_battleground WHERE guid=45763;
DELETE FROM creature_linking WHERE guid=45763 OR master_guid=45763;
DELETE FROM creature WHERE guid=45765;
DELETE FROM creature_addon WHERE guid=45765;
DELETE FROM creature_movement WHERE id=45765;
DELETE FROM game_event_creature WHERE guid=45765;
DELETE FROM game_event_creature_data WHERE guid=45765;
DELETE FROM creature_battleground WHERE guid=45765;
DELETE FROM creature_linking WHERE guid=45765 OR master_guid=45765;
DELETE FROM creature WHERE guid=45774;
DELETE FROM creature_addon WHERE guid=45774;
DELETE FROM creature_movement WHERE id=45774;
DELETE FROM game_event_creature WHERE guid=45774;
DELETE FROM game_event_creature_data WHERE guid=45774;
DELETE FROM creature_battleground WHERE guid=45774;
DELETE FROM creature_linking WHERE guid=45774 OR master_guid=45774;
DELETE FROM creature WHERE guid=45766;
DELETE FROM creature_addon WHERE guid=45766;
DELETE FROM creature_movement WHERE id=45766;
DELETE FROM game_event_creature WHERE guid=45766;
DELETE FROM game_event_creature_data WHERE guid=45766;
DELETE FROM creature_battleground WHERE guid=45766;
DELETE FROM creature_linking WHERE guid=45766 OR master_guid=45766;
DELETE FROM creature WHERE guid=45793;
DELETE FROM creature_addon WHERE guid=45793;
DELETE FROM creature_movement WHERE id=45793;
DELETE FROM game_event_creature WHERE guid=45793;
DELETE FROM game_event_creature_data WHERE guid=45793;
DELETE FROM creature_battleground WHERE guid=45793;
DELETE FROM creature_linking WHERE guid=45793 OR master_guid=45793;
DELETE FROM creature WHERE guid=45794;
DELETE FROM creature_addon WHERE guid=45794;
DELETE FROM creature_movement WHERE id=45794;
DELETE FROM game_event_creature WHERE guid=45794;
DELETE FROM game_event_creature_data WHERE guid=45794;
DELETE FROM creature_battleground WHERE guid=45794;
DELETE FROM creature_linking WHERE guid=45794 OR master_guid=45794;
DELETE FROM creature WHERE guid=45802;
DELETE FROM creature_addon WHERE guid=45802;
DELETE FROM creature_movement WHERE id=45802;
DELETE FROM game_event_creature WHERE guid=45802;
DELETE FROM game_event_creature_data WHERE guid=45802;
DELETE FROM creature_battleground WHERE guid=45802;
DELETE FROM creature_linking WHERE guid=45802 OR master_guid=45802;
DELETE FROM creature WHERE guid=160365; 	-- Alternate to Gosh Bashguud
DELETE FROM creature_addon WHERE guid=160365;
DELETE FROM creature_movement WHERE id=160365;
DELETE FROM game_event_creature WHERE guid=160365;
DELETE FROM game_event_creature_data WHERE guid=160365;
DELETE FROM creature_battleground WHERE guid=160365;
DELETE FROM creature_linking WHERE guid=160365 OR master_guid=160365;
DELETE FROM creature WHERE guid=45781;
DELETE FROM creature_addon WHERE guid=45781;
DELETE FROM creature_movement WHERE id=45781;
DELETE FROM game_event_creature WHERE guid=45781;
DELETE FROM game_event_creature_data WHERE guid=45781;
DELETE FROM creature_battleground WHERE guid=45781;
DELETE FROM creature_linking WHERE guid=45781 OR master_guid=45781;
DELETE FROM creature WHERE guid=45782;
DELETE FROM creature_addon WHERE guid=45782;
DELETE FROM creature_movement WHERE id=45782;
DELETE FROM game_event_creature WHERE guid=45782;
DELETE FROM game_event_creature_data WHERE guid=45782;
DELETE FROM creature_battleground WHERE guid=45782;
DELETE FROM creature_linking WHERE guid=45782 OR master_guid=45782;
DELETE FROM creature WHERE guid=45788;
DELETE FROM creature_addon WHERE guid=45788;
DELETE FROM creature_movement WHERE id=45788;
DELETE FROM game_event_creature WHERE guid=45788;
DELETE FROM game_event_creature_data WHERE guid=45788;
DELETE FROM creature_battleground WHERE guid=45788;
DELETE FROM creature_linking WHERE guid=45788 OR master_guid=45788;
DELETE FROM creature WHERE guid=45763;
INSERT INTO creature VALUES (45763,9716,229,0,0,-93.816,-347.709,70.9524,4.12352,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45765;
INSERT INTO creature VALUES (45765,9716,229,0,0,-93.9198,-352.221,70.9524,2.32574,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45774;
INSERT INTO creature VALUES (45774,9717,229,0,0,-87.6315,-341.359,70.9524,6.16241,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=45766;
INSERT INTO creature VALUES (45766,9692,229,0,0,-83.1993,-342.576,70.9524,2.65953,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45793;
INSERT INTO creature VALUES (45793,9696,229,0,0,-86.1008,-344.653,70.9524,2.22285,2*60*60,0,0,2699,0,0,0);
DELETE FROM creature WHERE guid=45794;
INSERT INTO creature VALUES (45794,9696,229,0,0,-80.3922,-340.294,70.9524,2.22285,2*60*60,0,0,2784,0,0,0);

-- Fifth group: after the bridge, one the left
DELETE FROM creature WHERE guid=45783;
DELETE FROM creature_addon WHERE guid=45783;
DELETE FROM creature_movement WHERE id=45783;
DELETE FROM game_event_creature WHERE guid=45783;
DELETE FROM game_event_creature_data WHERE guid=45783;
DELETE FROM creature_battleground WHERE guid=45783;
DELETE FROM creature_linking WHERE guid=45783 OR master_guid=45783;
DELETE FROM creature WHERE guid=45784;
DELETE FROM creature_addon WHERE guid=45784;
DELETE FROM creature_movement WHERE id=45784;
DELETE FROM game_event_creature WHERE guid=45784;
DELETE FROM game_event_creature_data WHERE guid=45784;
DELETE FROM creature_battleground WHERE guid=45784;
DELETE FROM creature_linking WHERE guid=45784 OR master_guid=45784;
DELETE FROM creature WHERE guid=45800;
DELETE FROM creature_addon WHERE guid=45800;
DELETE FROM creature_movement WHERE id=45800;
DELETE FROM game_event_creature WHERE guid=45800;
DELETE FROM game_event_creature_data WHERE guid=45800;
DELETE FROM creature_battleground WHERE guid=45800;
DELETE FROM creature_linking WHERE guid=45800 OR master_guid=45800;
DELETE FROM creature WHERE guid=45795;
DELETE FROM creature_addon WHERE guid=45795;
DELETE FROM creature_movement WHERE id=45795;
DELETE FROM game_event_creature WHERE guid=45795;
DELETE FROM game_event_creature_data WHERE guid=45795;
DELETE FROM creature_battleground WHERE guid=45795;
DELETE FROM creature_linking WHERE guid=45795 OR master_guid=45795;
DELETE FROM creature WHERE guid=45799;
DELETE FROM creature_addon WHERE guid=45799;
DELETE FROM creature_movement WHERE id=45799;
DELETE FROM game_event_creature WHERE guid=45799;
DELETE FROM game_event_creature_data WHERE guid=45799;
DELETE FROM creature_battleground WHERE guid=45799;
DELETE FROM creature_linking WHERE guid=45799 OR master_guid=45799;
DELETE FROM creature WHERE guid=45798;
DELETE FROM creature_addon WHERE guid=45798;
DELETE FROM creature_movement WHERE id=45798;
DELETE FROM game_event_creature WHERE guid=45798;
DELETE FROM game_event_creature_data WHERE guid=45798;
DELETE FROM creature_battleground WHERE guid=45798;
DELETE FROM creature_linking WHERE guid=45798 OR master_guid=45798;
DELETE FROM creature WHERE guid=45797;
DELETE FROM creature_addon WHERE guid=45797;
DELETE FROM creature_movement WHERE id=45797;
DELETE FROM game_event_creature WHERE guid=45797;
DELETE FROM game_event_creature_data WHERE guid=45797;
DELETE FROM creature_battleground WHERE guid=45797;
DELETE FROM creature_linking WHERE guid=45797 OR master_guid=45797;
DELETE FROM creature WHERE guid=45796;
DELETE FROM creature_addon WHERE guid=45796;
DELETE FROM creature_movement WHERE id=45796;
DELETE FROM game_event_creature WHERE guid=45796;
DELETE FROM game_event_creature_data WHERE guid=45796;
DELETE FROM creature_battleground WHERE guid=45796;
DELETE FROM creature_linking WHERE guid=45796 OR master_guid=45796;
DELETE FROM creature WHERE guid=160101;
DELETE FROM creature_addon WHERE guid=160101;
DELETE FROM creature_movement WHERE id=160101;
DELETE FROM game_event_creature WHERE guid=160101;
DELETE FROM game_event_creature_data WHERE guid=160101;
DELETE FROM creature_battleground WHERE guid=160101;
DELETE FROM creature_linking WHERE guid=160101 OR master_guid=160101;
DELETE FROM creature WHERE guid=160102;
DELETE FROM creature_addon WHERE guid=160102;
DELETE FROM creature_movement WHERE id=160102;
DELETE FROM game_event_creature WHERE guid=160102;
DELETE FROM game_event_creature_data WHERE guid=160102;
DELETE FROM creature_battleground WHERE guid=160102;
DELETE FROM creature_linking WHERE guid=160102 OR master_guid=160102;
DELETE FROM creature WHERE guid=45783;
INSERT INTO creature VALUES (45783,9717,229,0,0,-51.6103,-304.008,70.9413,1.59768,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45784;
INSERT INTO creature VALUES (45784,9583,229,0,0,-56.4305,-299.876,70.9413,3.96801,2*60*60,0,0,8613,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 45784;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45784,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=45800;
INSERT INTO creature VALUES (45800,9583,229,0,0,-50.3003,-298.146,70.9406,6.24567,2*60*60,0,0,8613,0,0,0);	-- asleep + bashguud alternate
DELETE FROM `creature_addon` WHERE `guid`= 45800;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45800,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=45799;
INSERT INTO creature VALUES (45799,9718,229,0,0,-50.3003,-298.146,70.9406,6.24567,8*60*60,0,0,8883,0,0,0);	-- asleep / bashguud
DELETE FROM `creature_addon` WHERE `guid`= 45799;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45799,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=45795;
INSERT INTO creature VALUES (45795,9583,229,0,0,-46.2715,-299.369,70.9406,4.84137,2*60*60,0,0,8613,0,0,0);	-- asleep
DELETE FROM `creature_addon` WHERE `guid`= 45795;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45795,0,3,1,16,0,0,'6606');

-- Pool for Bashguud
DELETE FROM pool_creature WHERE guid IN (45800, 45799);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(45799, 1207, 15, 'Ghok Bashguud (9718) - Blackrock Spire'),
(45800, 1207, 0, 'Alternate to Ghok Bashguud (9718) - Blackrock Spire');
UPDATE pool_creature SET guid=45763, chance=0 WHERE guid=160365;
UPDATE pool_creature SET chance=15 WHERE guid=160364;


-- Sixth group: after the bridge, on the right, near the bonefire: full respawn
DELETE FROM creature WHERE guid=45804;
DELETE FROM creature_addon WHERE guid=45804;
DELETE FROM creature_movement WHERE id=45804;
DELETE FROM game_event_creature WHERE guid=45804;
DELETE FROM game_event_creature_data WHERE guid=45804;
DELETE FROM creature_battleground WHERE guid=45804;
DELETE FROM creature_linking WHERE guid=45804 OR master_guid=45804;
DELETE FROM creature WHERE guid=160104;
DELETE FROM creature_addon WHERE guid=160104;
DELETE FROM creature_movement WHERE id=160104;
DELETE FROM game_event_creature WHERE guid=160104;
DELETE FROM game_event_creature_data WHERE guid=160104;
DELETE FROM creature_battleground WHERE guid=160104;
DELETE FROM creature_linking WHERE guid=160104 OR master_guid=160104;
DELETE FROM creature WHERE guid=45805;
DELETE FROM creature_addon WHERE guid=45805;
DELETE FROM creature_movement WHERE id=45805;
DELETE FROM game_event_creature WHERE guid=45805;
DELETE FROM game_event_creature_data WHERE guid=45805;
DELETE FROM creature_battleground WHERE guid=45805;
DELETE FROM creature_linking WHERE guid=45805 OR master_guid=45805;
DELETE FROM creature WHERE guid=45804;
INSERT INTO creature VALUES (45804,9583,229,0,0,-56.2781,-338.82,70.9415,3.66563,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=160104;
INSERT INTO creature VALUES (160104,9583,229,0,0,-59.6305,-342.961,70.9415,1.32436,2*60*60,0,0,8883,0,0,0);
call script_npc(160104, 958301);
DELETE FROM creature WHERE guid=45805;
INSERT INTO creature VALUES (45805,9693,229,0,0,-60.9919,-337.156,70.9415,5.29612,2*60*60,0,0,7107,2369,0,0);

-- Clean up
DELETE FROM creature WHERE guid=45491;
DELETE FROM creature_addon WHERE guid=45491;
DELETE FROM creature_movement WHERE id=45491;
DELETE FROM game_event_creature WHERE guid=45491;
DELETE FROM game_event_creature_data WHERE guid=45491;
DELETE FROM creature_battleground WHERE guid=45491;
DELETE FROM creature_linking WHERE guid=45491 OR master_guid=45491;
DELETE FROM creature WHERE guid=45792;
DELETE FROM creature_addon WHERE guid=45792;
DELETE FROM creature_movement WHERE id=45792;
DELETE FROM game_event_creature WHERE guid=45792;
DELETE FROM game_event_creature_data WHERE guid=45792;
DELETE FROM creature_battleground WHERE guid=45792;
DELETE FROM creature_linking WHERE guid=45792 OR master_guid=45792;
DELETE FROM creature WHERE guid=45787;
DELETE FROM creature_addon WHERE guid=45787;
DELETE FROM creature_movement WHERE id=45787;
DELETE FROM game_event_creature WHERE guid=45787;
DELETE FROM game_event_creature_data WHERE guid=45787;
DELETE FROM creature_battleground WHERE guid=45787;
DELETE FROM creature_linking WHERE guid=45787 OR master_guid=45787;
DELETE FROM creature WHERE guid=45801;
DELETE FROM creature_addon WHERE guid=45801;
DELETE FROM creature_movement WHERE id=45801;
DELETE FROM game_event_creature WHERE guid=45801;
DELETE FROM game_event_creature_data WHERE guid=45801;
DELETE FROM creature_battleground WHERE guid=45801;
DELETE FROM creature_linking WHERE guid=45801 OR master_guid=45801;
DELETE FROM creature WHERE guid=45773;
DELETE FROM creature_addon WHERE guid=45773;
DELETE FROM creature_movement WHERE id=45773;
DELETE FROM game_event_creature WHERE guid=45773;
DELETE FROM game_event_creature_data WHERE guid=45773;
DELETE FROM creature_battleground WHERE guid=45773;
DELETE FROM creature_linking WHERE guid=45773 OR master_guid=45773;

-- Patrols
-- Raider + 2 worgs in the first corridor
DELETE FROM creature WHERE guid=45490;
DELETE FROM creature_addon WHERE guid=45490;
DELETE FROM creature_movement WHERE id=45490;
DELETE FROM game_event_creature WHERE guid=45490;
DELETE FROM game_event_creature_data WHERE guid=45490;
DELETE FROM creature_battleground WHERE guid=45490;
DELETE FROM creature_linking WHERE guid=45490 OR master_guid=45490;
DELETE FROM creature WHERE guid=45490;
INSERT INTO creature VALUES (45490,9692,229,0,0,-166.923,-331.402,64.401,1.55629,2*60*60,0,0,8352,0,0,2);
DELETE FROM creature_movement WHERE id=45490;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(45490,1, -166.922607,-331.402161,64.401016, 100, 0),
(45490,2, -167.266174,-368.529358,64.401016, 100, 0),
(45490,3, -129.449463,-369.072510,57.433342, 100, 0),
(45490,4, -129.024918,-369.200745,57.433613, 6.234918, 30*1000),
(45490,5, -167.143677,-368.785309,64.400810, 100, 0),
(45490,6, -167.813583,-406.761414,76.147301, 100, 0),
(45490,7, -167.835907,-422.338867,76.177452, 100, 0),
(45490,8, -167.857864,-444.912842,87.390289, 100, 0),
(45490,9, -167.933914,-449.224182,87.390289, 100, 0),
(45490,10, -167.933914,-449.224182,87.390289, 4.722242, 30*1000),
(45490,11, -167.494797,-422.652863,76.336769, 100, 0),
(45490,12, -167.503296,-405.514923,75.646942, 100, 0),
(45490,13, -166.791397,-383.119232,64.400887, 100, 0),
(45490,14, -166.695847,-368.117554,64.400887, 100, 0),
(45490,15, -166.553909,-331.739807,64.400887, 100, 0);
DELETE FROM creature WHERE guid=45773;
INSERT INTO creature VALUES (45773,9696,229,0,0,-168.377,-330.114,64.4008,4.79843,2*60*60,0,0,2784,0,0,0);
DELETE FROM creature WHERE guid=45801;
INSERT INTO creature VALUES (45801,9696,229,0,0,-165.692,-329.882,64.4008,4.79843,2*60*60,0,0,2784,0,0,0);
DELETE FROM creature_linking WHERE guid IN (45773, 45801);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(45773, 45490, 515),
(45801, 45490, 515);

-- Raider + 2 worgs on top level
DELETE FROM creature WHERE guid=45787;
INSERT INTO creature VALUES (45787,9692,229,0,0,-88.3541,-338.735,70.9511,1.8791,2*60*60,0,0,8613,0,0,2);
DELETE FROM creature_movement WHERE id=45787;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime) VALUES
(45787,1, -88.354103,-338.735352,70.951149, 100, 0),
(45787,2, -95.774902,-315.779785,70.951149, 100, 0),
(45787,3, -100.988670,-308.098663,70.951149, 100, 0),
(45787,4, -117.879654,-305.061462,70.951149, 100, 0),
(45787,5, -125.292870,-309.044708,70.951149, 100, 0),
(45787,6, -126.006050,-325.409180,70.951149, 100, 0),
(45787,7, -126.790848,-343.417084,70.951149, 100, 0),
(45787,8, -161.089569,-343.883759,64.401505, 100, 0),
(45787,9, -161.089569,-343.883759,64.401505, 3.166368, 30*1000),
(45787,10, -126.825516,-343.940918,70.953499, 100, 0),
(45787,11, -126.014862,-325.003235,70.953499, 100, 0),
(45787,12, -124.973389,-309.630676,70.953499, 100, 0),
(45787,13, -117.562660,-305.382324,70.953499, 100, 0),
(45787,14, -102.885040,-307.827393,70.953499, 100, 0),
(45787,15, -95.764694,-317.674896,70.953499, 100, 0),
(45787,16, -89.608856,-338.513550,70.953499, 100, 0);
DELETE FROM creature WHERE guid=45792;
INSERT INTO creature VALUES (45792,9696,229,0,0,-89.2504,-339.809,70.9524,2.06288,2*60*60,0,0,2699,0,0,0);
DELETE FROM creature WHERE guid=45491;
INSERT INTO creature VALUES (45491,9696,229,0,0,-86.8814,-338.539,70.9524,2.06288,2*60*60,0,0,2784,0,0,0);
DELETE FROM creature_linking WHERE guid IN (45792, 45491);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(45792, 45787, 515),
(45491, 45787, 515);