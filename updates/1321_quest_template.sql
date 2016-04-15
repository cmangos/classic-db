-- Prevent Shamans to take twice the quest "Call of Water"
-- This closes #826
UPDATE quest_template SET ExclusiveGroup = 1528 WHERE entry = 2986;
