-- Update drop chance for item 14493 (Pattern: Robe of Winter Night) that was insanely high
-- This closes #873
-- Source: http://web.archive.org/web/20060720200616/http://wow.allakhazam.com/db/mob.html?wmob=7437
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 7437 AND item = 14493;

