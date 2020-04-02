-- Add missing passive aura Fevered Fatigue to NPC 6136 (Arkkoran Muckdweller) and 5983 (Bonepicker)
UPDATE creature_template_addon SET auras='11964' WHERE entry IN (6136, 5983);
