-- Fix swapped PrevQuestId for Trial of the Lake (Night Elf vs Tauren)
UPDATE quest_template SET PrevQuestId = 26 WHERE entry = 29;
UPDATE quest_template SET PrevQuestId = 27 WHERE entry = 28;