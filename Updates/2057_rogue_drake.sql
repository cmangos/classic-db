-- Fixed NPC 14388 (Rogue Black Drake) sliding on the ground instead of flying
-- Wrong inhabit type: this NPC is not supposed to fly "for real", at least on Classic
UPDATE creature_template SET InhabitType=3 WHERE ENtry=14388;
