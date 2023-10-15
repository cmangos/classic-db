-- q.8305 'Long Forgotten Memories'
-- fix
UPDATE dbscripts_on_quest_start SET delay = 1, data_flags = 4 WHERE id = 8305;
