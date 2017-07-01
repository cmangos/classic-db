-- Added waypoint paths for creature 10317 (Blackhand Elite) in the Beast encounter in UBRS
-- Source: https://www.youtube.com/watch?v=1tGdVHw9HME
DELETE FROM creature_movement_template WHERE entry = 10317;
INSERT INTO creature_movement_template VALUES
(10317, 0, 1, 98.09, -563.45, 109.86, 0, 5, 0, 0, 0, 0, 0, 0, 0, 2.37, 0, 0),
(10317, 0, 2, 98.09, -563.45, 109.86, 0, 1031705, 0, 0, 0, 0, 0, 0, 0, 2.37, 0, 0),
(10317, 0, 3, 72.95, -541.25, 110.93, 0, 1031706, 0, 0, 0, 0, 0, 0, 0, 2.48, 0, 0),
(10317, 1, 1, 99.81, -561.47, 109.24, 0, 5, 0, 0, 0, 0, 0, 0, 0, 2.43, 0, 0),
(10317, 1, 2, 99.81, -561.47, 109.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.43, 0, 0),
(10317, 1, 3, 74.54, -541.56, 110.93, 0, 1031706, 0, 0, 0, 0, 0, 0, 0, 2.48, 0, 0),
(10317, 2, 1, 96.92, -560.98, 100.18, 0, 5, 0, 0, 0, 0, 0, 0, 0, 2.43, 0, 0),
(10317, 2, 2, 96.92, -560.98, 100.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.43, 0, 0),
(10317, 2, 3, 76.07, -542.58, 110.93, 0, 1031706, 0, 0, 0, 0, 0, 0, 0, 2.48, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1031705, 1031706);
INSERT INTO dbscripts_on_creature_movement VALUES
(1031705, 0, 0, 0, 0, 0, 0, 0, 0, 2000000060, 0, 0, 0, 0, 0, 0, 0, 'Blackhand Elite yell'),
(1031706, 0, 15, 8329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackhand Elite - suicide');

DELETE FROM db_script_string WHERE entry=2000000060;
INSERT INTO db_script_string VALUES
(2000000060, 'We\'re doomed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

-- Added waypoints for NPC 10430 (The Beast) in UBRS
-- Sources: https://www.youtube.com/watch?v=1tGdVHw9HME
-- https://www.youtube.com/watch?v=0zDX2gKIGQg
DELETE FROM creature_movement_template WHERE entry=10430;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,orientation) VALUES 
(10430, 0, 1, 87.379997,-554.119995,110.923401, 2.605954),
(10430, 0, 2, 67.581108,-542.368958,110.931984, 2.605954),
(10430, 0, 3, 45.530369,-526.054382,110.940887, 3.146308),
(10430, 0, 4, 33.238,-525.53,110.95, 3.146308),
(10430, 0, 5, 17.816111,-535.067444,110.934181, 4.946442),
(10430, 0, 6, 33.070957,-547.175232,110.930801, 0.033776),
(10430, 0, 7, 41.717140,-545.521118,111.113350, 0.439042),
(10430, 0, 8, 50.444035,-541.029297,110.933029, 0.549783),
(10430, 0, 9, 71.690468,-528.961304,110.932953, 0.764982),
(10430, 0, 10, 78.201691,-537.934082,110.930313, 4.695114),
(10430, 0, 11, 69.242638,-540.633240,110.930313, 3.751065),
(10430, 0, 12, 39.386456,-539.334106,110.931923, 3.124316),
(10430, 0, 13, 113.556915,-553.631836,108.430443, 6.165376);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1043001);
INSERT INTO dbscripts_on_creature_movement VALUES
(1043001, 0, 20, 1, 20, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Switch to random movement around the current position');

UPDATE creature_movement_template SET script_id=1043001 WHERE entry=10430 AND point=13;
