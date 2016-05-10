-- fix for quest chain SELECT * FROM quest_template WHERE Title LIKE ("%Messenger to%");
-- this closes #842
UPDATE quest_template SET PrevQuestId = 121 WHERE entry = 143;
UPDATE quest_template SET PrevQuestId = 144 WHERE entry = 145;
