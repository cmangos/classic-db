UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='3280');

DELETE FROM dbscripts_on_quest_start WHERE id=2460;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, dataint, comments) VALUES 
('2460', '0', '0', '0',  '0', '3278', 'Quest - The Shattered Salute - Talk'),
('2460', '8000', '0', '0',  '0', '3279', 'Quest - The Shattered Salute - Talk'),
('2460', '14000', '0', '0',  '0', '3280', 'Quest - The Shattered Salute - Talk'),
('2460', '20000', '0', '1',  '66', '0', 'Quest - The Shattered Salute - EMOTE_SALUTE'),
('2460', '25000', '0', '0',  '0', '3281', 'Quest - The Shattered Salute - Talk');

DELETE FROM dbscripts_on_relay WHERE id=3401;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, dataint, comments) VALUES 
('3401', '0', '1', '66', '0', 'Quest - The Shattered Salute'),
('3401', '4000', '0', '0', '3287', 'Quest - The Shattered Salute');

UPDATE quest_template SET StartScript='2460' WHERE (entry='2460');

DELETE FROM conditions WHERE condition_entry=2460 AND type=9;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('2460', '9', '2460', '0', '0', '0', '0', 'Quest ID 2460 Taken');
