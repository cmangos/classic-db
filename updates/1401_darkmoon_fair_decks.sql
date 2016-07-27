-- Made quests 7907, 7929, 7927 and 7928 (Darkmoon Fair Epic Decks) repeatable
-- This closes #876
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN (7907,7929,7927,7928);
