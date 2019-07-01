-- Fix Forlorn Spirit 2044 not attacking Player on Spawn
UPDATE dbscripts_on_quest_start SET data_flags=0 WHERE buddy_entry=2044 AND command=26;
