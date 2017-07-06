-- Added movement for NPC 10162 (Lord Victor Nefarius) in UBRS
-- Sources: https://www.youtube.com/watch?v=5oU9gQOiwlI 
-- https://www.youtube.com/watch?v=asKYQoMPbks
-- https://www.youtube.com/watch?v=vxSXOV2P6lM

-- Added movement to Lord Victor Nefarius
DELETE FROM creature_movement_template WHERE entry=10162;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,orientation) VALUES
(10162, 0, 1, 169.33,-444.80,121.98, 6.278477),
(10162, 0, 2, 161.91,-444.92,121.98, 3.287679);
