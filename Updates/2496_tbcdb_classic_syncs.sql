-- classic-db creatures sync and improvements
DELETE FROM creature WHERE id IN (599,14344,13602); -- respawned
DELETE FROM creature WHERE guid IN (140783,140784,140785,140786,91752,91795,40727,140755,140756,140771,140772);
DELETE FROM creature WHERE guid BETWEEN 5301215 AND 5301219;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, movementtype) VALUES
-- NEW: 599 might be one spawn with movement between these points and random movement at these points
(140780, 599, 0, -11192.78, 1468.711, 15.80358, 5.444971, 115200, 172800, 3, 1), -- NEW, should be at these locations
(140781, 599, 0, -11245.74, 1481.678, 23.50274, 0.898819, 115200, 172800, 3, 1),
(140782, 599, 0, -11264.48, 1538.75, 28.16913, 1.52972, 115200, 172800, 3, 1),
(140783, 15384, 0, -8764.96, 834.5883, 59.54026, 0.2268928, 300, 300, 0, 0), -- Found in sniff not sure what these for
(140784, 2334, 0, -8950.462, 881.5955, 59.54026, 1.32645, 300, 300, 0, 0),
(140785, 2334, 0, -8409.473, 626.1468, 59.54026, 5.794493, 300, 300, 0, 0),
(140786, 2334, 0, -8408.045, 625.9042, 59.54026, 2.094395, 300, 300, 0, 0),

(51895, 14344, 1, 4250.07, -781.841, 262.327, 0.233983, 115200, 172800, 5, 1), -- sync classic-db
(140771, 14344, 1, 4053.78, -645.117, 298.641, 4.76121, 115200, 172800, 5, 1),
(140772, 14344, 1, 4196.29, -849.411, 258.506, 2.20474, 115200, 172800, 5, 1),
(140773, 14344, 1, 3914.9, -1063.66, 243.252, 4.07791, 115200, 172800, 5, 1),
(89424, 13602, 0, 171.682, -260.075, 150.132, 1.142, 600, 600, 40, 1), -- The Abominable Greench - Missing Commit?
(91750, 13602, 0, 361.078, -54.289, 145.192, 2.182, 600, 600, 40, 1),
(91751, 13602, 0, 313.328, -376.999, 169.598, 0.914, 600, 600, 40, 1),
(91752, 13602, 0, 550.981, -101.974, 145.18, 2.755, 600, 600, 40, 1),
(91795, 20102, 1, 6791.34, -4747.01, 701.617, 2.21657, 300, 300, 0, 0); -- free tbc-db 91752

UPDATE creature_template_addon SET b2_1_flags=16, emote=233 WHERE entry=7804; -- Add missing Emote for Trenton Lighthammer (Might be Script)

UPDATE creature_template SET SpeedWalk=(2.5 / 2.5) WHERE entry=5916; -- Sentinel Amarassan (Stealth Aura modifies it)
UPDATE creature_template SET SpeedWalk=(1.94444 / 2.5) WHERE entry=10405; -- Plague Ghoul
