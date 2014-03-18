-- Fixed mechanics of Alexei Barov encounter in Scholomance
-- by adding missing linking to creature 10504 (Lord Alexei Barov) and its two guards 10489 (Risen Guard)
-- they will also respawn when Alexei evades (like after a wipe)
-- Thanks Nekoi for pointing. This closes #189 
DELETE FROM `creature_linking` WHERE `guid` IN (48864, 48862);
INSERT INTO `creature_linking` VALUES
(48862, 48863, 7),
(48864, 48863, 7);
