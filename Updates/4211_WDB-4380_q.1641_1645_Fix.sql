-- q.1641 'The Tome of Divinity' -- humans
DELETE FROM conditions WHERE condition_entry = 9014;
DELETE FROM conditions WHERE condition_entry BETWEEN 9100 AND 9102;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(9100, 22, 1642, 0, 0, 0, 0), -- Quest ID 1642 NOT Taken AND NOT Rewarded
(9101, 23, 6775, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(9102, -1, 9101, 9100, 0, 0, 0);
UPDATE quest_template SET PrevQuestId=0, RequiredCondition = 9102 WHERE entry = 1641;
UPDATE quest_template SET PrevQuestId=0 WHERE entry = 1642;
-- q.1645 'The Tome of Divinity' -- dwarfs
DELETE FROM conditions WHERE condition_entry = 9015;
DELETE FROM conditions WHERE condition_entry BETWEEN 9103 AND 9105;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(9103, 22, 1646, 0, 0, 0, 0), -- Quest ID 1646 NOT Taken AND NOT Rewarded
(9104, 23, 6916, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(9105, -1, 9104, 9103, 0, 0, 0);
UPDATE quest_template SET PrevQuestId=0, RequiredCondition = 9105 WHERE entry = 1645;
UPDATE quest_template SET PrevQuestId=0 WHERE entry = 1646;

