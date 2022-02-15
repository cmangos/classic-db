-- Fix stats for NPC 16141 (Ghoul Berserker) involved in Scourge Invasion events
UPDATE creature_template SET MinLevel=59, MaxLevel=60, Faction=1630 WHERE Entry=16141;
