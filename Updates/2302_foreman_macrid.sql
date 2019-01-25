-- Correct Green Item Loot for Foreman Marcrid 1844
-- https://web.archive.org/web/20060110002348/http://wow.allakhazam.com:80/db/mob.html?wmob=1844
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60290 AND entry=1844; -- NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58)
