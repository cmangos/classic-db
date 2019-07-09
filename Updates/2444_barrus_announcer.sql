-- Add missing Barrus <Fishing Promoter> 15119
DELETE FROM creature WHERE guid=31180;
INSERT INTO creature (guid,  id,  map,  position_x,  position_y,  position_z,  orientation,  spawntimesecsmin,  spawntimesecsmax,  spawndist, MovementType) VALUES
(31180, 15119, 0, -4964.691, -936.2874, 501.7426, 5.445427, 550, 550, 0, 0);

DELETE FROM game_event_creature WHERE guid=31180;
INSERT INTO game_event_creature (guid,  event) VALUES (31180, 14); -- Stranglethorn Fishing Extravaganza - Announce
