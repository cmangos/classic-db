-- 'The Missing Diplomat' Chain corrected

-- q.1249 'The Missing Diplomat' - Defeat Tapoke Jahn - finishes first part
-- and should lead to q.1250 'The Missing Diplomat' - Speak to Mikhail in the Wetlands.
UPDATE quest_template SET NextQuestId = 1250 WHERE entry = 1249;
-- q.1264 'The Missing Diplomat' - Find Commander Samaul in Dustwallow Marsh.
-- should begin after q.1250 completed
UPDATE quest_template SET PrevQuestId = 1250 WHERE entry = 1264;

