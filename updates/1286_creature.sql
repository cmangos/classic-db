-- Flagglemurk the Cruel
-- drop corrected
-- spawns corrected (missing added)
-- waypoints for first spawn
-- added into pools.

-- Flagglemurk the Cruel
UPDATE creature_template SET SpeedWalk = 1.1 WHERE Entry = 7015;
-- 1st spawn
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 51899;
DELETE FROM creature_movement WHERE id = 51899;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(51899,1,5361.57,540.2,1.37434, 0, 0,2.87976, 0, 0),
(51899,2,5327.95,548.109,1.84979, 0, 0,2.85227, 0, 0),
(51899,3,5307.6,556.941,3.30046, 0, 0,2.68734, 0, 0),
(51899,4,5293.22,562.774,3.89359, 0, 0,2.87976, 0, 0),
(51899,5,5270.65,566.584,2.94248, 0, 0,3.04862, 0, 0),
(51899,6,5242.67,569.752,1.94003, 0, 0,2.93081, 0, 0),
(51899,7,5233.17,573.153,2.40135, 0, 0,2.55382, 0, 0),
(51899,8,5254.57,568.294,1.7938, 0, 0,6.15487, 0, 0),
(51899,9,5282.57,565.233,3.65819, 0, 0,6.18628, 0, 0),
(51899,10,5300.56,560.438,3.66182, 0, 0,5.825, 0, 0),
(51899,11,5322.89,549.866,2.0936, 0, 0,6.00957, 0, 0),
(51899,12,5348.78,542.868,1.64609, 0, 0,6.06847, 0, 0),
(51899,13,5395.85,530.913,1.64892, 0, 0,6.05277, 0, 0),
(51899,14,5410.68,528.417,1.41494, 0, 0,0.177984, 0, 0),
(51899,15,5426.57,533.093,1.53774, 0, 0,0.331137, 0, 0),
(51899,16,5444.92,544.012,1.71293, 0, 0,0.582464, 0, 0),
(51899,17,5457.78,553.569,1.9857, 0, 0,0.668858, 0, 0),
(51899,18,5463.9,554.142,2.87976, 0, 0,6.01114, 0, 0),
(51899,19,5469.11,549.074,3.54694, 0, 0,5.09066, 0, 0),
(51899,20,5465.86,539.207,3.31856, 0, 0,4.18352, 0, 0),
(51899,21,5456.49,534.761,3.59431, 0, 0,3.53165, 0, 0),
(51899,22,5421.35,530.068,1.44266, 0, 0,3.20178, 0, 0),
(51899,23,5403.67,528.938,1.57174, 0, 0,2.88762, 0, 0),
(51899,24,5381.54,534.648,1.63599, 0, 0,2.8562, 0, 0);

-- 2nd spawn
-- missing creatures -- 
-- empty guids reused -- UDB ONLY
DELETE FROM creature WHERE guid = 60792;
DELETE FROM creature_addon WHERE guid = 60792;
DELETE FROM creature_movement WHERE id = 60792;
DELETE FROM game_event_creature WHERE guid = 60792;
DELETE FROM game_event_creature_data WHERE guid = 60792;
DELETE FROM creature_battleground WHERE guid = 60792;
DELETE FROM creature_linking WHERE guid = 60792 OR master_guid = 60792;
INSERT INTO creature (guid, id, modelid, map, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(60792,7015,0,1,7410.98,-9.27966,0.831176,1.88702,9900,15,356,0,1);

-- Only one can be spawned at at the same time
DELETE FROM pool_template WHERE entry = 1214;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(1214,1,'Flagglemurk the Cruel');
DELETE FROM pool_creature_template WHERE pool_entry = 1214 OR id = 7015;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(7015, 1214, 0, 'RARE Flagglemurk the Cruel - 7015');

-- Drop correted
DELETE FROM creature_loot_template WHERE  entry = 7015;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(7015,730,1.7,0,1,1,0),
(7015,858,2,0,1,1,0),
(7015,1179,1.6,0,1,1,0),
(7015,1468,36,0,1,1,0),
(7015,1506,0.4,0,1,1,0),
(7015,1514,1.7,0,1,1,0),
(7015,1516,0.5,0,1,1,0),
(7015,1734,0.5,0,1,1,0),
(7015,2215,0.6,0,1,1,0),
(7015,2589,32,0,1,3,0),
(7015,5523,19,0,1,1,0),
(7015,5785,1.5,0,1,1,0),
(7015,6266,4,0,1,1,0),
(7015,6268,5,0,1,1,0),
(7015,6289,4,0,1,3,0),
(7015,6336,5,0,1,1,0),
(7015,6512,3,0,1,1,0),
(7015,6537,1.2,0,1,1,0),
(7015,6539,1.7,0,1,1,0),
(7015,6541,1.8,0,1,1,0),
(7015,6542,2,0,1,1,0),
(7015,6543,1.7,0,1,1,0),
(7015,6546,3,0,1,1,0),
(7015,6547,0.7,0,1,1,0),
(7015,6548,3,0,1,1,0),
(7015,6549,2,0,1,1,0),
(7015,6550,1.1,0,1,1,0),
(7015,6551,1.2,0,1,1,0),
(7015,6554,0.9,0,1,1,0),
(7015,6555,4,0,1,1,0),
(7015,6556,1,0,1,1,0),
(7015,6557,3,0,1,1,0),
(7015,6558,1.1,0,1,1,0),
(7015,9746,0.8,0,1,1,0),
(7015,9747,14,0,1,1,0),
(7015,9748,1.2,0,1,1,0),
(7015,9749,3,0,1,1,0),
(7015,9755,0.4,0,1,1,0),
(7015,9756,11,0,1,1,0),
(7015,9757,1.2,0,1,1,0),
(7015,9762,0.6,0,1,1,0),
(7015,9763,8,0,1,1,0),
(7015,9765,1.5,0,1,1,0),
(7015,9785,1.7,0,1,1,0),
(7015,9786,3,0,1,1,0),
(7015,15303,0.6,0,1,1,0),
(7015,24060,1,1,-24060,1,0),
(7015,24062,1,1,-24062,1,0),
(7015,24070,5,1,-24070,1,0),
(7015,24076,1,1,-24076,1,0),
(7015,24077,1,1,-24077,1,0),
(7015,24078,1,1,-24078,1,0);
