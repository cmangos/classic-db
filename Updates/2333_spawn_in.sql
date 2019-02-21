-- Remove visual effect in quest 8447 (Walking Legends) script: it is now handled by SD2
DELETE FROM dbscripts_on_quest_start WHERE id=8447 AND delay=51;
