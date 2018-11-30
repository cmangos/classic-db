-- Rework trash packs in the Crimson Laboratories in Blackwing Lair
-- Add missing NPCs
-- Add waypoints
-- Add scripts
-- Correct linking

/*
Sources: 
https://www.youtube.com/watch?v=nZ89bLWdz3M
https://www.youtube.com/watch?v=P7LSdTM8a0w
https://www.youtube.com/watch?v=xiZxTQJaCx8
https://www.youtube.com/watch?v=bJZR6Hb5x_o
https://www.youtube.com/watch?v=Rse5YmBRqVk
*/

SET @GUID := 91115;

-- Pack 1 (first room, entrance)
-- Add two missing NPC 12459 (Blackwing Warlock)
DELETE FROM creature WHERE guid IN (@GUID + 0, @GUID + 1);
INSERT INTO creature VALUES
(@GUID + 0, 12459, 469, 0, 12459, -7547.44, -1041.23, 449.242, 3.03514, 604800, 604800, 2, 0, 88025, 24860, 0, 1), 
(@GUID + 1, 12459, 469, 0, 12459, -7547.4, -1017.41, 449.242, 1.7463, 604800, 604800, 2, 0, 88025, 24860, 0, 1);

DELETE FROM creature_linking WHERE guid IN (@GUID + 0, @GUID + 1);
INSERT INTO creature_linking VALUES
(@GUID + 0, 139741, 3),
(@GUID + 1, 139741, 3);

-- Pack 2 (first room, wall on the right)
-- Make creature 139804 patrol with WP
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=139804;
DELETE FROM creature_movement WHERE id=139804;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES
(139804, 1, -7498.000000,-1037.510010,449.242004, 3.782838, 0, 0),
(139804, 2, -7530.563965,-1058.321289,449.242004, 0.583127, 5 * 1000, 0),
(139804, 3, -7498.000000,-1037.510010,449.242004, 0.559570, 20*1000, 0), -- pause
(139804, 4, -7491.047363,-1032.294189,449.242004, 0.559570, 0, 1246101);  -- roam

DELETE FROM dbscripts_on_creature_movement WHERE id=1246101;
INSERT INTO dbscripts_on_creature_movement VALUES
(1246101, 1, 20, 1, 2, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Talon Overseer - random movement'),
(1246101, 21, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Talon Overseer - waypoint movement');

-- Add two missing NPCs 12459 (Blackwing Warlock) and one NPC 12457 (Blackwing Spellbinder)
DELETE FROM creature WHERE guid  BETWEEN @GUID + 2 AND @GUID + 4;
INSERT INTO creature VALUES
(@GUID + 2, 12459, 469, 0, 12459, -7494.59, -1037.94, 449.242, 3.61084, 604800, 604800, 2, 0, 88025, 24860, 0, 1), -- roam
(@GUID + 3, 12459, 469, 0, 12459, -7519.54, -1055.8, 449.242, 4.25801, 604800, 604800, 0, 0, 88025, 24860, 0, 0), -- idle
(@GUID + 4, 12457, 469, 0, 12457, -7526, -1055.04, 449.242, 5.39919, 604800, 604800, 0, 0, 90650, 25680, 0, 2); -- patrol

-- Make creature @GUID + 4 patrol with WP
DELETE FROM creature_movement WHERE id=@GUID + 4;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES
(@GUID + 4, 1, -7526.199707,-1055.150757,449.242218, 5.39919, 10 * 1000, 0),
(@GUID + 4, 2, -7505.534668,-1040.631714,449.242218, 0.570566, 0, 0),
(@GUID + 4, 3, -7501.283691,-1041.707275,449.242218, 6.073851, 9* 1000, 1247101),
(@GUID + 4, 4, -7505.534668,-1040.631714,449.242218, 0.570566, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id=1247101;
INSERT INTO dbscripts_on_creature_movement VALUES
(1247101, 1, 15, 23017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackwing Spellbinder - cast Arcane channeling');

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
DELETE FROM creature_linking WHERE master_guid IN (139804, 139749);
INSERT INTO creature_linking VALUES
(139752, 139749, 143),
(139753, 139749, 143),
(139761, 139749, 143),
(139762, 139749, 143),
(139763, 139749, 143),
(139764, 139749, 143),
(139771, 139749, 143),
(139772, 139749, 143),
(139804, 139749, 3),
(@GUID + 2, 139749, 3),
(@GUID + 3, 139749, 3),
(@GUID + 4, 139749, 3);

-- Pack 3 (first room, alcolve on the left)
-- Add two missing NPCs 12459 (Blackwing Warlock) and one NPC 12457 (Blackwing Spellbinder)
DELETE FROM creature WHERE guid  BETWEEN @GUID + 5 AND @GUID + 7;
INSERT INTO creature VALUES
(@GUID + 5, 12457, 469, 0, 12457, -7539.89, -980.115, 449.24, 2.57532, 604800, 604800, 0, 0, 90650, 25680, 0, 2), 
(@GUID + 6, 12459, 469, 0, 12459, -7518.77, -967.764, 449.24, 1.41136, 604800, 604800, 3, 0, 88025, 24860, 0, 1), 
(@GUID + 7, 12459, 469, 0, 12459, -7532.98, -978.992, 449.24, 5.66115, 604800, 604800, 3, 0, 88025, 24860, 0, 1);

-- Make creature @GUID + 5 patrol with WP
DELETE FROM creature_movement WHERE id=@GUID + 5;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES
(@GUID + 5, 1, -7531.121094,-974.014465,449.239990, 2.143344, 15*1000, 0),
(@GUID + 5, 2, -7539.890137,-980.114990,449.239990, 2.588665, 9*1000, 1247101);

-- Make creature 139810 patrol with WP
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=139810;
DELETE FROM creature_movement WHERE id=139810;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES 
(139810, 1, -7515.290039,-972.690002,449.242004, 5.255889, 0, 0),
(139810, 2, -7526.435059,-972.025879,449.242004, 2.119793, 20*1000, 0),
(139810, 3, -7530.816406,-983.255432,449.242004, 3.828818, 20*1000, 0),
(139810, 4, -7515.290039,-972.690002,449.242004, 5.255889, 0, 1246101);

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
DELETE FROM creature_linking WHERE master_guid IN (139789, 139810);
INSERT INTO creature_linking VALUES
(139777, 139789, 143),
(139778, 139789, 143),
(139779, 139789, 143),
(139781, 139789, 143),
(139788, 139789, 143),
(139783, 139789, 143),
(139786, 139789, 143),
(139784, 139789, 143),
(139793, 139789, 143),
(139810, 139789, 3),
(@GUID + 5, 139789, 3),
(@GUID + 6, 139789, 3),
(@GUID + 7, 139789, 3);

-- Pack 4 (floor between the two ramps)
-- Make Blackwing Warlocks roam
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid IN (139666, 139665);

-- Add waypoints and scripts for Blackwing Spellbinder and Death Talon Overseer
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (139714, 139659);
DELETE FROM creature_movement WHERE id IN (139714, 139659);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES 
(139714, 1, -7516.770020,-918.172974,457.575989, 2.239943, 10*1000, 0),
(139714, 2, -7507.151855,-911.683411,457.575989, 1.775773, 0, 1246101),
(139659, 1, -7514.660156,-915.672974,457.576141, 3.736127, 0, 0),
(139659, 2, -7522.407227,-921.590881,457.576141, 2.953870, 9*1000, 1247101),
(139659, 3, -7516.440918,-931.687744,457.576141, 3.792673, 10*1000, 0),
(139659, 4, -7522.407227,-921.590881,457.576141, 2.953870, 0, 0),
(139659, 5, -7505.688965,-910.193970,457.576141, 1.669752, 8*1000, 0);

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
DELETE FROM creature_linking WHERE guid IN (139666, 139665, 139714, 139659);
INSERT INTO creature_linking VALUES
(139666, 139683, 3),
(139665, 139683, 3),
(139714, 139683, 3),
(139659, 139683, 3);

-- Pack 5 (top of second ramp, left wall)
-- Make Blackwing Warlocks roam
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid IN (139667, 139668);

-- Add waypoints and scripts for Blackwing Spellbinder and Death Talon Overseer
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (139660, 139715);
DELETE FROM creature_movement WHERE id IN (139660, 139715);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES 
-- Spellbinder
(139660, 1, -7490.720215,-880.021973,464.983002, 5.248651, 10*1000, 0),
(139660, 2, -7481.521973,-874.042603,464.983002, 0.481284, 0, 0),
(139660, 3, -7470.077148,-877.378235,464.983002, 0.126284, 0, 0),
(139660, 4, -7458.394531,-869.081665,464.983002, 0.715333, 0, 0),
(139660, 5, -7450.747559,-870.677246,464.983856, 1.184211, 9*1000, 1247101),
(139660, 6, -7458.394531,-869.081665,464.983002, 0.715333, 0, 0),
(139660, 7, -7470.077148,-877.378235,464.983002, 0.126284, 0, 0),
(139660, 8, -7481.521973,-874.042603,464.983002, 0.481284, 0, 0),
-- Overseer
(139715, 1, -7459.910156,-871.228027,464.983002, 0.594382, 0, 0),
(139715, 2, -7471.843262,-879.743896,464.983002, 3.201117, 0, 0),
(139715, 3, -7476.855957,-879.560974,464.983002, 3.524701, 10*1000, 0),
(139715, 5, -7471.843262,-879.743896,464.983002, 3.201117, 0, 0),
(139715, 6, -7459.910156,-871.228027,464.983002, 0.594382, 0, 0),
(139715, 7, -7456.350586,-866.346436,464.984528, 1.374277, 0, 1246101);

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
DELETE FROM creature_linking WHERE guid IN (139667, 139668, 139715, 139660);
INSERT INTO creature_linking VALUES
(139667, 139692, 3),
(139668, 139692, 3),
(139715, 139692, 3),
(139660, 139692, 3);

-- Pack 6 (second to top level, right wall, all three alcolves)
-- Make Blackwing Warlocks roam
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid IN (139671, 139672);
-- Fix orientation of the Blackwing Spellbinder in the central alcolve
UPDATE creature SET orientation=3.754815 WHERE guid=139663;

-- Add waypoints and scripts for Blackwing Spellbinder and Death Talon Overseer
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (139664, 139717);
DELETE FROM creature_movement WHERE id IN (139664, 139717);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES 
-- Overseer
(139717, 1, -7449.359863,-932.479004,464.983002, 1.968039, 10*1000, 0),
(139717, 2, -7437.153320,-949.930298,464.983002, 5.298911, 0, 1246101),
-- Spellbinder
(139664, 1, -7440.379883,-962.318970,464.983978, 4.340725, 0, 0),
(139664, 2, -7436.921875,-954.072327,464.984283, 1.303589, 0, 0),
(139664, 3, -7453.783203,-930.033630,464.984283, 2.606565, 0, 0),
(139664, 4, -7463.512695,-931.216797,464.984283, 3.183048, 10*1000, 0),
(139664, 5, -7453.783203,-930.033630,464.984283, 2.606565, 0, 0),
(139664, 6, -7436.921875,-954.072327,464.984283, 1.303589, 0, 0),
(139664, 7, -7440.379883,-962.318970,464.983978, 4.340725, 9*1000, 1247101);

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
UPDATE creature_linking SET flag=3 WHERE guid IN (139671, 139672, 139717, 139663, 139664);

-- Pack 7 (second to top level, left wall, all three alcolves)
-- Make the Blackwing Spellbinder in the central alcolve and the Blackwing Warlocks roam
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid IN (139669, 139670, 139661);

-- Add waypoints and scripts for Blackwing Spellbinder and Death Talon Overseer
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (139716, 139662);
DELETE FROM creature_movement WHERE id IN (139716, 139662);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime, script_id) VALUES 
-- Overseer
(139716, 1, -7409.779785,-927.672974,464.983002, 5.239215, 10*1000, 0),
(139716, 2, -7420.489746,-912.846130,464.983002, 2.141603, 0, 1246101),
-- Spellbinder
(139662, 1, -7413.560059,-900.291992,464.983002, 0.223660, 0, 0),
(139662, 2, -7421.991211,-906.056030,464.983002, 3.690406, 0, 0),
(139662, 3, -7403.992188,-930.876709,464.983002, 5.342885, 0, 0),
(139662, 4, -7399.454102,-932.370972,464.983002, 6.206038, 10*1000, 0),
(139662, 5, -7403.992188,-930.876709,464.983002, 5.342885, 0, 0),
(139662, 6, -7421.991211,-906.056030,464.983002, 3.690406, 0, 0),
(139662, 7, -7413.560059,-900.291992,464.983002, 0.223660, 9*1000, 1247101);

-- Rework linking: all NPCs in the group share aggro but only the goblins respawn on raid wipe
UPDATE creature_linking SET flag=3 WHERE guid IN (139716, 139662, 139669, 139670, 139661);
