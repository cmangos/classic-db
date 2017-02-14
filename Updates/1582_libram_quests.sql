-- q.7483 'Libram of Rapidity'
-- q.7484 'Libram of Focus'
-- q.7485 'Libram of Protection'
-- available only after (q.7481 'Elven Legends' - Horde) or (q.7482 'Elven Legends') - Alliance completed
SET @CONDITION := 188;
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION AND @CONDITION + 2;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(@CONDITION, 8, 7481, 0),
(@CONDITION + 1, 8, 7482, 0),
(@CONDITION + 2, -2, @CONDITION + 1, @CONDITION);
UPDATE quest_template SET RequiredCondition = @CONDITION + 2 WHERE entry IN (7483,7484,7485);
