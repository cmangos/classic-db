-- Fix movement type of NPC 16027 (Living Poison) in Naxxramas: it is handled by SD2
UPDATE creature_template SET MovementType=0 WHERE Entry=16027;
