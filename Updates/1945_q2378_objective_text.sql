-- Remove blanks in quest objective text. Confirmed by sniff.
UPDATE quest_template SET Objectives='Journey to Orgrimmar and speak with Shenthul at the Cleft of Shadow.' WHERE entry=2378;
