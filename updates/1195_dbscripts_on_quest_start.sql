-- Improved quest 4265 based on UDB script by @Grz3s
UPDATE dbscripts_on_quest_start SET datalong2 = 18000 WHERE id = 4265 AND delay = 1;
UPDATE dbscripts_on_quest_start SET data_flags = 7 WHERE id = 4265 AND delay in (2, 6, 7, 12);
UPDATE dbscripts_on_quest_start SET delay = 13 WHERE delay = 12 AND id = 4265;
