-- Add missing aura 7276 (Poison Proc) for creature 6201 (Legashi Rogue)
UPDATE creature_template_addon SET auras='7276' WHERE entry=6201;
