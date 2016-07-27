-- Quests relations.

-- q.872 'The Disruption Ends'
-- Player should finish q.871 before this one become available - (not a chain).
UPDATE quest_template SET PrevQuestId = 871 WHERE entry = 872;

-- q.5041 'Supplies for the Crossroads'
-- q. shouldnt have any prequest .. and player must be allowed to take it with q.871
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 5041;
