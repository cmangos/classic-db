-- Correct % for Viscous Fallout Boss Items
-- https://web.archive.org/web/20060526083134/http://wow.allakhazam.com:80/db/mob.html?wmob=7079
-- http://wowwiki.wikia.com/wiki/Acidic_Walkers
-- http://wowwiki.wikia.com/wiki/Toxic_Revenger
-- http://wowwiki.wikia.com/wiki/Hydrocane
UPDATE creature_loot_template SET ChanceOrQuestChance=55 WHERE entry=7079 AND item=9454; -- Acidic Walkers
UPDATE creature_loot_template SET ChanceOrQuestChance=25 WHERE entry=7079 AND item=9453; -- Toxic Revenger
UPDATE creature_loot_template SET ChanceOrQuestChance=20 WHERE entry=7079 AND item=9452; -- Hydrocane
