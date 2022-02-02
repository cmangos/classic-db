DELETE FROM dbscripts_on_quest_end WHERE id='772';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('772', '0', '15', '1126', '0', '0', '0', '0', 'Rite of Vision: Seer Wiserunner - Cast Spell Mark of the Wild');

UPDATE quest_template SET CompleteScript=772 WHERE entry=772;

DELETE FROM conditions WHERE condition_entry=772 AND type=9;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('772', '9', '772', '0', '0', '0', '0', 'Quest ID 772 Taken');
