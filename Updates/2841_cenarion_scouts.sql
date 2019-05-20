-- Add missing stealth auras for NPCs 15609, 15610 & 15611 (Cenarion Scouts Landion, Azenel & Zalia)
UPDATE creature_template_addon SET auras='6718' WHERE entry IN (15609, 15610, 15611);
