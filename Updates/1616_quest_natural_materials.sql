-- q.3128 'Natural Materials'
-- becomes available after completed q.3122 'Return to Witch Doctor Uzer'i'
DELETE FROM conditions WHERE condition_entry = 1165;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1165, 8, 3122, 0);
UPDATE quest_template SET RequiredCondition = 1165 WHERE entry = 3128;
