-- Correct green item loot for Gibblewilt 8503 - special items are stored in NPC LOOT (Rare NPC Loot) - Gibblewilt - Special Items (65172)
-- https://web.archive.org/web/20071027044857/http://wow.allakhazam.com/db/mob.html?wmob=8503
-- https://tbc.wowhead.com/npc=8503/gibblewilt
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE mincountOrRef=-60106 AND entry=8503; -- NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
