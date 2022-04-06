-- Add missing aura 16428 (Virulent Poison Proc) for NPC 11896 (Borelgore)
UPDATE creature_template_addon SET auras='16428' WHERE entry=11896;
