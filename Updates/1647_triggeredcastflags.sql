-- Implement support for TriggeredCastFlags in dbscript CastSpell
UPDATE dbscripts_on_creature_death SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_creature_movement SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_event SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_go_template_use SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_go_use SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_gossip SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_quest_end SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_quest_start SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
UPDATE dbscripts_on_spell SET datalong2=1,data_Flags=data_Flags&~8 WHERE data_Flags&8 AND command = 15;
