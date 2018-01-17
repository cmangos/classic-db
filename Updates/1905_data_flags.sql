-- Removed unused flag in dbscripts
UPDATE dbscripts_on_creature_movement SET data_flags=0 WHERE id=1353301 AND command=32;
