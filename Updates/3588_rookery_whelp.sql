-- Remove Loot for Rookery Whelp 10161
-- https://classic.wowhead.com/npc=10161/rookery-whelp
-- https://web.archive.org/web/20080420071344/http://wow.allakhazam.com/db/mob.html?wmob=10161
UPDATE creature_template SET lootid=0 WHERE entry=10161;
DELETE FROM creature_loot_template WHERE entry=10161;
