-- Fix movement for spawned creatures
UPDATE creature_template SET MovementType=0 WHERE entry IN (7349,7351,7355);
