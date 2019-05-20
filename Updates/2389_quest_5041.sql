-- Add missing requirement for quest 5041 (Supplies for the Crossroad)
UPDATE quest_template SET PrevQuestId=871 WHERE entry=5041;
