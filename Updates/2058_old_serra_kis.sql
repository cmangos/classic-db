-- Fixed inhabit type of NPC 4830 (Old Serra'kis) in Blackfathom Deeps:
-- it was moving in the texture because pathing is only supported by walking movement generator
UPDATE creature_template SET InhabitType=3 WHERE Entry=4830;
