-- Prereq for quest "Infiltration"(533) should be "The Rescue"(498)
-- http://www.wowhead.com/quest=498/deprecated-the-rescue
-- http://www.wowhead.com/quest=533/deprecated-infiltration

UPDATE quest_template SET PrevQuestId=498 WHERE entry=533;
UPDATE quest_template SET NextQuestInChain=533 WHERE entry=498;
