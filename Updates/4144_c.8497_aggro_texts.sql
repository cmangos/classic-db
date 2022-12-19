-- Readd all spawn/aggro texts for Nightmare Suppressor 8497
-- https://www.wowhead.com/classic/npc=8497/nightmare-suppressor
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(26, 0, 4529, 0, 'Nightmare Suppressor 8497 - Random Aggro Texts'), -- No!  We cannot allow you to summon Hakkar!
(26, 0, 4530, 0, 'Nightmare Suppressor 8497 - Random Aggro Texts'), -- You must not summon our god!
(26, 0, 4531, 0, 'Nightmare Suppressor 8497 - Random Aggro Texts'), -- No!  You must not do this!
(26, 0, 4532, 0, 'Nightmare Suppressor 8497 - Random Aggro Texts'); -- Stop!  Infidels!

UPDATE `broadcast_text` SET `ChatTypeId` = 1 WHERE `Id` IN (4529,4530,4531,4532);

