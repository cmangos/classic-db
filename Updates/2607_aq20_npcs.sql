-- kurinnaxx
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15348);
UPDATE creature_model_info SET bounding_radius=1.5,combat_reach=6 WHERE modelid IN(15742);
-- general rajaxx
-- allies
UPDATE creature_template SET Faction=1608,NpcFlags=1,UnitFlags=(33280+4096) WHERE entry IN(15471);
UPDATE creature_model_info SET bounding_radius=0.306,combat_reach=1.5 WHERE modelid IN(15688);
UPDATE creature_model_info SET bounding_radius=0.389,combat_reach=1.5 WHERE modelid IN(15689);
UPDATE creature_template SET Faction=1608,UnitFlags=(33280+4096) WHERE entry IN(15473);
-- boss
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15341);
UPDATE creature_model_info SET bounding_radius=1.6,combat_reach=6 WHERE modelid IN(15376);
-- boss army
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15385,15386,15388,15389,15390,15391,15392);
UPDATE creature_model_info SET bounding_radius=0.8,combat_reach=3 WHERE modelid IN(15738);
 -- moam
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15340);
UPDATE creature_template SET UnitFlags=64,Faction=16 WHERE entry IN(15527);
UPDATE creature_model_info SET bounding_radius=1.05,combat_reach=7.5 WHERE modelid IN(15547);
 -- Buru the gorger
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15370);
UPDATE creature_model_info SET bounding_radius=3,combat_reach=5.67 WHERE modelid IN(15654);
UPDATE creature_model_info SET bounding_radius=3,combat_reach=5.736 WHERE modelid IN(15655);
 -- ayamiss the hunter
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15369);
UPDATE creature_model_info SET bounding_radius=1,combat_reach=3 WHERE modelid IN(15431);
UPDATE creature_template SET Faction=310 WHERE entry IN(15546);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(26538,509,-9674.4707,1528.4133,22.457,0.8677835), -- guessed position
(26539,509,-9711.537,1550.658,24.97404,0.8677835),
-- swarmer teleports - correct positions assigned to random spell ids
(25709,509,-9778.91,1419.98,61.0743,0),
(25825,509,-9757.87,1416.71,76.7664,0),
(25826,509,-9805.95,1422.85,77.5852,0),
(25827,509,-9829.42,1456.37,90.7015,0),
(25828,509,-9827.58,1506.28,82.3052,0);
 -- ossirian the unscarred
UPDATE creature_template SET UnitFlags=64,Scale=1,SpeedWalk=2.5/2.5,SpeedRun=6/7 WHERE entry IN(15339);
