-- Fix target position for spell 29273 (Teleport) used in Heigan the Unclean fight in Naxxramas
DELETE FROM spell_target_position WHERE id=29273;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(29273, 533, 2905.63, -3769.96, 273.62, 3.13);

-- Heigan the Unclean should roam instead of being still
UPDATE creature SET MovementType=1, spawndist=5 WHERE id=15936;
