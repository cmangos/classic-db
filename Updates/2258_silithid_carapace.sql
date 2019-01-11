-- Correct condition and chance for Cracked Silithid Carapace 5877
-- https://www.wowhead.com/item=5877/cracked-silithid-carapace#comments:id=243225
-- https://www.wowhead.com/quest=1147/the-swarm-grows#comments:id=26040
-- https://www.wowhead.com/quest=1148/parts-of-the-swarm#comments:id=39949

SET @COND := 552;

DELETE FROM conditions WHERE condition_entry BETWEEN @COND AND @COND + ;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(@COND, 16, 5877, 1, 'Player Has Less Than 1 of Item ID 5877 in Inventory'),
(@COND + 1, 8, 1147, 0, 'Quest ID 1147 Rewarded'),
(@COND + 2, 9, 1147, 0, 'Quest ID 1147 Taken'),
(@COND + 3, -2, @COND + 1, @COND + 2, '(Quest ID 1147 Rewarded OR Quest ID 1147 Taken)'),
(@COND + 4, -1, @COND, @COND + 3, '((Player Has Less Than 1 of Item ID 5877 in Inventory) AND (Quest ID 1147 Rewarded OR Quest ID 1147 Taken))');

UPDATE creature_loot_template SET ChanceOrQuestChance=100, condition_id=@COND + 4 WHERE item=5877;
