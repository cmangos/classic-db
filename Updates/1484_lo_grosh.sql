-- Lo'Grosh (Rare)
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45, SpeedWalk = 1.05 WHERE Entry = 2453;
-- 1st spawn
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69113;
DELETE FROM creature_movement WHERE id = 69113;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(69113,1,616.695,-675.454,151.824, 0, 0,3.76735, 0, 0),
(69113,2,612.288,-683.58,153.169, 0, 0,4.54096, 0, 0),
(69113,3,610.387,-695.678,152.379, 0, 0,4.4153, 0, 0),
(69113,4,606.786,-704.271,151.857, 0, 0,4.03831, 0, 0),
(69113,5,600.036,-710.78,151.199, 0, 0,3.66525, 0, 0),
(69113,6,587.783,-716.205,149.476, 0, 0,3.66918, 0, 0),
(69113,7,576.543,-725.898,150.469, 0, 0,3.88516, 0, 0),
(69113,8,586.344,-717.404,149.329, 0, 0,0.535435, 0, 0),
(69113,9,595.769,-712.303,149.753, 0, 0,0.374429, 0, 0),
(69113,10,600.992,-709.782,151.391, 0, 0,0.617902, 0, 0),
(69113,11,608.745,-700.329,151.574, 0, 0,0.884938, 0, 0),
(69113,12,614.029,-696.513,152.62, 0, 0,0.127029, 0, 0),
(69113,13,625.471,-693.985,153.691, 0, 0,0.657958, 0, 0),
(69113,14,633.585,-687.049,155.356, 0, 0,1.38445, 0, 0),
(69113,15,631.456,-679.19,154.09, 0, 0,2.17155, 0, 0),
(69113,16,624.023,-675.308,152.823, 0, 0,2.97344, 0, 0);
-- 2nd spawn
-- missing added - free guids reused
DELETE FROM creature WHERE guid = 119583;
DELETE FROM creature_addon WHERE guid = 119583;
DELETE FROM creature_movement WHERE id = 119583;
DELETE FROM game_event_creature WHERE guid = 119583;
DELETE FROM game_event_creature_data WHERE guid = 119583;
DELETE FROM creature_battleground WHERE guid = 119583;
DELETE FROM creature_linking WHERE guid = 119583 OR master_guid = 119583;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(119583,2453,0,0,0,896.904,-547.316,142.524,3.53498,7200,0,0,1196,3075,0,0);

-- Correct loot drop
DELETE FROM creature_loot_template WHERE  entry = 2453;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(2453,1477,1.1,0,1,1,0),
(2453,1678,30,2,1,1,0),
(2453,1708,4.878,0,1,1,0),
(2453,1710,2.439,0,1,1,0),
(2453,1760,0.3,0,1,1,0),
(2453,1782,0.05,0,1,1,0),
(2453,1784,0.6,0,1,1,0),
(2453,1805,0.6,0,1,1,0),
(2453,1810,0.6,0,1,1,0),
(2453,1825,0.6,0,1,1,0),
(2453,1829,1.3,0,1,1,0),
(2453,1831,0.05,0,1,1,0),
(2453,2221,0.6,0,1,1,0),
(2453,2785,0.3,0,1,1,0),
(2453,3048,0.6,0,1,1,0),
(2453,3381,0.6,0,1,1,0),
(2453,3385,5.46,0,1,1,0),
(2453,3771,9.7561,0,1,1,0),
(2453,3864,1.1,0,1,1,0),
(2453,4306,31.7073,0,1,3,0),
(2453,4338,9.7561,0,1,1,0),
(2453,4810,60,2,1,1,0),
(2453,6327,20,0,1,1,0),
(2453,6602,0.05,0,1,1,0),
(2453,7909,5.46,0,1,1,0),
(2453,7912,4.878,0,1,2,0),
(2453,20974,0.6,0,1,1,0),
(2453,24037,1,1,-24037,1,0),
(2453,24047,5,1,-24047,1,0),
(2453,24054,1,1,-24054,1,0),
(2453,24056,1,1,-24056,1,0);