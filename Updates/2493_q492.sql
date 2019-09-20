-- Improve quest end script for quest 492 (A New Plague)
-- Add missing text
DELETE FROM dbscripts_on_quest_end WHERE id=492 AND delay=1;
INSERT INTO dbscripts_on_quest_end VALUES (492, 1, 0, 0, 0, 0, 0, 0, 0, 2000000010, 0, 0, 0, 0, 0, 0, 0, 'Captured Mountainer says');

DELETE FROM dbscript_string WHERE entry=2000000010;
INSERT INTO dbscript_string VALUES
(2000000010, 'I raise my brew and hope to be rid of the likes of you! Cheers, you no good scoundrel, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
