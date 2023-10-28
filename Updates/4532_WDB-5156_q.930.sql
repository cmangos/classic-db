-- q.930 'The Glowing Fruit'
-- req q.918 & q.919 completed first
-- alliace quest
UPDATE quest_template SET RequiredRaces = 77, RequiredCondition = 3830 WHERE entry = 930;
DELETE FROM conditions WHERE condition_entry BETWEEN 3828 AND 3830;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(3828, 8, 918, 0, 0, 0, 0, 'Quest ID 918 Rewarded'),
(3829, 8, 919, 0, 0, 0, 0, 'Quest ID 919 Rewarded'),
(3830, -1, 3829, 3828, 0, 0, 0,'');

