-- Added missing gossip menu options for NPC 11035 (Betina Bigglezink)
-- She is supposed to give back some items to players once quests are completed

SET @COND := 677;
-- DELETE FROM conditions WHERE condition_entry BETWEEN @COND AND @COND + 9;
INSERT INTO conditions VALUES
(@COND, 8, 5213, 0, 'Quest ID 5213 Rewarded'),
(@COND + 1, 24, 13209, 1, 'Player Has Less Than 1 of Item ID 13209 in Inventory/Bank'),
(@COND + 2, 24, 19812, 1, 'Player Has Less Than 1 of Item ID 19812 in Inventory/Bank'),
(@COND + 3, -1, @COND, @COND + 1, '(Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank)'),
(@COND + 4, -1, @COND, @COND + 2, '(Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank)'),
(@COND + 5, -1, @COND + 3, @COND + 2, '((Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank) AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank)'),
(@COND + 6, -1, @COND + 4, @COND + 1, '((Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank) AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank)'),
(@COND + 7, 8, 4771, 0, 'Quest ID 4771 Rewarded'),
(@COND + 8, 24, 12368, 1, 'Player Has Less Than 1 of Item ID 12368 in Inventory/Bank'),
(@COND + 9, -1, @COND + 7, @COND + 8, '(Quest ID 4771 Rewarded AND Player Has Less Than 1 of Item ID 12368 in Inventory/Bank)');

-- DELETE FROM gossip_menu_option WHERE menu_id=3651;
INSERT INTO gossip_menu_option VALUES
(3651, 0, 0, 'Betina, I\'d like a another Dawn\'s Gambit please!', 1, 1, -1, 0, 365101, 0, 0, NULL, @COND + 9),
(3651, 1, 0, 'Betina, I\'d like a replacement Seal of the Dawn please!', 1, 1, -1, 0, 365102, 0, 0, NULL, @COND + 5),
(3651, 2, 0, 'Betina, I\'d like a replacement Rune of the Dawn please!', 1, 1, -1, 0, 365103, 0, 0, NULL, @COND + 6);

-- DELETE FROM dbscripts_on_gossip WHERE id IN (3651, 365102, 365103);
INSERT INTO dbscripts_on_gossip VALUES
(365101, 0, 15, 18367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Dawn\'s Gambit'),
(365102, 0, 15, 24179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Seal of the Dawn'),
(365103, 0, 15, 24201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Rune of the Dawn');
