-- Correct Loot for Lord Captain Wyrmak 14445
-- https://web.archive.org/web/20051113080646/http://wow.allakhazam.com:80/db/mob.html?wmob=14445
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60174 AND entry=14445; -- NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)
	