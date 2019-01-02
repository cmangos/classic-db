-- Remove aura 19483 (Immolation) from NPC 89 (Infernal)
-- Now handled by core at summon time
UPDATE creature_template_addon SET auras='' WHERE entry=89;
