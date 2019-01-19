-- Correct Loot for Grimungous 8215
-- https://web.archive.org/web/20060216081351/http://wow.allakhazam.com:80/db/mob.html?wmob=8215
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=60184 AND entry=8215; -- NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)	
