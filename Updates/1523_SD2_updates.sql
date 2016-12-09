-- Update SD2 table to latest scripts updates

-- Warlock epic mount final event in Dire Maul by MantisLord
DELETE FROM scripted_event_id WHERE id IN (8420,8428);
INSERT INTO scripted_event_id VALUES
(8420,'event_spells_warlock_dreadsteed'),
(8428,'event_spells_warlock_dreadsteed');

-- Anub'Rekhan greetings rework by cala
UPDATE gameobject_template SET ScriptName='go_anub_door' WHERE entry=181126;
