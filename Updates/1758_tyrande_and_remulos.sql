-- Fixed race requirement for quest 8734 (Tyrande and Remulos)
-- This closes #100
UPDATE quest_template SET RequiredRaces=255 WHERE entry=8734;
