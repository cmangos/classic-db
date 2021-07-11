-- Add missing aura 5811 (Stone Skin Passive)
-- Cracked Golem
-- Stone Behemoth
UPDATE creature_template_addon SET auras='5811' WHERE entry IN (2156, 2157);
