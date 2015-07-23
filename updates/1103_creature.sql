-- Removed two apparently wrongly spawned NPCs: Cliff Giant #51697 & Land Walker #51692
-- Thanks Neotmiren for pointing and fixing. This closes #781
DELETE FROM creature WHERE guid IN (51697, 51692); 
