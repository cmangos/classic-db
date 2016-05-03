-- Fixed spawn location of NPC 14467 (Kroshius) in Felwood
-- This closes #830
UPDATE creature SET position_x = 5800.89, position_y = -985.82, position_z = 409.78 WHERE id = 14467;
