-- Add missing aura 8247 (Wandering Plague) for creature 4248 (Pesterhide Hyena)
UPDATE creature_template_addon SET auras='8247' WHERE entry=4248;
