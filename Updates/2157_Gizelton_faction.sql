-- Fix temporary faction flags for q.5943 and q.5821. Previous value was 59. 
-- TEMPFACTION_RESTORE_COMBAT_STOP caused the creatures to be immune to NPC after first fight ended, making the quest very trivial
-- Faction is restored in dbscripts_on_creature_movement ID 1162501
UPDATE dbscripts_on_quest_start SET datalong2=1|32 WHERE id IN(5943,5821) AND command=22; -- TEMPFACTION_RESTORE_RESPAWN, TEMPFACTION_TOGGLE_IMMUNE_TO_NPC
