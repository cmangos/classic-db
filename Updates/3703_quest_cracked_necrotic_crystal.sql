-- Fix completion of quest 9292 (Cracked Necrotic Crystal)
-- Add missing relation with quest taker NPC
DELETE FROM creature_involvedrelation WHERE quest=9292;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16478, 9292);
