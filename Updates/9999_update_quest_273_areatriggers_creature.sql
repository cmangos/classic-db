-- #71 Providing missing data for quest 273 and its quest event.
DELETE FROM creature WHERE guid = 100000;
INSERT INTO creature VALUES ('100000', '1380', '0', '0', '0', '-5760.73', '-3437.71', '305.54', '2.41', '300', '300', '0', '0', '550', '0', '0', '0');

DELETE FROM scripted_areatrigger WHERE Entry = 171;
INSERT INTO scripted_areatrigger VALUES ('171', 'at_huldar_miran');

DELETE FROM areatrigger_involvedrelation WHERE id = 171;

UPDATE quest_template SET SpecialFlags = 2 WHERE entry = 273;