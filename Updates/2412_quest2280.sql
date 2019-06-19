-- Fix quest chaining for quest 2280 (The Platinum Discs)
-- This closes #236
UPDATE quest_template SET NextQuestId=2440 WHERE entry=2280;
