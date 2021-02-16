-- Durotar Riders
-- Raider Jhash 10676 guid:3254
-- Raider Kerr 10682 guid:3256
UPDATE creature SET position_x=294.964691, position_y=-4743.975586, position_z=9.382349, orientation=3.16327, MovementType=0, spawndist=0 WHERE guid=3256;
-- links
DELETE FROM creature_linking WHERE master_guid=3254;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(3256, 3254, 1+2+512);
-- Updates in waypoints
-- They should run outside 'Razor Hill' and Valley of Trials'
UPDATE creature_movement SET waittime=100, script_id=5 WHERE id=3254 AND point IN (5,69); -- Run from here
UPDATE creature_movement SET waittime=100, script_id=6 WHERE id=3254 AND point IN (32,93); -- Walk from here
