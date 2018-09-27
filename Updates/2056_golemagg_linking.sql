-- Removed linking between NPC 11988 (Golemagg) and the two NPCs 11672 (Core Rager)
-- The relation is now handled in SD2
UPDATE creature_linking_template SET flag=flag-32 WHERE master_entry=11988;
