/* Nathanos Blightcaller in Eastern Plaguelands offers chain that some quest are grouped:
1st group
-- 	q.6022 'To Kill With Purpose'
-- 	q.6042 'Un-Life's Little Annoyances'
-- 	q.6133 'The Ranger Lord's Behest'
2nd group
-- 	q.6135 'Duskwing, Oh How I Hate Thee...'
--	q.6136 'The Corpulent One'
3rd group
-- 	q.6163 'Ramstein'
*/

SET @CONDITION := 1373;

-- 1st group must be completed to unlock 2nd group
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION AND @CONDITION + 4;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(@CONDITION, 8, 6022, 0), -- q.6022 'To Kill With Purpose' 
(@CONDITION + 1, 8, 6042, 0), -- q.6042 'Un-Life's Little Annoyances'
(@CONDITION + 2, 8, 6133, 0), -- q.6133 'The Ranger Lord's Behest'
(@CONDITION + 3, -1, @CONDITION + 1, @CONDITION),
(@CONDITION + 4, -1, @CONDITION + 3, @CONDITION + 2); -- this will unlock 2nd group
UPDATE quest_template SET RequiredCondition = @CONDITION + 4 WHERE entry = 6135;
UPDATE quest_template SET RequiredCondition = @CONDITION + 4 WHERE entry = 6136;

-- 2nd group must be completed to unlock 3rd group
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION + 5 AND @CONDITION + 7;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(@CONDITION + 5, 8, 6135, 0), -- q.6135 'Duskwing, Oh How I Hate Thee...' 
(@CONDITION + 6, 8, 6136, 0), -- q.6136 'The Corpulent One'
(@CONDITION + 7, -1, @CONDITION + 6, @CONDITION + 5); -- this will unlock 3rd group
UPDATE quest_template SET RequiredCondition = @CONDITION + 7 WHERE entry = 6163;
UPDATE quest_template SET RequiredCondition = @CONDITION + 7 WHERE entry = 6144;
