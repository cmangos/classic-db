-- Fixed position of NPC 3230 (Nazgrel)
-- https://github.com/cmangos/classic-db/issues/62
-- https://www.youtube.com/watch?v=YcEqpVfrE7U&feature=youtu.be&t=55m31s

-- Update Nazgrel's position (unsniffed/guessed by video evidence)
UPDATE creature SET position_x=1939.49, position_y=-4133.59, position_z=40.91, orientation=3.91 WHERE guid=4801;

-- Update weapon state to sheathed
UPDATE creature_template_addon SET b2_0_sheath=0 WHERE entry=3230;
