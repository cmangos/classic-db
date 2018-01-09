-- Fixed requirements for quests 8764, 8765 & 8766 allowing to change the path chosen for the signets of the Bronze Dragonflights
-- This closes https://github.com/classicdb/database/issues/407
SET @COND := 1166;

DELETE FROM conditions WHERE condition_entry BETWEEN @COND AND @COND + 4;
INSERT INTO conditions VALUES
(@COND, 8, 8751, 0, 'Quest ID 8751 Rewarded'),
(@COND + 1, 8, 8756, 0, 'Quest ID 8756 Rewarded'),
(@COND + 2, 8, 8761, 0, 'Quest ID 8761 Rewarded'),
(@COND + 3, -2, @COND, @COND + 1, '(Quest ID 8751 Rewarded) OR (Quest ID 8756 Rewarded)'),
(@COND + 4, -2, @COND + 2, @COND + 3, '(Quest ID 8751 Rewarded) OR (Quest ID 8756 Rewarded) OR (Quest ID 8761 Rewarded)');

UPDATE quest_template SET PrevQuestId=0, RequiredCondition=@COND + 4 WHERE entry IN (8764, 8765, 8766);
