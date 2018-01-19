-- Fixed wrong path being loaded in DBScripts
UPDATE dbscripts_on_creature_movement SET datalong2=0 WHERE id=1353301 AND delay=30 AND command=20;
