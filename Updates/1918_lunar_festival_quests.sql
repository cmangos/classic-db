-- Fixed availability of lead-in quests for Lunar Festival
-- There is one quest per capital that should be only available
-- in this capital yet completable in everyone

SET @COND := 980;

-- Created area condition for each capital city
DELETE FROM conditions WHERE condition_entry BETWEEN @COND AND @COND + 5;
INSERT INTO conditions VALUES
(@COND, 4, 1519, 0, 'Is In Area ID: 1519'), -- Stormwind
(@COND + 1, 4, 1497, 0, 'Is In Area ID: 1497'), -- Undercity
(@COND + 2, 4, 1537, 0, 'Is In Area ID: 1537'), -- Ironforge
(@COND + 3, 4, 1637, 0, 'Is In Area ID: 1637'), -- Orgrimmar
(@COND + 4, 4, 1638, 0, 'Is In Area ID: 1638'), -- Thunderbluff
(@COND + 5, 4, 1657, 0, 'Is In Area ID: 1657'); -- Darnassus

-- Assigned correct area condition for each quest
UPDATE quest_template SET RequiredCondition=@COND WHERE entry=8871;
UPDATE quest_template SET RequiredCondition=@COND + 1 WHERE entry=8874;
UPDATE quest_template SET RequiredCondition=@COND + 2 WHERE entry=8870;
UPDATE quest_template SET RequiredCondition=@COND + 3 WHERE entry=8873;
UPDATE quest_template SET RequiredCondition=@COND + 4 WHERE entry=8875;
UPDATE quest_template SET RequiredCondition=@COND + 5 WHERE entry=8872;

-- Made these lead-in quests optional
UPDATE quest_template SET PrevQuestId=0 WHERE entry=8867;
