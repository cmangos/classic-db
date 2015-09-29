-- Added missing Giant Surf Glider elite creatures in Tanaris
-- This closes #797 
-- These creatures are important for Hunters as the source of Bite, rank 7 (the only source ability available at the lowest possible level).
-- "It seems since this last patch that the giant elite turtles have been replaced by the smaller non elites.. I went all the way down there to tame one to learn bite 7 and there were NONE to be found, the place was covered with the normal ones.. :-("
-- By Sabrina on 2007/03/21 (Patch 2.0.10)
-- source: http://www.wowhead.com/npc=5432/giant-surf-glider


DELETE FROM `creature` WHERE `guid` IN (23660, 23692, 23621, 23642, 23703, 23623, 23659, 23628, 23691, 23653, 23615, 23681, 23677, 23640, 23630, 23651, 23635, 23696, 23683);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(23660, 5432, 1, -10260, -3792, 0.569, 2.841, 430, 4, 6702, 0, 1),
(23692, 5432, 1, -10257, -3874, 2.209, 2.441, 430, 4, 6702, 0, 1),
(23621, 5432, 1, -10254, -4093, 0.567, 3.711, 430, 4, 6702, 0, 1),
(23642, 5432, 1, -10200, -3943, 3.372, 1.621, 430,15, 6702, 0, 1),
(23703, 5432, 1, -10145, -3699, 0.151, 1.476, 430,15, 6702, 0, 1),
(23623, 5432, 1, -10103, -3846, 5.825, 0.791, 430,15, 6702, 0, 1),
(23659, 5432, 1, -10100, -4246, 0.558, 3.181, 430,15, 6702, 0, 1),
(23628, 5432, 1, -10021, -3726, 7.162, 0.37,  430,15, 6702, 0, 1),
(23691, 5432, 1, -10007, -3596, 0.59,  1.329, 430,15, 6702, 0, 1),
(23653, 5432, 1,  -9989, -4221, 6.916, 1.987, 430,15, 6702, 0, 1),
(23615, 5432, 1,  -9944, -4370, 0.551, 3.518, 430,15, 6702, 0, 1),
(23681, 5432, 1,  -9855, -3637, 11.177,6.259, 430,15, 6702, 0, 1),
(23677, 5432, 1,  -9855, -3556, 0.715, 2.209, 430,15, 6702, 0, 1),
(23640, 5432, 1,  -9836, -4304, 8.469, 1.723, 430,15, 6702, 0, 1),
(23630, 5432, 1,  -9754, -4453, 0.569, 4.148, 430,15, 6702, 0, 1),
(23651, 5432, 1,  -9718, -4372, 5.972, 3.225, 430,15, 6702, 0, 1),
(23635, 5432, 1,  -9628, -4404, 0.569, 1.831, 430,15, 6702, 0, 1);

UPDATE `creature_template` SET CreatureTypeFlags=CreatureTypeFlags|1, PetSpellDataId = 5931, SpeedWalk = 1 WHERE entry = 5432; -- tameable, has Bite 7
