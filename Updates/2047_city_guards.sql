-- Added missing Invisibility and Stealth detection aura to the Capital Cities guards that were missing it
UPDATE creature_template_addon SET auras='18950' WHERE entry IN (14376, 14377, 14379, 14380, 14402, 14403, 14404);
