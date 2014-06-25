-- Added missing teleport spell for creature 4968 (Jaina Proudmoore), used when fighting her
-- This closes #491 
DELETE FROM spell_target_position WHERE id = 20682;
INSERT INTO spell_target_position VALUES (20682, 1, -4018.10, -4525.24, 12, 6.13); -- Teleports player above Theramore Harbor, into the sea. 
