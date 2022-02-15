-- Fix faction for NPCs 16422 (Skeletal Soldier) & 16423 (Spectral Apparition)
UPDATE creature_template SET Faction=1630 WHERE Entry IN (16422, 16423);
