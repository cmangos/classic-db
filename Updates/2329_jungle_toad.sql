-- Add target NPC 15010 (Jungle Toad) for spell 24062 (Explode Toad)
-- Thanks @Phatcat for his help and testing
-- Closes #148
DELETE FROM spell_script_target WHERE entry=24062
INSERT INTO spell_script_target VALUES (24062, 1, 15010, 0);
