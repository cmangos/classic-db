-- Correct Elemental Ember 18672 Drop
-- https://classic.wowhead.com/npc=14461/baron-charr#drops
-- https://web.archive.org/web/20110828095525/http://www.wowhead.com:80/npc=14461
-- https://web.archive.org/web/20081011022328/http://wow.allakhazam.com:80/db/mob.html?wmob=14461
DELETE FROM reference_loot_template WHERE item=18672;
UPDATE creature_loot_template SET ChanceOrQuestChance=25, groupid=1 WHERE entry=14461 AND item=18671; -- Baron Charr's Sceptre
DELETE FROM creature_loot_template WHERE entry=14461 AND item=18672;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, comments) VALUES
(14461, 18672, 0, 1, 1, 1, 'Elemental Ember');
