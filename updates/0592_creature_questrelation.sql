-- Fixed NPC Sprogger (Booty Bay) having duplicate entry for quest "Facing Negolash"
-- Thanks Neotmiren for pointing and fixing. This closes #495 
DELETE FROM creature_questrelation WHERE quest = 618; -- quest "Facing Negolash", NPC Sprogger
DELETE FROM creature_involvedrelation WHERE quest = 618; -- quest "Facing Negolash", NPC Sprogger
